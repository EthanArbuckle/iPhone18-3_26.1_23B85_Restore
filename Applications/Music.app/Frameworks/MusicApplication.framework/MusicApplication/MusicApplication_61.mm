unint64_t sub_52A8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0EA20);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_5292A8(v5, v6, sub_2ECE20);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52A9C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DB68);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E0DB60);
      result = sub_522264(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3470();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52ABA8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, Swift::Int))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA40);
    v5 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_90090(v9, v10);
      result = sub_5292A8(v7, v8, a2);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52ACC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA18);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E0EA10);
      result = sub_522264(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_AB3470();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
      result = sub_52B328(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52AED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E980);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_522338(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52AFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E9B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E970);
    v7 = sub_ABB0C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_15F84(v9, v5, &qword_E0E9B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_5292A8(*v5, v12, sub_2ECE20);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_AB4590();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_52B210(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v7 = sub_ABB0C0();
    v8 = a1 + 32;

    while (1)
    {
      sub_15F84(v8, &v15, a4);
      v9 = v15;
      result = sub_2EC28C(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_9ACFC(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_52B328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_52B38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_52B3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52B508(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_ABB060();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_ABB060();
  }

  else
  {
    v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t sub_52B648@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a2(0);
  a5[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  return sub_537CF0(a1, boxed_opaque_existential_0, a4);
}

uint64_t sub_52B724(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_52B82C, 0, 0);
}

uint64_t sub_52B82C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_AB9990();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_15F84(v4, v2, &qword_E0EAB0);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_36B0C(v2, v7 + v6, &qword_E0EAB0);
  sub_6E35A0(0, 0, v1, &unk_B18650, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_52B988(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_52BA90, 0, 0);
}

uint64_t sub_52BA90()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_AB9990();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_15F84(v4, v2, &qword_E0EAB8);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_36B0C(v2, v7 + v6, &qword_E0EAB8);
  sub_6E35A0(0, 0, v1, &unk_B18660, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_52BBEC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30) - 8);
  v1[3] = v2;
  v1[4] = *(v2 + 64);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_52BCF4, 0, 0);
}

uint64_t sub_52BCF4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  v5 = sub_AB9990();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_15F84(v4, v2, &qword_E0EC30);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_36B0C(v2, v7 + v6, &qword_E0EC30);
  sub_6E35A0(0, 0, v1, &unk_B18560, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_52BE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return (sub_63B058)(a1, 1);
}

uint64_t sub_52BF08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return (sub_63C578)(a1, 1);
}

uint64_t sub_52BFC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17BD0;

  return (sub_6512A4)(a1, 1);
}

uint64_t Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v54 = a4;
  v55 = a5;
  v50 = a2;
  v12 = sub_AB4C10();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v51 = v14;
  v53 = *(v14 - 8);
  v15 = v53;
  __chkstk_darwin(v14);
  v49 = (&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA90);
  __chkstk_darwin(v17 - 8);
  v52 = &v46 - v18;
  v19 = type metadata accessor for Actions.PlaybackContext();
  v20 = v19[5];
  (*(v15 + 56))(&a8[v20], 1, 1, v14);
  v21 = &a8[v19[6]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a8[v19[7]];
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *a8 = a1;
  sub_1FBB9C(a2, &a8[v20], &qword_E0EA90);
  v24 = *v21;
  v23 = *(v21 + 1);
  v25 = *(v21 + 2);
  v26 = *(v21 + 3);
  v27 = a3;
  v28 = a3;
  v29 = v54;
  v30 = v55;
  v31 = v57;
  sub_52C4DC(v28, v54, v55, v57);
  v32 = v25;
  v33 = v50;
  sub_52C528(v24, v23, v32, v26);
  v34 = v27;
  *v21 = v27;
  *(v21 + 1) = v29;
  *(v21 + 2) = v30;
  *(v21 + 3) = v31;
  v36 = v51;
  v35 = v52;
  sub_1FBB9C(v56, v22, &qword_E0EA98);
  sub_15F84(v33, v35, &qword_E0EA90);
  if ((*(v53 + 48))(v35, 1, v36) == 1)
  {
    sub_52C528(v34, v29, v55, v57);
    sub_12E1C(v56, &qword_E0EA98);
    sub_12E1C(v33, &qword_E0EA90);
    v33 = v35;
  }

  else
  {
    v37 = v29;
    v38 = v49;
    sub_537CF0(v35, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v46;
      v40 = v47;
      v41 = v48;
      (*(v47 + 32))(v46, v38, v48);
      v42 = sub_AB4BE0();
      (*(v40 + 8))(v39, v41);
    }

    else
    {
      v42 = *v38;
    }

    sub_52C574(v35);
    v43 = v55;
    v44 = v57;
    sub_6E05CC(v34, v37, v55, v57);
    sub_52C528(v34, v37, v43, v44);

    sub_12E1C(v56, &qword_E0EA98);
  }

  return sub_12E1C(v33, &qword_E0EA90);
}

uint64_t type metadata accessor for Actions.PlaybackContext()
{
  result = qword_E0EBD0;
  if (!qword_E0EBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_52C4DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_9007C(a3, a4);
  }
}

void sub_52C528(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_466A4(a3, a4);
  }
}

uint64_t sub_52C574(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Actions.PlaybackContext.playActivityInformation.getter()
{
  v1 = v0 + *(type metadata accessor for Actions.PlaybackContext() + 24);
  v2 = *v1;
  sub_52C4DC(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return v2;
}

void Actions.PlaybackContext.playActivityInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v6 = sub_AB4C10();
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Actions.PlaybackContext();
  v17 = v4 + *(v16 + 24);
  sub_52C528(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
  v18 = v29;
  v19 = v30;
  *v17 = a1;
  *(v17 + 8) = v18;
  v20 = v31;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  v21 = *(v16 + 20);
  if (!(*(v10 + 48))(v4 + v21, 1, v9))
  {
    v22 = v28;
    sub_537CF0(v4 + v21, v15, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_537CF0(v15, v13, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v22 + 32))(v8, v13, v6);
      v23 = sub_AB4BE0();
      (*(v22 + 8))(v8, v6);
      sub_52C574(v15);
    }

    else
    {
      sub_52C574(v15);
      v23 = *v13;
    }

    v24 = *v17;
    v25 = *(v17 + 8);
    v26 = *(v17 + 16);
    v27 = *(v17 + 24);
    sub_52C4DC(*v17, v25, v26, v27);
    sub_6E05CC(v24, v25, v26, v27);
    sub_52C528(v24, v25, v26, v27);
  }
}

void (*Actions.PlaybackContext.playActivityInformation.modify(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = sub_AB4C10();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v4[7] = v11;
  v12 = type metadata accessor for Actions.PlaybackContext();
  v4[8] = v12;
  *(v4 + 18) = *(v12 + 24);
  return sub_52CB24;
}

void sub_52CB24(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *v2;
    v4 = *(v2[8] + 20);
    if (!(*(v2[5] + 48))(*v2 + v4, 1, v2[4]))
    {
      v6 = v2[6];
      v5 = v2[7];
      sub_537CF0(v3 + v4, v5, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_537CF0(v5, v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = v2[6];
      v9 = v2[7];
      if (EnumCaseMultiPayload == 1)
      {
        v11 = v2[2];
        v10 = v2[3];
        v12 = v2[1];
        (*(v11 + 32))(v10, v2[6], v12);
        v13 = sub_AB4BE0();
        (*(v11 + 8))(v10, v12);
        sub_52C574(v9);
      }

      else
      {
        sub_52C574(v2[7]);
        v13 = *v8;
      }

      v14 = (*v2 + *(v2 + 18));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_52C4DC(*v14, v16, v17, v18);
      sub_6E05CC(v15, v16, v17, v18);
      sub_52C528(v15, v16, v17, v18);
    }
  }

  v19 = v2[6];
  v20 = v2[3];
  free(v2[7]);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v110 - v9;
  v11 = type metadata accessor for Actions.PlaybackContext();
  __chkstk_darwin(v11 - 8);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  __chkstk_darwin(v16);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v117 = type metadata accessor for Actions.PlaybackContext;
  sub_537CF0(a2, v13, type metadata accessor for Actions.PlaybackContext);
  v20 = a3;
  v115 = a3;
  sub_15F28(a3, &v155);
  v21 = a4;
  v114 = a4;
  v111 = v10;
  sub_15F84(a4, v10, &qword_E0EAA0);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v18, 0, v13, &v155, v10, v14, v15, &v120);
  sub_588B50(&v120, &v122);
  v171[0] = v120;
  sub_534B10(v171);
  v170 = v121;
  sub_12E1C(&v170, &unk_E12FB0);

  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8);
  v22 = swift_allocObject();
  v118 = xmmword_AF4EC0;
  *(v22 + 16) = xmmword_AF4EC0;
  LOBYTE(a4) = BYTE8(v126);
  v23 = swift_allocObject();
  v24 = v129;
  *(v23 + 112) = v128;
  *(v23 + 128) = v24;
  *(v23 + 144) = v130;
  v25 = v125;
  *(v23 + 48) = v124;
  *(v23 + 64) = v25;
  v26 = v127;
  *(v23 + 80) = v126;
  *(v23 + 96) = v26;
  v27 = v123;
  *(v23 + 16) = v122;
  *(v23 + 32) = v27;
  v28 = swift_allocObject();
  v29 = v129;
  *(v28 + 112) = v128;
  *(v28 + 128) = v29;
  *(v28 + 144) = v130;
  v30 = v125;
  *(v28 + 48) = v124;
  *(v28 + 64) = v30;
  v31 = v127;
  *(v28 + 80) = v126;
  *(v28 + 96) = v31;
  v32 = v123;
  *(v28 + 16) = v122;
  *(v28 + 32) = v32;
  v33 = swift_allocObject();
  v34 = v129;
  *(v33 + 112) = v128;
  *(v33 + 128) = v34;
  *(v33 + 144) = v130;
  v35 = v125;
  *(v33 + 48) = v124;
  *(v33 + 64) = v35;
  v36 = v127;
  *(v33 + 80) = v126;
  *(v33 + 96) = v36;
  v37 = v123;
  *(v33 + 16) = v122;
  *(v33 + 32) = v37;
  v112 = v22;
  *(v22 + 32) = a4;
  *(v22 + 40) = sub_534B68;
  *(v22 + 48) = v23;
  *(v22 + 56) = sub_534B70;
  *(v22 + 64) = v28;
  *(v22 + 72) = &unk_B182C0;
  *(v22 + 80) = v33;
  v38 = a1[3];
  v39 = a1[4];
  v40 = __swift_project_boxed_opaque_existential_1(a1, v38);
  __chkstk_darwin(v40);
  v42 = &v110 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42);
  v44 = v113;
  v45 = v13;
  sub_537CF0(v113, v13, v117);
  sub_15F28(v20, &v144);
  v46 = v111;
  sub_15F84(v21, v111, &qword_E0EAA0);
  sub_15F84(&v122, &v155, &qword_E0EAA8);
  sub_15F84(&v122, &v155, &qword_E0EAA8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v42, &dword_0 + 2, v45, &v144, v46, v38, v39, &v131);
  sub_588B50(&v131, &v133);
  v169 = v131;
  sub_534B10(&v169);
  v168 = v132;
  sub_12E1C(&v168, &unk_E12FB0);

  v47 = swift_allocObject();
  *(v47 + 16) = v118;
  LOBYTE(v42) = BYTE8(v137);
  v48 = swift_allocObject();
  v49 = v140;
  *(v48 + 112) = v139;
  *(v48 + 128) = v49;
  *(v48 + 144) = v141;
  v50 = v136;
  *(v48 + 48) = v135;
  *(v48 + 64) = v50;
  v51 = v138;
  *(v48 + 80) = v137;
  *(v48 + 96) = v51;
  v52 = v134;
  *(v48 + 16) = v133;
  *(v48 + 32) = v52;
  v53 = swift_allocObject();
  v54 = v140;
  *(v53 + 112) = v139;
  *(v53 + 128) = v54;
  *(v53 + 144) = v141;
  v55 = v136;
  *(v53 + 48) = v135;
  *(v53 + 64) = v55;
  v56 = v138;
  *(v53 + 80) = v137;
  *(v53 + 96) = v56;
  v57 = v134;
  *(v53 + 16) = v133;
  *(v53 + 32) = v57;
  v58 = swift_allocObject();
  v59 = v140;
  *(v58 + 112) = v139;
  *(v58 + 128) = v59;
  *(v58 + 144) = v141;
  v60 = v136;
  *(v58 + 48) = v135;
  *(v58 + 64) = v60;
  v61 = v138;
  *(v58 + 80) = v137;
  *(v58 + 96) = v61;
  v62 = v134;
  *(v58 + 16) = v133;
  *(v58 + 32) = v62;
  *(v47 + 32) = v42;
  *(v47 + 40) = sub_537F10;
  *(v47 + 48) = v48;
  *(v47 + 56) = sub_537F28;
  *(v47 + 64) = v53;
  *(v47 + 72) = &unk_B182D0;
  *(v47 + 80) = v58;
  v63 = a1[3];
  v64 = a1[4];
  v65 = __swift_project_boxed_opaque_existential_1(a1, v63);
  __chkstk_darwin(v65);
  v67 = &v110 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_537CF0(v44, v45, v117);
  sub_15F28(v115, &v144);
  sub_15F84(v114, v46, &qword_E0EAA0);
  sub_15F84(&v133, &v155, &qword_E0EAA8);
  sub_15F84(&v133, &v155, &qword_E0EAA8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v67, &dword_0 + 1, v45, &v144, v46, v63, v64, &v142);
  sub_588B50(&v142, &v144);
  v167 = v142;
  sub_534B10(&v167);
  v166 = v143;
  sub_12E1C(&v166, &unk_E12FB0);

  v69 = swift_allocObject();
  *(v69 + 16) = v118;
  LOBYTE(v21) = BYTE8(v148);
  v70 = swift_allocObject();
  v71 = v151;
  *(v70 + 112) = v150;
  *(v70 + 128) = v71;
  *(v70 + 144) = v152;
  v72 = v147;
  *(v70 + 48) = v146;
  *(v70 + 64) = v72;
  v73 = v149;
  *(v70 + 80) = v148;
  *(v70 + 96) = v73;
  v74 = v145;
  *(v70 + 16) = v144;
  *(v70 + 32) = v74;
  v75 = swift_allocObject();
  v76 = v151;
  *(v75 + 112) = v150;
  *(v75 + 128) = v76;
  *(v75 + 144) = v152;
  v77 = v147;
  *(v75 + 48) = v146;
  *(v75 + 64) = v77;
  v78 = v149;
  *(v75 + 80) = v148;
  *(v75 + 96) = v78;
  v79 = v145;
  *(v75 + 16) = v144;
  *(v75 + 32) = v79;
  v80 = swift_allocObject();
  v81 = v151;
  *(v80 + 112) = v150;
  *(v80 + 128) = v81;
  *(v80 + 144) = v152;
  v82 = v147;
  *(v80 + 48) = v146;
  *(v80 + 64) = v82;
  v83 = v149;
  *(v80 + 80) = v148;
  *(v80 + 96) = v83;
  v84 = v145;
  *(v80 + 16) = v144;
  *(v80 + 32) = v84;
  *(v69 + 32) = v21;
  *(v69 + 40) = sub_537F10;
  *(v69 + 48) = v70;
  *(v69 + 56) = sub_537F28;
  *(v69 + 64) = v75;
  *(v69 + 72) = &unk_B182D8;
  *(v69 + 80) = v80;
  v85 = a1[3];
  v86 = a1[4];
  v87 = __swift_project_boxed_opaque_existential_1(a1, v85);
  __chkstk_darwin(v87);
  v89 = &v110 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  sub_537CF0(v113, v45, v117);
  sub_15F28(v115, v119);
  sub_15F84(v114, v46, &qword_E0EAA0);
  sub_15F84(&v144, &v155, &qword_E0EAA8);
  sub_15F84(&v144, &v155, &qword_E0EAA8);
  Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v89, &dword_0 + 3, v45, v119, v46, v85, v86, &v153);
  sub_588B50(&v153, &v155);
  v165 = v153;
  sub_534B10(&v165);
  v164 = v154;
  sub_12E1C(&v164, &unk_E12FB0);

  v91 = swift_allocObject();
  *(v91 + 16) = v118;
  LOBYTE(v21) = BYTE8(v159);
  v92 = swift_allocObject();
  v93 = v162;
  *(v92 + 112) = v161;
  *(v92 + 128) = v93;
  *(v92 + 144) = v163;
  v94 = v158;
  *(v92 + 48) = v157;
  *(v92 + 64) = v94;
  v95 = v160;
  *(v92 + 80) = v159;
  *(v92 + 96) = v95;
  v96 = v156;
  *(v92 + 16) = v155;
  *(v92 + 32) = v96;
  v97 = swift_allocObject();
  v98 = v162;
  *(v97 + 112) = v161;
  *(v97 + 128) = v98;
  *(v97 + 144) = v163;
  v99 = v158;
  *(v97 + 48) = v157;
  *(v97 + 64) = v99;
  v100 = v160;
  *(v97 + 80) = v159;
  *(v97 + 96) = v100;
  v101 = v156;
  *(v97 + 16) = v155;
  *(v97 + 32) = v101;
  v102 = swift_allocObject();
  v103 = v162;
  *(v102 + 112) = v161;
  *(v102 + 128) = v103;
  *(v102 + 144) = v163;
  v104 = v158;
  *(v102 + 48) = v157;
  *(v102 + 64) = v104;
  v105 = v160;
  *(v102 + 80) = v159;
  *(v102 + 96) = v105;
  v106 = v156;
  *(v102 + 16) = v155;
  *(v102 + 32) = v106;
  *(v91 + 32) = v21;
  *(v91 + 40) = sub_537F10;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_537F28;
  *(v91 + 64) = v97;
  *(v91 + 72) = &unk_B182E0;
  *(v91 + 80) = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_AF85D0;
  *(v107 + 32) = v112;
  *(v107 + 40) = v47;
  *(v107 + 48) = v69;
  *(v107 + 56) = v91;
  sub_15F84(&v155, v119, &qword_E0EAA8);
  sub_15F84(&v155, v119, &qword_E0EAA8);
  v108 = sub_512C10(v107);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v108;
}

uint64_t static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a6;
  v86 = a3;
  v87 = a4;
  v95 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0);
  v10 = *(v9 - 8);
  v88 = (v9 - 8);
  v92 = v10;
  v91 = *(v10 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v94 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v93 = &v77 - v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v77 - v16;
  __chkstk_darwin(v15);
  v89 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  __chkstk_darwin(v18 - 8);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8);
  v22 = (v21 - 8);
  v79 = *(v21 - 8);
  v23 = *(v79 + 64);
  v24 = __chkstk_darwin(v21);
  v82 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v80 = &v77 - v26;
  v27 = __chkstk_darwin(v25);
  v78 = &v77 - v28;
  __chkstk_darwin(v27);
  v30 = &v77 - v29;
  v85 = a1;
  v31 = a1[3];
  inited = a1[4];
  v32 = __swift_project_boxed_opaque_existential_1(a1, v31);
  __chkstk_darwin(v32);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  sub_15F28(a3, v99);
  v81 = v20;
  sub_15F84(a4, v20, &qword_E0EAA0);
  v36 = v95;

  v38 = v96;
  v37 = v97;
  sub_307CC(v96);
  Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v34, v36, v99, v20, v38, v37, v31, inited, v30);
  v30[v22[11]] = 7;
  *&v30[v22[13]] = 0x4014000000000000;
  v39 = &v30[v22[12]];
  *v39 = sub_6AD460;
  v39[1] = 0;
  v40 = &v30[v22[14]];
  *v40 = &unk_B20ED0;
  *(v40 + 1) = 0;
  v41 = &v30[v22[15]];
  *v41 = &unk_B20ED8;
  *(v41 + 1) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8);
  inited = swift_initStackObject();
  v83 = xmmword_AF4EC0;
  *(inited + 16) = xmmword_AF4EC0;
  v42 = v78;
  sub_15F84(v30, v78, &qword_E0EAB8);
  v43 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v44 = swift_allocObject();
  sub_36B0C(v42, v44 + v43, &qword_E0EAB8);
  v45 = v80;
  sub_15F84(v30, v80, &qword_E0EAB8);
  v46 = swift_allocObject();
  sub_36B0C(v45, v46 + v43, &qword_E0EAB8);
  v47 = v82;
  sub_15F84(v30, v82, &qword_E0EAB8);
  v48 = swift_allocObject();
  sub_36B0C(v47, v48 + v43, &qword_E0EAB8);
  v49 = inited;
  *(inited + 32) = 7;
  v49[5] = sub_534D18;
  v49[6] = v44;
  v49[7] = sub_534DB8;
  v49[8] = v46;
  v49[9] = &unk_B18310;
  v49[10] = v48;
  sub_12E1C(v30, &qword_E0EAB8);
  v50 = v85[3];
  v51 = v85[4];
  v52 = __swift_project_boxed_opaque_existential_1(v85, v50);
  __chkstk_darwin(v52);
  v54 = &v77 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 16))(v54);
  sub_15F28(v86, v99);
  v56 = v81;
  sub_15F84(v87, v81, &qword_E0EAA0);
  v57 = v95;

  v59 = v96;
  v58 = v97;
  sub_307CC(v96);
  v60 = v89;
  Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v54, v57, v99, v56, v59, v58, v50, v51, v89);
  v61 = v88;
  *(v60 + v88[11]) = 8;
  *(v60 + v61[13]) = 0x4014000000000000;
  v62 = (v60 + v61[12]);
  v63 = v60;
  *v62 = sub_6AD6B0;
  v62[1] = 0;
  v64 = (v60 + v61[14]);
  *v64 = &unk_B20F00;
  v64[1] = 0;
  v65 = (v60 + v61[15]);
  *v65 = &unk_B20F08;
  v65[1] = 0;
  v66 = swift_initStackObject();
  *(v66 + 16) = v83;
  v67 = v90;
  sub_15F84(v60, v90, &qword_E0EAB0);
  v68 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v97 = swift_allocObject();
  sub_36B0C(v67, v97 + v68, &qword_E0EAB0);
  v69 = v93;
  sub_15F84(v60, v93, &qword_E0EAB0);
  v70 = swift_allocObject();
  sub_36B0C(v69, v70 + v68, &qword_E0EAB0);
  v71 = v94;
  sub_15F84(v60, v94, &qword_E0EAB0);
  v72 = swift_allocObject();
  sub_36B0C(v71, v72 + v68, &qword_E0EAB0);
  *(v66 + 32) = 8;
  v73 = v97;
  *(v66 + 40) = sub_534ECC;
  *(v66 + 48) = v73;
  *(v66 + 56) = sub_534F6C;
  *(v66 + 64) = v70;
  *(v66 + 72) = &unk_B18320;
  *(v66 + 80) = v72;
  sub_12E1C(v63, &qword_E0EAB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_AF85F0;
  *(v74 + 32) = inited;
  *(v74 + 40) = v66;
  v75 = sub_512C10(v74);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
  swift_arrayDestroy();
  return v75;
}

