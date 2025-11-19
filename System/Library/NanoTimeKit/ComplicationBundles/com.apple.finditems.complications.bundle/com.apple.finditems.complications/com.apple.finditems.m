uint64_t sub_1694(int a1, int a2, void *aBlock)
{
  *(v3 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1740;

  return sub_2978();
}

uint64_t sub_1740(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

id sub_1C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationsDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1CA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CC0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_3828;

  return v7();
}

uint64_t sub_1DA8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1E90;

  return v8();
}

uint64_t sub_1E90()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_3230(&qword_C378, &qword_4310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_3550(a3, v24 - v10);
  v12 = sub_3930();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_35C0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_3920();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_3910();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_38E0() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_35C0(a3);

    return v22;
  }

LABEL_8:
  sub_35C0(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2240(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2338;

  return v7(a1);
}

uint64_t sub_2338()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2430(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_3990();
  sub_38F0();
  v6 = sub_39A0();

  return sub_2750(a1, a2, v6);
}

uint64_t sub_24A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_3230(&qword_C370, &qword_4308);
  v38 = a2;
  result = sub_3960();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_3990();
      sub_38F0();
      result = sub_39A0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2750(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_3970())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2808()
{
  v1 = v0;
  sub_3230(&qword_C370, &qword_4308);
  v2 = *v0;
  v3 = sub_3950();
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

        result = swift_unknownObjectRetain();
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

uint64_t sub_2994()
{
  v1 = objc_allocWithZone(CLKWidgetComplicationDescriptor);
  v2 = sub_38C0();
  v3 = sub_38C0();
  v4 = sub_38C0();
  v5 = [v1 initWithExtensionBundleIdentifier:v2 containerBundleIdentifier:v3 kind:v4 intent:0];

  v6 = *(v0 + 8);

  return v6(v5);
}

id sub_2AA0()
{
  v0 = objc_opt_self();
  v1 = sub_38C0();
  v2 = [v0 _symbolImageProviderWithSystemName:v1];

  v3 = [objc_opt_self() systemGreenColor];
  [v2 setTintColor:v3];

  type metadata accessor for ComplicationsDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 bundleForClass:ObjCClassFromMetadata];
  v11._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x8000000000003EE0;
  v12._countAndFlagsBits = 0xD000000000000020;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v8.super.isa = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_3860(v12, v13, v8, v14, v11);

  v9 = sub_38C0();

  [v6 setAccessibilityLabel:v9];

  return v6;
}

id sub_2C18()
{
  v0 = objc_opt_self();
  v1 = sub_38C0();
  v2 = [v0 _symbolImageProviderWithSystemName:v1];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGreenColor];
  [v4 setTintColor:v5];

  type metadata accessor for ComplicationsDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11._countAndFlagsBits = 0xE000000000000000;
  v12._object = 0x8000000000003EE0;
  v12._countAndFlagsBits = 0xD000000000000020;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v8.super.isa = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_3860(v12, v13, v8, v14, v11);

  v9 = sub_38C0();

  [v4 setAccessibilityLabel:v9];

  return v4;
}

uint64_t sub_2D90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_2430(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24A8(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_2430(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_3980();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2808();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2F0C(uint64_t a1)
{
  if (a1 > 7)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v1 = sub_2AA0();
        v2 = CLKComplicationTemplateGraphicCornerCircularImage;
      }

      else
      {
        v1 = sub_2AA0();
        v2 = CLKComplicationTemplateGraphicCircularImage;
      }

      goto LABEL_19;
    }

    if (a1 == 10)
    {
      v3 = sub_2AA0();
      v4 = [objc_allocWithZone(CLKComplicationTemplateGraphicCircularImage) initWithImageProvider:v3];
      v5 = sub_38D0();
      v7 = v6;
      v1 = v4;
      isa = sub_3900().super.super.isa;
      v9 = [v1 metadata];
      sub_3230(&qword_C368, &qword_4300);
      v10 = sub_38B0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v10;
      sub_2D90(isa, v5, v7, isUniquelyReferenced_nonNull_native, &v15);

      v12 = sub_38A0().super.isa;

      [v1 setMetadata:v12];

      v13 = v1;
LABEL_20:

      return v13;
    }

    if (a1 == 12)
    {
      v1 = sub_2AA0();
      v2 = CLKComplicationTemplateGraphicExtraLargeCircularImage;
      goto LABEL_19;
    }
  }

  else if (a1 > 3)
  {
    if (a1 == 4)
    {
      v1 = sub_2C18();
      v2 = CLKComplicationTemplateCircularSmallSimpleImage;
      goto LABEL_19;
    }

    if (a1 == 7)
    {
      v1 = sub_2C18();
      v2 = CLKComplicationTemplateExtraLargeSimpleImage;
      goto LABEL_19;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = sub_2C18();
      v2 = CLKComplicationTemplateModularSmallSimpleImage;
LABEL_19:
      v13 = [objc_allocWithZone(v2) initWithImageProvider:v1];
      goto LABEL_20;
    }

    if (a1 == 2)
    {
      v1 = sub_2C18();
      v2 = CLKComplicationTemplateUtilitarianSmallSquare;
      goto LABEL_19;
    }
  }

  result = sub_3940();
  __break(1u);
  return result;
}

uint64_t sub_3230(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3278()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E90;

  return sub_1694(v2, v3, v5);
}

uint64_t sub_3384()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_3828;

  return sub_1CC0(v2, v3, v5);
}

uint64_t sub_3444()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_3828;

  return sub_1DA8(a1, v4, v5, v7);
}

uint64_t sub_3550(uint64_t a1, uint64_t a2)
{
  v4 = sub_3230(&qword_C378, &qword_4310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_35C0(uint64_t a1)
{
  v2 = sub_3230(&qword_C378, &qword_4310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3628()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3660(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_3828;

  return sub_2240(a1, v5);
}

uint64_t sub_3718(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E90;

  return sub_2240(a1, v5);
}

void type metadata accessor for CLKComplicationFamily()
{
  if (!qword_C380)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_C380);
    }
  }
}