uint64_t static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v195 = a7;
  *&v196 = a6;
  v193 = a3;
  v194 = a5;
  v184 = a4;
  v9 = sub_AB8C80();
  v180 = *(v9 - 8);
  v181 = v9;
  __chkstk_darwin(v9);
  v182 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  __chkstk_darwin(v11 - 8);
  v189 = (&v176 - v12);
  v13 = sub_AB8E20();
  v186 = *(v13 - 8);
  v187 = v13;
  __chkstk_darwin(v13);
  v192 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB8770();
  v191 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  __chkstk_darwin(v18 - 8);
  v20 = &v176 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v23 = a1[5];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  __chkstk_darwin(v24);
  v26 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  sub_15F28(v193, &v217);
  sub_15F84(v195, v20, &qword_E0EAA0);
  v188 = v20;
  Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)(v26, a2, &v217, v194, v196, v20, v22, v21, &v224, v23);
  LOBYTE(v227) = 0;
  *(&v227 + 1) = sub_53842C;
  *&v228 = 0;
  *(&v228 + 1) = 0x4014000000000000;
  *&v229 = &unk_B186B8;
  *(&v229 + 1) = 0;
  *&v230 = &unk_B186C0;
  *(&v230 + 1) = 0;
  sub_53525C(a1, &v217);
  swift_unknownObjectRetain();
  v190 = a2;

  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAC0);
  if (swift_dynamicCast())
  {
    v28 = (*(v191 + 8))(v17, v15);
    v29 = (v224)(v28);
    if (v30 == 1)
    {
      v31 = 0;
      goto LABEL_6;
    }

    sub_501D64(v29, v30);
  }

  v31 = 1;
LABEL_6:
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8);
  v32 = swift_allocObject();
  v196 = xmmword_AF4EC0;
  *(v32 + 16) = xmmword_AF4EC0;
  v33 = v227;
  v34 = swift_allocObject();
  v35 = v229;
  v34[5] = v228;
  v34[6] = v35;
  v34[7] = v230;
  v36 = v225;
  v34[1] = v224;
  v34[2] = v36;
  v37 = v227;
  v34[3] = v226;
  v34[4] = v37;
  v38 = swift_allocObject();
  v39 = v229;
  v38[5] = v228;
  v38[6] = v39;
  v38[7] = v230;
  v40 = v225;
  v38[1] = v224;
  v38[2] = v40;
  v41 = v227;
  v38[3] = v226;
  v38[4] = v41;
  v42 = swift_allocObject();
  v43 = v229;
  v42[5] = v228;
  v42[6] = v43;
  v42[7] = v230;
  v44 = v225;
  v42[1] = v224;
  v42[2] = v44;
  v45 = v227;
  v42[3] = v226;
  v42[4] = v45;
  *(v32 + 32) = v33;
  *(v32 + 40) = sub_5352C0;
  *(v32 + 48) = v34;
  *(v32 + 56) = sub_537F68;
  *(v32 + 64) = v38;
  *(v32 + 72) = &unk_B18340;
  *(v32 + 80) = v42;
  v185 = v32;
  if (v31)
  {
    v46 = a1[3];
    v47 = a1[4];
    v48 = a1[5];
    v49 = __swift_project_boxed_opaque_existential_1(a1, v46);
    __chkstk_darwin(v49);
    v51 = &v176 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v51);
    v53 = v193;
    sub_15F28(v193, &v217);
    v54 = v195;
    v55 = v188;
    sub_15F84(v195, v188, &qword_E0EAA0);
    Actions.DeleteFromLibrary.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v51, v190, &v217, v55, v46, v47, v48, &v210);
    v203 = v210;
    v204 = v211;
    v205 = v212;
    LOBYTE(v206) = 49;
    *(&v206 + 1) = sub_53842C;
    *&v207 = 0;
    *(&v207 + 1) = 0x4014000000000000;
    *&v208 = &unk_B18A48;
    *(&v208 + 1) = 0;
    *&v209 = &unk_B18A50;
    *(&v209 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v196;
    v57 = swift_allocObject();
    v58 = v208;
    v57[5] = v207;
    v57[6] = v58;
    v57[7] = v209;
    v59 = v204;
    v57[1] = v203;
    v57[2] = v59;
    v60 = v206;
    v57[3] = v205;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v208;
    v61[5] = v207;
    v61[6] = v62;
    v61[7] = v209;
    v63 = v204;
    v61[1] = v203;
    v61[2] = v63;
    v64 = v206;
    v61[3] = v205;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v208;
    v65[5] = v207;
    v65[6] = v66;
    v65[7] = v209;
    v67 = v204;
    v65[1] = v203;
    v65[2] = v67;
    v68 = v206;
    v65[3] = v205;
    v65[4] = v68;
    v183 = v56;
    *(v56 + 32) = 49;
    *(v56 + 40) = sub_53553C;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_537F68;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_B183A0;
    *(v56 + 80) = v65;
    v69 = a1[3];
    v70 = a1[4];
    v71 = a1[5];
    v72 = __swift_project_boxed_opaque_existential_1(a1, v69);
    __chkstk_darwin(v72);
    v74 = &v176 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v74);
    sub_15F28(v53, &v217);
    v76 = v54;
    v77 = v55;
    sub_15F84(v76, v55, &qword_E0EAA0);
    v78 = v190;
    Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v74, v190, 0, &v217, v77, v69, v70, v71, &v197);
    v210 = v197;
    v211 = v198;
    v212 = v199;
    LOBYTE(v213) = 48;
    *(&v213 + 1) = sub_53842C;
    *&v214 = 0;
    *(&v214 + 1) = 0x4014000000000000;
    *&v215 = &unk_B191A0;
    *(&v215 + 1) = 0;
    *&v216 = &unk_B191A8;
    *(&v216 + 1) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = v196;
    v80 = swift_allocObject();
    v81 = v215;
    v80[5] = v214;
    v80[6] = v81;
    v80[7] = v216;
    v82 = v211;
    v80[1] = v210;
    v80[2] = v82;
    v83 = v213;
    v80[3] = v212;
    v80[4] = v83;
    v84 = swift_allocObject();
    v85 = v215;
    v84[5] = v214;
    v84[6] = v85;
    v84[7] = v216;
    v86 = v211;
    v84[1] = v210;
    v84[2] = v86;
    v87 = v213;
    v84[3] = v212;
    v84[4] = v87;
    v88 = swift_allocObject();
    v89 = v215;
    v88[5] = v214;
    v88[6] = v89;
    v88[7] = v216;
    v90 = v211;
    v88[1] = v210;
    v88[2] = v90;
    v91 = v213;
    v88[3] = v212;
    v88[4] = v91;
    *(v79 + 32) = 48;
    *(v79 + 40) = sub_535614;
    *(v79 + 48) = v80;
    *(v79 + 56) = sub_537F68;
    *(v79 + 64) = v84;
    *(v79 + 72) = &unk_B183B0;
    *(v79 + 80) = v88;
    v92 = a1[3];
    v178 = a1[4];
    v179 = v79;
    v177 = a1[5];
    v93 = __swift_project_boxed_opaque_existential_1(a1, v92);
    v176 = &v176;
    __chkstk_darwin(v93);
    v95 = &v176 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v96 + 16))(v95);
    sub_15F28(v53, &v197);
    sub_15F84(v195, v77, &qword_E0EAA0);

    sub_15F84(&v224, &v217, &qword_E0EAC8);

    sub_15F84(&v224, &v217, &qword_E0EAC8);
    sub_15F84(&v203, &v217, &qword_E0EAF8);
    sub_15F84(&v210, &v217, &qword_E0EB00);

    sub_15F84(&v224, &v217, &qword_E0EAC8);
    sub_15F84(&v203, &v217, &qword_E0EAF8);
    sub_15F84(&v210, &v217, &qword_E0EB00);
    Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v95, v78, &v197, v188, v92, v178, v177, &v200);
    v217 = v200;
    v218 = v201;
    v219 = v202;
    LOBYTE(v220) = 1;
    *(&v220 + 1) = sub_53842C;
    *&v221 = 0;
    *(&v221 + 1) = 0x4014000000000000;
    *&v222 = &unk_B18E38;
    *(&v222 + 1) = 0;
    *&v223 = &unk_B18E40;
    *(&v223 + 1) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v196;
    v98 = swift_allocObject();
    v99 = v222;
    v98[5] = v221;
    v98[6] = v99;
    v98[7] = v223;
    v100 = v218;
    v98[1] = v217;
    v98[2] = v100;
    v101 = v220;
    v98[3] = v219;
    v98[4] = v101;
    v102 = swift_allocObject();
    v103 = v222;
    v102[5] = v221;
    v102[6] = v103;
    v102[7] = v223;
    v104 = v218;
    v102[1] = v217;
    v102[2] = v104;
    v105 = v220;
    v102[3] = v219;
    v102[4] = v105;
    v106 = swift_allocObject();
    v107 = v222;
    v106[5] = v221;
    v106[6] = v107;
    v106[7] = v223;
    v108 = v218;
    v106[1] = v217;
    v106[2] = v108;
    v109 = v220;
    v106[3] = v219;
    v106[4] = v109;
    *(v97 + 32) = 1;
    *(v97 + 40) = sub_5356E8;
    *(v97 + 48) = v98;
    *(v97 + 56) = sub_537F68;
    *(v97 + 64) = v102;
    *(v97 + 72) = &unk_B183D0;
    *(v97 + 80) = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_AF8820;
    *(v110 + 32) = v183;
    *(v110 + 40) = v179;
    *(v110 + 48) = v97;
    sub_15F84(&v217, &v197, &qword_E0EB08);
    sub_15F84(&v217, &v197, &qword_E0EB08);
    v183 = sub_512C10(v110);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_15F84(&v224, &v217, &qword_E0EAC8);
    sub_15F84(&v224, &v217, &qword_E0EAC8);
    sub_15F84(&v224, &v217, &qword_E0EAC8);
    v183 = _swiftEmptyArrayStorage;
  }

  v111 = v186;
  v112 = v187;
  v113 = v192;
  sub_53525C(a1, &v217);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAD0);
  v114 = swift_dynamicCast();
  v115 = v189;
  if (v114)
  {
    sub_536538(&v210, &v203);
    sub_15F84(v184, &v200, &qword_E0EAE0);
    if (*(&v201 + 1))
    {
      sub_70DF8(&v200, &v197);
      v116 = *(&v204 + 1);
      v186 = *(&v205 + 1);
      v187 = v205;
      v117 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
      v118 = v111;
      v119 = *(&v198 + 1);
      v120 = v199;
      v121 = a1;
      v122 = __swift_project_boxed_opaque_existential_1(&v197, *(&v198 + 1));
      sub_15F28(v193, &v210);
      v123 = v112;
      v124 = v188;
      sub_15F84(v195, v188, &qword_E0EAA0);
      v175 = v120;
      v111 = v118;
      v125 = v122;
      a1 = v121;
      v126 = v124;
      v112 = v123;
      v127 = v119;
      v113 = v192;
      sub_547D58(v117, &v210, v125, v126, v116, v127, v187, v186, &v217, v175);
      LOBYTE(v220) = 11;
      *(&v220 + 1) = sub_53842C;
      *&v221 = 0;
      *(&v221 + 1) = 0x4014000000000000;
      *&v222 = &unk_B18838;
      *(&v222 + 1) = 0;
      *&v223 = &unk_B18840;
      *(&v223 + 1) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v196;
      v129 = swift_allocObject();
      v130 = v222;
      v129[5] = v221;
      v129[6] = v130;
      v129[7] = v223;
      v131 = v218;
      v129[1] = v217;
      v129[2] = v131;
      v132 = v220;
      v129[3] = v219;
      v129[4] = v132;
      v133 = swift_allocObject();
      v134 = v222;
      v133[5] = v221;
      v133[6] = v134;
      v133[7] = v223;
      v135 = v218;
      v133[1] = v217;
      v133[2] = v135;
      v136 = v220;
      v133[3] = v219;
      v133[4] = v136;
      v137 = swift_allocObject();
      v138 = v222;
      v137[5] = v221;
      v137[6] = v138;
      v137[7] = v223;
      v139 = v218;
      v137[1] = v217;
      v137[2] = v139;
      v140 = v220;
      v137[3] = v219;
      v137[4] = v140;
      *(v128 + 32) = 11;
      *(v128 + 40) = sub_535468;
      *(v128 + 48) = v129;
      *(v128 + 56) = sub_537F68;
      *(v128 + 64) = v133;
      *(v128 + 72) = &unk_B18388;
      *(v128 + 80) = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
      v141 = swift_allocObject();
      *(v141 + 16) = v196;
      *(v141 + 32) = v128;
      sub_15F84(&v217, &v210, &qword_E0EAF0);
      sub_15F84(&v217, &v210, &qword_E0EAF0);
      v142 = sub_512C10(v141);
      swift_setDeallocating();
      sub_12E1C(v141 + 32, &qword_E0E0B8);
      v115 = v189;
      swift_deallocClassInstance();
      __swift_destroy_boxed_opaque_existential_0(&v197);
      __swift_destroy_boxed_opaque_existential_0(&v203);
      goto LABEL_15;
    }

    sub_12E1C(&v200, &qword_E0EAE0);
    __swift_destroy_boxed_opaque_existential_0(&v203);
  }

  else
  {
    v211 = 0u;
    v212 = 0u;
    v210 = 0u;
    sub_12E1C(&v210, &qword_E0EAD8);
  }

  v142 = _swiftEmptyArrayStorage;
LABEL_15:
  sub_53525C(a1, &v217);
  v143 = swift_dynamicCast();
  v144 = *(v111 + 56);
  if ((v143 & 1) == 0)
  {
    v144(v115, 1, 1, v112);
    v170 = &qword_E10B00;
    v171 = v115;
LABEL_20:
    sub_12E1C(v171, v170);
    v169 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v144(v115, 0, 1, v112);
  (*(v111 + 32))(v113, v115, v112);
  sub_15F84(v184, &v197, &qword_E0EAE0);
  if (!*(&v198 + 1))
  {
    (*(v111 + 8))(v113, v112);
    v170 = &qword_E0EAE0;
    v171 = &v197;
    goto LABEL_20;
  }

  sub_70DF8(&v197, &v203);
  v145 = *(&v204 + 1);
  v146 = v205;
  v147 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
  v148 = *(v111 + 16);
  v149 = v111;
  v150 = v182;
  v148(v182, v113, v112);
  v151 = (*(v180 + 104))(v150, enum case for Playlist.Folder.Item.playlist(_:), v181);
  __chkstk_darwin(v151);
  v153 = &v176 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v154 + 16))(v153, v147, v145);
  Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v150, v190, v153, v145, v146, &v210);
  v217 = v210;
  v218 = v211;
  v219 = v212;
  LOBYTE(v220) = 20;
  *(&v220 + 1) = sub_563204;
  *&v221 = 0;
  *(&v221 + 1) = 0x4014000000000000;
  *&v222 = &unk_B18F80;
  *(&v222 + 1) = 0;
  *&v223 = &unk_B18F88;
  *(&v223 + 1) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v196;
  v156 = swift_allocObject();
  v157 = v222;
  v156[5] = v221;
  v156[6] = v157;
  v156[7] = v223;
  v158 = v218;
  v156[1] = v217;
  v156[2] = v158;
  v159 = v220;
  v156[3] = v219;
  v156[4] = v159;
  v160 = swift_allocObject();
  v161 = v222;
  v160[5] = v221;
  v160[6] = v161;
  v160[7] = v223;
  v162 = v218;
  v160[1] = v217;
  v160[2] = v162;
  v163 = v220;
  v160[3] = v219;
  v160[4] = v163;
  v164 = swift_allocObject();
  v165 = v222;
  v164[5] = v221;
  v164[6] = v165;
  v164[7] = v223;
  v166 = v218;
  v164[1] = v217;
  v164[2] = v166;
  v167 = v220;
  v164[3] = v219;
  v164[4] = v167;
  *(v155 + 32) = 20;
  *(v155 + 40) = sub_535394;
  *(v155 + 48) = v156;
  *(v155 + 56) = sub_537F68;
  *(v155 + 64) = v160;
  *(v155 + 72) = &unk_B18370;
  *(v155 + 80) = v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v168 = swift_allocObject();
  *(v168 + 16) = v196;
  *(v168 + 32) = v155;
  sub_15F84(&v217, &v210, &qword_E0EAE8);

  sub_15F84(&v217, &v210, &qword_E0EAE8);
  v169 = sub_512C10(v168);
  swift_setDeallocating();
  sub_12E1C(v168 + 32, &qword_E0E0B8);
  swift_deallocClassInstance();
  (*(v149 + 8))(v192, v112);
  __swift_destroy_boxed_opaque_existential_0(&v203);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_AF85D0;
  *(v172 + 32) = v185;
  *(v172 + 40) = v183;
  *(v172 + 48) = v142;
  *(v172 + 56) = v169;
  v173 = sub_512C10(v172);
  sub_12E1C(&v224, &qword_E0EAC8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v173;
}

uint64_t static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v133 = a6;
  v118 = a4;
  v131 = a2;
  v123 = a1;
  v9 = sub_AB8C80();
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB8CA0();
  v129 = *(v11 - 8);
  v130 = v11;
  v12 = __chkstk_darwin(v11);
  v125 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v13;
  __chkstk_darwin(v12);
  v132 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  sub_15F84(a1, &v112 - v19, &qword_E0EB10);
  v126 = a3;
  sub_15F28(a3, &v156);
  v21 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_36B0C(v20, v24 + v21, &qword_E0EB10);
  *(v24 + v22) = 0;
  v25 = (v24 + v23);
  v127 = a5;
  v26 = v133;
  *v25 = a5;
  v25[1] = v26;
  sub_17704(&v156, v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *&v156 = sub_5357BC;
  *(&v156 + 1) = v131;
  *&v157 = &unk_B183E8;
  *(&v157 + 1) = v24;
  *&v158 = &unk_B18F98;
  *(&v158 + 1) = 0;
  LOBYTE(v159) = 10;
  *(&v159 + 1) = sub_563204;
  *&v160 = 0;
  *(&v160 + 1) = 0x4014000000000000;
  *&v161 = &unk_B18FA0;
  *(&v161 + 1) = 0;
  *&v162 = &unk_B18FA8;
  *(&v162 + 1) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8);
  v28 = swift_allocObject();
  v128 = xmmword_AF4EC0;
  *(v28 + 16) = xmmword_AF4EC0;
  v29 = swift_allocObject();
  v30 = v161;
  v29[5] = v160;
  v29[6] = v30;
  v29[7] = v162;
  v31 = v157;
  v29[1] = v156;
  v29[2] = v31;
  v32 = v159;
  v29[3] = v158;
  v29[4] = v32;
  v33 = swift_allocObject();
  v34 = v161;
  v33[5] = v160;
  v33[6] = v34;
  v33[7] = v162;
  v35 = v157;
  v33[1] = v156;
  v33[2] = v35;
  v36 = v159;
  v33[3] = v158;
  v33[4] = v36;
  v37 = swift_allocObject();
  v38 = v161;
  v37[5] = v160;
  v37[6] = v38;
  v37[7] = v162;
  v39 = v157;
  v37[1] = v156;
  v37[2] = v39;
  v40 = v159;
  v37[3] = v158;
  v37[4] = v40;
  *(v28 + 32) = 10;
  *(v28 + 40) = sub_535AA0;
  *(v28 + 48) = v29;
  *(v28 + 56) = sub_537F68;
  *(v28 + 64) = v33;
  *(v28 + 72) = &unk_B183F8;
  *(v28 + 80) = v37;
  v41 = v122;
  sub_15F84(v123, v122, &qword_E0EB10);
  v42 = v129;
  v43 = v130;
  if ((*(v129 + 48))(v41, 1) == 1)
  {
    sub_15F84(&v156, &v149, &qword_E0EB18);

    sub_15F84(&v156, &v149, &qword_E0EB18);
    sub_307CC(v127);
    sub_12E1C(v41, &qword_E0EB10);
    v44 = _swiftEmptyArrayStorage;
  }

  else
  {
    v45 = *(v42 + 32);
    v46 = v132;
    v124 = v27;
    v45(v132, v41, v43);
    v115 = v45;
    v116 = v42 + 32;
    v47 = *(v42 + 16);
    v122 = v28;
    v123 = v42 + 16;
    v48 = v125;
    v49 = v43;
    v47(v125, v46, v43);
    v113 = v47;
    sub_15F28(v126, &v149);
    v50 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v114 = *(v42 + 80);
    v117 += 7;
    v51 = (v117 + v50) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    v53 = v49;
    v54 = v49;
    v28 = v122;
    v45((v52 + v50), v48, v53);
    sub_17704(&v149, v52 + v51);
    v55 = v131;
    *&v135 = sub_5357BC;
    *(&v135 + 1) = v131;
    *&v136 = &unk_B18408;
    *(&v136 + 1) = v52;
    *&v137 = &unk_B18FB8;
    *(&v137 + 1) = 0;
    LOBYTE(v138) = 19;
    *(&v138 + 1) = sub_563204;
    *&v139 = 0;
    *(&v139 + 1) = 0x4014000000000000;
    *&v140 = &unk_B18FC0;
    *(&v140 + 1) = 0;
    *&v141 = &unk_B18FC8;
    *(&v141 + 1) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v128;
    v57 = swift_allocObject();
    v58 = v140;
    v57[5] = v139;
    v57[6] = v58;
    v57[7] = v141;
    v59 = v136;
    v57[1] = v135;
    v57[2] = v59;
    v60 = v138;
    v57[3] = v137;
    v57[4] = v60;
    v61 = swift_allocObject();
    v62 = v140;
    v61[5] = v139;
    v61[6] = v62;
    v61[7] = v141;
    v63 = v136;
    v61[1] = v135;
    v61[2] = v63;
    v64 = v138;
    v61[3] = v137;
    v61[4] = v64;
    v65 = swift_allocObject();
    v66 = v140;
    v65[5] = v139;
    v65[6] = v66;
    v65[7] = v141;
    v67 = v136;
    v65[1] = v135;
    v65[2] = v67;
    v68 = v138;
    v65[3] = v137;
    v65[4] = v68;
    *(v56 + 32) = 19;
    *(v56 + 40) = sub_535D50;
    *(v56 + 48) = v57;
    *(v56 + 56) = sub_537F68;
    *(v56 + 64) = v61;
    *(v56 + 72) = &unk_B18418;
    *(v56 + 80) = v65;
    v69 = v118[3];
    v70 = v118[4];
    v71 = __swift_project_boxed_opaque_existential_1(v118, v69);
    v72 = v121;
    v47(v121, v132, v54);
    v73 = (*(v119 + 104))(v72, enum case for Playlist.Folder.Item.folder(_:), v120);
    __chkstk_darwin(v73);
    v75 = &v112 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v75, v71, v69);
    Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v72, v55, v75, v69, v70, &v149);
    v142 = v149;
    v143 = v150;
    v144 = v151;
    LOBYTE(v145) = 20;
    *(&v145 + 1) = sub_563204;
    *&v146 = 0;
    *(&v146 + 1) = 0x4014000000000000;
    *&v147 = &unk_B18F80;
    *(&v147 + 1) = 0;
    *&v148 = &unk_B18F88;
    *(&v148 + 1) = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v128;
    v78 = swift_allocObject();
    v79 = v147;
    v78[5] = v146;
    v78[6] = v79;
    v78[7] = v148;
    v80 = v143;
    v78[1] = v142;
    v78[2] = v80;
    v81 = v145;
    v78[3] = v144;
    v78[4] = v81;
    v82 = swift_allocObject();
    v83 = v147;
    v82[5] = v146;
    v82[6] = v83;
    v82[7] = v148;
    v84 = v143;
    v82[1] = v142;
    v82[2] = v84;
    v85 = v145;
    v82[3] = v144;
    v82[4] = v85;
    v86 = swift_allocObject();
    v87 = v147;
    v86[5] = v146;
    v86[6] = v87;
    v86[7] = v148;
    v88 = v143;
    v86[1] = v142;
    v86[2] = v88;
    v89 = v145;
    v86[3] = v144;
    v86[4] = v89;
    *(v77 + 32) = 20;
    *(v77 + 40) = sub_537F14;
    *(v77 + 48) = v78;
    *(v77 + 56) = sub_537F68;
    *(v77 + 64) = v82;
    *(v77 + 72) = &unk_B18420;
    *(v77 + 80) = v86;
    v90 = v125;
    v91 = v130;
    v113(v125, v132, v130);
    sub_15F28(v126, &v149);
    v92 = (v114 + 24) & ~v114;
    v93 = (v117 + v92) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    *(v94 + 16) = v55;

    v115(v94 + v92, v90, v91);
    sub_17704(&v149, v94 + v93);
    *&v149 = sub_535E24;
    *(&v149 + 1) = v55;
    *&v150 = &unk_B18428;
    *(&v150 + 1) = v94;
    *&v151 = &unk_B18FD8;
    *(&v151 + 1) = 0;
    LOBYTE(v152) = 50;
    *(&v152 + 1) = sub_563204;
    *&v153 = 0;
    *(&v153 + 1) = 0x4014000000000000;
    *&v154 = &unk_B18FE0;
    *(&v154 + 1) = 0;
    *&v155 = &unk_B18FE8;
    *(&v155 + 1) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v128;
    v96 = swift_allocObject();
    v97 = v154;
    v96[5] = v153;
    v96[6] = v97;
    v96[7] = v155;
    v98 = v150;
    v96[1] = v149;
    v96[2] = v98;
    v99 = v152;
    v96[3] = v151;
    v96[4] = v99;
    v100 = swift_allocObject();
    v101 = v154;
    v100[5] = v153;
    v100[6] = v101;
    v100[7] = v155;
    v102 = v150;
    v100[1] = v149;
    v100[2] = v102;
    v103 = v152;
    v100[3] = v151;
    v100[4] = v103;
    v104 = swift_allocObject();
    v105 = v154;
    v104[5] = v153;
    v104[6] = v105;
    v104[7] = v155;
    v106 = v150;
    v104[1] = v149;
    v104[2] = v106;
    v107 = v152;
    v104[3] = v151;
    v104[4] = v107;
    *(v95 + 32) = 50;
    *(v95 + 40) = sub_536048;
    *(v95 + 48) = v96;
    *(v95 + 56) = sub_537F68;
    *(v95 + 64) = v100;
    *(v95 + 72) = &unk_B18438;
    *(v95 + 80) = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_AF8820;
    *(v108 + 32) = v56;
    *(v108 + 40) = v77;
    *(v108 + 48) = v95;
    swift_retain_n();
    sub_15F84(&v156, v134, &qword_E0EB18);
    sub_15F84(&v135, v134, &qword_E0EB20);
    sub_15F84(&v142, v134, &qword_E0EAE8);
    sub_15F84(&v149, v134, &qword_E0EB28);

    sub_15F84(&v156, v134, &qword_E0EB18);
    sub_15F84(&v135, v134, &qword_E0EB20);
    sub_15F84(&v142, v134, &qword_E0EAE8);
    sub_15F84(&v149, v134, &qword_E0EB28);
    sub_307CC(v127);
    v44 = sub_512C10(v108);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v129 + 8))(v132, v130);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_AF85F0;
  *(v109 + 32) = v28;
  *(v109 + 40) = v44;
  v110 = sub_512C10(v109);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v110;
}

uint64_t static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v148 = a7;
  v138 = a5;
  v139 = a6;
  v142 = a4;
  v143 = a2;
  v145 = a3;
  v150 = a9;
  v151 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  __chkstk_darwin(v16 - 8);
  v152 = &v137 - v17;
  v18 = a1;
  v149 = a1;
  v19 = a1[3];
  *&v153 = v18[4];
  v20 = __swift_project_boxed_opaque_existential_1(v18, v19);
  __chkstk_darwin(v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  sub_E8BA0(a3, &v181);
  sub_15F84(a4, &v174, &qword_E0EB30);
  sub_15F28(a7, &v188);
  v24 = a8;
  v25 = v152;
  sub_15F84(a8, v152, &qword_E0EAA0);
  Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v22, a2, &v181, &v174, &v188, v25, a9, a10, &v167, v19, v153);
  LOBYTE(v170) = 2;
  *(&v170 + 1) = sub_563204;
  *&v171 = 0;
  *(&v171 + 1) = 0x4014000000000000;
  *&v172 = &unk_B1A950;
  *(&v172 + 1) = 0;
  *&v173 = &unk_B1A958;
  *(&v173 + 1) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E1A8);
  v27 = swift_allocObject();
  v153 = xmmword_AF4EC0;
  *(v27 + 16) = xmmword_AF4EC0;
  v28 = swift_allocObject();
  v29 = v172;
  v28[5] = v171;
  v28[6] = v29;
  v28[7] = v173;
  v30 = v168;
  v28[1] = v167;
  v28[2] = v30;
  v31 = v170;
  v28[3] = v169;
  v28[4] = v31;
  v32 = swift_allocObject();
  v33 = v172;
  v32[5] = v171;
  v32[6] = v33;
  v32[7] = v173;
  v34 = v168;
  v32[1] = v167;
  v32[2] = v34;
  v35 = v170;
  v32[3] = v169;
  v32[4] = v35;
  v36 = swift_allocObject();
  v37 = v172;
  v36[5] = v171;
  v36[6] = v37;
  v36[7] = v173;
  v38 = v168;
  v36[1] = v167;
  v36[2] = v38;
  v39 = v170;
  v36[3] = v169;
  v36[4] = v39;
  *(v27 + 32) = 2;
  *(v27 + 40) = sub_53611C;
  *(v27 + 48) = v28;
  *(v27 + 56) = sub_537F68;
  *(v27 + 64) = v32;
  *(v27 + 72) = &unk_B18460;
  *(v27 + 80) = v36;
  v146 = v27;
  v40 = v149[3];
  v41 = v149[4];
  v42 = v149;
  v43 = __swift_project_boxed_opaque_existential_1(v149, v40);
  __chkstk_darwin(v43);
  v45 = &v137 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v45);
  sub_E8BA0(v145, &v181);
  v47 = v142;
  sub_15F84(v142, &v155, &qword_E0EB30);
  sub_15F28(v148, &v188);
  v141 = v24;
  v48 = v152;
  sub_15F84(v24, v152, &qword_E0EAA0);
  v49 = v143;
  Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:)(v45, v143, &v181, &v155, &v188, v48, v150, v151, &v174, v40, v41);
  LOBYTE(v177) = 3;
  *(&v177 + 1) = sub_563204;
  *&v178 = 0;
  *(&v178 + 1) = 0x4014000000000000;
  *&v179 = &unk_B1A980;
  *(&v179 + 1) = 0;
  *&v180 = &unk_B1A988;
  *(&v180 + 1) = 0;
  v147 = v26;
  v50 = swift_allocObject();
  *(v50 + 16) = v153;
  v51 = swift_allocObject();
  v52 = v179;
  v51[5] = v178;
  v51[6] = v52;
  v51[7] = v180;
  v53 = v175;
  v51[1] = v174;
  v51[2] = v53;
  v54 = v177;
  v51[3] = v176;
  v51[4] = v54;
  v55 = swift_allocObject();
  v56 = v179;
  v55[5] = v178;
  v55[6] = v56;
  v55[7] = v180;
  v57 = v175;
  v55[1] = v174;
  v55[2] = v57;
  v58 = v177;
  v55[3] = v176;
  v55[4] = v58;
  v59 = swift_allocObject();
  v60 = v179;
  v59[5] = v178;
  v59[6] = v60;
  v59[7] = v180;
  v61 = v175;
  v59[1] = v174;
  v59[2] = v61;
  v62 = v177;
  v59[3] = v176;
  v59[4] = v62;
  *(v50 + 32) = 3;
  *(v50 + 40) = sub_5361F0;
  *(v50 + 48) = v51;
  *(v50 + 56) = sub_537F68;
  *(v50 + 64) = v55;
  *(v50 + 72) = &unk_B18470;
  *(v50 + 80) = v59;
  v145 = v50;
  v63 = v42[3];
  v64 = v42[4];
  v65 = __swift_project_boxed_opaque_existential_1(v42, v63);
  __chkstk_darwin(v65);
  v67 = &v137 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v68 + 16))(v67);
  sub_15F84(v47, &v188, &qword_E0EB30);
  v69 = v24;
  v70 = v152;
  sub_15F84(v69, v152, &qword_E0EAA0);
  Actions.SuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v67, v49, &v188, v70, v63, v64, &v181);
  LOBYTE(v184) = 36;
  *(&v184 + 1) = sub_563204;
  *&v185 = 0;
  *(&v185 + 1) = 0x4014000000000000;
  *&v186 = &unk_B1A9B0;
  *(&v186 + 1) = 0;
  *&v187 = &unk_B1A9B8;
  *(&v187 + 1) = 0;
  v71 = swift_allocObject();
  *(v71 + 16) = v153;
  v72 = swift_allocObject();
  v73 = v186;
  v72[5] = v185;
  v72[6] = v73;
  v72[7] = v187;
  v74 = v182;
  v72[1] = v181;
  v72[2] = v74;
  v75 = v184;
  v72[3] = v183;
  v72[4] = v75;
  v76 = swift_allocObject();
  v77 = v186;
  v76[5] = v185;
  v76[6] = v77;
  v76[7] = v187;
  v78 = v182;
  v76[1] = v181;
  v76[2] = v78;
  v79 = v184;
  v76[3] = v183;
  v76[4] = v79;
  v80 = swift_allocObject();
  v81 = v186;
  v80[5] = v185;
  v80[6] = v81;
  v80[7] = v187;
  v82 = v182;
  v80[1] = v181;
  v80[2] = v82;
  v83 = v184;
  v80[3] = v183;
  v80[4] = v83;
  *(v71 + 32) = 36;
  *(v71 + 40) = sub_5362C4;
  *(v71 + 48) = v72;
  *(v71 + 56) = sub_5362F8;
  *(v71 + 64) = v76;
  *(v71 + 72) = &unk_B18480;
  *(v71 + 80) = v80;
  v144 = v71;
  v84 = v42[3];
  v140 = v42[4];
  v85 = __swift_project_boxed_opaque_existential_1(v42, v84);
  __chkstk_darwin(v85);
  v87 = &v137 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87);
  sub_15F84(v47, &v155, &qword_E0EB30);
  sub_15F84(v141, v70, &qword_E0EAA0);
  v89 = v49;
  swift_retain_n();
  v90 = v150;
  sub_307CC(v150);
  sub_15F84(&v167, &v188, &qword_E0EB38);
  sub_15F84(&v174, &v188, &qword_E0EB40);
  sub_15F84(&v181, &v188, &qword_E0EB48);

  sub_15F84(&v167, &v188, &qword_E0EB38);
  sub_307CC(v90);
  sub_15F84(&v174, &v188, &qword_E0EB40);
  sub_15F84(&v181, &v188, &qword_E0EB48);
  Actions.UndoSuggestLess.Context.init<A>(item:library:noticePresenting:metricsReportingContext:)(v87, v49, v152, v84, v140, &v188);
  LOBYTE(v191) = 37;
  *(&v191 + 1) = sub_563204;
  *&v192 = 0;
  *(&v192 + 1) = 0x4014000000000000;
  *&v193 = &unk_B1A9E0;
  *(&v193 + 1) = 0;
  *&v194 = &unk_B1A9E8;
  *(&v194 + 1) = 0;
  v91 = swift_allocObject();
  *(v91 + 16) = v153;
  v92 = swift_allocObject();
  v93 = v193;
  v92[5] = v192;
  v92[6] = v93;
  v92[7] = v194;
  v94 = v189;
  v92[1] = v188;
  v92[2] = v94;
  v95 = v191;
  v92[3] = v190;
  v92[4] = v95;
  v96 = swift_allocObject();
  v97 = v193;
  v96[5] = v192;
  v96[6] = v97;
  v96[7] = v194;
  v98 = v189;
  v96[1] = v188;
  v96[2] = v98;
  v99 = v191;
  v96[3] = v190;
  v96[4] = v99;
  v100 = swift_allocObject();
  v101 = v193;
  v100[5] = v192;
  v100[6] = v101;
  v100[7] = v194;
  v102 = v189;
  v100[1] = v188;
  v100[2] = v102;
  v103 = v191;
  v100[3] = v190;
  v100[4] = v103;
  *(v91 + 32) = 37;
  *(v91 + 40) = sub_53639C;
  *(v91 + 48) = v92;
  *(v91 + 56) = sub_537F68;
  *(v91 + 64) = v96;
  *(v91 + 72) = &unk_B184A8;
  *(v91 + 80) = v100;
  sub_E8BA0(v149, &v162);
  sub_15F84(&v188, &v155, &qword_E0EB50);
  sub_15F84(&v188, &v155, &qword_E0EB50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB60);
  if (swift_dynamicCast())
  {
    sub_536538(v161, &v163);
    v104 = v164;
    v105 = v165;
    v106 = v166;
    v107 = __swift_project_boxed_opaque_existential_1(&v163, v164);
    __chkstk_darwin(v107);
    v109 = &v137 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109);
    sub_15F28(v148, &v155);
    v111 = swift_allocObject();
    v111[2] = v104;
    v111[3] = v105;
    v112 = v138;
    v113 = v139;
    v111[4] = v106;
    v111[5] = v112;
    v111[6] = v113;
    *&v155 = Actions.RateSong.Context.init<A>(item:library:ratingViewController:presentationSource:)(v109, v89, sub_536588, v111, &v155, v104, v105, v106);
    *(&v155 + 1) = v114;
    *&v156 = v115;
    *(&v156 + 1) = v116;
    LOBYTE(v157) = 38;
    *(&v157 + 1) = sub_53842C;
    *&v158 = 0;
    *(&v158 + 1) = 0x4014000000000000;
    *&v159 = &unk_B1AB60;
    *(&v159 + 1) = 0;
    *&v160 = &unk_B1AB68;
    *(&v160 + 1) = 0;
    v117 = swift_allocObject();
    *(v117 + 16) = v153;
    v118 = swift_allocObject();
    v119 = v158;
    v118[3] = v157;
    v118[4] = v119;
    v120 = v160;
    v118[5] = v159;
    v118[6] = v120;
    v121 = v156;
    v118[1] = v155;
    v118[2] = v121;
    v122 = swift_allocObject();
    v123 = v158;
    v122[3] = v157;
    v122[4] = v123;
    v124 = v160;
    v122[5] = v159;
    v122[6] = v124;
    v125 = v156;
    v122[1] = v155;
    v122[2] = v125;
    v126 = swift_allocObject();
    v127 = v158;
    v126[3] = v157;
    v126[4] = v127;
    v128 = v160;
    v126[5] = v159;
    v126[6] = v128;
    v129 = v156;
    v126[1] = v155;
    v126[2] = v129;
    *(v117 + 32) = 38;
    *(v117 + 40) = sub_53659C;
    *(v117 + 48) = v118;
    *(v117 + 56) = sub_5365A4;
    *(v117 + 64) = v122;
    *(v117 + 72) = &unk_B184D8;
    *(v117 + 80) = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
    v130 = swift_allocObject();
    *(v130 + 16) = v153;
    *(v130 + 32) = v117;
    sub_15F84(&v155, v154, &qword_E0EB70);

    sub_15F84(&v155, v154, &qword_E0EB70);

    v131 = sub_512C10(v130);
    swift_setDeallocating();
    sub_12E1C(v130 + 32, &qword_E0E0B8);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_0(&v163);
  }

  else
  {
    memset(v161, 0, sizeof(v161));
    sub_12E1C(v161, &qword_E0EB68);
    v131 = _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_AF8600;
  v133 = v145;
  *(v132 + 32) = v146;
  v134 = v144;
  *(v132 + 40) = v133;
  *(v132 + 48) = v134;
  *(v132 + 56) = v91;
  *(v132 + 64) = v131;
  v135 = sub_512C10(v132);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E0B8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v135;
}

uint64_t sub_531C64(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a4;
  v12[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = a2(v12);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v10;
}

uint64_t sub_531D00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 64);
  a2[3] = &type metadata for Actions.Queue.Context;
  a2[4] = &protocol witness table for Actions.Queue.Context;
  v9 = swift_allocObject();
  *a2 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  v11 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v11;
  *(v9 + 80) = v8;
  sub_537EFC(v4);
}

uint64_t sub_531DD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 288) = swift_task_alloc();
  v3 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;

  return _swift_task_switch(sub_531E94, 0, 0);
}

uint64_t sub_531E94()
{
  v1 = *(v0 + 288);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 128);
  *(v3 + 128) = *(v0 + 112);
  *(v3 + 144) = v4;
  *(v3 + 160) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v5;
  v6 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v6;
  v7 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v7;
  sub_15F84(v0 + 16, v0 + 152, &qword_E0EAA8);
  sub_6E35A0(0, 0, v1, &unk_B18670, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_531FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 112);
  *(v4 + 112) = *(a4 + 96);
  *(v4 + 128) = v6;
  *(v4 + 144) = *(a4 + 128);
  v7 = *(a4 + 48);
  *(v4 + 48) = *(a4 + 32);
  *(v4 + 64) = v7;
  v8 = *(a4 + 80);
  *(v4 + 80) = *(a4 + 64);
  *(v4 + 96) = v8;
  v9 = *(a4 + 16);
  *(v4 + 16) = *a4;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 152) = v10;
  *v10 = v4;
  v10[1] = sub_5320A8;

  return (sub_639B00)(a1, 1);
}

uint64_t sub_5320A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_53219C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_532258, 0, 0);
}

uint64_t sub_532258()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EAE8);
  sub_6E35A0(0, 0, v1, &unk_B18630, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_532384(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_63DA98)(a1, 1);
}

uint64_t sub_53245C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_532518, 0, 0);
}

uint64_t sub_532518()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EAF0);
  sub_6E35A0(0, 0, v1, &unk_B18620, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_532644(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_63EF78)(a1, 1);
}

uint64_t sub_53271C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_5327D8, 0, 0);
}

uint64_t sub_5327D8()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB08);
  sub_6E35A0(0, 0, v1, &unk_B185F0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_532904(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_640458)(a1, 1);
}

uint64_t sub_5329DC(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_532A98, 0, 0);
}

uint64_t sub_532A98()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB00);
  sub_6E35A0(0, 0, v1, &unk_B18600, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_532BC4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_641938)(a1, 1);
}

uint64_t sub_532C9C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_532D58, 0, 0);
}

uint64_t sub_532D58()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EAF8);
  sub_6E35A0(0, 0, v1, &unk_B18610, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_532E84(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_642E18)(a1, 1);
}

uint64_t sub_532F5C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_533018, 0, 0);
}

uint64_t sub_533018()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EAC8);
  sub_6E35A0(0, 0, v1, &unk_B18640, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_533144(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_6442F8)(a1, 1);
}

uint64_t sub_53321C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_5332D8, 0, 0);
}

uint64_t sub_5332D8()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB28);
  sub_6E35A0(0, 0, v1, &unk_B185C0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_533404(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_6457D8)(a1, 1);
}

uint64_t sub_5334DC(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_533598, 0, 0);
}

uint64_t sub_533598()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB20);
  sub_6E35A0(0, 0, v1, &unk_B185D0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_5336C4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_646CB8)(a1, 1);
}

uint64_t sub_53379C(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_533858, 0, 0);
}

uint64_t sub_533858()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB18);
  sub_6E35A0(0, 0, v1, &unk_B185E0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_533984(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_648198)(a1, 1);
}

uint64_t sub_533A5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  a2[3] = &type metadata for Actions.RateSong.Context;
  a2[4] = &protocol witness table for Actions.RateSong.Context;
  v6 = swift_allocObject();
  *a2 = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = *(a1 + 1);
  *(v6 + 40) = v5;
}

uint64_t sub_533AE8(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 208) = swift_task_alloc();
  v3 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v3;
  v4 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;

  return _swift_task_switch(sub_533B9C, 0, 0);
}

uint64_t sub_533B9C()
{
  v1 = *(v0 + 208);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v4;
  v5 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v5;
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v6;
  sub_15F84(v0 + 16, v0 + 112, &qword_E0EB70);
  sub_6E35A0(0, 0, v1, &unk_B18570, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_533CC0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v6;
  v7 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v7;
  v8 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 112) = v9;
  *v9 = v4;
  v9[1] = sub_533D90;

  return (sub_649678)(a1, 1);
}

uint64_t sub_533D90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_533E84(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_533F40, 0, 0);
}

uint64_t sub_533F40()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB50);
  sub_6E35A0(0, 0, v1, &unk_B18580, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_53406C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_64AAF4)(a1, 1);
}

uint64_t sub_534144(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_534200, 0, 0);
}

uint64_t sub_534200()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB48);
  sub_6E35A0(0, 0, v1, &unk_B18590, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_53432C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_534404;

  return (sub_64BFD4)(a1, 1);
}

uint64_t sub_534404()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5344F8(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_5345B4, 0, 0);
}

uint64_t sub_5345B4()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB40);
  sub_6E35A0(0, 0, v1, &unk_B185A0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_5346E0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_64D4B4)(a1, 1);
}

uint64_t sub_5347B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[5];
  a4[3] = a2;
  a4[4] = a3;
  v8 = swift_allocObject();
  *a4 = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = *(a1 + 1);
  *(v8 + 40) = *(a1 + 3);
  *(v8 + 56) = v7;
}

uint64_t sub_534850(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  *(v1 + 240) = swift_task_alloc();
  v3 = a1[5];
  *(v1 + 80) = a1[4];
  *(v1 + 96) = v3;
  *(v1 + 112) = a1[6];
  v4 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v5;

  return _swift_task_switch(sub_53490C, 0, 0);
}

uint64_t sub_53490C()
{
  v1 = *(v0 + 240);
  v2 = sub_AB9990();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = *(v0 + 96);
  *(v3 + 96) = *(v0 + 80);
  *(v3 + 112) = v4;
  *(v3 + 128) = *(v0 + 112);
  v5 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 16);
  *(v3 + 48) = v5;
  v6 = *(v0 + 64);
  *(v3 + 64) = *(v0 + 48);
  *(v3 + 80) = v6;
  sub_15F84(v0 + 16, v0 + 128, &qword_E0EB38);
  sub_6E35A0(0, 0, v1, &unk_B185B0, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_534A38(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a4[5];
  *(v4 + 80) = a4[4];
  *(v4 + 96) = v6;
  *(v4 + 112) = a4[6];
  v7 = a4[1];
  *(v4 + 16) = *a4;
  *(v4 + 32) = v7;
  v8 = a4[3];
  *(v4 + 48) = a4[2];
  *(v4 + 64) = v8;
  v9 = swift_task_alloc();
  *(v4 + 128) = v9;
  *v9 = v4;
  v9[1] = sub_537F0C;

  return (sub_64E994)(a1, 1);
}

uint64_t sub_534B74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_531DD0(v0 + 16);
}

uint64_t sub_534C14()
{
  v1 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v1;
  v7[4] = *(v0 + 80);
  v2 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v2;
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = v5;
  v12 = *(v0 + 144);
  v8 = v4;
  v9 = v3;
  return v4(v7);
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_534DCC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_17CF8;

  return sub_52B988(v0 + v3);
}

uint64_t sub_534F80(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  return (*(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v2 + 40)))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_AB4410();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_535184()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_17CF8;

  return sub_52B724(v0 + v3);
}

uint64_t sub_53525C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5352F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_532F5C((v0 + 16));
}

uint64_t sub_5353C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_53219C((v0 + 16));
}

uint64_t sub_53549C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_53245C((v0 + 16));
}

uint64_t sub_535574()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_532C9C((v0 + 16));
}

uint64_t sub_535648()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_5329DC((v0 + 16));
}

uint64_t sub_53571C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_53271C((v0 + 16));
}

uint64_t sub_5357C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_AB8CA0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    sub_17774(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_535964()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EB10) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_17CF8;

  return sub_55C48C(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_535AD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_53379C((v0 + 16));
}

uint64_t sub_535B74()
{
  v1 = sub_AB8CA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_535C50()
{
  v2 = *(sub_AB8CA0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17CF8;

  return sub_55DF00(v0 + v3, v0 + v4);
}

uint64_t sub_535D84()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_5334DC((v0 + 16));
}

uint64_t sub_535E2C()
{
  v1 = sub_AB8CA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_17774(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_535F44()
{
  v2 = *(sub_AB8CA0() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_17CF8;

  return sub_560270(v5, v0 + v3, v0 + v4);
}

uint64_t sub_53607C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_53321C((v0 + 16));
}

uint64_t sub_536150()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_534850((v0 + 16));
}

uint64_t sub_536224()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_5344F8((v0 + 16));
}

uint64_t sub_5362FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17BD0;

  return sub_534144((v0 + 16));
}

uint64_t sub_5363D0()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v13 = *(v0 + 120);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v11 = *(v0 + 88);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t objectdestroy_68Tm()
{

  return swift_deallocObject();
}

uint64_t sub_536498()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_533E84((v0 + 16));
}

_OWORD *sub_536538(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_536550()
{

  return swift_deallocObject();
}

uint64_t sub_5365A4()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v13 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v11 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = v4;
  v8 = v2;
  v9 = v3;
  v10 = v5;
  return v3(v7);
}

uint64_t objectdestroy_225Tm()
{

  return swift_deallocObject();
}

uint64_t sub_53665C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_533AE8((v0 + 16));
}

uint64_t sub_536720(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_5367F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5368A0()
{
  type metadata accessor for PlaybackController();
  if (v0 <= 0x3F)
  {
    sub_536954();
    if (v1 <= 0x3F)
    {
      sub_5369AC();
      if (v2 <= 0x3F)
      {
        sub_5369FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_536954()
{
  if (!qword_E0EBE0)
  {
    type metadata accessor for PlaybackIntentDescriptor.IntentType(255);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E0EBE0);
    }
  }
}

void sub_5369AC()
{
  if (!qword_E0EBE8)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E0EBE8);
    }
  }
}

void sub_5369FC()
{
  if (!qword_E0EBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E0EBF8);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E0EBF0);
    }
  }
}

uint64_t sub_536A70()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = *(type metadata accessor for Actions.SortPlaylist.Context() + 24);
  v4 = sub_AB8CB0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_536BFC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC30);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_52BFC0(a1);
}

uint64_t sub_536CF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_536D58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_533CC0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_536E1C()
{

  return swift_deallocObject();
}

uint64_t sub_536E60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_53406C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_536F28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_53432C(a1, v4, v5, (v1 + 32));
}

uint64_t sub_536FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_5346E0(a1, v4, v5, (v1 + 32));
}

uint64_t sub_5370B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_534A38(a1, v4, v5, (v1 + 32));
}

uint64_t sub_537174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_533404(a1, v4, v5, (v1 + 32));
}

uint64_t sub_537238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_5336C4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_5372FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_533984(a1, v4, v5, (v1 + 32));
}

uint64_t sub_5373C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_532904(a1, v4, v5, (v1 + 32));
}

uint64_t sub_537484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_532BC4(a1, v4, v5, (v1 + 32));
}

uint64_t sub_537548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_532E84(a1, v4, v5, (v1 + 32));
}

uint64_t sub_53760C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_532644(a1, v4, v5, (v1 + 32));
}

uint64_t sub_5376D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_532384(a1, v4, v5, (v1 + 32));
}

uint64_t objectdestroy_252Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_5377FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_533144(a1, v4, v5, (v1 + 32));
}

uint64_t objectdestroy_258Tm()
{

  return swift_deallocObject();
}

uint64_t sub_537930(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_52BE50(a1);
}

uint64_t objectdestroy_369Tm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_AB4410();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  a3(0);

  return swift_deallocObject();
}

uint64_t sub_537BF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAB8);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_52BF08(a1);
}

uint64_t sub_537CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_537D58()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 32);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_537DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17CF8;

  return sub_531FC8(a1, v4, v5, v1 + 32);
}

uint64_t sub_537E9C()
{
  v1 = *(v0 + 16);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

id sub_537EFC(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t Actions.AddToLibrary.Context.init<A>(item:library:presentationSource:observer:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10)
{
  v37 = a8;
  v38 = a4;
  v40 = a3;
  v41 = a6;
  v39 = a5;
  v44 = a2;
  v36[0] = a1;
  v42 = a9;
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(a1);
  v43 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  (*(v12 + 16))(v36 - v15);
  v17 = *(v12 + 80);
  v18 = (v17 + 40) & ~v17;
  v36[1] = v17 | 7;
  v19 = v13 + 7;
  v20 = (v13 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = a7;
  *(v21 + 3) = a8;
  *(v21 + 4) = a10;
  v22 = *(v12 + 32);
  v22(v21 + v18, v16, a7);
  v23 = v43;
  *(v21 + v20) = v44;
  v22(v23, v36[0], a7);
  v24 = (v17 + 56) & ~v17;
  v25 = (v19 + v24) & 0xFFFFFFFFFFFFFFF8;
  v36[0] = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v27 = (((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v26 + 80) + 96) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v29 = v37;
  v30 = v38;
  *(v28 + 2) = a7;
  *(v28 + 3) = v29;
  *(v28 + 4) = a10;
  *(v28 + 5) = v30;
  v31 = v39;
  *(v28 + 6) = v39;
  v22(v28 + v24, v43, a7);
  *(v28 + v25) = v44;
  sub_17704(v40, v28 + v36[0]);
  sub_36B0C(v41, v28 + v27, &qword_E0EAA0);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_B186A0;
  *(v33 + 24) = v32;
  swift_unknownObjectRetain();

  v35 = v42;
  *v42 = sub_538B54;
  v35[1] = v21;
  v35[2] = &unk_B18690;
  v35[3] = v28;
  v35[4] = &unk_B186B0;
  v35[5] = v33;
  return result;
}

uint64_t static Actions.AddToLibrary.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B186B8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B186C0;
  *(a2 + 104) = 0;
}

uint64_t sub_538454(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_17BD0;

  return v5();
}

uint64_t sub_53853C(uint64_t a1)
{
  v4 = (*(a1 + 32) + **(a1 + 32));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return v4();
}

uint64_t sub_538624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B186B8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B186C0;
  *(a2 + 104) = 0;
}

uint64_t sub_5386DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a2;
  v33 = sub_AB8410();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  v16 = *(a3 - 8);
  __chkstk_darwin(v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_AB8770();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v16 + 16);
  v34 = a1;
  v23(v18, a1, a3);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if ((v24 & 1) == 0)
  {
    v25(v15, 1, 1, v19);
    sub_12E1C(v15, &qword_E0EC98);
    goto LABEL_5;
  }

  v25(v15, 0, 1, v19);
  (*(v20 + 32))(v22, v15, v19);
  v26 = Album.childrenAddStatus(_:)(v37);
  (*(v20 + 8))(v22, v19);
  if (v26 != 1)
  {
LABEL_5:
    sub_AB4000();
    v28 = v33;
    sub_AB82C0();
    (*(v35 + 8))(v8, v28);
    v27 = sub_5391B4();
    (*(v31 + 8))(v11, v32);
    return v27;
  }

  return 0;
}

uint64_t sub_538AC0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t Album.childrenAddStatus(_:)(uint64_t a1)
{
  v40 = a1;
  v39 = sub_AB8410();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - v4;
  v35 = sub_AB8860();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC40);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC48);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  sub_AB8750();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_12E1C(v12, &qword_E0EC48);
    return 0;
  }

  (*(v14 + 32))(v16, v12, v13);
  sub_53F130(&qword_E0EC58);
  sub_AB9C60();
  sub_AB9CA0();
  if (v41[0] == v41[4])
  {
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  v29 = v14;
  (*(v14 + 16))(v9, v16, v13);
  v18 = *(v7 + 36);
  v28 = v16;
  sub_AB9C60();
  sub_AB9CA0();
  if (*&v9[v18] == v41[0])
  {
LABEL_11:
    sub_12E1C(v9, &qword_E0EC40);
    (*(v29 + 8))(v28, v13);
    return 2;
  }

  else
  {
    v32 = (v5 + 8);
    v33 = (v5 + 16);
    v30 = (v3 + 8);
    v31 = (v1 + 8);
    v19 = v34;
    while (1)
    {
      v20 = sub_AB9D80();
      v21 = v35;
      (*v33)(v19);
      v20(v41, 0);
      sub_AB9CB0();
      v22 = v38;
      sub_AB4000();
      v23 = v36;
      v24 = v39;
      sub_AB82C0();
      (*v32)(v19, v21);
      (*v31)(v22, v24);
      v25 = sub_5391B4();
      v27 = v26;
      (*v30)(v23, v37);
      if (v27 == 1)
      {
        break;
      }

      sub_501D64(v25, v27);
      sub_AB9CA0();
      if (*&v9[v18] == v41[0])
      {
        goto LABEL_11;
      }
    }

    sub_12E1C(v9, &qword_E0EC40);
    (*(v29 + 8))(v28, v13);
    return 1;
  }
}

uint64_t sub_5391B4()
{
  v1 = v0;
  v2 = sub_AB8420();
  v28 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_AB8400();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  (*(v15 + 16))(&v27 - v16, v1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 32))(v13, v17, v7);
    (*(v8 + 16))(v11, v13, v7);
    v19 = (*(v8 + 88))(v11, v7);
    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v8 + 96))(v11, v7);
      v20 = v28;
      (*(v28 + 32))(v6, v11, v2);
      v21 = v27;
      (*(v20 + 16))(v27, v6, v2);
      v22 = (*(v20 + 88))(v21, v2);
      if (v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v22 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        sub_ABAD90(24);

        v29 = 0xD000000000000016;
        v30 = 0x8000000000B6A6D0;
        sub_53F0E0(&qword_E0EC88);
        v31._countAndFlagsBits = sub_ABB330();
        sub_AB94A0(v31);

        v23 = v29;
        v24 = *(v20 + 8);
        v24(v6, v2);
        (*(v8 + 8))(v13, v7);
        v24(v21, v2);
        return v23;
      }

      (*(v20 + 8))(v6, v2);
      (*(v8 + 8))(v13, v7);
      return 0;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      goto LABEL_10;
    }

    if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      (*(v8 + 8))(v13, v7);
      return 0xD000000000000012;
    }

    else
    {
      if (v19 == enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
      {
LABEL_10:
        (*(v8 + 8))(v13, v7);
        return 0xD000000000000010;
      }

      v26 = *(v8 + 8);
      v26(v13, v7);
      v26(v11, v7);
      return 0x206E776F6E6B6E55;
    }
  }

  else
  {
    if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      return 0;
    }

    result = sub_ABAFD0();
    __break(1u);
  }

  return result;
}

uint64_t sub_5397D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[86] = v18;
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v8[80] = a3;
  v8[79] = a2;
  v8[78] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = swift_task_alloc();
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = type metadata accessor for MetricsEvent.Click(0);
  v8[96] = swift_task_alloc();
  v8[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v8[98] = swift_task_alloc();
  v8[99] = swift_task_alloc();
  v8[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v8[101] = swift_task_alloc();
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  v8[102] = v10;
  v8[103] = *(v10 - 8);
  v8[104] = swift_task_alloc();
  v8[105] = type metadata accessor for Notice.Variant(0);
  v8[106] = swift_task_alloc();
  v11 = sub_AB8420();
  v8[107] = v11;
  v8[108] = *(v11 - 8);
  v8[109] = swift_task_alloc();
  v8[110] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC90);
  v8[111] = swift_task_alloc();
  v8[112] = swift_task_alloc();
  v12 = sub_AB8410();
  v8[113] = v12;
  v8[114] = *(v12 - 8);
  v8[115] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v8[116] = v13;
  v8[117] = *(v13 - 8);
  v8[118] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC48);
  v8[119] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v8[120] = v14;
  v8[121] = *(v14 - 8);
  v8[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v8[123] = swift_task_alloc();
  v8[124] = *(a7 - 8);
  v8[125] = swift_task_alloc();
  v15 = sub_AB8770();
  v8[126] = v15;
  v8[127] = *(v15 - 8);
  v8[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA0);
  v8[129] = swift_task_alloc();
  v8[130] = swift_task_alloc();
  v8[131] = swift_task_alloc();
  v8[132] = swift_task_alloc();
  v8[133] = swift_task_alloc();
  v8[134] = swift_task_alloc();
  v8[135] = swift_task_alloc();

  return _swift_task_switch(sub_539DAC, 0, 0);
}

uint64_t sub_539DAC()
{
  v101 = v0;
  if (*(v0 + 624))
  {
    v1 = *(v0 + 632);
    *(v0 + 1088) = swift_getObjectType();
    *(v0 + 1096) = *(v1 + 8);
    *(v0 + 1104) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0xE86A000000000000;
    sub_AB9940();
    *(v0 + 1112) = sub_AB9930();
    v2 = sub_AB98B0();
    v4 = v3;
    v5 = sub_53AB84;
LABEL_3:
    v6 = v5;
    v7 = v2;
    v8 = v4;
LABEL_4:

    return _swift_task_switch(v6, v7, v8);
  }

  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v9 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v9;
  v10 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v10;
  v11 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v11;
  v12 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v12;
  sub_70C54(v0 + 16);
  if ((*(v0 + 25) & 2) != 0)
  {
    v14 = *(v0 + 1016);
    v15 = *(v0 + 1000);
    v16 = *(v0 + 992);
    v17 = *(v0 + 672);
    v18 = *(v0 + 640);
    v99 = *(*(v0 + 864) + 56);
    v99(*(v0 + 1080), 1, 1, *(v0 + 856));
    v19 = *(v16 + 16);
    *(v0 + 1120) = v19;
    *(v0 + 1128) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v15, v18, v17);
    v20 = swift_dynamicCast();
    v21 = *(v14 + 56);
    if (v20)
    {
      v22 = *(v0 + 1024);
      v23 = *(v0 + 1016);
      v24 = *(v0 + 1008);
      v25 = *(v0 + 984);
      v26 = *(v0 + 648);
      v21(v25, 0, 1, v24);
      (*(v23 + 32))(v22, v25, v24);
      if (Album.childrenAddStatus(_:)(v26) != 1)
      {
        (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
        goto LABEL_20;
      }

      v27 = *(v0 + 968);
      v28 = *(v0 + 960);
      v29 = *(v0 + 952);
      sub_AB8750();
      if ((*(v27 + 48))(v29, 1, v28) != 1)
      {
        v78 = *(v0 + 976);
        v79 = *(v0 + 648);
        (*(*(v0 + 968) + 32))(v78, *(v0 + 952), *(v0 + 960));
        v100[0] = _swiftEmptyArrayStorage;

        LOBYTE(v78) = sub_53EB48(v78, v79, v100);

        if (v78)
        {
          v80 = *(v0 + 1024);
          v81 = *(v0 + 1016);
          v82 = *(v0 + 1008);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v81 + 8))(v80, v82);
        }

        else
        {
          if (*(v100[0] + 16))
          {
            (*(*(v0 + 864) + 16))(*(v0 + 1072), v100[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
            v83 = 0;
          }

          else
          {
            v83 = 1;
          }

          v84 = *(v0 + 1080);
          v85 = *(v0 + 1072);
          v86 = *(v0 + 1024);
          v87 = *(v0 + 1016);
          v88 = *(v0 + 1008);
          v89 = *(v0 + 856);
          (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
          (*(v87 + 8))(v86, v88);
          sub_12E1C(v84, &qword_E0ECA0);
          v99(v85, v83, 1, v89);
          sub_36B0C(v85, v84, &qword_E0ECA0);
        }

LABEL_21:
        v37 = *(v0 + 1080);
        v38 = *(v0 + 1056);
        v39 = *(v0 + 896);
        v40 = *(v0 + 880);
        v41 = *(v0 + 864);
        v42 = *(v0 + 856);
        v96 = *(v41 + 104);
        v96(v38, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v42);
        v99(v38, 0, 1, v42);
        v98 = v40;
        v43 = *(v40 + 48);
        sub_15F84(v37, v39, &qword_E0ECA0);
        sub_15F84(v38, v39 + v43, &qword_E0ECA0);
        v44 = *(v41 + 48);
        if (v44(v39, 1, v42) == 1)
        {
          v45 = *(v0 + 856);
          sub_12E1C(*(v0 + 1056), &qword_E0ECA0);
          if (v44(v39 + v43, 1, v45) == 1)
          {
            sub_12E1C(*(v0 + 896), &qword_E0ECA0);
LABEL_35:
            *(v0 + 1136) = sub_AB9940();
            *(v0 + 1144) = sub_AB9930();
            v69 = sub_AB98B0();
            v8 = v70;
            *(v0 + 1152) = v69;
            *(v0 + 1160) = v70;
            v6 = sub_53B990;
            v7 = v69;
            goto LABEL_4;
          }
        }

        else
        {
          v46 = *(v0 + 856);
          sub_15F84(*(v0 + 896), *(v0 + 1048), &qword_E0ECA0);
          v47 = v44(v39 + v43, 1, v46);
          v48 = *(v0 + 1056);
          v49 = *(v0 + 1048);
          if (v47 != 1)
          {
            v94 = v44;
            v92 = *(v0 + 896);
            v65 = *(v0 + 872);
            v66 = *(v0 + 864);
            v67 = *(v0 + 856);
            (*(v66 + 32))(v65, v39 + v43, v67);
            sub_53F0E0(&qword_E0ECB0);
            v91 = sub_AB91C0();
            v68 = *(v66 + 8);
            v68(v65, v67);
            sub_12E1C(v48, &qword_E0ECA0);
            v68(v49, v67);
            sub_12E1C(v92, &qword_E0ECA0);
            if (v91)
            {
              goto LABEL_35;
            }

LABEL_27:
            v52 = *(v0 + 1080);
            v53 = *(v0 + 1040);
            v54 = *(v0 + 888);
            v55 = *(v0 + 856);
            v96(v53, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v55);
            v99(v53, 0, 1, v55);
            v56 = *(v98 + 48);
            sub_15F84(v52, v54, &qword_E0ECA0);
            sub_15F84(v53, v54 + v56, &qword_E0ECA0);
            if (v94(v54, 1, v55) == 1)
            {
              v57 = *(v0 + 856);
              sub_12E1C(*(v0 + 1040), &qword_E0ECA0);
              if (v94(v54 + v56, 1, v57) == 1)
              {
                sub_12E1C(*(v0 + 888), &qword_E0ECA0);
LABEL_37:
                *(v0 + 1192) = sub_AB9940();
                *(v0 + 1200) = sub_AB9930();
                v2 = sub_AB98B0();
                v4 = v77;
                v5 = sub_53BC68;
                goto LABEL_3;
              }
            }

            else
            {
              v58 = *(v0 + 856);
              sub_15F84(*(v0 + 888), *(v0 + 1032), &qword_E0ECA0);
              v59 = v94(v54 + v56, 1, v58);
              v60 = *(v0 + 1040);
              v61 = *(v0 + 1032);
              if (v59 != 1)
              {
                v71 = *(v0 + 888);
                v72 = *(v0 + 872);
                v73 = *(v0 + 864);
                v74 = *(v0 + 856);
                (*(v73 + 32))(v72, v54 + v56, v74);
                sub_53F0E0(&qword_E0ECB0);
                v75 = sub_AB91C0();
                v76 = *(v73 + 8);
                v76(v72, v74);
                sub_12E1C(v60, &qword_E0ECA0);
                v76(v61, v74);
                sub_12E1C(v71, &qword_E0ECA0);
                if (v75)
                {
                  goto LABEL_37;
                }

LABEL_33:
                swift_storeEnumTagMultiPayload();
                *(v0 + 1216) = sub_AB9940();
                *(v0 + 1224) = sub_AB9930();
                v2 = sub_AB98B0();
                v4 = v64;
                v5 = sub_53C2A4;
                goto LABEL_3;
              }

              v62 = *(v0 + 864);
              v63 = *(v0 + 856);
              sub_12E1C(*(v0 + 1040), &qword_E0ECA0);
              (*(v62 + 8))(v61, v63);
            }

            sub_12E1C(*(v0 + 888), &qword_E0EC90);
            goto LABEL_33;
          }

          v50 = *(v0 + 864);
          v51 = *(v0 + 856);
          sub_12E1C(*(v0 + 1056), &qword_E0ECA0);
          (*(v50 + 8))(v49, v51);
        }

        v94 = v44;
        sub_12E1C(*(v0 + 896), &qword_E0EC90);
        goto LABEL_27;
      }

      v30 = *(v0 + 952);
      (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
      v31 = &qword_E0EC48;
    }

    else
    {
      v30 = *(v0 + 984);
      v21(v30, 1, 1, *(v0 + 1008));
      v31 = &qword_E0EC98;
    }

    sub_12E1C(v30, v31);
LABEL_20:
    v93 = *(v0 + 1064);
    v32 = *(v0 + 944);
    v33 = *(v0 + 936);
    v95 = *(v0 + 928);
    v97 = *(v0 + 1080);
    v34 = *(v0 + 920);
    v35 = *(v0 + 912);
    v36 = *(v0 + 904);
    sub_AB4000();
    sub_AB82C0();
    (*(v35 + 8))(v34, v36);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v93);
    (*(v33 + 8))(v32, v95);
    sub_12E1C(v97, &qword_E0ECA0);
    sub_36B0C(v93, v97, &qword_E0ECA0);
    goto LABEL_21;
  }

  *(v0 + 600) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 608) = -1;
  _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
  sub_53EE90(v0 + 568);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_53AB84()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[79];

  v1(0, v2, v3);

  return _swift_task_switch(sub_53AC20, 0, 0);
}

uint64_t sub_53AC20()
{
  v99 = v0;
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_70C54(v0 + 16);
  if ((*(v0 + 25) & 2) == 0)
  {
    *(v0 + 600) = 0;
    *(v0 + 568) = 0u;
    *(v0 + 584) = 0u;
    *(v0 + 608) = -1;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 568);
    sub_53EE90(v0 + 568);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 1016);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 672);
  v11 = *(v0 + 640);
  v97 = *(*(v0 + 864) + 56);
  v97(*(v0 + 1080), 1, 1, *(v0 + 856));
  v12 = *(v9 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v8, v11, v10);
  v13 = swift_dynamicCast();
  v14 = *(v7 + 56);
  if ((v13 & 1) == 0)
  {
    v23 = *(v0 + 984);
    v14(v23, 1, 1, *(v0 + 1008));
    v24 = &qword_E0EC98;
    goto LABEL_12;
  }

  v15 = *(v0 + 1024);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1008);
  v18 = *(v0 + 984);
  v19 = *(v0 + 648);
  v14(v18, 0, 1, v17);
  (*(v16 + 32))(v15, v18, v17);
  if (Album.childrenAddStatus(_:)(v19) != 1)
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    goto LABEL_14;
  }

  v20 = *(v0 + 968);
  v21 = *(v0 + 960);
  v22 = *(v0 + 952);
  sub_AB8750();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = *(v0 + 952);
    (*(*(v0 + 1016) + 8))(*(v0 + 1024), *(v0 + 1008));
    v24 = &qword_E0EC48;
LABEL_12:
    sub_12E1C(v23, v24);
LABEL_14:
    v91 = *(v0 + 1064);
    v25 = *(v0 + 944);
    v26 = *(v0 + 936);
    v93 = *(v0 + 928);
    v95 = *(v0 + 1080);
    v27 = *(v0 + 920);
    v28 = *(v0 + 912);
    v29 = *(v0 + 904);
    sub_AB4000();
    sub_AB82C0();
    (*(v28 + 8))(v27, v29);
    MusicLibrary.SupportedStatus<>.unaddableReason.getter(v91);
    (*(v26 + 8))(v25, v93);
    sub_12E1C(v95, &qword_E0ECA0);
    sub_36B0C(v91, v95, &qword_E0ECA0);
    goto LABEL_15;
  }

  v77 = *(v0 + 976);
  v78 = *(v0 + 648);
  (*(*(v0 + 968) + 32))(v77, *(v0 + 952), *(v0 + 960));
  v98[0] = _swiftEmptyArrayStorage;

  LOBYTE(v77) = sub_53EB48(v77, v78, v98);

  if (v77)
  {
    v79 = *(v0 + 1024);
    v80 = *(v0 + 1016);
    v81 = *(v0 + 1008);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v80 + 8))(v79, v81);
  }

  else
  {
    if (*(v98[0] + 16))
    {
      (*(*(v0 + 864) + 16))(*(v0 + 1072), v98[0] + ((*(*(v0 + 864) + 80) + 32) & ~*(*(v0 + 864) + 80)), *(v0 + 856));
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = *(v0 + 1080);
    v84 = *(v0 + 1072);
    v85 = *(v0 + 1024);
    v86 = *(v0 + 1016);
    v87 = *(v0 + 1008);
    v88 = *(v0 + 856);
    (*(*(v0 + 968) + 8))(*(v0 + 976), *(v0 + 960));
    (*(v86 + 8))(v85, v87);
    sub_12E1C(v83, &qword_E0ECA0);
    v97(v84, v82, 1, v88);
    sub_36B0C(v84, v83, &qword_E0ECA0);
  }

LABEL_15:
  v30 = *(v0 + 1080);
  v31 = *(v0 + 1056);
  v32 = *(v0 + 896);
  v33 = *(v0 + 880);
  v34 = *(v0 + 864);
  v35 = *(v0 + 856);
  v94 = *(v34 + 104);
  v94(v31, enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:), v35);
  v97(v31, 0, 1, v35);
  v96 = v33;
  v36 = *(v33 + 48);
  sub_15F84(v30, v32, &qword_E0ECA0);
  sub_15F84(v31, v32 + v36, &qword_E0ECA0);
  v37 = *(v34 + 48);
  if (v37(v32, 1, v35) != 1)
  {
    v39 = *(v0 + 856);
    sub_15F84(*(v0 + 896), *(v0 + 1048), &qword_E0ECA0);
    v40 = v37(v32 + v36, 1, v39);
    v41 = *(v0 + 1056);
    v42 = *(v0 + 1048);
    if (v40 != 1)
    {
      v92 = v37;
      v90 = *(v0 + 896);
      v61 = *(v0 + 872);
      v62 = *(v0 + 864);
      v63 = *(v0 + 856);
      (*(v62 + 32))(v61, v32 + v36, v63);
      sub_53F0E0(&qword_E0ECB0);
      v89 = sub_AB91C0();
      v64 = *(v62 + 8);
      v64(v61, v63);
      sub_12E1C(v41, &qword_E0ECA0);
      v64(v42, v63);
      sub_12E1C(v90, &qword_E0ECA0);
      if (v89)
      {
        goto LABEL_29;
      }

LABEL_21:
      v45 = *(v0 + 1080);
      v46 = *(v0 + 1040);
      v47 = *(v0 + 888);
      v48 = *(v0 + 856);
      v94(v46, enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:), v48);
      v97(v46, 0, 1, v48);
      v49 = *(v96 + 48);
      sub_15F84(v45, v47, &qword_E0ECA0);
      sub_15F84(v46, v47 + v49, &qword_E0ECA0);
      if (v92(v47, 1, v48) == 1)
      {
        v50 = *(v0 + 856);
        sub_12E1C(*(v0 + 1040), &qword_E0ECA0);
        if (v92(v47 + v49, 1, v50) == 1)
        {
          sub_12E1C(*(v0 + 888), &qword_E0ECA0);
LABEL_31:
          *(v0 + 1192) = sub_AB9940();
          *(v0 + 1200) = sub_AB9930();
          v57 = sub_AB98B0();
          v59 = v76;
          v60 = sub_53BC68;
          goto LABEL_32;
        }
      }

      else
      {
        v51 = *(v0 + 856);
        sub_15F84(*(v0 + 888), *(v0 + 1032), &qword_E0ECA0);
        v52 = v92(v47 + v49, 1, v51);
        v53 = *(v0 + 1040);
        v54 = *(v0 + 1032);
        if (v52 != 1)
        {
          v70 = *(v0 + 888);
          v71 = *(v0 + 872);
          v72 = *(v0 + 864);
          v73 = *(v0 + 856);
          (*(v72 + 32))(v71, v47 + v49, v73);
          sub_53F0E0(&qword_E0ECB0);
          v74 = sub_AB91C0();
          v75 = *(v72 + 8);
          v75(v71, v73);
          sub_12E1C(v53, &qword_E0ECA0);
          v75(v54, v73);
          sub_12E1C(v70, &qword_E0ECA0);
          if (v74)
          {
            goto LABEL_31;
          }

LABEL_27:
          swift_storeEnumTagMultiPayload();
          *(v0 + 1216) = sub_AB9940();
          *(v0 + 1224) = sub_AB9930();
          v57 = sub_AB98B0();
          v59 = v58;
          v60 = sub_53C2A4;
LABEL_32:
          v68 = v60;
          v69 = v57;
          v67 = v59;
          goto LABEL_33;
        }

        v55 = *(v0 + 864);
        v56 = *(v0 + 856);
        sub_12E1C(*(v0 + 1040), &qword_E0ECA0);
        (*(v55 + 8))(v54, v56);
      }

      sub_12E1C(*(v0 + 888), &qword_E0EC90);
      goto LABEL_27;
    }

    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    sub_12E1C(*(v0 + 1056), &qword_E0ECA0);
    (*(v43 + 8))(v42, v44);
LABEL_20:
    v92 = v37;
    sub_12E1C(*(v0 + 896), &qword_E0EC90);
    goto LABEL_21;
  }

  v38 = *(v0 + 856);
  sub_12E1C(*(v0 + 1056), &qword_E0ECA0);
  if (v37(v32 + v36, 1, v38) != 1)
  {
    goto LABEL_20;
  }

  sub_12E1C(*(v0 + 896), &qword_E0ECA0);
LABEL_29:
  *(v0 + 1136) = sub_AB9940();
  *(v0 + 1144) = sub_AB9930();
  v65 = sub_AB98B0();
  v67 = v66;
  *(v0 + 1152) = v65;
  *(v0 + 1160) = v66;
  v68 = sub_53B990;
  v69 = v65;
LABEL_33:

  return _swift_task_switch(v68, v69, v67);
}

uint64_t sub_53B990()
{
  v1 = v0[82];
  v2 = sub_AB9930();
  v0[146] = v2;
  v3 = swift_task_alloc();
  v0[147] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[148] = v4;
  *v4 = v0;
  v4[1] = sub_53BAA0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 609, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v3, &type metadata for Bool);
}

uint64_t sub_53BAA0()
{
  v1 = *v0;

  v2 = *(v1 + 1160);
  v3 = *(v1 + 1152);

  return _swift_task_switch(sub_53BC00, v3, v2);
}

uint64_t sub_53BC00()
{

  return _swift_task_switch(sub_53F1A4, 0, 0);
}

uint64_t sub_53BC68()
{

  sub_5FEC68(0, v0 + 448);

  return _swift_task_switch(sub_53BCDC, 0, 0);
}

uint64_t sub_53BCDC()
{
  *(v0 + 1208) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_53BD68, v2, v1);
}

uint64_t sub_53BD68()
{
  v1 = *(v0 + 656);

  v2 = sub_5B4DF0(v0 + 448, 0, 1);
  v3 = v2;
  v4 = *(v0 + 480);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 656);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 552) = sub_71E354;
    *(v0 + 560) = 0;
    *(v0 + 520) = _NSConcreteStackBlock;
    *(v0 + 528) = 1107296256;
    *(v0 + 536) = sub_71F2F4;
    *(v0 + 544) = &block_descriptor_164;
    v13 = _Block_copy((v0 + 520));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 272);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 272, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_53F0C4, v15);
    sub_17654(v5);

    sub_111904(v0 + 448);
    v18 = sub_53C058;
  }

  else
  {
    sub_71C834(v2, *(v0 + 480), &dword_0 + 1, 0, 0);

    sub_111904(v0 + 448);
    v18 = sub_53F1A4;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_53C058()
{
  sub_12E1C(*(v0 + 1080), &qword_E0ECA0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_53C2A4()
{
  v1 = *(v0 + 848);

  sub_662620(v1, 0);
  sub_53EFB8(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_53C33C, 0, 0);
}

uint64_t sub_53C33C()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  sub_15F84(*(v0 + 664), v3, &qword_E0EAA0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_12E1C(*(v0 + 808), &qword_E0EAA0);
    v4 = *(v0 + 1120);
    v5 = *(v0 + 672);
    v6 = *(v0 + 640);
    sub_6717B0(v5, v5);
    swift_allocObject();
    v7 = sub_AB9780();
    v4(v8, v6, v5);
    v9 = sub_23BCD8(v7);
    *(v0 + 1304) = v9;
    *(v0 + 616) = v9;
    v10 = swift_task_alloc();
    *(v0 + 1312) = v10;
    v11 = sub_AB9870();
    WitnessTable = swift_getWitnessTable();
    *v10 = v0;
    v10[1] = sub_53CFF8;
    v13 = *(v0 + 680);
    v14 = *(v0 + 672);

    return MusicLibrary.add<A, B>(_:)(v0 + 616, v11, v14, WitnessTable, v13);
  }

  else
  {
    v15 = *(v0 + 800);
    v16 = *(v0 + 672);
    sub_53EEE4(*(v0 + 808), *(v0 + 832), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 1232) = MusicItem.metricsTargetIdentifier.getter(v16);
    *(v0 + 1240) = v17;
    v18 = sub_AB31C0();
    *(v0 + 1248) = v18;
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    *(v0 + 1256) = v20;
    *(v0 + 1264) = (v19 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v20(v15, 1, 1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF85F0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v16);
    *(inited + 40) = v22;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 1;
    *(v0 + 1272) = sub_51717C(inited);
    *(v0 + 1280) = v23;
    *(v0 + 1288) = v24;
    *(v0 + 610) = v25;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v0 + 1296) = sub_AB9930();
    v27 = sub_AB98B0();

    return _swift_task_switch(sub_53C68C, v27, v26);
  }
}

uint64_t sub_53C68C()
{
  v80 = *(v0 + 610);
  v73 = *(v0 + 1272);
  v76 = *(v0 + 1240);
  v78 = *(v0 + 1288);
  v74 = *(v0 + 1232);
  v1 = *(v0 + 832);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 768);
  v6 = *(v0 + 760);
  v7 = *(v0 + 752);
  v72 = *(v0 + 744);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v5 + v6[19]) = 0;
  v11 = (v5 + v6[20]);
  *v11 = 0;
  v11[1] = 0;
  *v5 = v74;
  *(v5 + 8) = v76;
  *(v5 + 16) = 773;
  sub_36B0C(v4, v5 + v6[7], &qword_E0DC30);
  *(v5 + v6[8]) = v8;
  v12 = (v5 + v6[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v5 + v6[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 610);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 744);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v18, v17, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v18, v17, v16, SBYTE1(v16));

    sub_53EFB8(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 736);
  v25 = (*(v0 + 768) + *(*(v0 + 760) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 736);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 736), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_53EFB8(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 752);
  v31 = *(v0 + 728);
  v32 = (*(v0 + 768) + *(*(v0 + 760) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 1256);
    v34 = *(v0 + 1248);
    v35 = *(v0 + 784);
    sub_12E1C(*(v0 + 728), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 728);
    sub_15F84(v36 + v14[6], *(v0 + 784), &qword_E0DC30);
    sub_53EFB8(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 752);
  v38 = *(v0 + 720);
  sub_36B0C(*(v0 + 784), *(v0 + 768) + *(*(v0 + 760) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 720);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 720), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_53EFB8(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 712);
  *(*(v0 + 768) + *(*(v0 + 760) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 712);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_53EFB8(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 752);
  v48 = *(v0 + 704);
  *(*(v0 + 768) + *(*(v0 + 760) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 704);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 704), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_53EFB8(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 752);
  v55 = *(v0 + 696);
  v56 = (*(v0 + 768) + *(*(v0 + 760) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 696);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_53EFB8(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 776);
  v61 = *(v0 + 768);
  v62 = *(v0 + 760);
  *(v61 + *(v62 + 68)) = v59;
  *(v61 + *(v62 + 44)) = v81;
  sub_53EEE4(v61, v60, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v63 = *(v0 + 1288);
  v64 = *(v0 + 1280);
  v65 = *(v0 + 1272);
  v66 = *(v0 + 832);
  v67 = *(v0 + 816);
  v68 = *(v0 + 800);
  v69 = *(v0 + 776);
  v70 = *(v0 + 610);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_53EFB8(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_53CE80, 0, 0);
}

uint64_t sub_53CE80()
{
  sub_53EFB8(v0[104], type metadata accessor for Actions.MetricsReportingContext);
  v1 = v0[140];
  v2 = v0[84];
  v3 = v0[80];
  sub_6717B0(v2, v2);
  swift_allocObject();
  v4 = sub_AB9780();
  v1(v5, v3, v2);
  v6 = sub_23BCD8(v4);
  v0[163] = v6;
  v0[77] = v6;
  v7 = swift_task_alloc();
  v0[164] = v7;
  v8 = sub_AB9870();
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_53CFF8;
  v10 = v0[85];
  v11 = v0[84];

  return MusicLibrary.add<A, B>(_:)(v0 + 77, v8, v11, WitnessTable, v10);
}

uint64_t sub_53CFF8()
{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = sub_53D134;
  }

  else
  {

    v2 = sub_53F1A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_53D134()
{
  sub_12E1C(*(v0 + 1080), &qword_E0ECA0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_53D388()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8) + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    sub_17774(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = sub_AB31C0();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_53D6B8()
{
  v2 = v0[2];
  v14 = v0[3];
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[5];
  v9 = v0[6];
  v10 = *(v0 + v4);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_17BD0;

  return sub_5397D4(v8, v9, v0 + v3, v10, v0 + v5, v0 + v7, v2, v14);
}

uint64_t sub_53D848(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v36 = a3;
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v41 = sub_AB8420();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v36 - v9;
  v10 = sub_AB8410();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  sub_AB4000();
  sub_AB8860();
  sub_AB82C0();
  (*(v11 + 8))(v13, v10);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v5);
  v20 = v41;
  if ((*(v6 + 48))(v5, 1, v41) == 1)
  {
    sub_12E1C(v5, &qword_E0ECA0);
  }

  else
  {
    v21 = v38;
    v37 = *(v6 + 32);
    v37(v38, v5, v20);
    (*(v6 + 16))(v40, v21, v20);
    v22 = v36;
    v23 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v22;
    }

    else
    {
      v23 = sub_5068AC(0, v23[2] + 1, 1, v23);
      v25 = v22;
      *v22 = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      *v25 = sub_5068AC(v26 > 1, v27 + 1, 1, v23);
    }

    v28 = v41;
    (*(v6 + 8))(v38, v41);
    v29 = *v25;
    *(v29 + 16) = v27 + 1;
    v37((v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27), v40, v28);
  }

  v30 = v39;
  (*(v15 + 16))(v39, v19, v14);
  v31 = (*(v15 + 88))(v30, v14);
  v32 = v31;
  v33 = enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:);
  if (v31 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v34 = *(v15 + 8);
    v34(v19, v14);
    v34(v30, v14);
    return v32 != v33;
  }

  if (v31 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    (*(v15 + 8))(v19, v14);
    return v32 != v33;
  }

  result = sub_ABB3B0();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.SupportedStatus<>.unaddableReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_AB8400();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v5 + 96))(v7, v4);
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v15(v12, v14, v8);
    if ((*(v9 + 88))(v12, v8) == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
    {
      (*(v9 + 96))(v12, v8);
      v16 = sub_AB8420();
      v17 = *(v16 - 8);
      (*(v17 + 32))(a1, v12, v16);
      return (*(v17 + 56))(a1, 0, 1, v16);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v19 = sub_AB8420();
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t sub_53E060(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_AB9940();
  v2[4] = sub_AB9930();
  v4 = sub_AB98B0();

  return _swift_task_switch(sub_53E0F8, v4, v3);
}

uint64_t sub_53E0F8()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_53E18C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_53E1C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_17BD0;

  return sub_53E060(v2, v3);
}

uint64_t sub_53E25C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_E0564;

  return v4();
}

uint64_t sub_53E344()
{

  return swift_deallocObject();
}

uint64_t sub_53E37C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_53E25C(v2);
}

uint64_t Actions.AddToLibrary.Context.menuItemTitle.getter()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_53EAA8;
}

uint64_t (*Actions.AddToLibrary.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000000B6A660;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x8000000000B6A660;
  return sub_53F19C;
}

uint64_t (*sub_53E758())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E73756C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E73756C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_53F19C;
}

uint64_t (*sub_53E7FC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000000B6A660;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x8000000000B6A660;
  return sub_53F19C;
}

uint64_t _s9MusicCore7ActionsO12AddToLibraryO7ContextV25menuItemCompactStyleTitleSSSgvg_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_53EA70()
{

  return swift_deallocObject();
}

unint64_t sub_53EABC()
{
  result = qword_E0EC80;
  if (!qword_E0EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0EC80);
  }

  return result;
}

BOOL sub_53EB48(uint64_t a1, void (*a2)(char *, char *, uint64_t), size_t *a3)
{
  v29 = a2;
  v30 = a3;
  v28 = sub_AB8860();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  (*(v7 + 16))(v9, a1, v6);
  sub_53F130(&qword_E0ECB8);
  sub_AB95A0();
  v14 = *(v11 + 44);
  sub_53F130(&qword_E0EC58);
  v25 = (v4 + 16);
  v26 = (v4 + 8);
  do
  {
    sub_AB9CA0();
    v15 = v32[0];
    v31 = *&v13[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = sub_AB9D80();
    v17 = v6;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    sub_AB9CB0();
    v20 = v33;
    v21 = sub_53D848(v18, v29, v30);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v6 = v17;
  }

  while ((v22 & 1) == 0);
  sub_12E1C(v13, &qword_E0EC40);
  return v31 != v15;
}

uint64_t sub_53EEE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_53EF4C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_53EF78(result);
  }

  return result;
}

void *sub_53EF78(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_53EFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_53F030()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_53F0E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_AB8420();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_53F130(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0EC50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Actions.AddToPlaylist.Context.init<A, B>(item:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = sub_547D58(a1, a2, a3, a4, a5, a6, a7, a9, v18, a10);
  (*(*(a6 - 8) + 8))(a3, a6, v15);

  (*(*(a5 - 8) + 8))(a1, a5);
  v16 = v18[1];
  *a8 = v18[0];
  a8[1] = v16;
  result = *&v19;
  a8[2] = v19;
  return result;
}

uint64_t static Actions.AddToPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18838;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18840;
  *(a2 + 104) = 0;
}

uint64_t sub_53F340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 11;
  *(a2 + 56) = sub_53842C;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_B18838;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_B18840;
  *(a2 + 104) = 0;
}

uint64_t (*Actions.AddToPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_53EAA8;
}

uint64_t (*sub_53F4A8())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6461622E74786574;
  *(v0 + 24) = 0xEF73756C702E6567;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6461622E74786574;
  *(v1 + 24) = 0xEF73756C702E6567;
  return sub_53F19C;
}

uint64_t Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t (**a7)()@<X8>)
{
  v81 = a6;
  v84 = a5;
  v85 = a4;
  v83 = a3;
  v82 = a2;
  v86 = a7;
  v101 = sub_AB8410();
  v8 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v79 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v78 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v77 - v19;
  v80 = v21;
  __chkstk_darwin(v18);
  v105 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECC0);
  v24 = __chkstk_darwin(v23 - 8);
  v77 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v77 - v30;
  __chkstk_darwin(v29);
  v33 = &v77 - v32;
  v87 = v11;
  v97 = *(v11 + 56);
  v98 = v11 + 56;
  v97(&v77 - v32, 1, 1, v10);
  v102 = a1;
  v96 = *(a1 + 16);
  if (v96)
  {
    v34 = 0;
    result = v102 + 32;
    v94 = (v8 + 8);
    v92 = (v87 + 88);
    v93 = (v87 + 16);
    v99 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    v36 = (v87 + 8);
    v90 = (v87 + 48);
    v89 = (v87 + 32);
    v91 = v31;
    v95 = v33;
    while (v34 < *(v102 + 16))
    {
      v103 = result;
      v104 = v34;
      sub_53525C(result, v106);
      __swift_project_boxed_opaque_existential_1(v106, v106[3]);
      v39 = v100;
      sub_AB4000();
      v40 = v36;
      v41 = v10;
      v42 = v105;
      v43 = v101;
      sub_AB82C0();
      __swift_destroy_boxed_opaque_existential_0(v106);
      (*v94)(v39, v43);
      v44 = v42;
      v10 = v41;
      v36 = v40;
      (*v93)(v20, v44, v10);
      v45 = (*v92)(v20, v10);
      v46 = *v40;
      if (v45 == v99)
      {
        v46(v105, v10);

        v46(v20, v10);
        sub_12E1C(v95, &qword_E0ECC0);
        v50 = v87;
        v52 = v10;
        v55 = v78;
        (*(v87 + 104))(v78, v99, v10);
        goto LABEL_15;
      }

      v46(v20, v10);
      v33 = v95;
      sub_36B0C(v95, v28, &qword_E0ECC0);
      v47 = *v90;
      if ((*v90)(v28, 1, v10) == 1)
      {
        v37 = v91;
        (*v89)(v91, v105, v10);
        v48 = v47(v28, 1, v10);
        v38 = v104;
        if (v48 != 1)
        {
          sub_12E1C(v28, &qword_E0ECC0);
        }
      }

      else
      {
        v46(v105, v10);
        v37 = v91;
        (*v89)(v91, v28, v10);
        v38 = v104;
      }

      v34 = v38 + 1;
      v97(v37, 0, 1, v10);
      sub_36B0C(v37, v33, &qword_E0ECC0);
      result = v103 + 48;
      if (v96 == v34)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v49 = v77;
    sub_36B0C(v33, v77, &qword_E0ECC0);
    v50 = v87;
    v51 = *(v87 + 48);
    v52 = v10;
    if (v51(v49, 1, v10) == 1)
    {
      v53 = enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:);
      v54 = sub_AB8400();
      v55 = v78;
      (*(*(v54 - 8) + 104))(v78, v53, v54);
      (*(v50 + 104))(v55, enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:), v10);
      v56 = v51(v49, 1, v10) == 1;
      v57 = v49;
      v58 = v80;
      if (!v56)
      {
        sub_12E1C(v57, &qword_E0ECC0);
      }
    }

    else
    {
      v55 = v78;
      (*(v50 + 32))(v78, v49, v10);
LABEL_15:
      v58 = v80;
    }

    v59 = v79;
    (*(v50 + 16))(v79, v55, v52);
    v60 = *(v50 + 80);
    v105 = swift_allocObject();
    v61 = *(v50 + 32);
    v61(&v105[(v60 + 16) & ~v60], v59, v52);
    v61(v88, v55, v52);
    v62 = (v60 + 32) & ~v60;
    v63 = (v58 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 103) & 0xFFFFFFFFFFFFFFF8;
    v65 = v84;
    v66 = *(v84 - 8);
    v67 = (v64 + *(v66 + 80) + 8) & ~*(v66 + 80);
    v68 = swift_allocObject();
    v69 = v81;
    *(v68 + 16) = v65;
    *(v68 + 24) = v69;
    v61((v68 + v62), v88, v52);
    sub_17704(v82, v68 + v63);
    v70 = v102;
    *(v68 + v64) = v102;
    (*(v66 + 32))(v68 + v67, v83, v65);
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
    v72 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v73 = (*(v71 + 64) + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    sub_36B0C(v85, v74 + v72, &qword_E0EAA0);
    *(v74 + v73) = v70;

    v75 = v86;
    v76 = v105;
    *v86 = sub_548074;
    v75[1] = v76;
    v75[2] = &unk_B18858;
    v75[3] = v68;
    v75[4] = &unk_B18868;
    v75[5] = v74;
  }

  return result;
}

unint64_t sub_53FF58(uint64_t a1)
{
  v2 = sub_AB8420();
  v3 = *(v2 - 8);
  v54 = v2;
  v55 = v3;
  v4 = __chkstk_darwin(v2);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v50 - v6;
  v7 = sub_AB8400();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v51 = &v50 - v19;
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v22 = *(v15 + 16);
  v52 = a1;
  v22(&v50 - v20, a1, v14);
  v23 = (*(v15 + 88))(v21, v14);
  if (v23 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v23 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      if (qword_E0CB88 != -1)
      {
        swift_once();
      }

      v32 = sub_AB4BC0();
      __swift_project_value_buffer(v32, static Logger.actions);
      v33 = v51;
      v22(v51, v52, v14);
      v34 = sub_AB4BA0();
      v35 = sub_AB9F40();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v56;
        *v36 = 136315138;
        LODWORD(v55) = v35;
        v22(v50, v33, v14);
        v37 = sub_AB9350();
        v39 = v38;
        v40 = *(v15 + 8);
        v40(v33, v14);
        v41 = sub_500C84(v37, v39, &v57);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_0, v34, v55, "Unknown status=%s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
      }

      else
      {

        v40 = *(v15 + 8);
        v40(v33, v14);
      }

      v31 = 0x206E776F6E6B6E55;
      v40(v21, v14);
      return v31;
    }

    return 0;
  }

  (*(v15 + 96))(v21, v14);
  (*(v8 + 32))(v13, v21, v7);
  (*(v8 + 16))(v11, v13, v7);
  v24 = (*(v8 + 88))(v11, v7);
  if (v24 != enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
    {
      v31 = 0xD000000000000010;
      (*(v8 + 8))(v13, v7);
      return v31;
    }

    if (v24 == enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:))
    {
      goto LABEL_27;
    }

    v42 = enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:);
    v43 = *(v8 + 8);
    v44 = v24;
    v43(v13, v7);
    if (v44 != v42)
    {
      v31 = 0x206E776F6E6B6E55;
      v43(v11, v7);
      return v31;
    }

    return 0;
  }

  (*(v8 + 96))(v11, v7);
  v25 = v55;
  v26 = v53;
  v27 = v11;
  v28 = v54;
  (*(v55 + 32))(v53, v27, v54);
  v29 = v56;
  (*(v25 + 16))(v56, v26, v28);
  v30 = (*(v25 + 88))(v29, v28);
  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) || v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
  {
    goto LABEL_26;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001CLL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.libraryAddIneligibleContent(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD00000000000001ELL;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.invalidContentType(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000014;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionAccountLinkingRequired(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000025;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
LABEL_26:
    (*(v25 + 8))(v26, v28);
LABEL_27:
    (*(v8 + 8))(v13, v7);
    return 0;
  }

  if (v30 == enum case for MusicLibrary.AddStatus.UnaddableReason.sharedLibrary(_:))
  {
    (*(v25 + 8))(v26, v28);
    (*(v8 + 8))(v13, v7);
    return 0xD000000000000016;
  }

  else
  {
    v31 = 0x206E776F6E6B6E55;
    v46 = enum case for MusicLibrary.AddStatus.UnaddableReason.unknown(_:);
    v47 = v26;
    v48 = *(v25 + 8);
    v49 = v30;
    v48(v47, v28);
    (*(v8 + 8))(v13, v7);
    if (v49 != v46)
    {
      v48(v56, v28);
    }
  }

  return v31;
}

uint64_t sub_5408C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[72] = a6;
  v6[71] = a5;
  v6[70] = a4;
  v6[69] = a3;
  v6[68] = a2;
  v6[67] = a1;
  v7 = sub_AB8580();
  v6[73] = v7;
  v6[74] = *(v7 - 8);
  v6[75] = swift_task_alloc();
  v6[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED38);
  v6[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED40);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v8 = sub_AB8860();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v6[84] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC40);
  v6[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC48);
  v6[86] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v6[87] = v9;
  v6[88] = *(v9 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA0);
  v6[92] = swift_task_alloc();
  v10 = sub_AB8420();
  v6[93] = v10;
  v6[94] = *(v10 - 8);
  v6[95] = swift_task_alloc();
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_540C20, 0, 0);
}

uint64_t sub_540C20()
{
  v104 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  MusicLibrary.SupportedStatus<>.unaddableReason.getter(v3);
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v11 = *(v0 + 776);
    v12 = *(v0 + 768);
    v13 = *(v0 + 752);
    v14 = *(v0 + 744);
    (*(v13 + 32))(v11, *(v0 + 736), v14);
    v15 = *(v13 + 16);
    v15(v12, v11, v14);
    v16 = (*(v13 + 88))(v12, v14);
    if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {
      if (v16 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
      {
        if (v16 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
        {
          v35 = *(v0 + 776);
          v36 = *(v0 + 752);
          v37 = *(v0 + 744);
          *(v0 + 448) = 0u;
          *(v0 + 464) = 0u;
          *(v0 + 480) = 0;
          *(v0 + 488) = -2;
          _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 448);
          sub_53EE90(v0 + 448);
          (*(v36 + 8))(v35, v37);
        }

        else
        {
          if (qword_E0CB88 != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 776);
          v43 = *(v0 + 760);
          v44 = *(v0 + 744);
          v45 = sub_AB4BC0();
          __swift_project_value_buffer(v45, static Logger.actions);
          v15(v43, v42, v44);
          v46 = sub_AB4BA0();
          v47 = sub_AB9F40();
          v48 = os_log_type_enabled(v46, v47);
          v49 = *(v0 + 776);
          v50 = *(v0 + 760);
          v51 = *(v0 + 752);
          v52 = *(v0 + 744);
          if (v48)
          {
            v102 = *(v0 + 776);
            v53 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v103 = v97;
            *v53 = 136315138;
            sub_5487D8(&qword_E0EC88, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason);
            v54 = sub_ABB330();
            v56 = v55;
            v57 = *(v51 + 8);
            v57(v50, v52);
            v58 = sub_500C84(v54, v56, &v103);

            *(v53 + 4) = v58;
            _os_log_impl(&dword_0, v46, v47, "Unhandled unaddableReason=%s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v97);

            v59 = v102;
          }

          else
          {

            v57 = *(v51 + 8);
            v57(v50, v52);
            v59 = v49;
          }

          v57(v59, v52);
          v57(*(v0 + 768), *(v0 + 744));
        }

LABEL_43:

        v83 = *(v0 + 8);

        return v83();
      }

      *(v0 + 816) = sub_AB9940();
      *(v0 + 824) = sub_AB9930();
      v21 = sub_AB98B0();
      v23 = v22;
      *(v0 + 832) = v21;
      *(v0 + 840) = v22;
      v24 = sub_541EA4;
      v25 = v21;
LABEL_22:

      return _swift_task_switch(v24, v25, v23);
    }

    *(v0 + 792) = sub_AB9940();
    *(v0 + 800) = sub_AB9930();
    v17 = sub_AB98B0();
    v19 = v18;
    v20 = sub_541968;
LABEL_21:
    v24 = v20;
    v25 = v17;
    v23 = v19;
    goto LABEL_22;
  }

  v4 = *(v0 + 552);
  sub_12E1C(*(v0 + 736), &qword_E0ECA0);
  sub_AB7DC0();
  v5 = *(v4 + 16);
  *(v0 + 784) = v5;
  if (v5)
  {
    v6 = *(v0 + 552);
    *(v0 + 872) = 0;
    v7 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 32), v7);
    v8 = swift_task_alloc();
    *(v0 + 880) = v8;
    *v8 = v0;
    v8[1] = sub_542180;
    v9 = *(v0 + 688);

    return MusicPlaylistAddable.tracks.getter(v9, v7);
  }

  if (qword_E0D568 != -1)
  {
    swift_once();
  }

  if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
  {
    if (!*(v0 + 784))
    {
      goto LABEL_42;
    }

    goto LABEL_14;
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 728), *(v0 + 696));
  sub_53F130(&qword_E0ECB8);
  sub_AB95A0();
  v40 = *(v39 + 36);
  sub_53F130(&qword_E0EC58);
  sub_AB9CA0();
  v101 = v40;
  if (*(v38 + v40) == *(v0 + 528))
  {
LABEL_20:
    sub_12E1C(*(v0 + 680), &qword_E0EC40);
    *(v0 + 888) = sub_AB9940();
    *(v0 + 896) = sub_AB9930();
    v17 = sub_AB98B0();
    v19 = v41;
    v20 = sub_542CB4;
    goto LABEL_21;
  }

  v60 = *(v0 + 656);
  v94 = *(v0 + 608);
  v93 = (v60 + 16);
  v61 = *(v0 + 592);
  v91 = (v61 + 56);
  v92 = (v61 + 104);
  v84 = (v61 + 32);
  v86 = (v61 + 8);
  v87 = v38;
  v89 = (v60 + 8);
  v90 = (v61 + 48);
  v88 = enum case for ContentRating.clean(_:);
  while (1)
  {
    v66 = *(v0 + 664);
    v98 = *(v0 + 640);
    v67 = *(v0 + 632);
    v95 = *(v0 + 616);
    v68 = *(v0 + 584);
    v69 = sub_AB9D80();
    (*v93)(v66);
    v69(v0 + 496, 0);
    sub_AB9CB0();
    sub_AB8800();
    (*v92)(v67, v88, v68);
    (*v91)(v67, 0, 1, v68);
    v70 = *(v94 + 48);
    sub_15F84(v98, v95, &qword_E0ED40);
    sub_15F84(v67, v95 + v70, &qword_E0ED40);
    v71 = *v90;
    if ((*v90)(v95, 1, v68) == 1)
    {
      break;
    }

    v72 = *(v0 + 584);
    sub_15F84(*(v0 + 616), *(v0 + 624), &qword_E0ED40);
    v73 = v71(v95 + v70, 1, v72);
    v74 = *(v0 + 664);
    v75 = *(v0 + 648);
    v76 = *(v0 + 640);
    v77 = *(v0 + 632);
    v78 = *(v0 + 624);
    if (v73 == 1)
    {
      v79 = *(v0 + 584);
      sub_12E1C(*(v0 + 632), &qword_E0ED40);
      sub_12E1C(v76, &qword_E0ED40);
      (*v89)(v74, v75);
      (*v86)(v78, v79);
      goto LABEL_31;
    }

    v99 = *(v0 + 616);
    v80 = *(v0 + 600);
    v81 = *(v0 + 584);
    (*v84)(v80, v95 + v70, v81);
    sub_5487D8(&qword_E0ED48, &type metadata accessor for ContentRating);
    v85 = sub_AB91C0();
    v82 = *v86;
    (*v86)(v80, v81);
    sub_12E1C(v77, &qword_E0ED40);
    sub_12E1C(v76, &qword_E0ED40);
    (*v89)(v74, v75);
    v82(v78, v81);
    sub_12E1C(v99, &qword_E0ED40);
    if (v85)
    {
      goto LABEL_41;
    }

LABEL_32:
    sub_AB9CA0();
    if (*(v87 + v101) == *(v0 + 528))
    {
      goto LABEL_20;
    }
  }

  v62 = *(v0 + 664);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 584);
  sub_12E1C(*(v0 + 632), &qword_E0ED40);
  sub_12E1C(v64, &qword_E0ED40);
  (*v89)(v62, v63);
  if (v71(v95 + v70, 1, v65) != 1)
  {
LABEL_31:
    sub_12E1C(*(v0 + 616), &qword_E0ED38);
    goto LABEL_32;
  }

  sub_12E1C(*(v0 + 616), &qword_E0ED40);
LABEL_41:
  sub_12E1C(*(v0 + 680), &qword_E0EC40);
  if (!*(v0 + 784))
  {
LABEL_42:
    (*(*(v0 + 704) + 8))(*(v0 + 728), *(v0 + 696));
    goto LABEL_43;
  }

LABEL_14:
  v100 = *(v0 + 576);
  v26 = *(v0 + 552);
  v28 = v26[7];
  v27 = v26[8];
  v29 = v26[9];
  v30 = __swift_project_boxed_opaque_existential_1(v26 + 4, v28);
  v96 = (*(v100 + 8) + **(v100 + 8));
  v31 = swift_task_alloc();
  *(v0 + 912) = v31;
  *v31 = v0;
  v31[1] = sub_5431F0;
  v32 = *(v0 + 576);
  v33 = *(v0 + 568);
  v34 = *(v0 + 728);

  return v96(v34, v30, v28, v27, v29, v33, v32);
}

uint64_t sub_541968()
{

  sub_5FEC68(0, v0 + 280);

  return _swift_task_switch(sub_5419DC, 0, 0);
}

uint64_t sub_5419DC()
{
  *(v0 + 808) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_541A68, v2, v1);
}

uint64_t sub_541A68()
{
  v1 = *(v0 + 544);

  v2 = sub_5B4DF0(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_71E354;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_71F2F4;
    *(v0 + 424) = &block_descriptor_35_3;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_5488D0, v15);
    sub_17654(v5);

    sub_111904(v0 + 280);
    v18 = sub_541D50;
  }

  else
  {
    sub_71C834(v2, *(v0 + 312), &dword_0 + 1, 0, 0);

    sub_111904(v0 + 280);
    v18 = sub_5488C8;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_541D50()
{
  (*(v0[94] + 8))(v0[97], v0[93]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_541EA4()
{
  v1 = v0[68];
  v2 = sub_AB9930();
  v0[106] = v2;
  v3 = swift_task_alloc();
  v0[107] = v3;
  *(v3 + 16) = 2;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_541FB8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 489, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000000B6A730, sub_53F124, v3, &type metadata for Bool);
}

uint64_t sub_541FB8()
{
  v1 = *v0;

  v2 = *(v1 + 840);
  v3 = *(v1 + 832);

  return _swift_task_switch(sub_542118, v3, v2);
}

uint64_t sub_542118()
{

  return _swift_task_switch(sub_5488C8, 0, 0);
}

uint64_t sub_542180()
{

  return _swift_task_switch(sub_54227C, 0, 0);
}

uint64_t sub_54227C()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_AB7DC0();
    if (v4(v3, 1, v2) != 1)
    {
      sub_12E1C(v0[86], &qword_E0EC48);
    }
  }

  else
  {
    (*(v1 + 32))(v0[90], v3, v2);
  }

  v5 = v0[98];
  v6 = v0[90];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[109] + 1;
  sub_AB7DE0();
  (*(v7 + 8))(v6, v8);
  if (v9 == v5)
  {
    if (qword_E0D568 != -1)
    {
      swift_once();
    }

    if (ExplicitRestrictionsController.explicitContentIsAllowed.getter())
    {
      if (!v0[98])
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v25 = v0[85];
    v26 = v0[84];
    (*(v0[88] + 16))(v0[89], v0[91], v0[87]);
    sub_53F130(&qword_E0ECB8);
    sub_AB95A0();
    v27 = *(v26 + 36);
    sub_53F130(&qword_E0EC58);
    sub_AB9CA0();
    v70 = v27;
    if (*(v25 + v27) == v0[66])
    {
LABEL_17:
      sub_12E1C(v0[85], &qword_E0EC40);
      v0[111] = sub_AB9940();
      v0[112] = sub_AB9930();
      v29 = sub_AB98B0();

      return _swift_task_switch(sub_542CB4, v29, v28);
    }

    v30 = v0[82];
    v64 = v0[76];
    v63 = (v30 + 16);
    v31 = v0[74];
    v61 = (v31 + 56);
    v62 = (v31 + 104);
    v54 = (v31 + 32);
    v56 = (v31 + 8);
    v57 = v25;
    v59 = (v30 + 8);
    v60 = (v31 + 48);
    v58 = enum case for ContentRating.clean(_:);
    while (1)
    {
      v36 = v0[83];
      v37 = v0[79];
      v65 = v0[77];
      v67 = v0[80];
      v38 = v0[73];
      v39 = sub_AB9D80();
      (*v63)(v36);
      v39(v0 + 62, 0);
      sub_AB9CB0();
      sub_AB8800();
      (*v62)(v37, v58, v38);
      (*v61)(v37, 0, 1, v38);
      v40 = *(v64 + 48);
      sub_15F84(v67, v65, &qword_E0ED40);
      sub_15F84(v37, v65 + v40, &qword_E0ED40);
      v41 = *v60;
      if ((*v60)(v65, 1, v38) == 1)
      {
        break;
      }

      v42 = v0[73];
      sub_15F84(v0[77], v0[78], &qword_E0ED40);
      v43 = v41(v65 + v40, 1, v42);
      v44 = v0[83];
      v45 = v0[81];
      v46 = v0[80];
      v47 = v0[79];
      v48 = v0[78];
      if (v43 == 1)
      {
        v49 = v0[73];
        sub_12E1C(v0[79], &qword_E0ED40);
        sub_12E1C(v46, &qword_E0ED40);
        (*v59)(v44, v45);
        (*v56)(v48, v49);
LABEL_22:
        sub_12E1C(v0[77], &qword_E0ED38);
        goto LABEL_23;
      }

      v68 = v0[77];
      v50 = v0[75];
      v51 = v0[73];
      (*v54)(v50, v65 + v40, v51);
      sub_5487D8(&qword_E0ED48, &type metadata accessor for ContentRating);
      v55 = sub_AB91C0();
      v52 = *v56;
      (*v56)(v50, v51);
      sub_12E1C(v47, &qword_E0ED40);
      sub_12E1C(v46, &qword_E0ED40);
      (*v59)(v44, v45);
      v52(v48, v51);
      sub_12E1C(v68, &qword_E0ED40);
      if (v55)
      {
        goto LABEL_30;
      }

LABEL_23:
      sub_AB9CA0();
      if (*(v57 + v70) == v0[66])
      {
        goto LABEL_17;
      }
    }

    v32 = v0[83];
    v33 = v0[81];
    v34 = v0[80];
    v35 = v0[73];
    sub_12E1C(v0[79], &qword_E0ED40);
    sub_12E1C(v34, &qword_E0ED40);
    (*v59)(v32, v33);
    if (v41(v65 + v40, 1, v35) == 1)
    {
      sub_12E1C(v0[77], &qword_E0ED40);
LABEL_30:
      sub_12E1C(v0[85], &qword_E0EC40);
      if (!v0[98])
      {
LABEL_31:
        (*(v0[88] + 8))(v0[91], v0[87]);

        v53 = v0[1];

        return v53();
      }

LABEL_10:
      v69 = v0[72];
      v10 = v0[69];
      v12 = v10[7];
      v11 = v10[8];
      v13 = v10[9];
      v14 = __swift_project_boxed_opaque_existential_1(v10 + 4, v12);
      v66 = (*(v69 + 8) + **(v69 + 8));
      v15 = swift_task_alloc();
      v0[114] = v15;
      *v15 = v0;
      v15[1] = sub_5431F0;
      v16 = v0[72];
      v17 = v0[71];
      v18 = v0[91];

      return v66(v18, v14, v12, v11, v13, v17, v16);
    }

    goto LABEL_22;
  }

  v20 = v0[109];
  v0[109] = v20 + 1;
  v21 = v0[69] + 48 * v20;
  v22 = *(v21 + 104);
  __swift_project_boxed_opaque_existential_1((v21 + 80), v22);
  v23 = swift_task_alloc();
  v0[110] = v23;
  *v23 = v0;
  v23[1] = sub_542180;
  v24 = v0[86];

  return MusicPlaylistAddable.tracks.getter(v24, v22);
}

uint64_t sub_542CB4()
{

  sub_5FEC68(0, v0 + 208);

  return _swift_task_switch(sub_542D28, 0, 0);
}

uint64_t sub_542D28()
{
  *(v0 + 904) = sub_AB9930();
  v2 = sub_AB98B0();

  return _swift_task_switch(sub_542DB4, v2, v1);
}

uint64_t sub_542DB4()
{
  v1 = *(v0 + 544);

  v2 = sub_5B4DF0(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_E0CF08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E14920);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 544);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_71E354;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_71F2F4;
    *(v0 + 376) = &block_descriptor_165;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_15F28(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_17704(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_5487D4, v15);
    sub_17654(v5);

    sub_111904(v0 + 208);
    v18 = sub_54309C;
  }

  else
  {
    sub_71C834(v2, *(v0 + 240), &dword_0 + 1, 0, 0);

    sub_111904(v0 + 208);
    v18 = sub_5488B8;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_54309C()
{
  (*(v0[88] + 8))(v0[91], v0[87]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_5431F0()
{

  return _swift_task_switch(sub_5488B8, 0, 0);
}

uint64_t MusicPlaylistAddable.tracks.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_AB8D50();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECC8);
  v3[10] = swift_task_alloc();
  v6 = sub_AB8DE0();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECD0);
  v3[15] = swift_task_alloc();
  v7 = sub_AB8860();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECD8);
  v3[19] = swift_task_alloc();
  v8 = sub_AB8030();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECE0);
  v3[24] = swift_task_alloc();
  v9 = sub_AB86C0();
  v3[25] = v9;
  v3[26] = *(v9 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC50);
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC48);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10B00);
  v3[36] = swift_task_alloc();
  v11 = sub_AB8E20();
  v3[37] = v11;
  v3[38] = *(v11 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC98);
  v3[42] = swift_task_alloc();
  v3[43] = *(a2 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v12 = sub_AB8770();
  v3[52] = v12;
  v3[53] = *(v12 - 8);
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return _swift_task_switch(sub_5438E8, 0, 0);
}

uint64_t sub_5438E8()
{
  v150 = v0;
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[43];
  v5 = v0[4];
  v4 = v0[5];
  v6 = *(v3 + 16);
  v0[56] = v6;
  v0[57] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v145 = v6;
  v6(v2, v4, v5);
  v7 = swift_dynamicCast();
  v8 = *(v1 + 56);
  if (v7)
  {
    v9 = v0[55];
    v10 = v0[52];
    v11 = v0[53];
    v12 = v0[42];
    v8(v12, 0, 1, v10);
    (*(v11 + 32))(v9, v12, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v13 = swift_allocObject();
    v0[58] = v13;
    *(v13 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED08);
    *(v13 + 32) = sub_AB7D50();
    v14 = swift_task_alloc();
    v0[59] = v14;
    v15 = sub_5487D8(&qword_E0ED10, &type metadata accessor for Album);
    *v14 = v0;
    v14[1] = sub_5448F8;
    v16 = v0[54];
    v17 = v0[52];

    return MusicItem<>.with(_:)(v16, v13, v17, &protocol witness table for Album, &protocol witness table for Album, v15);
  }

  v18 = v0[50];
  v19 = v0[42];
  v20 = v0[38];
  v22 = v0[4];
  v21 = v0[5];
  v8(v19, 1, 1, v0[52]);
  sub_12E1C(v19, &qword_E0EC98);
  v145(v18, v21, v22);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v25 = v0[41];
    v26 = v0[37];
    v27 = v0[38];
    v28 = v0[36];
    v24(v28, 0, 1, v26);
    (*(v27 + 32))(v25, v28, v26);
    v0[61] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
    v29 = swift_allocObject();
    v0[62] = v29;
    *(v29 + 16) = xmmword_AF82B0;
    v0[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF8);
    *(v29 + 32) = sub_AB7D60();
    v30 = swift_task_alloc();
    v0[64] = v30;
    *v30 = v0;
    v30[1] = sub_544C58;
    v31 = v0[40];
    v32 = v0[37];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v31, v29, v32, &protocol witness table for Playlist);
  }

  v33 = v0[49];
  v34 = v0[36];
  v35 = v0[26];
  v37 = v0[4];
  v36 = v0[5];
  v24(v34, 1, 1, v0[37]);
  sub_12E1C(v34, &qword_E10B00);
  v145(v33, v36, v37);
  v38 = swift_dynamicCast();
  v39 = *(v35 + 56);
  if (v38)
  {
    v40 = v0[30];
    v146 = v0[29];
    v41 = v0[28];
    v42 = v0[25];
    v43 = v0[26];
    v44 = v0[24];
    v46 = v0[16];
    v45 = v0[17];
    v47 = v0[3];
    v39(v44, 0, 1, v42);
    (*(v43 + 32))(v41, v44, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF0);
    v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_AF4EC0;
    (*(v43 + 16))(v49 + v48, v41, v42);
    (*(v45 + 104))(v49 + v48, enum case for Track.song(_:), v46);
    sub_AB7DC0();
    (*(v43 + 8))(v41, v42);
LABEL_13:
    (*(v40 + 56))(v47, 0, 1, v146);
    goto LABEL_14;
  }

  v50 = v0[48];
  v51 = v0[24];
  v52 = v0[21];
  v54 = v0[4];
  v53 = v0[5];
  v39(v51, 1, 1, v0[25]);
  sub_12E1C(v51, &qword_E0ECE0);
  v145(v50, v53, v54);
  v55 = swift_dynamicCast();
  v56 = *(v52 + 56);
  if (v55)
  {
    v40 = v0[30];
    v146 = v0[29];
    v57 = v0[23];
    v58 = v0[20];
    v59 = v0[21];
    v60 = v0[19];
    v62 = v0[16];
    v61 = v0[17];
    v47 = v0[3];
    v56(v60, 0, 1, v58);
    (*(v59 + 32))(v57, v60, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF0);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_AF4EC0;
    (*(v59 + 16))(v64 + v63, v57, v58);
    (*(v61 + 104))(v64 + v63, enum case for Track.musicVideo(_:), v62);
    sub_AB7DC0();
    (*(v59 + 8))(v57, v58);
    goto LABEL_13;
  }

  v66 = v0[47];
  v67 = v0[19];
  v68 = v0[17];
  v70 = v0[4];
  v69 = v0[5];
  v56(v67, 1, 1, v0[20]);
  sub_12E1C(v67, &qword_E0ECD8);
  v145(v66, v69, v70);
  v71 = swift_dynamicCast();
  v72 = *(v68 + 56);
  if (v71)
  {
    v73 = v0[29];
    v74 = v0[30];
    v76 = v0[17];
    v75 = v0[18];
    v78 = v0[15];
    v77 = v0[16];
    v79 = v0[3];
    v72(v78, 0, 1, v77);
    (*(v76 + 32))(v75, v78, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF0);
    v80 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_AF4EC0;
    (*(v76 + 16))(v81 + v80, v75, v77);
    sub_AB7DC0();
    (*(v76 + 8))(v75, v77);
    (*(v74 + 56))(v79, 0, 1, v73);
  }

  else
  {
    v82 = v0[46];
    v83 = v0[15];
    v84 = v0[12];
    v86 = v0[4];
    v85 = v0[5];
    v72(v83, 1, 1, v0[16]);
    sub_12E1C(v83, &qword_E0ECD0);
    v145(v82, v85, v86);
    v87 = swift_dynamicCast();
    v88 = *(v84 + 56);
    if (v87)
    {
      v89 = v0[14];
      v90 = v0[11];
      v91 = v0[12];
      v93 = v0[9];
      v92 = v0[10];
      v94 = v0[6];
      v95 = v0[7];
      v88(v92, 0, 1, v90);
      (*(v91 + 32))(v89, v92, v90);
      sub_AB8D60();
      v96 = (*(v95 + 88))(v93, v94);
      if (v96 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        v97 = v0[30];
        v98 = v0[21];
        v99 = v0[22];
        v100 = v0[20];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v104 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v104, v0[6]);
        (*(v98 + 32))(v99, v104, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_AF4EC0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.musicVideo(_:);
      }

      else
      {
        if (v96 != enum case for Playlist.Entry.InternalItem.song(_:))
        {
          if (qword_E0CB88 != -1)
          {
            swift_once();
          }

          v113 = v0[13];
          v114 = v0[14];
          v115 = v0[11];
          v116 = v0[12];
          v117 = sub_AB4BC0();
          __swift_project_value_buffer(v117, static Logger.actions);
          (*(v116 + 16))(v113, v114, v115);
          v118 = sub_AB4BA0();
          v119 = sub_AB9F40();
          v120 = os_log_type_enabled(v118, v119);
          v122 = v0[13];
          v121 = v0[14];
          v123 = v0[11];
          v124 = v0[12];
          if (v120)
          {
            v148 = v0[14];
            v125 = v0[7];
            v126 = v0[8];
            v127 = v0[6];
            v140 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v149 = v144;
            *v140 = 136315138;
            v142 = v119;
            sub_AB8D60();
            sub_5487D8(&qword_E0ECE8, &type metadata accessor for Playlist.Entry.InternalItem);
            v128 = v127;
            v129 = sub_ABB330();
            v131 = v130;
            (*(v125 + 8))(v126, v128);
            v132 = *(v124 + 8);
            v132(v122, v123);
            v133 = sub_500C84(v129, v131, &v149);

            *(v140 + 4) = v133;
            _os_log_impl(&dword_0, v118, v142, "Unsupported Playlist.Entry.InternalItem=%s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v144);

            v132(v148, v123);
          }

          else
          {

            v134 = *(v124 + 8);
            v134(v122, v123);
            v134(v121, v123);
          }

          v135 = v0[9];
          v136 = v0[6];
          v137 = v0[7];
          (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);
          (*(v137 + 8))(v135, v136);
          goto LABEL_14;
        }

        v97 = v0[30];
        v98 = v0[26];
        v99 = v0[27];
        v100 = v0[25];
        v102 = v0[16];
        v101 = v0[17];
        v143 = v0[14];
        v147 = v0[29];
        v103 = v0[12];
        v112 = v0[9];
        v139 = v0[3];
        v141 = v0[11];
        (*(v0[7] + 96))(v112, v0[6]);
        (*(v98 + 32))(v99, v112, v100);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECF0);
        v105 = (*(v101 + 80) + 32) & ~*(v101 + 80);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_AF4EC0;
        (*(v98 + 16))(v106 + v105, v99, v100);
        v107 = &enum case for Track.song(_:);
      }

      (*(v101 + 104))(v106 + v105, *v107, v102);
      sub_AB7DC0();
      (*(v98 + 8))(v99, v100);
      (*(v103 + 8))(v143, v141);
      (*(v97 + 56))(v139, 0, 1, v147);
    }

    else
    {
      v108 = v0[29];
      v109 = v0[30];
      v110 = v0[10];
      v111 = v0[3];
      v88(v110, 1, 1, v0[11]);
      sub_12E1C(v110, &qword_E0ECC8);
      (*(v109 + 56))(v111, 1, 1, v108);
    }
  }

LABEL_14:

  v65 = v0[1];

  return v65();
}

uint64_t sub_5448F8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_546434;
  }

  else
  {
    v2 = sub_544A28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_544A28()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[52];
  v4 = v0[53];
  sub_AB8750();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_544C58()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_545138;
  }

  else
  {
    v2 = sub_544D88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_544D88()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  sub_AB8DF0();
  v4 = *(v3 + 48);
  v0[66] = v4;
  v0[67] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v2);
  v6 = v0[35];
  if (v5 == 1)
  {
    sub_12E1C(v0[35], &qword_E0EC48);
LABEL_7:
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    sub_AB8DF0();
    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[29];
  v8 = v0[30];
  v9 = sub_AB7DD0();
  v10 = *(v8 + 8);
  v0[68] = v10;
  v0[69] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = swift_allocObject();
  v0[70] = v11;
  *(v11 + 16) = xmmword_AF82B0;
  sub_AB7D60();
  v12 = sub_AB7EE0();

  *(v11 + 32) = v12;
  v13 = swift_task_alloc();
  v0[71] = v13;
  *v13 = v0;
  v13[1] = sub_545594;
  v14 = v0[39];
  v15 = v0[37];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v14, v11, v15, &protocol witness table for Playlist);
}

uint64_t sub_545138()
{
  v29 = v0;
  (*(v0[38] + 8))(v0[41], v0[37]);
  v1 = v0[65];
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_AB9350();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_500C84(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v19 = sub_AB9350();
    v21 = sub_500C84(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_0, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_545594()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_545ADC;
  }

  else
  {
    v2 = sub_5456C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5456C4()
{
  v1 = v0[66];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[29];
  sub_AB8DF0();
  v7 = *(v3 + 8);
  v0[73] = v7;
  v0[74] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v8 = v1(v5, 1, v6);
  v9 = v0[29];
  if (v8 == 1)
  {
    v10 = v0[66];
    v11 = v0[34];
    sub_AB7DC0();
    if (v10(v11, 1, v9) != 1)
    {
      sub_12E1C(v0[34], &qword_E0EC48);
    }
  }

  else
  {
    (*(v0[30] + 32))(v0[32], v0[34], v0[29]);
  }

  if (sub_AB7DD0())
  {
    v12 = swift_task_alloc();
    v0[75] = v12;
    v13 = sub_5487D8(&qword_E0ED00, &type metadata accessor for Track);
    *v12 = v0;
    v12[1] = sub_545F50;
    v14 = v0[33];
    v15 = v0[29];

    return MusicItemCollection.nextBatch<>(limit:)(v14, 10000, 0, v15, v13);
  }

  else
  {
    v16 = v0[73];
    v17 = v0[41];
    v18 = v0[37];
    v19 = v0[32];
    v20 = v0[29];
    v21 = v0[30];
    v22 = v0[3];
    v16(v0[40], v18);
    v16(v17, v18);
    (*(v21 + 32))(v22, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_545ADC()
{
  v32 = v0;
  v1 = v0[41];
  v2 = v0[37];
  v3 = *(v0[38] + 8);
  v3(v0[40], v2);
  v3(v1, v2);
  v4 = v0[72];
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v5 = v0[56];
  v6 = v0[45];
  v8 = v0[4];
  v7 = v0[5];
  v9 = sub_AB4BC0();
  __swift_project_value_buffer(v9, static Logger.actions);
  v5(v6, v7, v8);
  swift_errorRetain();
  v10 = sub_AB4BA0();
  v11 = sub_AB9F30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[56];
    v14 = v0[44];
    v13 = v0[45];
    v30 = v11;
    v15 = v0[43];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    v12(v14, v13, v16);
    v18 = sub_AB9350();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_500C84(v18, v20, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[2] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v22 = sub_AB9350();
    v24 = sub_500C84(v22, v23, v31);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_0, v10, v30, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v25 = v0[45];
    v26 = v0[43];
    v27 = v0[4];

    (*(v26 + 8))(v25, v27);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v28 = v0[1];

  return v28();
}

uint64_t sub_545F50()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_546890;
  }

  else
  {
    v2 = sub_546064;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_546064()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  if ((*(v0 + 528))(v1, 1, v2) == 1)
  {
    sub_12E1C(v1, &qword_E0EC48);
  }

  else
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 248);
    (*(*(v0 + 240) + 32))(v4, v1, v2);
    sub_AB7DE0();
    v3(v4, v2);
  }

  if (sub_AB7DD0())
  {
    v5 = swift_task_alloc();
    *(v0 + 600) = v5;
    v6 = sub_5487D8(&qword_E0ED00, &type metadata accessor for Track);
    *v5 = v0;
    v5[1] = sub_545F50;
    v7 = *(v0 + 264);
    v8 = *(v0 + 232);

    return MusicItemCollection.nextBatch<>(limit:)(v7, 10000, 0, v8, v6);
  }

  else
  {
    v9 = *(v0 + 584);
    v10 = *(v0 + 328);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 240);
    v15 = *(v0 + 24);
    v9(*(v0 + 320), v11);
    v9(v10, v11);
    (*(v14 + 32))(v15, v12, v13);
    (*(v14 + 56))(v15, 0, 1, v13);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_546434()
{
  v29 = v0;
  (*(v0[53] + 8))(v0[55], v0[52]);
  v1 = v0[60];
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v2 = v0[56];
  v3 = v0[45];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_AB4BC0();
  __swift_project_value_buffer(v6, static Logger.actions);
  v2(v3, v4, v5);
  swift_errorRetain();
  v7 = sub_AB4BA0();
  v8 = sub_AB9F30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[56];
    v11 = v0[44];
    v10 = v0[45];
    v27 = v8;
    v12 = v0[43];
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 136446466;
    v9(v11, v10, v13);
    v15 = sub_AB9350();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_500C84(v15, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v19 = sub_AB9350();
    v21 = sub_500C84(v19, v20, v28);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_0, v7, v27, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v22 = v0[45];
    v23 = v0[43];
    v24 = v0[4];

    (*(v23 + 8))(v22, v24);
  }

  (*(v0[30] + 56))(v0[3], 1, 1, v0[29]);

  v25 = v0[1];

  return v25();
}

uint64_t sub_546890()
{
  v33 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  (*(v0 + 544))(*(v0 + 256), *(v0 + 232));
  v1(v2, v4);
  v1(v3, v4);
  v5 = *(v0 + 608);
  if (qword_E0CB88 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 360);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v10 = sub_AB4BC0();
  __swift_project_value_buffer(v10, static Logger.actions);
  v6(v7, v8, v9);
  swift_errorRetain();
  v11 = sub_AB4BA0();
  v12 = sub_AB9F30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 448);
    v15 = *(v0 + 352);
    v14 = *(v0 + 360);
    v31 = v12;
    v16 = *(v0 + 344);
    v17 = *(v0 + 32);
    v18 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v18 = 136446466;
    v13(v15, v14, v17);
    v19 = sub_AB9350();
    v21 = v20;
    (*(v16 + 8))(v14, v17);
    v22 = sub_500C84(v19, v21, v32);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v0 + 16) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v23 = sub_AB9350();
    v25 = sub_500C84(v23, v24, v32);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_0, v11, v31, "Failed to load tracks for playlist addable item=%{public}s with error=%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);
    v28 = *(v0 + 32);

    (*(v27 + 8))(v26, v28);
  }

  (*(*(v0 + 240) + 56))(*(v0 + 24), 1, 1, *(v0 + 232));

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_546D10(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_546F20, 0, 0);
}

uint64_t sub_546F20()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_15F84(*(v0 + 96), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 224), &qword_E0EAA0);
LABEL_8:

    v20 = *(v0 + 8);

    return v20();
  }

  v4 = *(v0 + 104);
  sub_53EEE4(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  if (!*(v4 + 16))
  {
    sub_548758(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    goto LABEL_8;
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 104);
  v7 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 32), v7);
  *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
  *(v0 + 264) = v8;
  v9 = sub_AB31C0();
  *(v0 + 272) = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  *(v0 + 280) = v11;
  *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85F0;
  v13 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 32), v13);
  *(inited + 32) = MusicItem.metricsContentType.getter(v13);
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = xmmword_AF8620;
  *(inited + 72) = 1;
  *(v0 + 296) = sub_51717C(inited);
  *(v0 + 304) = v15;
  *(v0 + 312) = v16;
  *(v0 + 328) = v17;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_AB9940();
  *(v0 + 320) = sub_AB9930();
  v19 = sub_AB98B0();

  return _swift_task_switch(sub_547288, v19, v18);
}

uint64_t sub_547288()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_15F84(v3, v4, &qword_E0DC30);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_15F84(v1 + v2[5], v7, &qword_E0E348);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 773;
  sub_36B0C(v4, v6 + v5[7], &qword_E0DC30);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_15F84(v7, v72, &qword_E0E348);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));
    sub_12E1C(v20, &qword_E0E348);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_512C64(v75, v77);

    sub_513BF8(v19, v17, v18, v16, SBYTE1(v16));

    sub_548758(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_15F84(v23, v24, &qword_E0E348);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_548758(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_15F84(v30, v31, &qword_E0E348);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_12E1C(*(v0 + 144), &qword_E0E348);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_15F84(v36 + v14[6], *(v0 + 200), &qword_E0DC30);
    sub_548758(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_36B0C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_E0DC30);
  sub_15F84(v37, v38, &qword_E0E348);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_548758(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_12E1C(v45, &qword_E0E348);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_12E1C(*(v0 + 120), &qword_E0E348);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_36B0C(v54, v55, &qword_E0E348);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_12E1C(v58, &qword_E0E348);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_548758(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_53EEE4(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_53EF4C(v65, v64, v63, v70, SBYTE1(v70));
  sub_548758(v69, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v68, &qword_E0DC30);

  return _swift_task_switch(sub_547A40, 0, 0);
}

uint64_t sub_547A40()
{
  sub_548758(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13AddToPlaylistO7ContextV13menuItemTitleSSvg_0()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_AB91E0();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_E0CB80 != -1)
  {
    swift_once();
  }

  v8 = qword_E71B20;
  sub_AB3550();
  v9 = sub_AB9320();
  (*(v2 + 8))(v7, v1);
  return v9;
}

double sub_547D58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v33 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = *(a6 - 8);
  __chkstk_darwin(v17);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ED50);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 56) = a5;
  *(v23 + 64) = a7;
  *(v23 + 72) = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v23 + 32));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v25 = v30;
  sub_15F28(v30, v34);
  (*(v20 + 16))(v22, v31, a6);
  v26 = v32;
  sub_15F84(v32, v19, &qword_E0EAA0);
  sub_AB8510();
  sub_AB8500();
  Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:)(v23, v34, v22, v19, a6, v33, v35);
  sub_12E1C(v26, &qword_E0EAA0);
  sub_1611C(v25);
  v27 = v35[1];
  *a9 = v35[0];
  a9[1] = v27;
  result = v36[0];
  a9[2] = *v36;
  return result;
}

uint64_t sub_547FA8()
{

  return swift_deallocObject();
}

uint64_t sub_547FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t sub_548074()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_53FF58(v2);
}

uint64_t sub_5480E0()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  v8 = v0 + v5;
  swift_unknownObjectWeakDestroy();
  v9 = *(v0 + v5 + 48);
  if (v9 != 255)
  {
    sub_17774(*(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), v9);
  }

  if (*(v8 + 64))
  {
  }

  if (*(v8 + 80))
  {
  }

  (*(v6 + 8))(v0 + ((v7 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t sub_54825C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EC38) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v8 = (*(*(v3 - 8) + 80) + v7 + 8) & ~*(*(v3 - 8) + 80);
  v9 = *(v0 + v7);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_17BD0;

  return sub_5408C4(v0 + v5, v0 + v6, v9, v0 + v8, v3, v2);
}

uint64_t sub_5483CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = sub_AB31C0();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_548628()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_17CF8;

  return sub_546D10(v0 + v3, v4);
}

uint64_t sub_548758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_165(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5487D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_30Tm_0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v29 = a6;
  v12 = sub_AB8E20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(a7, a1, v12);
  v16 = type metadata accessor for Actions.Collaborate.Context();
  v17 = (a7 + v16[5]);
  *v17 = a2;
  v17[1] = a3;
  v18 = swift_allocObject();
  v19 = v28;
  *(v18 + 16) = a4;
  *(v18 + 24) = v19;
  v20 = (a7 + v16[6]);
  *v20 = &unk_B18928;
  v20[1] = v18;
  v21 = *(v13 + 32);
  v21(v15, a1, v12);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = (v23 + *(v22 + 64) + *(v13 + 80)) & ~*(v13 + 80);
  v25 = swift_allocObject();
  sub_36B0C(v29, v25 + v23, &qword_E0EAA0);
  result = v21(v25 + v24, v15, v12);
  v27 = (a7 + v16[7]);
  *v27 = &unk_B18938;
  v27[1] = v25;
  return result;
}

uint64_t type metadata accessor for Actions.Collaborate.Context()
{
  result = qword_E0EDD8;
  if (!qword_E0EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_548B60(void (*a1)(void))
{
  a1();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_548BC8()
{

  return swift_deallocObject();
}

uint64_t sub_548C00()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_17CF8;

  return sub_548B60(v2);
}

uint64_t sub_548CAC(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E348);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_548EBC, 0, 0);
}

uint64_t sub_548EBC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_15F84(*(v0 + 112), v3, &qword_E0EAA0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 240), &qword_E0EAA0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    sub_53EEE4(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = sub_AB8CE0();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = sub_AB31C0();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0ECA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(v0 + 104) = sub_AB8E20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E468);
    v13 = sub_AB9350();
    v15 = v14;
    sub_2717E4(1);
    v16 = sub_ABA9D0();
    v18 = v17;

    v19 = sub_517570(1uLL, v13, v15);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_517620();
    sub_AB9480();

    *(inited + 32) = v16;
    *(inited + 40) = v18;
    *(inited + 48) = 0;
    *(v0 + 312) = sub_51717C(inited);
    *(v0 + 320) = v26;
    *(v0 + 328) = v27;
    *(v0 + 344) = v28;
    swift_setDeallocating();
    sub_54A8C8(inited + 32);
    sub_AB9940();
    *(v0 + 336) = sub_AB9930();
    v30 = sub_AB98B0();

    return _swift_task_switch(sub_549254, v30, v29);
  }
}

uint64_t sub_549254()
{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  sub_15F84(v6, v5, &qword_E0DC30);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  sub_15F84(v3 + v4[5], v9, &qword_E0E348);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 2565;
  sub_36B0C(v79, v8 + v7[7], &qword_E0DC30);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  sub_15F84(v9, v77, &qword_E0E348);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    sub_512C64(v13, v81);
    v24 = v82;

    sub_513BF8(v22, v20, v21, v19, SBYTE1(v19));
    sub_12E1C(v23, &qword_E0E348);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    sub_512C64(v13, v81);
    v24 = v82;

    sub_513BF8(v22, v20, v21, v19, SBYTE1(v19));

    sub_548758(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  sub_15F84(v27, v28, &qword_E0E348);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    sub_12E1C(*(v0 + 168), &qword_E0E348);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_548758(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  sub_15F84(v34, v35, &qword_E0E348);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    sub_12E1C(*(v0 + 160), &qword_E0E348);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    sub_15F84(v41 + v17[6], *(v0 + 216), &qword_E0DC30);
    sub_548758(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  sub_36B0C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_E0DC30);
  sub_15F84(v42, v43, &qword_E0E348);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_12E1C(*(v0 + 152), &qword_E0E348);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    sub_548758(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  sub_15F84(v47, v48, &qword_E0E348);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_12E1C(v50, &qword_E0E348);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    sub_548758(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  sub_15F84(v52, v53, &qword_E0E348);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    sub_12E1C(*(v0 + 136), &qword_E0E348);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    sub_548758(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  sub_36B0C(v59, v60, &qword_E0E348);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    sub_12E1C(v63, &qword_E0E348);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    sub_548758(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  sub_53EEE4(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (qword_E0CC50 != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  sub_53EF4C(v70, v69, v68, v75, SBYTE1(v75));
  sub_548758(v74, type metadata accessor for MetricsEvent.Click);
  sub_12E1C(v73, &qword_E0DC30);

  return _swift_task_switch(sub_549A44, 0, 0);
}

uint64_t sub_549A44()
{
  sub_548758(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_549B7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EAA0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_AB8E20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = sub_AB31C0();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}