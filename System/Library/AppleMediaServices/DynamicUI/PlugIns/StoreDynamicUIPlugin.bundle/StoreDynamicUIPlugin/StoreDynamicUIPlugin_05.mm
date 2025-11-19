Swift::Int sub_83BF8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_8399C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_83EB8();
LABEL_10:
      v15 = *v4;
      sub_13C214();
      sub_13BBA4();
      result = sub_13C234();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_13C144() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_83D60();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_13C164();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_83D60()
{
  v1 = v0;
  sub_4948(&qword_19DDB0);
  v2 = *v0;
  v3 = sub_13BFC4();
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
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_83EB8()
{
  v1 = v0;
  v2 = *v0;
  sub_4948(&qword_19DDB0);
  result = sub_13BFD4();
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
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_13C214();

        sub_13BBA4();
        result = sub_13C234();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_84100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_8419C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_8421C()
{
  sub_18AD4(319, &qword_19B250, &unk_19B258);
  if (v0 <= 0x3F)
  {
    sub_18AD4(319, &qword_19DE20, &qword_19DE28);
    if (v1 <= 0x3F)
    {
      sub_84370();
      if (v2 <= 0x3F)
      {
        sub_18AD4(319, &qword_19DE30, &unk_19DE38);
        if (v3 <= 0x3F)
        {
          sub_13B644();
          if (v4 <= 0x3F)
          {
            sub_18AD4(319, &qword_19A3C8, &unk_19A3D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_84370()
{
  if (!qword_19CA40)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19CA40);
    }
  }
}

uint64_t sub_843C0(uint64_t a1)
{
  result = sub_84418(&qword_19DE88, type metadata accessor for ChannelLinkAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_84418(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_18BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int ServiceDetailLayout.Metrics.ContentAlignment.hashValue.getter(char a1)
{
  sub_13C214();
  sub_13C224(a1 & 1);
  return sub_13C234();
}

uint64_t sub_84540(uint64_t a1)
{
  v3 = v2;
  v5 = sub_4948(&qword_19DFD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  sub_13B994();
  sub_101A8();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CACC(0, &qword_19DFD8);
  sub_13B6A4();
  v40 = v41[0];
  sub_13B6B4();
  sub_13B9A4();
  sub_CACC(0, &unk_19DFE0);
  sub_89798();
  v13 = v41[0];
  sub_139DA4();
  sub_89798();
  v39 = v41[0];
  sub_89798();
  v14 = v41[1];
  sub_139E64();
  sub_89798();
  v15 = v41[0];
  if (!v14)
  {
    v14 = sub_13BB14();
  }

  if (*(a1 + 8))
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v16 = sub_13BB14();
  }

  v17 = sub_849B0(v16, v14);
  (*(v9 + 16))(v7, v12, v1);
  sub_53A8(v7, 0, 1, v1);
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  swift_beginAccess();
  sub_887C0(v7, v3 + v18);
  v19 = swift_endAccess();
  v20 = (*(*v15 + 88))(v19);
  v21 = [v20 topViewController];

  swift_unknownObjectWeakAssign();
  v22 = sub_13B984();
  v38 = v12;
  v23 = v9;
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 16);
  v36 = *(a1 + 56);
  v35 = *a1;
  v29 = v40;
  sub_84A34(v40, v22, v13, v24, v25, v26, v27, v28, v35, v17, v36);
  swift_unknownObjectRelease();

  v30 = swift_allocObject();
  v31 = v39;
  *(v30 + 16) = sub_88830;
  *(v30 + 24) = v31;
  sub_CACC(0, &qword_19EBA0);

  v32 = sub_13BD84();
  sub_88E3C(v32, sub_8888C, v30);

  v41[3] = sub_13B7C4();
  v41[4] = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v41);
  sub_13B7B4();
  v33 = sub_13B9C4();

  (*(v23 + 8))(v38, v1);
  sub_3C04(v41);
  return v33;
}

uint64_t sub_849B0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_88A40(a1, sub_88A08, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_84A34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = a8;
  sub_4948(&qword_19DFF8);
  v33 = sub_13BA24();
  v19 = objc_allocWithZone(AMSChannelLinkTask);
  v20 = a1;

  swift_unknownObjectRetain();

  v21 = sub_88914(a1, a2, a4, a5, a6, a7, a11);
  v22 = v21;
  if (v18 != 2 && (a8 & 1) != 0)
  {
    [v21 setICloudSignInPreferred:1];
  }

  [v22 setDelegate:{v32, a3}];
  [v22 setClientInfo:v31];
  if (a9)
  {
    v23.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v22 setAdditionalLinkingParameters:v23.super.isa];

  if (a10)
  {
    sub_84D48(a10);
    v24.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v24.super.isa = 0;
  }

  [v22 setMetricsOverlay:v24.super.isa];

  v25 = [v22 perform];
  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = v33;
  aBlock[4] = sub_88FC4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_8977C;
  aBlock[3] = &unk_188CF8;
  v27 = _Block_copy(aBlock);
  v28 = v32;

  [v25 addFinishBlock:v27];
  _Block_release(v27);

  return v33;
}

id sub_84CF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = sub_CACC(0, &qword_19DFF0);
  *a2 = v3;
  return v3;
}

uint64_t sub_84D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4948(&qword_19E000);
    v2 = sub_13C0E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_7D228(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_7D284(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_7D284(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_7D284(v31, v32);
    result = sub_13BFA4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_7D284(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_8500C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_4948(&qword_19E000);
    v2 = sub_13C0E4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_4948(&qword_19E030);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_7D284(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_7D284(v29, v30);
    result = sub_13BFA4(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_7D284(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_852D4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = objc_allocWithZone(AMSCarrierLinkResult);
    v6 = a1;
    v7 = [v5 initWithChannelLinkResult:v6];
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v20 = type metadata accessor for ChannelLinkActionImplementation();
    v19[0] = a3;
    v9 = a3;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v19);
    sub_139974();
    sub_1399F4();

    v19[0] = v7;
    sub_13BA14();
  }

  else
  {
    if (!a2)
    {
      sub_88FE4();
      swift_allocError();
      *v12 = 1;
    }

    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v20 = type metadata accessor for ChannelLinkActionImplementation();
    v19[0] = a3;
    v14 = a3;
    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v19);
    sub_139974();
    swift_getErrorValue();
    v17 = sub_13C1A4();
    v20 = &type metadata for String;
    v19[0] = v17;
    v19[1] = v18;
    sub_139984();
    sub_CC68(v19, &unk_1A06F0);
    sub_1399E4();

    sub_13BA04();
  }
}

id sub_8570C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  v3 = sub_13B994();
  sub_53A8(&v0[v2], 1, 1, v3);
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id sub_857C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChannelLinkActionImplementation()
{
  result = qword_19DED0;
  if (!qword_19DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_858C4()
{
  sub_85968();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_85968()
{
  if (!qword_19DEE0)
  {
    sub_13B994();
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19DEE0);
    }
  }
}

Swift::Int sub_859E8()
{
  sub_13C214();
  sub_13C224(0);
  return sub_13C234();
}

Swift::Int sub_85A58()
{
  sub_13C214();
  sub_13C224(0);
  return sub_13C234();
}

void sub_85A98(void *a1, void *a2, void (**a3)(void, void, void))
{
  v30 = a1;
  v5 = sub_13B4A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13B4E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_CACC(0, &qword_19EBA0);
    v28 = v6;
    v29 = v9;
    _Block_copy(a3);
    v27 = sub_13BD84();
    v16 = swift_allocObject();
    v17 = v30;
    v16[2] = v30;
    v16[3] = a2;
    v16[4] = sub_89758;
    v16[5] = v13;
    v16[6] = v15;
    aBlock[4] = sub_8940C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    aBlock[3] = &unk_188F00;
    v18 = _Block_copy(aBlock);
    v26 = a3;
    v19 = v18;
    v20 = v17;
    v21 = a2;

    v22 = v15;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags);
    sub_4948(&unk_19EBB0);
    sub_74FC4();
    sub_13BF64();
    v23 = v27;
    sub_13BD94();
    _Block_release(v19);

    (*(v28 + 8))(v8, v5);
    (*(v10 + 8))(v12, v29);

    _Block_release(v26);
  }

  else
  {
    sub_89134();
    swift_allocError();
    _Block_copy(a3);
    v24 = sub_1397A4();
    (a3)[2](a3, 0, v24);

    _Block_release(a3);
  }
}

void sub_85E84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 options];
  if (v10 && (v11 = v10, v12 = [v10 serviceType], v11, v12 == &dword_0 + 1))
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v14 = (a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback);
    v15 = *(a2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback);
    *v14 = sub_8941C;
    v14[1] = v13;

    sub_C9FC(v15);
    v24 = [objc_allocWithZone(AAUISignInController) init];
    [v24 setDelegate:a2];
    sub_4948(&qword_19E090);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_13E650;
    v17 = AIDAServiceTypeCloud;
    v18 = AIDAServiceTypeStore;
    *(v16 + 32) = AIDAServiceTypeCloud;
    *(v16 + 40) = v18;
    v19 = v17;
    v20 = v18;
    sub_88C70(v16, v24);
    [a5 presentViewController:v24 animated:1 completion:0];
  }

  else
  {
    sub_CACC(0, &qword_19E088);
    v21 = sub_869CC(a1, a5);
    v22 = [v21 performAuthentication];
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_8977C;
    aBlock[3] = &unk_188F28;
    v23 = _Block_copy(aBlock);

    [v22 addFinishBlock:v23];
    _Block_release(v23);
  }
}

uint64_t sub_86110(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a2;
  v22 = a1;
  v5 = sub_13B4A4();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_13B4E4();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_13B4B4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_CACC(0, &qword_19EBA0);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = sub_13BDB4();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v17 = v22;
  v16[2] = v23;
  v16[3] = a4;
  v18 = v24;
  v16[4] = v17;
  v16[5] = v18;
  aBlock[4] = sub_8946C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  aBlock[3] = &unk_188FA0;
  v19 = _Block_copy(aBlock);

  v20 = v17;
  swift_errorRetain();
  sub_13B4C4();
  v27 = _swiftEmptyArrayStorage;
  sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags);
  sub_4948(&unk_19EBB0);
  sub_74FC4();
  sub_13BF64();
  sub_13BD94();
  _Block_release(v19);

  (*(v26 + 8))(v7, v5);
  (*(v8 + 8))(v10, v25);
}

void sub_864CC(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = sub_13B4A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_13B4E4();
  v25 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_CACC(0, &qword_19EBA0);
    _Block_copy(a3);
    v24 = sub_13BD84();
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v14;
    v15[4] = sub_8934C;
    v15[5] = v12;
    aBlock[4] = sub_893B0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_E2448;
    aBlock[3] = &unk_188E60;
    v16 = _Block_copy(aBlock);
    v23 = v9;
    v17 = v16;
    v18 = a1;
    v19 = v14;

    sub_13B4C4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags);
    sub_4948(&unk_19EBB0);
    sub_74FC4();
    sub_13BF64();
    v20 = v24;
    sub_13BD94();
    _Block_release(v17);

    (*(v6 + 8))(v8, v5);
    (*(v25 + 8))(v11, v23);

    _Block_release(a3);
  }

  else
  {
    sub_89134();
    swift_allocError();
    _Block_copy(a3);
    v21 = sub_1397A4();
    (a3)[2](a3, 0, v21);

    _Block_release(a3);
  }
}

void sub_868A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_CACC(0, &qword_19E080);
  v8 = sub_869CC(a1, a2);
  v9 = [v8 present];
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_8977C;
  v11[3] = &unk_188E88;
  v10 = _Block_copy(v11);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

id sub_869CC(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 presentingViewController:a2];

  return v4;
}

void sub_86A40(void *a1, void *a2, const void *a3)
{
  v62 = a1;
  v5 = sub_139A14();
  v76 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_13B4A4();
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_13B4E4();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4948(&qword_19DFD0);
  __chkstk_darwin(v11 - 8);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = sub_13B994();
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  __chkstk_darwin(v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v74 = swift_allocObject();
  *(v74 + 16) = a3;
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_bag;
  swift_beginAccess();
  v70 = v22;
  sub_890C4(a2 + v22, v15);
  v23 = sub_52E0(v15, 1, v16);
  v72 = v7;
  v73 = v5;
  if (v23 == 1)
  {
    _Block_copy(a3);
    sub_CC68(v15, &qword_19DFD0);
  }

  else
  {
    v24 = v16;
    v25 = *(v75 + 32);
    v25(v21, v15, v24);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v73 = Strong;
      sub_CACC(0, &qword_19EBA0);
      _Block_copy(a3);
      v76 = sub_13BD84();
      v27 = v75;
      v28 = *(v75 + 16);
      v61 = v21;
      v28(v18, v21, v24);
      v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v30 = (v17 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = v24;
      v31 = swift_allocObject();
      v32 = v62;
      *(v31 + 16) = v62;
      v25((v31 + v29), v18, v24);
      v34 = v73;
      v33 = v74;
      *(v31 + v30) = v73;
      v35 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v35 = sub_89758;
      v35[1] = v33;
      v81 = sub_8926C;
      v82 = v31;
      aBlock = _NSConcreteStackBlock;
      v78 = 1107296256;
      v79 = sub_E2448;
      v80 = &unk_188DC0;
      v36 = _Block_copy(&aBlock);
      v37 = v32;
      v38 = v34;

      v39 = v63;
      sub_13B4C4();
      aBlock = _swiftEmptyArrayStorage;
      sub_89304(&qword_19E060, &type metadata accessor for DispatchWorkItemFlags);
      sub_4948(&unk_19EBB0);
      sub_74FC4();
      v40 = v65;
      v41 = v68;
      sub_13BF64();
      v42 = v76;
      sub_13BD94();
      _Block_release(v36);

      (*(v67 + 8))(v40, v41);
      (*(v64 + 8))(v39, v66);
      (*(v75 + 8))(v61, v60);
      goto LABEL_20;
    }

    _Block_copy(a3);
    v16 = v24;
    (*(v75 + 8))(v21, v24);
    v7 = v72;
    v5 = v73;
  }

  v43 = v76;
  v69 = a3;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v44 = sub_4910(v5, qword_1B2B00);
  (*(v43 + 16))(v7, v44, v5);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_140290;
  v80 = type metadata accessor for ChannelLinkActionImplementation();
  aBlock = a2;
  v45 = a2;
  v46 = AMSLogKey();
  if (v46)
  {
    v47 = v46;
    sub_13BB84();
  }

  v48 = 1702195828;
  sub_139994();

  sub_3C04(&aBlock);
  sub_139974();
  aBlock = 0x7369784520676142;
  v78 = 0xEB000000003A7374;
  v49 = a2 + v70;
  v50 = v71;
  sub_890C4(v49, v71);
  v51 = sub_52E0(v50, 1, v16);
  sub_CC68(v50, &qword_19DFD0);
  v52 = v51 == 1;
  if (v51 == 1)
  {
    v53._countAndFlagsBits = 0x65736C6166;
  }

  else
  {
    v53._countAndFlagsBits = 1702195828;
  }

  v54 = 0xE500000000000000;
  if (v52)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v53._object = v55;
  sub_13BBC4(v53);

  v80 = &type metadata for String;
  sub_139984();
  sub_CC68(&aBlock, &unk_1A06F0);
  aBlock = 0;
  v78 = 0xE000000000000000;
  sub_13BFE4(23);

  aBlock = 0xD000000000000015;
  v78 = 0x800000000014FF40;
  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {

    v54 = 0xE400000000000000;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  v83._countAndFlagsBits = v48;
  v83._object = v54;
  sub_13BBC4(v83);

  v80 = &type metadata for String;
  sub_139984();
  sub_CC68(&aBlock, &unk_1A06F0);
  v57 = v72;
  sub_1399E4();

  (*(v76 + 8))(v57, v73);
  sub_89134();
  swift_allocError();
  v58 = sub_1397A4();
  a3 = v69;
  (*(v69 + 2))(v69, 0, v58);

LABEL_20:

  _Block_release(a3);
}

void sub_87430(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_CACC(0, &qword_19E078);
  v9 = a1;
  v10 = sub_13B984();
  v11 = sub_87564(v9, v10, a3);
  v12 = [v11 presentEngagement];
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_8977C;
  v14[3] = &unk_188DE8;
  v13 = _Block_copy(v14);

  [v12 addFinishBlock:v13];
  _Block_release(v13);
}

id sub_87564(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1 bag:a2 presentingViewController:a3];

  swift_unknownObjectRelease();
  return v5;
}

void sub_875D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_87674(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_87700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1397A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_87770()
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v2 = sub_139A14();
  sub_4910(v2, qword_1B2B00);
  sub_4948(&unk_19E010);
  v3 = sub_1399C4();
  sub_CCF4(v3);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v14[3] = ObjectType;
  v14[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v14);
  sub_139974();
  sub_1399F4();

  v7 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  v8 = *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  if (v8)
  {
    type metadata accessor for AMSError(0);

    sub_92FDC(_swiftEmptyArrayStorage);
    sub_89780();
    sub_89304(v9, v10);
    sub_139794();
    v11 = v14[0];
    v8(0, v14[0]);
    sub_C9FC(v8);

    v12 = *v7;
  }

  else
  {
    v12 = 0;
  }

  *v7 = 0;
  v7[1] = 0;
  return sub_C9FC(v12);
}

void sub_87A30(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v5 = sub_139A14();
  sub_4910(v5, qword_1B2B00);
  sub_4948(&unk_19E010);
  v6 = sub_1399C4();
  sub_CCF4(v6);
  v8 = *(v7 + 72);
  v75 = 3 * v8;
  *(sub_897DC() + 16) = xmmword_13E660;
  v81 = ObjectType;
  v80[0] = v2;
  v77 = v2;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v80);
  sub_139974();
  v81 = sub_4948(&unk_19E040);
  v80[0] = a2;

  sub_139984();
  sub_CC68(v80, &unk_1A06F0);
  sub_1399F4();

  v11 = sub_13BB84();
  v13 = sub_88690(v11, v12, a2);

  if (v13)
  {
    v74 = 2 * v8;
    if ([v13 success])
    {
      v14 = [objc_opt_self() ams_sharedAccountStore];
      v15 = [v14 ams_activeiCloudAccount];

      if (v15)
      {
        v16 = [objc_allocWithZone(AMSAuthenticateResult) initWithAccount:v15];
        v17 = sub_897DC();
        *(v17 + 16) = xmmword_13E660;
        v25 = sub_897F8(v17, v18, v19, v20, v21, v22, v23, v24, v74, v75, 3, 6, v76, v77);
        v26 = AMSLogKey();
        if (v26)
        {
          v27 = v26;
          sub_13BB84();
        }

        sub_139994();

        sub_3C04(v80);
        sub_139974();
        v81 = sub_CACC(0, &qword_19E050);
        v80[0] = v16;
        v68 = v16;
        sub_1399B4();
        sub_CC68(v80, &unk_1A06F0);
        sub_1399F4();

        v69 = v68;
        sub_881F4(v68, 0, v25, a1);

        return;
      }

      v56 = sub_897DC();
      *(v56 + 16) = xmmword_13E650;
      v64 = sub_897F8(v56, v57, v58, v59, v60, v61, v62, v63, v74, v75, 3, 6, v76, v77);
      v65 = AMSLogKey();
      if (v65)
      {
        v66 = v65;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v80);
      sub_89814();
      sub_139974();
      sub_1399E4();

      type metadata accessor for AMSError(0);
      sub_92FDC(_swiftEmptyArrayStorage);
      sub_89780();
      sub_89304(v70, v71);
      sub_897B8();
      v72 = v80[0];
      sub_881F4(0, v80[0], v64, a1);
    }

    else
    {
      v39 = [v13 error];
      if (!v39)
      {
        type metadata accessor for AMSError(0);
        sub_92FDC(_swiftEmptyArrayStorage);
        sub_89780();
        sub_89304(v40, v41);
        sub_897B8();
        v39 = v80[0];
      }

      v42 = sub_897DC();
      *(v42 + 16) = xmmword_13E660;
      v50 = sub_897F8(v42, v43, v44, v45, v46, v47, v48, v49, v74, v75, 3, 6, v76, v77);
      v51 = AMSLogKey();
      if (v51)
      {
        v52 = v51;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v80);
      sub_139974();
      swift_getErrorValue();
      v81 = v79;
      v67 = sub_CC08(v80);
      (*(*(v79 - 8) + 16))(v67);
      sub_139984();
      sub_CC68(v80, &unk_1A06F0);
      sub_1399E4();

      swift_errorRetain();
      sub_881F4(0, v39, v50, a1);
    }

    return;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_13E650;
  v36 = sub_897F8(v28, v29, v30, v31, v32, v33, v34, v35, v73, v75, 3, 6, v76, v77);
  v37 = AMSLogKey();
  if (v37)
  {
    v38 = v37;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v80);
  sub_89814();
  sub_139974();
  sub_1399E4();

  type metadata accessor for AMSError(0);
  sub_92FDC(_swiftEmptyArrayStorage);
  sub_89780();
  sub_89304(v53, v54);
  sub_897B8();
  v55 = v80[0];
  sub_881F4(0, v80[0], v36, a1);
}

void sub_881F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v7 = sub_139A14();
  sub_4910(v7, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v17 = type metadata accessor for ChannelLinkActionImplementation();
  aBlock[0] = a3;
  v8 = a3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(aBlock);
  sub_139974();
  sub_1399F4();

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;
  v18 = sub_89080;
  v19 = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_E2448;
  v17 = &unk_188D48;
  v12 = _Block_copy(aBlock);
  v13 = v8;
  v14 = a1;
  swift_errorRetain();

  [a4 dismissViewControllerAnimated:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_88478(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v6 = sub_139A14();
  sub_4910(v6, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v14[3] = type metadata accessor for ChannelLinkActionImplementation();
  v14[0] = a1;
  v7 = a1;
  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v14);
  sub_139974();
  sub_1399F4();

  v10 = &v7[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ChannelLinkActionImplementation_signInCallback];
  v11 = *v10;
  if (*v10)
  {

    v11(a2, a3);
    sub_C9FC(v11);
    v12 = *v10;
  }

  else
  {
    v12 = 0;
  }

  *v10 = 0;
  v10[1] = 0;
  return sub_C9FC(v12);
}

void *sub_88690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_7C52C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_887C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19DFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_88854()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_888B8(void *a1, void (*a2)(void **, void))
{
  v4 = a1;
  v3 = a1;
  a2(&v4, 0);
}

id sub_88914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_13BB54();

  v13 = sub_13BB54();

  if (a7)
  {
    v14.super.isa = sub_13BCB4().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = [v8 initWithAccount:a1 bag:a2 linkParams:v12 productCode:v13 supplementaryFields:v14.super.isa];

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_88A08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7C850((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_88A40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_7FB50(v30);
  v28[2] = v30[0];
  v28[3] = v30[1];
  v28[4] = v30[2];
  v29 = v31;

  while (1)
  {
    sub_88CE4(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_7D220();
    }

    v8 = v27;
    sub_7D284(v28, v26);
    v9 = *a5;
    v11 = sub_7C52C(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_4948(&qword_19E020);
        sub_13C084();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_7CD0C();
      v15 = sub_7C52C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_7D228(v26, v25);
        sub_3C04(v26);

        v18 = (v17[7] + 32 * v11);
        sub_3C04(v18);
        sub_7D284(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_7D284(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_13C174();
  __break(1u);
  return result;
}

void sub_88C70(uint64_t a1, void *a2)
{
  type metadata accessor for AIDAServiceType(0);
  isa = sub_13BC14().super.isa;

  [a2 setServiceTypes:isa];
}

uint64_t sub_88CE4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_7D228(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_7D284(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_CC68(v18, &qword_19E028);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_88E3C(void *a1, uint64_t a2, uint64_t a3)
{
  v10[3] = sub_CACC(0, &qword_19EBA0);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  swift_retain_n();
  v8 = a1;
  sub_13B9D4();

  return sub_3C04(v10);
}

uint64_t sub_88F48(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(&v4, a1);
}

uint64_t sub_88F84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_88FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_88FE4()
{
  result = qword_19E008;
  if (!qword_19E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E008);
  }

  return result;
}

uint64_t sub_89038()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8908C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_890C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_89134()
{
  result = qword_19E058;
  if (!qword_19E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E058);
  }

  return result;
}

uint64_t sub_89188()
{
  sub_13B994();
  sub_101A8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

void sub_8926C()
{
  v1 = sub_13B994();
  sub_CCF4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v7);
  v10 = (v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_87430(v8, v0 + v6, v9, v11, v12);
}

uint64_t sub_89304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_89368()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_893BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_89424()
{

  return _swift_deallocObject(v0, 48, 7);
}

_BYTE *storeEnumTagSinglePayload for ChannelLinkActionImplementation.PresentationError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x89538);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelLinkActionImplementation.CarrierLinkError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x8963CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_89678()
{
  result = qword_19E098;
  if (!qword_19E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E098);
  }

  return result;
}

unint64_t sub_896D0()
{
  result = qword_19E0A0;
  if (!qword_19E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E0A0);
  }

  return result;
}

uint64_t sub_89798()
{

  return sub_13B9A4();
}

uint64_t sub_897B8()
{

  return sub_139794();
}

uint64_t sub_897DC()
{

  return swift_allocObject();
}

id sub_897F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{

  return a14;
}

void sub_89828()
{
  sub_A1FC();
  v3 = v2;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  sub_8ADB8();
  sub_4948(&qword_19E2E0);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v9 = sub_8AE24();
  sub_8ADC4(*(v9 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_13A934();
    sub_9F94();
    (*(v10 + 32))(v3, v1);
  }

  else
  {
    sub_13BD54();
    v11 = sub_13AE64();
    sub_8ADE4();

    sub_13AB14();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_A214();
}

void sub_899C4()
{
  sub_A1FC();
  v3 = v2;
  v4 = sub_13AB24();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  sub_8ADB8();
  sub_4948(&qword_19ACE8);
  sub_9F94();
  sub_171D0();
  __chkstk_darwin(v8);
  v9 = sub_8AE24();
  sub_8ADC4(*(v9 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_8AA68(v1, v3);
  }

  else
  {
    sub_13BD54();
    v10 = sub_13AE64();
    sub_8ADE4();

    sub_13AB14();
    swift_getAtKeyPath();

    (*(v6 + 8))(v0, v4);
  }

  sub_A214();
}

id sub_89B38()
{
  v1 = type metadata accessor for ComponentCellWrapper(0);
  v2 = sub_8AD98(v1);
  __chkstk_darwin(v2);
  sub_9EC0();
  v5 = v4 - v3;
  sub_8AAD8(v0, v4 - v3);
  v6 = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_8AAD8(v5, v7 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = objc_msgSendSuper2(&v11, "init");
  sub_8AD80();
  sub_8AD28(v5, v9);
  return v8;
}

uint64_t sub_89BF8()
{
  v2 = sub_139E74();
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  sub_9EC0();
  sub_8ADB8();
  v4 = sub_13B834();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = (v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent);
  sub_162F0((v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 24), *(v0 + OBJC_IVAR____TtCV20StoreDynamicUIPlugin20ComponentCellWrapper31ComponentCellWrapperCoordinator_parent + 48));
  sub_13B664();
  if (!*(&v17 + 1))
  {
    return sub_928C(&v16, &unk_19E320);
  }

  sub_9414(&v16, v19);
  sub_139E84();
  v12 = *v11;
  sub_13B6B4();
  sub_13B9A4();
  v13 = v16;
  sub_13B9A4();
  (*(v6 + 16))(v1, v10, v4);
  v14 = sub_4948(&unk_19B7E0);
  sub_8AE04(v14);
  v16 = 0u;
  v17 = 0u;
  v18 = -1;
  (*(*v13 + 216))(v19, v1, v12, &v16);

  sub_928C(&v16, &unk_19E330);
  sub_8AD28(v1, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v6 + 8))(v10, v4);
  return sub_3C04(v19);
}

id sub_89EEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_89F74()
{
  result = type metadata accessor for ComponentCellWrapper(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_8A038(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_4948(&qword_19E208);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_4948(&qword_19E210);
      v10 = *(a3 + 28);
    }

    return sub_52E0(a1 + v10, a2, v9);
  }
}

void *sub_8A130(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_4948(&qword_19E208);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_4948(&qword_19E210);
      v10 = *(a4 + 28);
    }

    return sub_53A8(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_8A210()
{
  sub_13B6B4();
  if (v0 <= 0x3F)
  {
    sub_8A2B4();
    if (v1 <= 0x3F)
    {
      sub_8A30C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8A2B4()
{
  if (!qword_19E280)
  {
    sub_13A934();
    v0 = sub_13A764();
    if (!v1)
    {
      atomic_store(v0, &qword_19E280);
    }
  }
}

void sub_8A30C()
{
  if (!qword_19E288)
  {
    sub_558C(&unk_19E290);
    v0 = sub_13A764();
    if (!v1)
    {
      atomic_store(v0, &qword_19E288);
    }
  }
}

void sub_8A370()
{
  sub_A1FC();
  v25 = v1;
  v2 = sub_4948(&qword_19E2E8);
  sub_8AD98(v2);
  sub_171D0();
  __chkstk_darwin(v3);
  sub_4948(&qword_19E2F0);
  sub_9E94();
  v23 = v5;
  v24 = v4;
  sub_171D0();
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v22 = sub_4948(&qword_19E2F8);
  sub_9E94();
  v10 = v9;
  sub_171D0();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v15 = v0[1];
  v14 = v0[2];
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_4B14((v0 + 3), v26);
  sub_13B604();
  v26[0] = 0;
  sub_13BAE4();
  sub_4948(&qword_19E300);
  swift_allocObject();
  v26[0] = sub_13B7F4();
  sub_8AB3C();
  sub_13BAC4();
  (*(v14 + 16))(v13, v8, *v0, v15, v14);
  (*(v23 + 8))(v8, v24);
  (*(v10 + 8))(v13, v22);
  v26[3] = type metadata accessor for ComponentCellWrapper.ComponentCellWrapperCoordinator(0);
  sub_4948(&qword_19E310);
  sub_13ADC4();
  v17 = objc_allocWithZone(UITapGestureRecognizer);
  v18 = sub_8ABA0(v26, "performTap");
  sub_13ADC4();
  v19 = v26[0];
  [v18 setDelegate:v26[0]];

  v20 = v16;
  [v20 addGestureRecognizer:v18];

  sub_A214();
}

void sub_8A690()
{
  sub_A1FC();
  v1 = v0;
  v19 = v2;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_4948(&unk_19E290);
  sub_8AD98(v8);
  sub_171D0();
  __chkstk_darwin(v9);
  sub_13A594();
  sub_9F94();
  __chkstk_darwin(v10);
  sub_9EC0();
  v11 = sub_4948(&unk_19E2D0);
  sub_8AD98(v11);
  sub_171D0();
  __chkstk_darwin(v12);
  sub_8ADB8();
  sub_89828();
  v13 = sub_13A934();
  sub_8AE04(v13);
  sub_13BE24();
  sub_13BEA4();
  sub_8ADA4();
  sub_13A584();
  sub_13BEB4();
  sub_899C4();
  sub_13BDF4();
  sub_13BEA4();
  sub_8ADA4();
  sub_13A574();
  sub_13BEB4();
  [v1 updateTraitsIfNeeded];
  width = v7;
  height = UILayoutFittingCompressedSize.height;
  if (v5)
  {
    width = UILayoutFittingCompressedSize.width;
  }

  v17 = v18;
  if (v19)
  {
    v17 = UILayoutFittingCompressedSize.height;
  }

  LODWORD(height) = 1148846080;
  LODWORD(v14) = 1112014848;
  [v1 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:v17 verticalFittingPriority:{height, v14, *&v18}];
  [v1 sizeThatFits:?];
  sub_A214();
}

id sub_8A894@<X0>(void *a1@<X8>)
{
  result = sub_89B38();
  *a1 = result;
  return result;
}

uint64_t sub_8A8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8ACE4(&qword_19E318);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8ACE4(&qword_19E318);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_8A9F0()
{
  sub_8ACE4(&qword_19E318);
  sub_13ACB4();
  __break(1u);
}

uint64_t sub_8AA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&unk_19E290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8AAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentCellWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_8AB3C()
{
  result = qword_19E308;
  if (!qword_19E308)
  {
    sub_558C(&qword_19E300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E308);
  }

  return result;
}

id sub_8ABA0(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_162F0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_13C134();
    (*(v7 + 8))(v10, v4);
    sub_3C04(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_8ACE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ComponentCellWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8AD28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_8ADC4@<X0>(uint64_t a1@<X8>)
{

  return sub_9D58(v1 + a1, v2, v3);
}

uint64_t sub_8ADE4()
{

  return sub_13A004();
}

uint64_t sub_8AE04(uint64_t a1)
{

  return sub_53A8(v1, 0, 1, a1);
}

uint64_t sub_8AE24()
{

  return type metadata accessor for ComponentCellWrapper(0);
}

uint64_t sub_8AE44(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1843B0;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_8AE90(char a1)
{
  result = 0x6C65685379646F62;
  switch(a1)
  {
    case 1:
      return sub_EDE4();
    case 2:
      return 0xD000000000000015;
    case 3:
      v3 = 1953460070;
      goto LABEL_6;
    case 4:
      v3 = 1684104552;
LABEL_6:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
      goto LABEL_8;
    case 5:
      v4 = 0x70756B636F6CLL;
LABEL_8:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6853000000000000;
      break;
    case 6:
      result = 0x656853656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_8AF9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8AE44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_8AFCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_8AE90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_8AFF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_8AE44(a1, a2);
  if (v7 == 7)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v21 = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C7DC(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    sub_13BBC4(v23);
    v24._object = 0x800000000014E6F0;
    v24._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v24);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    a3[4] = &off_189360;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x1B8uLL);
    return sub_8C7DC(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v21 = &type metadata for ContingentLockupSheetLayout.BodySpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C7DC(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    switch(v11)
    {
      case 1:
      case 2:
      case 3:
        memcpy(__dst, (v3 + 264), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 264);
        break;
      case 4:
        memcpy(__dst, (v3 + 352), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v19 = swift_allocObject();
        *a3 = v19;
        v14 = (v19 + 16);
        v15 = (v3 + 352);
        break;
      case 5:
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 88);
        break;
      case 6:
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v18 = swift_allocObject();
        *a3 = v18;
        v14 = (v18 + 16);
        v15 = (v3 + 176);
        break;
      default:
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v16 = swift_allocObject();
        *a3 = v16;
        v14 = (v16 + 16);
        v15 = v3;
        break;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v20);
  }
}

void *sub_8B5E4@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0x1B8uLL);
}

uint64_t sub_8B7FC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184478;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8B848()
{
  result = sub_EDE4();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x68537265746F6F66;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_8B990@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8B7FC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_8B9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8B848();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_8B9EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_8B7FC(a1, a2);
  if (v7 == 5)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v21 = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C864(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    sub_13BBC4(v23);
    v24._object = 0x800000000014E6F0;
    v24._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v24);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    a3[4] = &off_189310;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x1B8uLL);
    return sub_8C864(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v21 = &type metadata for ContingentLockupSheetLayout.FooterSpacing;
    v20[0] = swift_allocObject();
    memcpy((v20[0] + 16), v3, 0x1B8uLL);
    sub_8C864(v3, __dst);
    sub_139984();
    sub_49C8(v20);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    switch(v11)
    {
      case 1:
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v19 = swift_allocObject();
        *a3 = v19;
        v14 = (v19 + 16);
        v15 = (v3 + 88);
        break;
      case 2:
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
        break;
      case 3:
        memcpy(__dst, (v3 + 264), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v18 = swift_allocObject();
        *a3 = v18;
        v14 = (v18 + 16);
        v15 = (v3 + 264);
        break;
      case 4:
        memcpy(__dst, (v3 + 352), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v16 = swift_allocObject();
        *a3 = v16;
        v14 = (v16 + 16);
        v15 = (v3 + 352);
        break;
      default:
        memcpy(__dst, v3, 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = v3;
        break;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v20);
  }
}

void *sub_8BFD0@<X0>(void *a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  sub_139F34();
  LOBYTE(v20) = 1;
  LOBYTE(v17) = 0;
  LOBYTE(v14) = 1;
  LOBYTE(v11) = 0;
  sub_139F34();
  v4 = [v1 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  LOBYTE(v21) = 1;
  LOBYTE(v18) = 0;
  LOBYTE(v15) = 1;
  LOBYTE(v12) = 0;
  sub_139F34();
  v6 = [v1 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  LOBYTE(v22) = 1;
  LOBYTE(v19) = 0;
  LOBYTE(v16) = 1;
  LOBYTE(v13) = 0;
  sub_139F34();
  v8 = [v1 currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != &dword_0 + 1)
  {
    sub_E7E8();
    static UIApplication.hasNotch()();
  }

  sub_139F34();
  return memcpy(a1, __src, 0x1B8uLL);
}

uint64_t sub_8C3AC@<X0>(uint64_t *a1@<X8>)
{
  sub_8B5E4(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x1B8uLL);
  sub_8BFD0(v6);
  v3 = swift_allocObject();
  memcpy((v3 + 16), v6, 0x1B8uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_8C4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_8C3AC(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_8C56C()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  if (v0[53])
  {
  }

  if (v0[55])
  {
  }

  return _swift_deallocObject(v0, 456, 7);
}

uint64_t sub_8C63C()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_8C6A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 440))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8C6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 440) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 440) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_8C814()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t getEnumTagSinglePayload for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContingentLockupSheetLayout.FooterSpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x8C9F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContingentLockupSheetLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x8CB7CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_8CBB8()
{
  result = qword_19E340;
  if (!qword_19E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E340);
  }

  return result;
}

unint64_t sub_8CC10()
{
  result = qword_19E348;
  if (!qword_19E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E348);
  }

  return result;
}

uint64_t sub_8CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_8CD04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v85 = a3;
  v4 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v4 - 8);
  v86 = &v75 - v5;
  v88 = sub_13B584();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v75 - v11;
  __chkstk_darwin(v13);
  v15 = &v75 - v14;
  v16 = sub_13B644();
  sub_9E94();
  v83 = v17;
  __chkstk_darwin(v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DelegateAction();
  sub_2B538();
  __chkstk_darwin(v22);
  v24 = (&v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_139BD4();
  inited = swift_initStackObject();
  v26 = v87;
  v27 = sub_BB310();
  if (v26)
  {
    (*(v7 + 8))(a1, v88);
    sub_13B5A4();
    sub_5224();
    return (*(v29 + 8))(v94);
  }

  v77 = v20;
  v81 = v16;
  v78 = v12;
  v79 = inited;
  v82 = v7;
  *v24 = v27;
  v24[1] = v28;
  v80 = v28;
  v87 = v21;
  v31 = a1;
  v32 = sub_2B0B0(0x6574656D61726170, 0xEA00000000007372, v21);
  v76 = 0;
  v33 = v15;
  v34 = v86;
  v24[2] = v32;
  sub_13B594();
  v35 = sub_13B564();
  v36 = v94;
  v37 = v81;
  if (v35)
  {
    goto LABEL_6;
  }

  v86 = v31;
  sub_8D5D8(v33, v94, v34);
  if (sub_52E0(v34, 1, v37) == 1)
  {
    sub_184DC(v34, &qword_19DDA8);
    v31 = v86;
LABEL_6:
    sub_13BAB4();
    sub_8DB5C();
    sub_8DB14(v38, v39);
    sub_18B70();
    v86 = v32;
    strcpy(v40, "actionMetrics");
    *(v40 + 7) = -4864;
    *(v40 + 2) = v87;
    sub_2B538();
    (*(v41 + 104))();
    swift_willThrow();
    v42 = *(v82 + 8);
    v43 = v88;
    v42(v31, v88);
    v42(v33, v43);
    sub_13B5A4();
    sub_5224();
    (*(v44 + 8))(v36);
  }

  v45 = *(v82 + 8);
  v45(v33, v88);
  v46 = *(v83 + 32);
  v47 = v77;
  (v46)(v77, v34, v37);
  v48 = v87;
  sub_8DB8C();
  v46();
  v49 = v78;
  sub_13B594();
  v50 = sub_13B564();
  v75 = v24;
  if ((v50 & 1) == 0)
  {
    v51 = v76;
    sub_139BC4();
    v47 = v51;
    if (!v51)
    {
      v73 = v49;
      v59 = v45;
      v45(v73, v88);
      sub_9414(v89, &v91);
      v48 = v87;
      goto LABEL_11;
    }

    v90 = 0;
    memset(v89, 0, sizeof(v89));
    sub_184DC(v89, &unk_19E320);
    v48 = v87;
    sub_8DB8C();
  }

  sub_13BAB4();
  sub_8DB5C();
  sub_8DB14(v52, v53);
  v54 = sub_18B70();
  sub_8DB74(v54, v55);
  *v56 = v47;
  v56[1] = v57;
  v56[2] = v48;
  sub_2B538();
  (*(v58 + 104))();
  swift_willThrow();
  v45(v49, v88);

  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v59 = v45;
LABEL_11:
  sub_8DBA0(v75 + *(v48 + 28));
  v60 = v84;
  v61 = v86;
  sub_13B594();
  v62 = sub_13B564();
  v63 = v88;
  if (v62)
  {
    sub_13BAB4();
    sub_8DB5C();
    sub_8DB14(v64, v65);
    v66 = swift_allocError();
    sub_8DB74(v66, v67);
    *v68 = 0x4173736563637573;
    v68[1] = v69;
    v68[2] = v48;
    sub_2B538();
    (*(v70 + 104))();
    swift_willThrow();

    v59(v61, v63);
    v59(v60, v63);

    v74 = v48;
    v93 = 0;
    v91 = 0u;
    v92 = 0u;
  }

  else
  {
    sub_139BC4();

    v59(v61, v63);
    v59(v60, v63);
    sub_9414(v89, &v91);
    v74 = v87;
  }

  v71 = v75;
  sub_8DBA0(v75 + *(v74 + 32));
  sub_8D7F0(v71, v85);
  sub_13B5A4();
  sub_5224();
  (*(v72 + 8))(v94);
  return sub_8D854(v71);
}

uint64_t sub_8D5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B634();
  v14 = sub_13B644();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t type metadata accessor for DelegateAction()
{
  result = qword_19E3A8;
  if (!qword_19E3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8D7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegateAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D854(uint64_t a1)
{
  v2 = type metadata accessor for DelegateAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8D8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 24);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_8D960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 24);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_8D9E0()
{
  sub_248F4(319, &qword_19DE20, &qword_19DE28);
  if (v0 <= 0x3F)
  {
    sub_13B644();
    if (v1 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_8DABC(uint64_t a1)
{
  result = sub_8DB14(&qword_19E3F0, type metadata accessor for DelegateAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_8DB14(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_8DBA0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 144);
  v3 = *(v1 - 128);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 112);
  return result;
}

uint64_t sub_8DBB4(uint64_t *a1)
{
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v3 = sub_139A14();
  sub_4910(v3, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v20 = type metadata accessor for DelegateActionImplementation();
  v19[0] = v1;
  v4 = v1;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v19);
  sub_139974();
  sub_1399F4();

  sub_139DA4();
  sub_13B6B4();
  sub_13B9A4();
  v7 = v19[0];
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  sub_4948(&unk_1A0070);

  v11 = sub_13BA24();
  v12 = objc_allocWithZone(AMSDelegateAction);
  v13 = sub_8E570(v8, v9, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v11;
  v15 = *(*v7 + 216);
  v16 = v4;

  v15(v13, sub_8E650, v14);

  v20 = sub_13B7C4();
  v21 = &protocol witness table for SyncTaskScheduler;
  sub_CC08(v19);
  sub_13B7B4();
  v17 = sub_13B9C4();

  sub_3C04(v19);
  return v17;
}

uint64_t sub_8DEE8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v5 = sub_139A14();
    sub_4910(v5, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
    *&v19 = a3;
    v6 = a3;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v19);
    sub_139974();
    sub_1399E4();

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_E0B50(a2, &v19);

    return sub_8E6AC(&v19);
  }

  if (*(a1 + 24))
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
    *&v19 = a3;
    v10 = a3;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(&v19);
    sub_139974();
    sub_1399F4();

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_E0C88(1, &v19);
    return sub_8E6AC(&v19);
  }

  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v13 = sub_139A14();
  sub_4910(v13, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_1399C4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  *(&v20 + 1) = type metadata accessor for DelegateActionImplementation();
  *&v19 = a3;
  v14 = a3;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(&v19);
  sub_139974();
  sub_1399E4();

  sub_8E658();
  v18 = swift_allocError();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_E0B50(v18, &v19);
  sub_8E6AC(&v19);
}

char *sub_8E428@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *(a2 + 24) = &type metadata for Bool;
  *a2 = v2;
  return result;
}

id sub_8E440()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateActionImplementation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_8E498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_8E4F4()
{
  result = qword_19E3F0;
  if (!qword_19E3F0)
  {
    type metadata accessor for DelegateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E3F0);
  }

  return result;
}

id sub_8E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_13BB54();

  if (a3)
  {
    v6.super.isa = sub_13BAF4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithIdentifier:v5 parameters:v6.super.isa];

  return v7;
}

uint64_t sub_8E610()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_8E658()
{
  result = qword_19E440;
  if (!qword_19E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E440);
  }

  return result;
}

uint64_t sub_8E6AC(uint64_t a1)
{
  v2 = sub_4948(&qword_1A0060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DelegateActionImplementation.PerformError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x8E7B0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_8E7EC()
{
  result = qword_19E448;
  if (!qword_19E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E448);
  }

  return result;
}

void sub_8E840()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color);
  if (v1 && *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style) <= 1u)
  {
    v2 = v1;
    sub_8F5AC();
  }
}

void sub_8E8AC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color) = a1;
  v3 = a1;

  sub_8E840();
}

id sub_8E904()
{
  v1 = sub_13A5D4();
  __chkstk_darwin(v1 - 8);
  sub_9EC0();
  v2 = sub_13A604();
  sub_8FA90();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v0[v9] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_13A5C4();
  sub_13A614();
  sub_13A5F4();
  (*(v4 + 8))(v8, v2);
  *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color] = 0;
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for DynamicButton();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_8F2B4();

  return v10;
}

id sub_8EACC(void *a1)
{
  v3 = sub_13A5D4();
  __chkstk_darwin(v3 - 8);
  sub_9EC0();
  v4 = sub_13A604();
  sub_8FA90();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for DynamicButtonView()) init];
  sub_13A5C4();
  sub_13A614();
  sub_13A5F4();
  (*(v6 + 8))(v10, v4);
  *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color] = 0;
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for DynamicButton();
  v12 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_8F2B4();
  }

  return v13;
}

id sub_8ED34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

id sub_8EDC0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DynamicButton();
  objc_msgSendSuper2(&v4, "setHighlighted:", a1 & 1);
  return sub_8EE0C();
}

id sub_8EE0C()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled())
  {
    return sub_128260([v1 isHighlighted], 1);
  }

  (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
  v6 = sub_139A24();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    return sub_128260([v1 isHighlighted], 1);
  }

  return result;
}

id sub_8EF28()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DynamicButton();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  [v0 bounds];
  return [v1 setFrame:?];
}

uint64_t sub_8F0F8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView) accessibilityLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_13BB84();

  return v3;
}

void sub_8F2B4()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setIsAccessibilityElement:1];
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_style);

  sub_8F358(v2);
}

void sub_8F358(char a1)
{
  v2 = v1;
  sub_8F458(a1);
  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView];
  if (!a1)
  {
    *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 0;
    sub_90FAC();
    sub_8F494();
    v5 = 0;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 1;
    sub_90FAC();
    sub_8F494();
    v5 = 1;
LABEL_5:
    v7 = sub_8F6C0(v5);
    sub_8F5AC();
    v6 = v7;
    goto LABEL_7;
  }

  *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style) = 2;
  sub_90FAC();
  [v2 addSubview:v4];
  sub_13BE94();
  [v2 setNeedsLayout];
  v6 = sub_8F6C0(2);
LABEL_7:
}

id sub_8F494()
{
  v1 = sub_4948(&qword_19E498);
  __chkstk_darwin(v1 - 8);
  v3 = &v9[-1] - v2;
  sub_13A5A4();
  v4 = sub_13A5B4();
  sub_53A8(v3, 0, 1, v4);
  sub_13BEC4();
  v5 = sub_13A604();
  v9[3] = v5;
  v9[4] = &protocol witness table for _Glass;
  v6 = sub_CC08(v9);
  (*(*(v5 - 8) + 16))(v6, &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_glassView], v5);
  sub_13BE94();
  return [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView]];
}

uint64_t sub_8F5AC()
{
  v1 = sub_13A604();
  sub_8FA90();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_glassView, v1);
  v9[3] = v1;
  v9[4] = &protocol witness table for _Glass;
  sub_CC08(v9);
  sub_13A5E4();
  (*(v3 + 8))(v7, v1);
  return sub_13BE94();
}

id sub_8F6C0(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = [objc_opt_self() ams_clear];

      return v2;
    }
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color];
    if (v4)
    {
LABEL_10:

      return v4;
    }

    result = [v1 tintColor];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v4 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_color];
  if (v4)
  {
    goto LABEL_10;
  }

  result = [v1 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_8F7D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DynamicButton()
{
  result = qword_19E488;
  if (!qword_19E488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8F8E8()
{
  result = sub_13A604();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_8F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_8FA90();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  (*(v10 + 16))(v13 - v12);
  sub_91BF0(v14, a2, *(a3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin13DynamicButton_dynamicButtonView), a4, a5);
  return (*(v10 + 8))(v14, a4);
}

uint64_t sub_8FAA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184510;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_8FAEC(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6365537373616C67;
  }

  return 1954047348;
}

uint64_t sub_8FB70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_8FAA0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_8FBA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_8FAEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_8FBCC()
{
  v1 = v0;
  v26.n128_u64[0] = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v2 = objc_opt_self();
  v3 = [v2 ams_primaryText];
  v4 = sub_13A2A4();
  v35 = v4;
  v36 = &protocol witness table for FontSource;
  v5 = sub_CC08(&v34);
  if (qword_199FB0 != -1)
  {
    sub_91ED0();
  }

  v6 = qword_19E4E8;
  *v5 = qword_19E4E8;
  v7 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v9 = *(v8 + 104);
  v9(v5, v7, v4);
  v10 = v6;
  sub_91F34();
  *&v0[v26.n128_u64[0]] = sub_139BA4();
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v12 = [v2 ams_primaryText];
  v35 = v4;
  v36 = &protocol witness table for FontSource;
  sub_CC08(&v34);
  if (qword_199FB8 != -1)
  {
    sub_91EB0();
  }

  v13 = qword_19E4F0;
  v14 = sub_91F20();
  (v9)(v14);
  v15 = v13;
  sub_91F34();
  *&v0[v11] = sub_139BA4();
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90();
  }

  v17 = xmmword_19E4A0;
  v18 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C();
    v18 = v25;
    v17 = v26;
  }

  v19 = xmmword_19E4C0;
  v20 = *&qword_19E4D0;
  v35 = &type metadata for CGFloat;
  v36 = &protocol witness table for CGFloat;
  *&v34 = 0;
  v32 = &type metadata for CGFloat;
  v33 = &protocol witness table for CGFloat;
  v30 = &protocol witness table for CGFloat;
  *&v31 = 0x404A000000000000;
  v29 = &type metadata for CGFloat;
  *&v28 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44();
    v20 = v23;
    v19 = v24;
    v18 = v25;
    v17 = v26;
  }

  sub_91F00(*&qword_19E4E0, v17, v18, v19, v20);
  sub_21520(&v34, v16 + 64);
  sub_21520(&v31, v16 + 104);
  sub_21520(&v28, v16 + 144);
  v27.receiver = v1;
  v27.super_class = type metadata accessor for DynamicButtonView();
  v21 = objc_msgSendSuper2(&v27, "init");
  sub_90F00();

  return v21;
}

id sub_8FEE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v34.n128_u64[0] = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v10 = objc_opt_self();
  v11 = [v10 ams_primaryText];
  v12 = sub_13A2A4();
  v43 = v12;
  v44 = &protocol witness table for FontSource;
  v13 = sub_CC08(&v42);
  if (qword_199FB0 != -1)
  {
    sub_91ED0();
  }

  v14 = qword_19E4E8;
  *v13 = qword_19E4E8;
  v15 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v17 = *(v16 + 104);
  v17(v13, v15, v12);
  v18 = v14;
  *&v4[v34.n128_u64[0]] = sub_139BA4();
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v20 = [v10 ams_primaryText];
  v43 = v12;
  v44 = &protocol witness table for FontSource;
  sub_CC08(&v42);
  if (qword_199FB8 != -1)
  {
    sub_91EB0();
  }

  v21 = qword_19E4F0;
  v22 = sub_91F20();
  (v17)(v22);
  v23 = v21;
  *&v4[v19] = sub_139BA4();
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90();
  }

  v25 = xmmword_19E4A0;
  v26 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C();
    v26 = v33;
    v25 = v34;
  }

  v27 = xmmword_19E4C0;
  v28 = *&qword_19E4D0;
  v43 = &type metadata for CGFloat;
  v44 = &protocol witness table for CGFloat;
  v41 = &protocol witness table for CGFloat;
  *&v42 = 0;
  v40 = &type metadata for CGFloat;
  v38 = &protocol witness table for CGFloat;
  *&v39 = 0x404A000000000000;
  v37 = &type metadata for CGFloat;
  *&v36 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44();
    v28 = v31;
    v27 = v32;
    v26 = v33;
    v25 = v34;
  }

  sub_91F00(*&qword_19E4E0, v25, v26, v27, v28);
  sub_21520(&v42, v24 + 64);
  sub_21520(&v39, v24 + 104);
  sub_21520(&v36, v24 + 144);
  v35.receiver = v5;
  v35.super_class = type metadata accessor for DynamicButtonView();
  v29 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  sub_90F00();

  return v29;
}

id sub_90234(void *a1)
{
  v2 = v1;
  *&v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel;
  sub_139BB4();
  v3 = objc_opt_self();
  v4 = [v3 ams_primaryText];
  v5 = sub_13A2A4();
  v41 = v5;
  v42 = &protocol witness table for FontSource;
  v6 = sub_CC08(&v40);
  if (qword_199FB0 != -1)
  {
    sub_91ED0();
  }

  v7 = qword_19E4E8;
  *v6 = qword_19E4E8;
  v8 = enum case for FontSource.textStyle(_:);
  sub_2B538();
  v10 = *(v9 + 104);
  v10(v6, v8, v5);
  v11 = v7;
  sub_91F34();
  *&v1[v31] = sub_139BA4();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel;
  v13 = [v3 ams_primaryText];
  v41 = v5;
  v42 = &protocol witness table for FontSource;
  v14 = sub_CC08(&v40);
  if (qword_199FB8 != -1)
  {
    sub_91EB0();
  }

  v15 = qword_19E4F0;
  *v14 = qword_19E4F0;
  v10(v14, v8, v5);
  v16 = v15;
  sub_91F34();
  *&v1[v12] = sub_139BA4();
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_isEnabled] = 1;
  v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style] = 0;
  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics;
  if (qword_199F98 != -1)
  {
    sub_91E90();
  }

  v18 = &v1[v17];
  v19 = xmmword_19E4A0;
  v20 = *&qword_19E4B0;
  if (qword_199FA0 != -1)
  {
    sub_91E6C();
    v20 = v30;
    v19 = v31;
  }

  v21 = xmmword_19E4C0;
  v22 = *&qword_19E4D0;
  v41 = &type metadata for CGFloat;
  v42 = &protocol witness table for CGFloat;
  *&v40 = 0;
  v38 = &type metadata for CGFloat;
  v39 = &protocol witness table for CGFloat;
  v36 = &protocol witness table for CGFloat;
  *&v37 = 0x404A000000000000;
  v35 = &type metadata for CGFloat;
  *&v34 = 0x404A000000000000;
  if (qword_199FA8 != -1)
  {
    sub_91E44();
    v22 = v28;
    v21 = v29;
    v20 = v30;
    v19 = v31;
  }

  v23 = qword_19E4E0;
  *(v18 + 26) = &type metadata for CGFloat;
  *(v18 + 27) = &protocol witness table for CGFloat;
  *(v18 + 23) = v23;
  *(v18 + 31) = &type metadata for CGFloat;
  *(v18 + 32) = &protocol witness table for CGFloat;
  *(v18 + 28) = 0;
  *v18 = v19;
  *(v18 + 1) = v20;
  *(v18 + 2) = v21;
  *(v18 + 3) = v22;
  sub_21520(&v40, (v18 + 64));
  sub_21520(&v37, (v18 + 104));
  sub_21520(&v34, (v18 + 144));
  v33.receiver = v2;
  v33.super_class = type metadata accessor for DynamicButtonView();
  v24 = objc_msgSendSuper2(&v33, "initWithCoder:", a1);
  v25 = v24;
  if (v24)
  {
    v26 = v24;
    sub_90F00();
  }

  return v25;
}

id sub_90588()
{
  (*(&stru_158.size + (swift_isaMask & **&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel])))();

  return [v0 setNeedsLayout];
}

id sub_90640()
{
  if ([*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel) hasContent])
  {
    return &dword_0 + 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel) hasContent];
  }
}

uint64_t sub_90694()
{
  v1 = v0;
  v2 = sub_13A314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicButtonView();
  v18.receiver = v0;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  sub_91CDC(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics], v17);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel];
  v8 = sub_139BB4();
  v17[36] = v8;
  v9 = sub_270D8();
  v17[33] = v7;
  v10 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];
  v17[41] = v8;
  v17[42] = v9;
  v17[37] = v9;
  v17[38] = v10;
  v11 = v7;
  v12 = v10;
  [v1 bounds];
  sub_92100(v13, v14);
  (*(v3 + 8))(v5, v2);
  return sub_91D38(v17);
}

double sub_9084C(double a1)
{
  sub_91CDC(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics, v11);
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v4 = sub_139BB4();
  v11[36] = v4;
  v5 = sub_270D8();
  v11[33] = v3;
  v6 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v11[41] = v4;
  v11[42] = v5;
  v11[37] = v5;
  v11[38] = v6;
  v7 = v3;
  v8 = v6;
  v9 = sub_91968(a1, v1, v11);
  sub_91D38(v11);
  return v9;
}

uint64_t sub_90A1C()
{
  v1 = v0;
  v2 = *(&stru_B8.reserved2 + (swift_isaMask & **(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel)));
  v2(v33);
  v3 = v34;
  if (v34)
  {
    v4 = v35;
    sub_162F0(v33, v34);
    v5 = (*(v4 + 16))(v3, v4);
    v7 = v6;
    v8 = sub_3C04(v33);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_2519C(v33);
  }

  (v2)(v33, v8);
  v9 = v34;
  if (!v34)
  {
    sub_2519C(v33);

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v10 = v35;
  sub_162F0(v33, v34);
  v5 = (*(v10 + 72))(v9, v10);
  v7 = v11;
  sub_3C04(v33);

LABEL_7:
  sub_58C88();
  v13 = v12;
  v14 = v12[2];
  if (v14 >= v12[3] >> 1)
  {
    sub_58C88();
    v13 = v30;
  }

  v13[2] = v14 + 1;
  v15 = &v13[2 * v14];
  v15[4] = v5;
  v15[5] = v7;
LABEL_11:
  v16 = *(&stru_B8.reserved2 + (swift_isaMask & **(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel)));
  v16(v33);
  v17 = v34;
  if (v34)
  {
    v18 = v35;
    sub_162F0(v33, v34);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    v22 = sub_3C04(v33);
    if (v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = sub_2519C(v33);
  }

  (v16)(v33, v22);
  v23 = v34;
  if (!v34)
  {
    sub_2519C(v33);

    goto LABEL_23;
  }

  v24 = v35;
  sub_162F0(v33, v34);
  v19 = (*(v24 + 72))(v23, v24);
  v21 = v25;
  sub_3C04(v33);

LABEL_17:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_58C88();
    v13 = v31;
  }

  v26 = v13[2];
  if (v26 >= v13[3] >> 1)
  {
    sub_58C88();
    v13 = v32;
  }

  v13[2] = v26 + 1;
  v27 = &v13[2 * v26];
  v27[4] = v19;
  v27[5] = v21;
LABEL_23:
  v33[0] = v13;
  sub_4948(&qword_19E550);
  sub_91D8C();
  v28 = sub_13BB34();

  return v28;
}

void sub_90E80()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DynamicButtonView();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_90FAC();
}

id sub_90F00()
{
  v1 = [objc_opt_self() ams_clear];
  [v0 setBackgroundColor:v1];

  [v0 setUserInteractionEnabled:0];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel]];
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];

  return [v0 addSubview:v2];
}

void sub_90FAC()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_style];
  v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel];
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = objc_opt_self();
      v5 = [v4 ams_primaryText];
      (*&stru_B8.segname[(swift_isaMask & *v3) + 8])(v5);
      v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel];
      v7 = [v4 ams_primaryText];
      (*&stru_B8.segname[(swift_isaMask & *v6) + 8])(v7);
      v8 = [v4 ams_clear];
LABEL_16:
      v25 = v8;
      [v1 setBackgroundColor:v25];

      return;
    }

    if ([v1 tintColor])
    {
      sub_91EF0();
      (*(v23 + 208))();
      if ([v1 tintColor])
      {
        sub_91EF0();
        (*(v24 + 208))();
        v8 = [objc_opt_self() ams_clear];
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      return;
    }

    goto LABEL_20;
  }

  v9 = [v1 tintColor];
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  v11 = [v9 ams_isLight];

  v12 = objc_opt_self();
  if (v11)
  {
    v13 = &selRef_blackColor;
  }

  else
  {
    v13 = &selRef_whiteColor;
  }

  v14 = [v12 *v13];
  sub_91EF0();
  (*(v15 + 208))();
  v16 = [v1 tintColor];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 ams_isLight];

  v19 = objc_opt_self();
  if (v18)
  {
    v20 = &selRef_blackColor;
  }

  else
  {
    v20 = &selRef_whiteColor;
  }

  v21 = [v19 *v20];
  sub_91EF0();
  (*(v22 + 208))();
}

double sub_912F0(double a1, double a2, float a3)
{
  if (a3 == 1000.0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  sub_91CDC(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_metrics, v16);
  v7 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_subtitleLabel);
  v8 = sub_139BB4();
  v16[36] = v8;
  v9 = sub_270D8();
  v16[33] = v7;
  v10 = *(v3 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel);
  v16[41] = v8;
  v16[42] = v9;
  v16[37] = v9;
  v16[38] = v10;
  v11 = v7;
  v12 = v10;
  v13 = sub_91968(v6, v3, v16);
  if (a3 == 1000.0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v13;
  }

  sub_91D38(v16);
  return v14;
}

id sub_913F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicButtonView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *storeEnumTagSinglePayload for DynamicButtonView.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x91574);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_915B0()
{
  result = qword_19E548;
  if (!qword_19E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E548);
  }

  return result;
}

uint64_t sub_91604()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 13.0, (v5 & 1) == 0))
  {
    v6 = 14.0;
  }

  *&xmmword_19E4A0 = v6;
  *(&xmmword_19E4A0 + 1) = 0x4030000000000000;
  qword_19E4B0 = *&v6;
  qword_19E4B8 = 0x4030000000000000;
  return result;
}

uint64_t sub_9171C()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 5.0, (v5 & 1) == 0))
  {
    v6 = 6.0;
  }

  *&xmmword_19E4C0 = v6;
  *(&xmmword_19E4C0 + 1) = 0x4030000000000000;
  qword_19E4D0 = *&v6;
  qword_19E4D8 = 0x4030000000000000;
  return result;
}

uint64_t sub_91834()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 0.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_19E4E0 = *&v6;
  return result;
}

double sub_91968(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_13A514();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 264), *(a3 + 288));
  if (sub_13A324())
  {
    sub_162F0((a3 + 264), *(a3 + 288));
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE64();
  sub_162F0((a3 + 264), *(a3 + 288));
  if ((sub_13A324() & 1) != 0 && (sub_162F0((a3 + 264), *(a3 + 288)), (sub_13A364() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_162F0((a3 + v10), *(a3 + v9));
  sub_13A3F4();
  sub_92504();
  sub_13A464();
  (*(v6 + 8))(v8, v5);
  return a1;
}

uint64_t sub_91BF0(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9[3] = a4;
  v9[4] = a5;
  sub_CC08(v9);
  sub_2B538();
  (*(v7 + 16))();
  (*(&stru_158.size + (swift_isaMask & **&a3[OBJC_IVAR____TtC20StoreDynamicUIPlugin17DynamicButtonView_titleLabel])))(v9, a2);
  [a3 setNeedsLayout];
  return sub_3C04(v9);
}

unint64_t sub_91D8C()
{
  result = qword_19E558;
  if (!qword_19E558)
  {
    sub_558C(&qword_19E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E558);
  }

  return result;
}

uint64_t sub_91E44()
{

  return swift_once();
}

uint64_t sub_91E6C()
{

  return swift_once();
}

uint64_t sub_91E90()
{

  return swift_once();
}

uint64_t sub_91EB0()
{

  return swift_once();
}

uint64_t sub_91ED0()
{

  return swift_once();
}

void sub_91F00(double a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v9 = (v5 + v6);
  v9[13].n128_u64[0] = v7;
  v9[13].n128_u64[1] = v8;
  v9[11].n128_f64[1] = a1;
  v9[15].n128_u64[1] = v7;
  v9[16].n128_u64[0] = v8;
  v9[14].n128_u64[0] = 0;
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
}

uint64_t sub_91F48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 344))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_91F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_92030(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_92070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_92100(double a1, double a2)
{
  v4 = sub_13A564();
  __chkstk_darwin(v4 - 8);
  sub_9EC0();
  v5 = sub_13A514();
  sub_9E94();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = sub_13A314();
  sub_9E94();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_9EC0();
  v18 = v17 - v16;
  sub_162F0(v2 + 33, v2[36]);
  if (sub_13A324())
  {
    sub_162F0(v2 + 33, v2[36]);
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE34();
  sub_92504();
  sub_13A474();
  (*(v7 + 8))(v11, v5);
  (*(v14 + 8))(v18, v12);
  sub_162F0(v2 + 38, v2[41]);
  sub_13A344();
  v20 = v19;
  sub_92E38();
  v21 = 0.0;
  v22 = 0.0;
  if (sub_13A324())
  {
    sub_92E38();
    if ((sub_13A364() & 1) == 0)
    {
      sub_92E38();
      sub_13A344();
      v22 = v23;
    }
  }

  sub_92E38();
  if (sub_13A324())
  {
    sub_92E38();
    if ((sub_13A364() & 1) == 0)
    {
      sub_162F0(v2 + 23, v2[26]);
      sub_13A3F4();
      v21 = v24;
    }
  }

  v32.origin.x = sub_3001C();
  v25 = (CGRectGetHeight(v32) - v20 - v22 - v21) * 0.5 + a2;
  sub_162F0(v2 + 38, v2[41]);
  v26 = sub_13A334();
  *(v27 + 8) = v25;
  v26(v31, 0);
  sub_162F0(v2 + 33, v2[36]);
  v28 = sub_13A334();
  *(v29 + 8) = v21 + v20 + v25;
  v28(v31, 0);
  sub_13A554();
  sub_3001C();
  return sub_13A2F4();
}

uint64_t sub_92504()
{
  v32 = sub_13A4C4();
  sub_9E94();
  v36 = v0;
  __chkstk_darwin(v1);
  sub_9EC0();
  v30 = v3 - v2;
  v35 = sub_13A454();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_13A4B4();
  v33 = *(v10 - 8);
  __chkstk_darwin(v10);
  sub_9EC0();
  v34 = v12 - v11;
  sub_4948(&qword_19AFE8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v40[0] = v13;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v31 = v10;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  *(swift_allocObject() + 16) = xmmword_13E650;
  v14 = v29[41];
  v15 = v29[42];
  v16 = sub_162F0(v29 + 38, v14);
  v41 = v14;
  v42 = *(v15 + 8);
  v17 = sub_CC08(v40);
  (*(*(v14 - 8) + 16))(v17, v16, v14);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v28 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v27 = *(v5 + 104);
  v27(v9);
  v26 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v25 = *(v36 + 104);
  v25(v30);
  sub_13A4E4();
  v36 += 8;
  v24 = *v36;
  (*v36)(v30, v32);
  v18 = *(v5 + 8);
  v18(v9, v35);
  sub_1D2CC(&v37);
  sub_3C04(v40);
  v19 = v29[36];
  v20 = v29[37];
  v21 = sub_162F0(v29 + 33, v19);
  v41 = v19;
  v42 = *(v20 + 8);
  v22 = sub_CC08(v40);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (v27)(v9, v28, v35);
  (v25)(v30, v26, v32);
  sub_13A4E4();
  v24(v30, v32);
  v18(v9, v35);
  sub_1D2CC(&v37);
  sub_3C04(v40);
  sub_13A4D4();
  return (*(v33 + 8))(v34, v31);
}

double sub_92B00(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_92BB0(a2, a1, v2);
}

unint64_t sub_92B5C()
{
  result = qword_19E560;
  if (!qword_19E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E560);
  }

  return result;
}

double sub_92BB0(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_13A514();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 264), *(a3 + 288));
  if (sub_13A324())
  {
    sub_162F0((a3 + 264), *(a3 + 288));
    if ((sub_13A364() & 1) == 0)
    {
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
      sub_1398D4();
    }
  }

  sub_13BE64();
  sub_162F0((a3 + 264), *(a3 + 288));
  if ((sub_13A324() & 1) != 0 && (sub_162F0((a3 + 264), *(a3 + 288)), (sub_13A364() & 1) == 0))
  {
    v9 = 168;
    v10 = 144;
  }

  else
  {
    v9 = 128;
    v10 = 104;
  }

  sub_162F0((a3 + v10), *(a3 + v9));
  sub_13A3F4();
  sub_92504();
  sub_13A464();
  (*(v6 + 8))(v8, v5);
  return a1;
}

uint64_t sub_92E38()
{
  v1 = *(v0 + 288);
  sub_162F0((v0 + 264), v1);
  return v1;
}

uint64_t sub_92E64()
{
  v1 = v0;
  v2 = sub_13B704();
  __chkstk_darwin(v2 - 8);
  v3 = sub_13B764();
  v4 = __chkstk_darwin(v3 - 8);
  v5 = (*(&stru_68.reloff + (swift_isaMask & *v0)))(v4);
  sub_93184();

  (*&stru_68.segname[(swift_isaMask & *v1) + 16])();
  sub_13B6F4();
  sub_92FDC(&_swiftEmptyArrayStorage);
  sub_92FDC(&_swiftEmptyArrayStorage);
  return sub_13B774();
}

unint64_t sub_92FDC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_4948(&qword_19D530);
  v2 = sub_13C0E4();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_93114(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_7C52C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_7D284(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_93114(uint64_t a1, uint64_t a2)
{
  v4 = sub_4948(&qword_19E568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_93184()
{
  sub_93268();
  v1 = (*(v0 + 160))();
  v3 = v2;
  sub_93268();
  v5 = (*(v4 + 112))();
  v7 = v6;
  sub_93268();
  v9 = (*(v8 + 136))();

  return ImpressionMetrics.ID.init(parent:element:index:)(v1, v3, v5, v7, v9);
}

uint64_t sub_93278(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_184578;
  v7._object = a2;
  v4 = sub_13C104(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_932CC(char a1)
{
  if (a1)
  {
    return 0x49416E65706FLL;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_93324@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_93278(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_93354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_932CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_93390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_13B644();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_93404@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a2;
  v110 = a3;
  v5 = sub_4948(&qword_19DDA8);
  __chkstk_darwin(v5 - 8);
  v112 = &v104 - v6;
  v111 = sub_13B644();
  sub_9E94();
  v107 = v7;
  __chkstk_darwin(v8);
  v106 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13B5A4();
  sub_9E94();
  v118 = v11;
  v119 = v10;
  __chkstk_darwin(v10);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v12);
  v14 = &v104 - v13;
  v123 = sub_13B584();
  sub_9E94();
  v129 = v15;
  __chkstk_darwin(v16);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v17);
  sub_18B60();
  __chkstk_darwin(v18);
  v20 = &v104 - v19;
  __chkstk_darwin(v21);
  sub_18B60();
  __chkstk_darwin(v22);
  v24 = &v104 - v23;
  __chkstk_darwin(v25);
  v27 = &v104 - v26;
  __chkstk_darwin(v28);
  v30 = &v104 - v29;
  v31 = type metadata accessor for ExternalAuthenticationAction();
  sub_2B538();
  __chkstk_darwin(v32);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  v121 = v31;
  v122 = a1;
  sub_70E4(0xD000000000000011, 0x8000000000150300, v31, v35, v36, v37, v38, v39);
  v41 = v3;
  v113 = v20;
  v116 = v24;
  if (v3)
  {

    v41 = 0;
    v40 = 1;
  }

  *v34 = v40 & 1;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_8;
  }

  (*(v129 + 16))(v27, v30, v123);
  (*(v118 + 16))(v14, v120, v119);
  sub_94664();
  sub_13BF34();
  if (v41)
  {

    v125 = xmmword_146650;
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
LABEL_7:
    sub_946B8(v125, 2);
LABEL_8:
    sub_13BAB4();
    sub_94E90();
    sub_94DF0(v42, v43);
    sub_94ED8();
    *v44 = 0x6E75426C65646F6DLL;
    v44[1] = 0xEB00000000656C64;
    v44[2] = v121;
    sub_2B538();
    (*(v45 + 104))();
    swift_willThrow();
    v46 = sub_94F04();
    MEMORY[0xEB00000000656C64](v46);

    v47 = 0;
    v48 = xmmword_13F2A0;
    v49 = 0uLL;
    v50 = 0uLL;
    goto LABEL_9;
  }

  if (*(&v125 + 1) == 2)
  {
    goto LABEL_7;
  }

  v78 = sub_94F04();
  MEMORY[0xEB00000000656C64](v78);
  v48 = v125;
  v49 = v126;
  v50 = v127;
  v47 = v128;
LABEL_9:
  *(v34 + 88) = v48;
  *(v34 + 104) = v49;
  *(v34 + 120) = v50;
  *(v34 + 17) = v47;
  v51 = v116;
  v52 = v122;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_12:
    sub_13BAB4();
    sub_94E90();
    sub_94DF0(v54, v55);
    v56 = sub_94ED8();
    *v57 = 0x656449687475416FLL;
    v57[1] = 0xEF7265696669746ELL;
    v57[2] = v121;
    sub_2B538();
    (*(v58 + 104))();
    v53 = v56;
    swift_willThrow();
    v59 = sub_94EA8();
    MEMORY[0xEB00000000656C64](v59);

    v60 = 0;
    v61 = xmmword_13F2A0;
    v62 = 0uLL;
    v63 = 0uLL;
    goto LABEL_13;
  }

  (*(v129 + 16))(v114, v51, v123);
  (*(v118 + 16))(v115, v120, v119);
  sub_94730();
  v53 = 0;
  sub_13BF34();
  if (*(&v125 + 1) == 2)
  {
    sub_94784(v125, 2);
    goto LABEL_12;
  }

  v79 = sub_94EA8();
  MEMORY[0xEB00000000656C64](v79);
  v61 = v125;
  v62 = v126;
  v63 = v127;
  v60 = v128;
LABEL_13:
  *(v34 + 8) = v61;
  *(v34 + 24) = v62;
  *(v34 + 40) = v63;
  v34[56] = v60;
  sub_94F18();
  v64 = sub_BB310();
  if (v53)
  {
    MEMORY[0xEB00000000656C64](v52, 0);

LABEL_19:
    (*(v118 + 8))(v120, v119);
    sub_94794(*(v34 + 1), *(v34 + 2));
    if (!v53)
    {
    }

    return sub_946C8(*(v34 + 11), *(v34 + 12));
  }

  *(v34 + 8) = v64;
  *(v34 + 9) = v65;
  sub_94F18();
  v66 = sub_BB458();
  v105 = 0xEB00000000656C64;
  v34[80] = v66 & 1;
  v67 = v113;
  v68 = v122;
  sub_13B594();
  if (sub_13B564())
  {
LABEL_18:
    sub_13BAB4();
    sub_94E90();
    sub_94DF0(v71, v72);
    sub_94ED8();
    strcpy(v73, "actionMetrics");
    *(v73 + 7) = -4864;
    *(v73 + 2) = v121;
    sub_2B538();
    (*(v74 + 104))();
    swift_willThrow();

    v75 = v123;
    v76 = v105;
    v105(v68, v123);
    v76(v67, v75);
    goto LABEL_19;
  }

  v69 = v112;
  sub_83C8();
  v70 = v111;
  if (sub_52E0(v69, 1, v111) == 1)
  {
    sub_184DC(v69, &qword_19DDA8);
    v68 = v122;
    goto LABEL_18;
  }

  v80 = v70;
  v81 = v129 + 8;
  v82 = v67;
  v83 = v123;
  v84 = v105;
  v105(v82, v123);
  v85 = v69;
  v87 = v107 + 32;
  v86 = *(v107 + 32);
  v88 = v106;
  v86(v106, v85, v80);
  v86(&v34[*(v121 + 36)], v88, v80);
  sub_94EF0();
  v89 = v108;
  sub_13B594();
  v90 = sub_13B564();
  v129 = v81;
  if (v90)
  {
    sub_13BAB4();
    sub_94E90();
    sub_94DF0(v91, v92);
    sub_94ED8();
    *v93 = 0x416572756C696166;
    v93[1] = v87;
    v102 = v121;
    v93[2] = v121;
    sub_2B538();
    (*(v94 + 104))();
    swift_willThrow();
    v84(v89, v83);

    *&v127 = 0;
    v125 = 0u;
    v126 = 0u;
  }

  else
  {
    sub_139BC4();
    v84(v89, v83);
    sub_9414(&v124, &v125);
    v102 = v121;
  }

  sub_94EC0(*(v102 + 40));
  v95 = v109;
  v96 = v122;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_94E90();
    sub_94DF0(v97, v98);
    sub_94ED8();
    *v99 = 0x4173736563637573;
    v99[1] = v87;
    v99[2] = v121;
    sub_2B538();
    (*(v100 + 104))();
    swift_willThrow();

    v101 = v123;
    v84(v96, v123);
    v84(v95, v101);
    v102 = v121;

    *&v127 = 0;
    v125 = 0u;
    v126 = 0u;
  }

  else
  {
    sub_139BC4();

    v103 = v123;
    v84(v122, v123);
    v84(v95, v103);
    sub_9414(&v124, &v125);
  }

  sub_94EC0(*(v102 + 44));
  sub_947E8(v34, v110);
  (*(v118 + 8))(v120, v119);
  return sub_9484C(v34);
}

uint64_t sub_941D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_BB310();
  if (v3)
  {

    v19 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7;
    v19 = v6;
  }

  v9 = sub_BB310();
  v11 = v10;
  v12 = sub_2B0E4(0x65676175676E616CLL, 0xEC00000065646F43, &type metadata for ExternalAuthenticationAction.Model);
  v13 = sub_BB310();
  v15 = v14;
  sub_13B5A4();
  sub_5224();
  (*(v16 + 8))(a2);
  sub_13B584();
  sub_5224();
  result = (*(v17 + 8))(a1);
  *a3 = v19;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v12;
  a3[5] = v13;
  a3[6] = v15;
  return result;
}

double sub_943AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_941D8(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_943FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_BB310();
  if (v3)
  {

    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v19 = sub_BB458() & 1;
  v10 = sub_BB310();
  v12 = v11;
  v13 = sub_BB310();
  v15 = v14;
  sub_13B5A4();
  sub_5224();
  (*(v16 + 8))(a2);
  sub_13B584();
  sub_5224();
  result = (*(v17 + 8))(a1);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v19;
  return result;
}

double sub_945C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_943FC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t type metadata accessor for ExternalAuthenticationAction()
{
  result = qword_19E5D8;
  if (!qword_19E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_94664()
{
  result = qword_19E570;
  if (!qword_19E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E570);
  }

  return result;
}

uint64_t sub_946B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_946C8(a1, a2);
  }

  return a1;
}

uint64_t sub_946C8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_94730()
{
  result = qword_19E578;
  if (!qword_19E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E578);
  }

  return result;
}

uint64_t sub_94784(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_94794(a1, a2);
  }

  return a1;
}

uint64_t sub_94794(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_947E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalAuthenticationAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9484C(uint64_t a1)
{
  v2 = type metadata accessor for ExternalAuthenticationAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ExternalAuthenticationAction.AuthenticatorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x94974);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_949AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_94A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_94A70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_94A8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_94AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_94B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B644();
    v9 = a1 + *(a3 + 36);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_94C04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B644();
    v8 = v5 + *(a4 + 36);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_94C84()
{
  sub_189DC(319, &qword_19E5E8);
  if (v0 <= 0x3F)
  {
    sub_189DC(319, &qword_19CA40);
    if (v1 <= 0x3F)
    {
      sub_189DC(319, &unk_19E5F0);
      if (v2 <= 0x3F)
      {
        sub_13B644();
        if (v3 <= 0x3F)
        {
          sub_5528();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_94D98(uint64_t a1)
{
  result = sub_94DF0(&qword_19E638, type metadata accessor for ExternalAuthenticationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_94DF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_94E3C()
{
  result = qword_19E640;
  if (!qword_19E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E640);
  }

  return result;
}

__n128 sub_94EC0@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  result = *(v2 - 160);
  v5 = *(v2 - 144);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v2 - 128);
  return result;
}

uint64_t sub_94ED8()
{

  return swift_allocError();
}

uint64_t sub_94F2C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v7 = sub_139A14();
  sub_4910(v7, qword_1B2B00);
  sub_4948(&unk_19E010);
  v8 = sub_1399C4();
  sub_CCF4(v8);
  *(swift_allocObject() + 16) = xmmword_13E660;
  v19 = ObjectType;
  v18[0] = v3;
  v3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v18);
  sub_139974();
  v11 = *a1;
  v19 = &type metadata for ExternalAuthenticationAction.AuthenticatorType;
  LOBYTE(v18[0]) = v11;
  sub_139984();
  sub_928C(v18, &unk_1A06F0);
  sub_1399F4();

  sub_4948(&qword_19E698);
  v13 = sub_13BA24();
  if (v11)
  {
    sub_9675C(a1, v12, a3);
  }

  else
  {
    sub_95198(a1, v12, a3);
  }

  sub_CACC(0, &qword_19EBA0);
  v14 = sub_13BD84();
  v15 = sub_17208();
  sub_99728(v15, v16);

  return v13;
}

uint64_t sub_95198(void *a1, uint64_t a2, uint64_t a3)
{
  v261 = a3;
  v284 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_4948(&qword_19E6A0);
  sub_8AD98(v3);
  sub_171D0();
  __chkstk_darwin(v4);
  sub_2159C(&v244 - v5);
  v6 = sub_139B14();
  sub_9E94();
  v266 = v7;
  __chkstk_darwin(v8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v9);
  sub_99F84();
  v275 = v10;
  sub_99FD4();
  v11 = sub_139AD4();
  sub_9E94();
  v251 = v12;
  __chkstk_darwin(v13);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_99F84();
  sub_2159C(v15);
  v16 = sub_139AA4();
  sub_9E94();
  v254 = v17;
  __chkstk_darwin(v18);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v19);
  sub_99F84();
  sub_2159C(v20);
  v269 = sub_1397E4();
  sub_9E94();
  v268 = v21;
  __chkstk_darwin(v22);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_99F84();
  v273 = v24;
  sub_99FD4();
  v263 = sub_13A264();
  sub_9E94();
  v262 = v25;
  __chkstk_darwin(v26);
  sub_9A178();
  v249 = v27;
  v248 = v28;
  __chkstk_darwin(v29);
  sub_99F84();
  v277 = v30;
  sub_99FD4();
  v274 = sub_13A274();
  sub_9E94();
  v272 = v31;
  __chkstk_darwin(v32);
  sub_9EC0();
  v271 = v34 - v33;
  v35 = sub_4948(&qword_19E6A8);
  v36 = sub_8AD98(v35);
  __chkstk_darwin(v36);
  sub_2162C();
  v270 = v37;
  sub_99F78();
  __chkstk_darwin(v38);
  sub_99F84();
  v276 = v39;
  v40 = sub_4948(&qword_19E6B0);
  sub_8AD98(v40);
  sub_171D0();
  __chkstk_darwin(v41);
  v43 = &v244 - v42;
  sub_139914();
  sub_9E94();
  v279 = v45;
  v280 = v44;
  __chkstk_darwin(v44);
  sub_9EC0();
  v278 = v47 - v46;
  v48 = sub_4948(&qword_19E6B8);
  sub_8AD98(v48);
  sub_171D0();
  __chkstk_darwin(v49);
  v50 = sub_4948(&qword_19E6C0);
  sub_8AD98(v50);
  sub_171D0();
  __chkstk_darwin(v51);
  v53 = &v244 - v52;
  sub_1398F4();
  sub_9E94();
  v282 = v55;
  v283 = v54;
  __chkstk_darwin(v54);
  v57 = &v244 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  sub_99F84();
  v281 = v59;
  v60 = sub_4948(&qword_19E6C8);
  v61 = sub_8AD98(v60);
  __chkstk_darwin(v61);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v62);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v63);
  v65 = &v244 - v64;
  v66 = sub_4948(&qword_19E6D0);
  v67 = sub_8AD98(v66);
  __chkstk_darwin(v67);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v68);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v69);
  v71 = &v244 - v70;
  v72 = sub_4948(&qword_19E6D8);
  v73 = sub_8AD98(v72);
  __chkstk_darwin(v73);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v74);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v75);
  v77 = &v244 - v76;
  sub_99FA8();
  v264 = v16;
  sub_53A8(v78, v79, v80, v16);
  sub_99FA8();
  v258 = v11;
  sub_53A8(v81, v82, v83, v11);
  sub_99FA8();
  sub_53A8(v84, v85, v86, v6);
  sub_4948(&qword_19E698);
  v87 = sub_13BA24();
  v88 = v87;
  if (v284[12] < 2uLL)
  {
    goto LABEL_8;
  }

  v246 = v87;
  v265 = v77;
  v267 = v71;
  v250 = v65;
  v245 = v6;
  v89 = v284[14];
  v90 = v284[17];
  v244 = v284[16];
  if (v89)
  {

    sub_139844();
    sub_139834();
    sub_99FE0();
    sub_53A8(v91, v92, v93, v94);
  }

  else
  {
    sub_139834();
    sub_99FA8();
    sub_53A8(v95, v96, v97, v98);
  }

  sub_1398E4();
  sub_99FE0();
  v99 = v283;
  sub_53A8(v100, v101, v102, v283);
  v103 = v281;
  (*(v282 + 32))(v281, v53, v99);
  sub_9A10C();
  v104(v57, v103, v99);
  sub_139904();
  v105 = v280;
  sub_9A13C(v43, 1, v280);
  if (v106)
  {
    v107 = sub_9A1C0();
    v108(v107);
    sub_928C(v43, &qword_19E6B0);
    v65 = v250;
    v71 = v267;
    v77 = v265;
    v88 = v246;
LABEL_8:
    sub_997E8();
    sub_94ED8();
    *v109 = 2;
    sub_13BA04();
    sub_928C(v65, &qword_19E6C8);
    sub_928C(v71, &qword_19E6D0);
    sub_928C(v77, &qword_19E6D8);
    goto LABEL_9;
  }

  v111 = sub_101E4();
  v112(v111);
  if (v90)
  {

    v113 = v276;
    sub_13A1E4();
  }

  else
  {
    v113 = v276;
    sub_13A1F4();
  }

  v114 = v274;
  v115 = v275;
  v116 = v273;
  v117 = v277;
  v118 = v270;
  sub_16C24(v113, v270, &qword_19E6A8);
  sub_9A13C(v118, 1, v114);
  if (v106)
  {
    v119 = sub_9A0A8();
    sub_928C(v119, v120);
    sub_997E8();
    sub_94ED8();
    *v121 = 0;
    v88 = v246;
    sub_13BA04();
    sub_928C(v113, &qword_19E6A8);
    (*(v279 + 8))(v278, v105);
    v122 = sub_9A0B4();
    v123(v122);
    sub_928C(v250, &qword_19E6C8);
    v124 = sub_9A0D0();
    sub_928C(v124, v125);
    v126 = sub_9A16C();
    sub_928C(v126, v127);
    goto LABEL_9;
  }

  (*(v272 + 32))(v271, v118, v114);
  sub_13A204();
  sub_13A234();
  v128 = *(v284 + 80);
  if (v128 != 2)
  {
    sub_13A224();
    if (v129)
    {
      sub_13A214();
      if (v130)
      {
        if (v128)
        {
          sub_139A94();
          sub_9A1CC(&v286);
          sub_99FE0();
          sub_53A8(v131, v132, v133, v264);
          sub_9A1B4();
          sub_9A020();
          sub_16038(v134, v135, v136);
          goto LABEL_29;
        }
      }
    }
  }

  if (qword_19A018 != -1)
  {
    sub_CCD4();
  }

  v137 = sub_139A14();
  sub_4910(v137, qword_1B2B00);
  sub_4948(&unk_19E010);
  sub_9A0C4();
  v138 = sub_1399C4();
  sub_CCF4(v138);
  *(swift_allocObject() + 16) = xmmword_13E650;
  v285[3] = ObjectType;
  v285[0] = v256;
  v139 = v256;
  v140 = AMSLogKey();
  if (v140)
  {
    v141 = v140;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v285);
  sub_139974();
  sub_1399D4();

  v113 = v276;
  v117 = v277;
  v105 = v280;
LABEL_29:
  v142 = v284[2];
  if (v142 == 1)
  {
    goto LABEL_37;
  }

  v143 = *(v284 + 56);
  if (v143 != 2 && (v143 & 1) != 0)
  {
    sub_9A00C();
    v144 = sub_9A1A0();
    v145(v144);
    v117 = v277;
    sub_13A244();
    sub_9A18C();
    sub_139AB4();
    v113 = v276;
LABEL_35:
    v105 = v280;
LABEL_36:
    sub_9A1CC(&v287);
    sub_99FE0();
    sub_53A8(v148, v149, v150, v258);
    sub_9A1B4();
    sub_9A020();
    sub_16038(v151, v152, v153);
    goto LABEL_37;
  }

  if (v284[6])
  {
    sub_9A00C();
    v146 = sub_9A1A0();
    v147(v146);

    sub_9A18C();
    sub_139AB4();
    v113 = v276;
    v117 = v277;
    goto LABEL_35;
  }

  v113 = v276;
  v117 = v277;
  v105 = v280;
  if (v142 && v284[4])
  {
    sub_9A00C();
    v242 = sub_9A160();
    v243(v242, v116, v269);

    v115 = v275;
    sub_9A020();
    sub_139AC4();
    goto LABEL_36;
  }

LABEL_37:
  v154 = sub_9A16C();
  v155 = v259;
  sub_16C24(v154, v259, v156);
  v157 = v264;
  sub_9A13C(v155, 1, v264);
  if (!v106)
  {
    v162 = v253;
    v163 = sub_9A1B4();
    v164(v163);
    v165 = sub_9A0E8();
    v166(v165, v162, v157);
    v167 = sub_9A0D0();
    sub_16C24(v167, v257, v168);
    sub_139AF4();
    v169 = sub_9A0A8();
    v170(v169);
    v171 = v250;
    v172 = sub_9A0A8();
    sub_928C(v172, v173);
    sub_99FE0();
    sub_53A8(v174, v175, v176, v245);
    v115 = v275;
LABEL_42:
    sub_9A020();
    sub_16038(v188, v189, v190);
    goto LABEL_43;
  }

  sub_928C(v155, &qword_19E6D8);
  v158 = sub_9A0D0();
  v159 = v252;
  sub_16C24(v158, v252, v160);
  v161 = v258;
  sub_9A13C(v159, 1, v258);
  v171 = v250;
  if (!v106)
  {
    v177 = v251;
    v178 = sub_9A160();
    v179(v178, v159, v161);
    v180 = sub_9A0E8();
    v181(v180, v115, v161);
    sub_139B04();
    v182 = v115;
    v115 = v275;
    (*(v177 + 8))(v182, v161);
    v183 = sub_9A0A8();
    sub_928C(v183, v184);
    sub_99FE0();
    sub_53A8(v185, v186, v187, v245);
    goto LABEL_42;
  }

  sub_928C(v159, &qword_19E6D0);
LABEL_43:
  v191 = v260;
  sub_139E64();
  sub_9A0C4();
  sub_13B6B4();
  sub_13B9A4();
  v192 = v285[0];
  v193 = sub_9A1C0();
  sub_16C24(v193, v194, v195);
  v196 = sub_9A0DC();
  sub_9A13C(v196, v197, v245);
  if (v106)
  {
    sub_928C(v191, &qword_19E6C8);
  }

  else
  {
    v198 = (*(v266 + 32))(v115, v191, v245);
    v199 = (*(*v192 + 88))(v198);
    if (v199)
    {
      v200 = v199;
      v201 = [v199 topViewController];

      if (v201)
      {
        v202 = v117;
        v203 = sub_9A0E8();
        v204(v203, v115, v245);
        v205 = objc_allocWithZone(sub_139B34());
        v284 = v201;
        v206 = sub_139B24();
        sub_13BCA4();
        v207 = v247;
        sub_99FA8();
        sub_53A8(v208, v209, v210, v211);
        v212 = v262;
        sub_9A10C();
        v213 = sub_9A160();
        v214 = v202;
        v215 = v263;
        v216(v213, v214, v263);
        v217 = v113;
        v218 = (v248 + ((*(v212 + 80) + 40) & ~*(v212 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
        v219 = swift_allocObject();
        v220 = sub_9A02C(v219);
        v221(v220);
        v222 = v246;
        *&v205[v218] = v246;
        v223 = v206;

        sub_98364(0, 0, v207, &unk_146948, v205);

        sub_40750();
        v224(v275, v245);
        v88 = v222;
        sub_40750();
        v225(v273, v269);
        (*(v212 + 8))(v277, v215);
        (*(v272 + 8))(v271, v274);
        sub_928C(v217, &qword_19E6A8);
        (*(v279 + 8))(v278, v280);
        v226 = sub_9A0B4();
        v227(v226);
        sub_928C(v250, &qword_19E6C8);
        v228 = sub_9A0D0();
        sub_928C(v228, v229);
        v230 = sub_9A16C();
        sub_928C(v230, v231);
        return v88;
      }
    }

    sub_40750();
    v232(v115, v245);
  }

  sub_997E8();
  sub_94ED8();
  *v233 = 1;
  v88 = v246;
  sub_13BA04();

  sub_40750();
  v234(v116, v269);
  sub_40750();
  v235(v117, v263);
  (*(v272 + 8))(v271, v274);
  sub_928C(v113, &qword_19E6A8);
  (*(v279 + 8))(v278, v105);
  v236 = sub_9A0B4();
  v237(v236);
  sub_928C(v171, &qword_19E6C8);
  v238 = sub_9A0D0();
  sub_928C(v238, v239);
  v240 = sub_9A16C();
  sub_928C(v240, v241);
LABEL_9:

  return v88;
}

uint64_t sub_9675C(void *a1, uint64_t a2, uint64_t a3)
{
  v178 = a3;
  v181 = a1;
  v3 = sub_4948(&qword_19E6A0);
  sub_8AD98(v3);
  sub_171D0();
  __chkstk_darwin(v4);
  sub_2159C(&v160 - v5);
  v189 = sub_139B14();
  sub_9E94();
  v187 = v6;
  __chkstk_darwin(v7);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v8);
  sub_99F84();
  v186 = v9;
  sub_99FD4();
  v10 = sub_139AD4();
  sub_9E94();
  v166 = v11;
  __chkstk_darwin(v12);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_99F84();
  sub_2159C(v14);
  v15 = sub_139AA4();
  sub_9E94();
  v170 = v16;
  __chkstk_darwin(v17);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v18);
  sub_99F84();
  sub_2159C(v19);
  v20 = sub_1397E4();
  sub_9E94();
  v174 = v21;
  __chkstk_darwin(v22);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v23);
  sub_99F84();
  v190 = v24;
  v25 = sub_4948(&unk_19EBC0);
  sub_8AD98(v25);
  sub_171D0();
  __chkstk_darwin(v26);
  v28 = &v160 - v27;
  v173 = sub_13A1D4();
  sub_9E94();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_9EC0();
  v34 = v33 - v32;
  sub_13A1C4();
  sub_9E94();
  v179 = v36;
  v180 = v35;
  __chkstk_darwin(v35);
  sub_9A178();
  v162 = v37;
  v161 = v38;
  __chkstk_darwin(v39);
  v41 = &v160 - v40;
  v42 = sub_4948(&qword_19E6C8);
  v43 = sub_8AD98(v42);
  __chkstk_darwin(v43);
  sub_2162C();
  v176 = v44;
  sub_99F78();
  __chkstk_darwin(v45);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v46);
  v48 = &v160 - v47;
  v49 = sub_4948(&qword_19E6D0);
  v50 = sub_8AD98(v49);
  __chkstk_darwin(v50);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v51);
  sub_18C34();
  v171 = v52;
  sub_99F78();
  __chkstk_darwin(v53);
  v55 = &v160 - v54;
  v56 = sub_4948(&qword_19E6D8);
  v57 = sub_8AD98(v56);
  __chkstk_darwin(v57);
  sub_2162C();
  v175 = v58;
  sub_99F78();
  __chkstk_darwin(v59);
  v61 = &v160 - v60;
  __chkstk_darwin(v62);
  v188 = &v160 - v63;
  sub_99FA8();
  v182 = v15;
  sub_53A8(v64, v65, v66, v15);
  v184 = v55;
  sub_99FA8();
  v67 = v10;
  sub_53A8(v68, v69, v70, v10);
  v185 = v48;
  sub_99FA8();
  sub_53A8(v71, v72, v73, v189);
  sub_4948(&qword_19E698);
  v177 = sub_13BA24();
  sub_13A174();
  v74 = v181;
  sub_1397D4();
  result = sub_9A13C(v28, 1, v20);
  if (!v76)
  {
    sub_13A164();
    (*(v30 + 8))(v34, v173);
    v77 = v174;
    v172 = *(v174 + 8);
    v173 = v174 + 8;
    v172(v28, v20);
    sub_13A1A4();
    sub_13A194();
    v183 = v41;
    sub_13A184();
    v78 = v74;
    v79 = *(v74 + 80);
    v80 = v20;
    if (v79 == 2)
    {

      v81 = v188;
      v82 = v182;
    }

    else
    {
      v82 = v182;
      if (v79)
      {
        sub_139A94();
        v81 = v188;
        sub_928C(v188, &qword_19E6D8);
        sub_99FE0();
        sub_53A8(v83, v84, v85, v82);
        sub_16038(v61, v81, &qword_19E6D8);
      }

      else
      {

        v81 = v188;
      }
    }

    v86 = v78[2];
    v87 = v184;
    v182 = v80;
    if (v86 != 1)
    {
      if (v78[6])
      {
        (*(v77 + 16))(v167, v190, v80);

        sub_101E4();
        sub_139AB4();
      }

      else
      {
        if (!v86 || !v78[4])
        {
          goto LABEL_14;
        }

        (*(v77 + 16))(v167, v190, v182);

        v81 = v188;
        sub_139AC4();
      }

      sub_928C(v87, &qword_19E6D0);
      sub_99FE0();
      sub_53A8(v88, v89, v90, v67);
      sub_9A020();
      sub_16038(v91, v92, v93);
    }

LABEL_14:
    v94 = v175;
    sub_16C24(v81, v175, &qword_19E6D8);
    v95 = sub_9A0DC();
    sub_9A13C(v95, v96, v82);
    if (v76)
    {
      sub_928C(v94, &qword_19E6D8);
      v97 = v168;
      sub_16C24(v87, v168, &qword_19E6D0);
      v98 = sub_9A0DC();
      sub_9A13C(v98, v99, v67);
      v113 = v183;
      if (v76)
      {
        sub_928C(v97, &qword_19E6D0);
        v106 = v189;
        v103 = v185;
      }

      else
      {
        v114 = v166;
        v115 = v164;
        v116 = sub_9A1C0();
        v117(v116);
        (*(v114 + 16))(v165, v115, v67);
        sub_139B04();
        v118 = sub_9A1B4();
        v119(v118);
        v103 = v185;
        v120 = sub_9A0A8();
        sub_928C(v120, v121);
        sub_99FE0();
        v106 = v189;
        sub_53A8(v122, v123, v124, v189);
        sub_9A020();
        sub_16038(v125, v126, v127);
      }
    }

    else
    {
      v100 = v170;
      v101 = sub_9A0E8();
      v102(v101, v94, v82);
      (*(v100 + 16))(v169, v67, v82);
      sub_16C24(v87, v171, &qword_19E6D0);
      sub_139AF4();
      (*(v100 + 8))(v67, v82);
      v103 = v185;
      v104 = sub_9A0A8();
      sub_928C(v104, v105);
      sub_99FE0();
      v106 = v189;
      sub_53A8(v107, v108, v109, v189);
      sub_9A020();
      sub_16038(v110, v111, v112);
      v113 = v183;
    }

    v128 = v176;
    sub_139E64();
    sub_9A0C4();
    sub_13B6B4();
    sub_13B9A4();
    v129 = v191;
    v130 = sub_9A1C0();
    sub_16C24(v130, v131, v132);
    v133 = sub_9A0DC();
    sub_9A13C(v133, v134, v106);
    if (v76)
    {
      sub_928C(v128, &qword_19E6C8);
    }

    else
    {
      v135 = (*(v187 + 32))(v186, v128, v106);
      v136 = (*(*v129 + 88))(v135);
      if (v136)
      {
        v137 = v136;
        v138 = [v136 topViewController];

        if (v138)
        {
          v139 = sub_9A0E8();
          v140(v139);
          v141 = objc_allocWithZone(sub_139B34());
          v181 = v138;
          v142 = sub_139B24();
          sub_13BCA4();
          v143 = v163;
          sub_99FA8();
          sub_53A8(v144, v145, v146, v147);
          v148 = v179;
          v149 = v180;
          sub_9A10C();
          v150 = sub_9A160();
          v151(v150, v113, v149);
          v152 = (v161 + ((*(v148 + 80) + 40) & ~*(v148 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
          v153 = swift_allocObject();
          v154 = sub_9A02C(v153);
          v155(v154);
          v156 = v177;
          *&v141[v152] = v177;
          v157 = v142;

          sub_98364(0, 0, v143, &unk_146998, v141);

          v158 = v156;
          (*(v187 + 8))(v186, v106);
          v172(v190, v182);
          (*(v148 + 8))(v183, v149);
          sub_928C(v185, &qword_19E6C8);
          sub_928C(v184, &qword_19E6D0);
          sub_928C(v188, &qword_19E6D8);
          return v158;
        }
      }

      (*(v187 + 8))(v186, v106);
    }

    sub_997E8();
    sub_94ED8();
    *v159 = 1;
    v158 = v177;
    sub_13BA04();

    v172(v190, v182);
    (*(v179 + 8))(v113, v180);
    sub_928C(v103, &qword_19E6C8);
    sub_928C(v87, &qword_19E6D0);
    sub_928C(v81, &qword_19E6D8);

    return v158;
  }

  __break(1u);
  return result;
}

uint64_t sub_97524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v7 = sub_13A1C4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_13A154();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_1397E4();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = sub_139AE4();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[24] = v11;
  v14 = (&async function pointer to dispatch thunk of ExternalAuthenticateTask.perform() + async function pointer to dispatch thunk of ExternalAuthenticateTask.perform());
  v12 = swift_task_alloc();
  v6[25] = v12;
  *v12 = v6;
  v12[1] = sub_97758;

  return v14(v11);
}

uint64_t sub_97758()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_9A154();

  return _swift_task_switch();
}

uint64_t sub_97854()
{
  v1 = v0[23];
  sub_9A10C();
  v2(v1);
  v3 = sub_101E4();
  v5 = v4(v3);
  if (v5 == enum case for ExternalAuthenticateTask.Result.siwa(_:))
  {
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    v10 = sub_9A0F4();
    v11(v10);
    v12 = *v7;
    v13 = sub_CACC(0, &qword_19E6E8);
    v0[2] = v12;
    v0[5] = v13;
    v14 = v12;
    sub_13BA14();

    (*(v9 + 8))(v6, v8);
    sub_99BB4((v0 + 2));
LABEL_8:
    sub_99FB4();

    sub_99F90();

    return v30();
  }

  if (v5 != enum case for ExternalAuthenticateTask.Result.oAuth(_:))
  {
    v25 = v0[23];
    v24 = v0[24];
    v26 = v0[21];
    v27 = v0[22];
    sub_997E8();
    sub_94ED8();
    *v28 = 3;
    sub_13BA04();
    v29 = *(v27 + 8);
    v29(v24, v26);

    v29(v25, v26);
    goto LABEL_8;
  }

  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  (*(v0[22] + 96))(v0[23], v0[21]);
  v19 = sub_17208();
  v20(v19);
  (*(v16 + 16))(v15, v18, v17);
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = sub_97B00;
  v22 = v0[20];
  v23 = v0[17];

  return OpenAIAuthenticator.Session.handleAuthorizationRedirect(url:)(v23, v22);
}

uint64_t sub_97B00()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_9A154();

  return _swift_task_switch();
}

uint64_t sub_97BFC()
{
  v2 = v0[22];
  v12 = v0[21];
  v13 = v0[24];
  v3 = v0[19];
  v11 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  sub_97E70();
  v8 = sub_4948(&qword_19DE28);
  sub_9A118(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  (*(v2 + 8))(v13, v12);
  sub_99BB4(v1);
  sub_99FB4();

  sub_99F90();

  return v9();
}

uint64_t sub_97D24()
{
  sub_9A064();
  sub_9A1EC();

  sub_99FB4();

  sub_99F90();

  return v0();
}

uint64_t sub_97DB0()
{
  sub_9A064();
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1 = sub_101E4();
  v2(v1);
  sub_9A1EC();

  sub_99FB4();

  sub_99F90();

  return v3();
}

uint64_t sub_97E70()
{
  v1 = sub_139824();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_13A0D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A104();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v43 = v0;
  sub_13A114();
  sub_13A0E4();
  v17 = *(v8 + 8);
  v44 = v7;
  v42 = v17;
  v17(v16, v7);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == enum case for OpenAIAuthenticator.BillingPlan.Category.free(_:))
  {
    v19 = 0xE400000000000000;
    v20 = 1701147238;
  }

  else if (v18 == enum case for OpenAIAuthenticator.BillingPlan.Category.paid(_:))
  {
    v19 = 0xE400000000000000;
    v20 = 1684627824;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
  }

  v41 = v20;
  sub_4948(&qword_19E6F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140290;
  *(inited + 32) = 0x656D614E72657375;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_13A144();
  *(inited + 56) = v22;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6C69616D65;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_13A134();
  *(inited + 104) = v23;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79726F6765746163;
  *(inited + 136) = 0xE800000000000000;
  sub_4948(&qword_19E6F8);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_13E660;
  *(v24 + 32) = 0x79726F6765746163;
  *(v24 + 40) = 0xE800000000000000;
  *(v24 + 48) = v41;
  *(v24 + 56) = v19;
  *(v24 + 64) = 0x656D614E6E616C70;
  *(v24 + 72) = 0xE800000000000000;
  sub_13A114();
  v25 = sub_13A0F4();
  v27 = v26;
  v28 = v13;
  v29 = v44;
  v30 = v42;
  v42(v28, v44);
  *(v24 + 80) = v25;
  *(v24 + 88) = v27;
  *(v24 + 96) = 0x636170736B726F77;
  *(v24 + 104) = 0xEB00000000444965;
  sub_13A114();
  v31 = sub_13A0C4();
  v33 = v32;
  v30(v10, v29);
  *(v24 + 112) = v31;
  *(v24 + 120) = v33;
  v34 = sub_13BB14();
  v35 = sub_4948(&qword_19E700);
  *(inited + 144) = v34;
  *(inited + 168) = v35;
  strcpy((inited + 176), "expirationDate");
  *(inited + 191) = -18;
  v36 = v45;
  sub_13A124();
  v37 = sub_139814();
  v39 = v38;
  (*(v46 + 8))(v36, v47);
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v37;
  *(inited + 200) = v39;
  return sub_13BB14();
}

uint64_t sub_98364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_4948(&qword_19E6A0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_16C24(a3, v24 - v10, &qword_19E6A0);
  v12 = sub_13BCA4();
  v13 = sub_52E0(v11, 1, v12);

  if (v13 == 1)
  {
    sub_928C(v11, &qword_19E6A0);
  }

  else
  {
    sub_13BC94();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_13BC84();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_13BB94() + 32;
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

      sub_928C(a3, &qword_19E6A0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_928C(a3, &qword_19E6A0);
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

uint64_t sub_98648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v7 = sub_13A0B4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_1397E4();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_139AE4();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[21] = v10;
  v13 = (&async function pointer to dispatch thunk of ExternalAuthenticateTask.perform() + async function pointer to dispatch thunk of ExternalAuthenticateTask.perform());
  v11 = swift_task_alloc();
  v6[22] = v11;
  *v11 = v6;
  v11[1] = sub_98820;

  return v13(v10);
}

uint64_t sub_98820()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_9A154();

  return _swift_task_switch();
}

uint64_t sub_9891C()
{
  v1 = v0[20];
  sub_9A10C();
  v2(v1);
  v3 = sub_101E4();
  v5 = v4(v3);
  if (v5 == enum case for ExternalAuthenticateTask.Result.siwa(_:))
  {
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[18];
    v9 = v0[19];
    v10 = sub_9A0F4();
    v11(v10);
    v12 = *v7;
    v13 = sub_CACC(0, &qword_19E6E8);
    v0[2] = v12;
    v0[5] = v13;
    v14 = v12;
    sub_13BA14();

    (*(v9 + 8))(v6, v8);
    sub_99BB4((v0 + 2));
LABEL_8:
    sub_9A08C();

    sub_99F90();

    return v26();
  }

  if (v5 != enum case for ExternalAuthenticateTask.Result.oAuth(_:))
  {
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[18];
    v23 = v0[19];
    sub_997E8();
    sub_94ED8();
    *v24 = 3;
    sub_13BA04();
    v25 = *(v23 + 8);
    v25(v20, v22);

    v25(v21, v22);
    goto LABEL_8;
  }

  (*(v0[19] + 96))(v0[20], v0[18]);
  v15 = sub_17208();
  v16(v15);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_98B8C;
  v18 = v0[17];
  v19 = v0[14];

  return ExternalPartnerAuthenticator.AuthenticationSession.exchangeCredentialedURLForCredentials(url:)(v19, v18);
}

uint64_t sub_98B8C()
{
  sub_9A058();
  sub_9A04C();
  sub_99F9C();
  *v3 = v2;
  v4 = *v1;
  sub_99F68();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_9A154();

  return _swift_task_switch();
}

uint64_t sub_98C88()
{
  v2 = v0[19];
  v12 = v0[18];
  v13 = v0[21];
  v3 = v0[16];
  v11 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  sub_98EE4();
  v8 = sub_4948(&qword_19DE28);
  sub_9A118(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v11, v4);
  (*(v2 + 8))(v13, v12);
  sub_99BB4(v1);
  sub_9A08C();

  sub_99F90();

  return v9();
}

uint64_t sub_98DA8()
{
  sub_9A064();
  sub_9A1EC();

  sub_9A08C();

  sub_99F90();

  return v0();
}

uint64_t sub_98E2C()
{
  sub_9A064();
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = sub_101E4();
  v2(v1);
  sub_9A1EC();

  sub_9A08C();

  sub_99F90();

  return v3();
}

uint64_t sub_98EE4()
{
  v0 = sub_139824();
  v45 = *(v0 - 8);
  v46 = v0;
  __chkstk_darwin(v0);
  v44 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_13A024();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13A054();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  sub_13A064();
  sub_13A034();
  v15 = *(v7 + 8);
  v43 = v6;
  v41 = v15;
  v15(v14, v6);
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for BillingPlan.Category.free(_:))
  {
    v17 = 0xE400000000000000;
    v18 = 1701147238;
  }

  else if (v16 == enum case for BillingPlan.Category.paid(_:))
  {
    v17 = 0xE400000000000000;
    v18 = 1684627824;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E75;
  }

  sub_4948(&qword_19E6F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_13F4C0;
  strcpy((inited + 32), "credentialsID");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_13A074();
  *(inited + 56) = v20;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x656D614E72657375;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_13A0A4();
  *(inited + 104) = v21;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6C69616D65;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = sub_13A094();
  *(inited + 152) = v22;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x50676E696C6C6962;
  *(inited + 184) = 0xEB000000006E616CLL;
  sub_4948(&qword_19E6F8);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_13E660;
  *(v23 + 32) = 0x79726F6765746163;
  *(v23 + 40) = 0xE800000000000000;
  *(v23 + 48) = v18;
  *(v23 + 56) = v17;
  *(v23 + 64) = 0x656D614E6E616C70;
  *(v23 + 72) = 0xE800000000000000;
  sub_13A064();
  v24 = sub_13A044();
  v26 = v25;
  v27 = v43;
  v28 = v41;
  v41(v11, v43);
  *(v23 + 80) = v24;
  *(v23 + 88) = v26;
  *(v23 + 96) = 0x636170736B726F77;
  *(v23 + 104) = 0xEB00000000444965;
  v29 = v42;
  sub_13A064();
  v30 = sub_13A014();
  v32 = v31;
  v28(v29, v27);
  *(v23 + 112) = v30;
  *(v23 + 120) = v32;
  v33 = sub_13BB14();
  v34 = sub_4948(&qword_19E700);
  *(inited + 192) = v33;
  *(inited + 216) = v34;
  strcpy((inited + 224), "expirationDate");
  *(inited + 239) = -18;
  v35 = v44;
  sub_13A084();
  v36 = sub_139814();
  v38 = v37;
  (*(v45 + 8))(v35, v46);
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = v36;
  *(inited + 248) = v38;
  return sub_13BB14();
}

id sub_9941C()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

unint64_t sub_994D0()
{
  result = qword_19E638;
  if (!qword_19E638)
  {
    type metadata accessor for ExternalAuthenticationAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E638);
  }

  return result;
}

uint64_t sub_9954C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_99644;

  return v6(a1);
}

uint64_t sub_99644()
{
  sub_9A058();
  sub_9A04C();
  v1 = *v0;
  sub_99F68();
  *v2 = v1;

  sub_99F90();

  return v3();
}

uint64_t sub_99728(uint64_t a1, void *a2)
{
  v5[3] = sub_CACC(0, &qword_19EBA0);
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = a2;
  swift_retain_n();
  v3 = a2;
  sub_13B9D4();

  return sub_3C04(v5);
}

unint64_t sub_997E8()
{
  result = qword_19E6E0;
  if (!qword_19E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E6E0);
  }

  return result;
}

uint64_t sub_99854()
{
  sub_9A0C4();
  v3 = sub_13A264();
  sub_CCF4(v3);
  sub_9A070();
  v4 = swift_task_alloc();
  v5 = sub_99FFC(v4);
  *v5 = v6;
  v5[1] = sub_99954;
  v7 = sub_99FEC();

  return sub_98648(v7, v8, v0, v1, v9, v2);
}

uint64_t sub_99954()
{
  sub_9A058();
  sub_9A04C();
  v1 = *v0;
  sub_99F68();
  *v2 = v1;

  sub_99F90();

  return v3();
}

uint64_t sub_99A34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_99A6C()
{
  sub_9A064();
  v0 = swift_task_alloc();
  v1 = sub_99FFC(v0);
  *v1 = v2;
  v1[1] = sub_99F64;
  v3 = sub_99FEC();

  return v4(v3);
}

uint64_t sub_99B10()
{
  sub_9A064();
  v0 = swift_task_alloc();
  v1 = sub_99FFC(v0);
  *v1 = v2;
  v1[1] = sub_99954;
  v3 = sub_99FEC();

  return v4(v3);
}

uint64_t sub_99C28(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_9E94();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v2);

  return _swift_deallocObject(v1, v8 + 8, v5 | 7);
}

uint64_t sub_99D04()
{
  sub_9A0C4();
  v3 = sub_13A1C4();
  sub_CCF4(v3);
  sub_9A070();
  v4 = swift_task_alloc();
  v5 = sub_99FFC(v4);
  *v5 = v6;
  v5[1] = sub_99F64;
  v7 = sub_99FEC();

  return sub_97524(v7, v8, v0, v1, v9, v2);
}

_BYTE *storeEnumTagSinglePayload for ExternalAuthenticationActionImplementation.ExternalAuthenticationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x99ED0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_99F0C()
{
  result = qword_19E708;
  if (!qword_19E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E708);
  }

  return result;
}

uint64_t sub_99FB4()
{
}

char *sub_9A02C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  return a1 + v2;
}

uint64_t sub_9A08C()
{
}

uint64_t sub_9A118(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 48) = v1;

  return sub_13BA14();
}

uint64_t sub_9A1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_928C(v3, v1);
}

uint64_t sub_9A1EC()
{

  return sub_13BA04();
}

uint64_t sub_9A204()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1B2AA8);
  v1 = sub_4910(v0, qword_1B2AA8);
  v2 = sub_9A2E0(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x80000000001503E0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

double (*sub_9A2E0(double a1, double a2, double a3, double a4))(uint64_t a1)
{
  sub_4948(&qword_19E710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_146A70;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v9 = objc_opt_self();
  v10 = UIContentSizeCategoryExtraSmall;
  v11 = UIContentSizeCategorySmall;
  v12 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v13) = 1051372203;
  [v12 _solveForInput:v13];
  v15 = v14;

  *(inited + 56) = round(v15 * a2 + (1.0 - v15) * a1);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v16 = UIContentSizeCategoryMedium;
  v17 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v18) = 1059760811;
  [v17 _solveForInput:v18];
  v20 = v19;

  *(inited + 72) = round(v20 * a2 + (1.0 - v20) * a1);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v21 = UIContentSizeCategoryLarge;
  v22 = UIContentSizeCategoryExtraLarge;
  v23 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v24) = 1051372203;
  [v23 _solveForInput:v24];
  LODWORD(a1) = v25;

  *(inited + 104) = round(*&a1 * a3 + (1.0 - *&a1) * a2);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v26 = UIContentSizeCategoryExtraExtraLarge;
  v27 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v28) = 1059760811;
  [v27 _solveForInput:v28];
  LODWORD(a1) = v29;

  *(inited + 120) = round(*&a1 * a3 + (1.0 - *&a1) * a2);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  v30 = UIContentSizeCategoryExtraExtraExtraLarge;
  v31 = UIContentSizeCategoryAccessibilityMedium;
  v32 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v33) = 1045220557;
  [v32 _solveForInput:v33];
  LODWORD(a1) = v34;

  *(inited + 152) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  v35 = UIContentSizeCategoryAccessibilityLarge;
  v36 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v37) = 1053609165;
  [v36 _solveForInput:v37];
  LODWORD(a1) = v38;

  *(inited + 168) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  v39 = UIContentSizeCategoryAccessibilityExtraLarge;
  v40 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v41) = 1058642330;
  [v40 _solveForInput:v41];
  LODWORD(a1) = v42;

  *(inited + 184) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v43 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v44 = [v9 functionWithName:kCAMediaTimingFunctionLinear];
  LODWORD(v45) = 1061997773;
  [v44 _solveForInput:v45];
  LODWORD(a1) = v46;

  *(inited + 200) = round(*&a1 * a4 + (1.0 - *&a1) * a3);
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  type metadata accessor for UIContentSizeCategory(0);
  sub_9A7CC();
  v47 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v48 = sub_13BB14();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = a2;
  return sub_9A85C;
}

double sub_9A784(double a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v5 = sub_7C5A4();
    if (v6)
    {
      return *(*(a3 + 56) + 8 * v5);
    }
  }

  return a1;
}

unint64_t sub_9A7CC()
{
  result = qword_19A2F8;
  if (!qword_19A2F8)
  {
    type metadata accessor for UIContentSizeCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19A2F8);
  }

  return result;
}

uint64_t sub_9A824()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t FooterMetrics.buttonMaximumWidth.setter(__int128 *a1)
{
  sub_3C04(v1);

  return sub_21520(a1, v1);
}

uint64_t FooterMetrics.buttonSpacing.setter(__int128 *a1)
{
  sub_3C04(v1 + 40);

  return sub_21520(a1, v1 + 40);
}

uint64_t FooterMetrics.buttonTopSpace.setter(__int128 *a1)
{
  sub_3C04(v1 + 80);

  return sub_21520(a1, v1 + 80);
}

uint64_t FooterMetrics.buttonTopSpaceWithoutDisclaimer.setter(__int128 *a1)
{
  sub_3C04(v1 + 120);

  return sub_21520(a1, v1 + 120);
}

void OfferPlatterComponentLayout.Metrics.buttonInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[20] = a1;
  v4[21] = a2;
  v4[22] = a3;
  v4[23] = a4;
}

uint64_t sub_9A9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9A9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FullSheetOverlayFooterLayoutLandscape.init(metrics:disclaimerView:footerView:primaryButton:secondaryButton:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  memcpy(a6, __src, 0xC0uLL);
  sub_21520(a2, a6 + 192);
  sub_21520(a3, a6 + 232);
  sub_21520(a4, a6 + 272);

  return sub_21520(a5, a6 + 312);
}

double FullSheetOverlayFooterLayoutLandscape.measurements(fitting:in:)(double a1)
{
  sub_9B610(a1);
  sub_9B540(v1 + 24, v1[27]);
  if (sub_13A324())
  {
    sub_9B5B0(v1 + 24);
    sub_9B5D8();
    sub_13A384();
  }

  sub_9B540(v1 + 24, v1[27]);
  if (sub_13A324())
  {
    sub_9B5B0(v1 + 10);
    sub_9B5D8();
    sub_13A3F4();
    sub_9B5B0(v1 + 10);
  }

  else
  {
    sub_9B5B0(v1 + 15);
  }

  sub_9B5D8();
  sub_13A3F4();
  sub_9B5B0(v1);
  sub_9B5D8();
  sub_13A3F4();
  sub_9B5B0(v1 + 39);
  sub_9B5D8();
  sub_13A384();
  v3 = v2;
  sub_9B540(v1 + 39, v1[42]);
  v4 = sub_13A324();
  sub_9B584(v1);
  sub_13A3F4();
  if (v4)
  {
    sub_9B5B0(v1 + 5);
    sub_9B5D8();
    sub_13A3F4();
  }

  sub_9B5B0(v1 + 34);
  sub_9B5D8();
  sub_13A384();
  v6 = v5;
  sub_9B540(v1 + 39, v1[42]);
  if (sub_13A324())
  {
    sub_9B5B0(v1 + 5);
    sub_9B5D8();
    sub_13A3F4();
    return v3 + v6 + v7;
  }

  return v6;
}

uint64_t FullSheetOverlayFooterLayoutLandscape.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  Width = CGRectGetWidth(*&a2);
  sub_9B610(Width);
  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B584(v5 + 24);
    sub_9B5CC();
    sub_13A384();
  }

  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B540(v5 + 10, v5[13]);
    sub_13A3F4();
    sub_9B540(v5 + 10, v5[13]);
  }

  else
  {
    sub_9B540(v5 + 15, v5[18]);
  }

  sub_13A3F4();
  sub_9B540(v5, v5[3]);
  sub_13A3F4();
  sub_9B584(v5 + 39);
  sub_9B5CC();
  sub_13A384();
  sub_9B560(v5 + 39);
  v9 = sub_13A324();
  sub_162F0(v5, v5[3]);
  sub_13A3F4();
  if (v9)
  {
    sub_9B540(v5 + 5, v5[8]);
    sub_13A3F4();
  }

  sub_9B584(v5 + 34);
  sub_9B5CC();
  sub_13A384();
  sub_9B560(v5 + 39);
  if (sub_13A324())
  {
    sub_9B540(v5 + 5, v5[8]);
    sub_13A3F4();
  }

  v23.origin.x = sub_9B5F0();
  CGRectGetMaxY(v23);
  sub_9B584(v5 + 29);
  v24.origin.x = sub_9B5F0();
  CGRectGetMidX(v24);
  sub_13A354();
  sub_9B560(v5 + 24);
  if (sub_13A324())
  {
    sub_9B560(v5 + 29);
    sub_13A344();
    CGRectGetWidth(v25);
    sub_9B540(v5 + 10, v5[13]);
    sub_13A3F4();
    sub_162F0(v5 + 24, v5[27]);
    sub_9B5A0();
    sub_13A354();
  }

  sub_9B560(v5 + 39);
  if (sub_13A324())
  {
    v10 = [a1 traitCollection];
    v11 = sub_13BDD4();

    if (v11)
    {
      sub_162F0(v6 + 34, v6[37]);
      sub_9B5A0();
      sub_13A354();
      sub_9B560(v6 + 34);
      sub_13A344();
      CGRectGetMaxX(v26);
      sub_9B540(v6 + 5, v6[8]);
      sub_13A3F4();
      v12 = sub_9B5E4();
      sub_9B540(v12, a1);
      sub_13A344();
      CGRectGetMinY(v27);
      v13 = sub_9B5E4();
      sub_9B540(v13, a1);
      sub_13A344();
      CGRectGetWidth(v28);
      v14 = sub_9B5E4();
      sub_9B540(v14, a1);
      sub_13A344();
      CGRectGetHeight(v29);
      v15 = sub_9B604();
    }

    else
    {
      sub_162F0(v6 + 39, v6[42]);
      sub_9B5A0();
      sub_13A354();
      sub_9B560(v6 + 39);
      sub_13A344();
      CGRectGetMaxX(v31);
      sub_9B540(v6 + 5, v6[8]);
      sub_13A3F4();
      v18 = sub_9B604();
      sub_9B540(v18, a1);
      sub_13A344();
      CGRectGetMinY(v32);
      v19 = sub_9B604();
      sub_9B540(v19, a1);
      sub_13A344();
      CGRectGetWidth(v33);
      v20 = sub_9B604();
      sub_9B540(v20, a1);
      sub_13A344();
      CGRectGetHeight(v34);
      v15 = sub_9B5E4();
    }

    sub_162F0(v15, a1);
  }

  else
  {
    v16 = v5[32];
    sub_9B540(v5 + 29, v16);
    sub_13A344();
    CGRectGetWidth(v30);
    v17 = sub_9B5E4();
    sub_162F0(v17, v16);
  }

  sub_9B5CC();
  sub_13A354();
  sub_9B540(v6 + 29, v6[32]);
  sub_13A344();

  return sub_13A2B4();
}

unint64_t sub_9B350(uint64_t a1)
{
  *(a1 + 8) = sub_9B380();
  result = sub_9B3D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_9B380()
{
  result = qword_19E718;
  if (!qword_19E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E718);
  }

  return result;
}

unint64_t sub_9B3D4()
{
  result = qword_19E720;
  if (!qword_19E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19E720);
  }

  return result;
}

uint64_t sub_9B454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 352))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9B494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double FullSheetOverlayFooterLayoutPortrait.measurements(fitting:in:)()
{
  v1 = v0;
  v2 = sub_13A514();
  v3 = sub_5A838(v2, &v47);
  __chkstk_darwin(v3);
  sub_9EC0();
  sub_2159C(v5 - v4);
  v6 = sub_13A4C4();
  v7 = sub_5A838(v6, &v48);
  v42 = v8;
  __chkstk_darwin(v7);
  sub_9EC0();
  v11 = v10 - v9;
  v12 = sub_13A454();
  v13 = sub_5A838(v12, v45);
  v41 = v14;
  __chkstk_darwin(v13);
  sub_9EC0();
  v17 = v16 - v15;
  v18 = sub_13A4B4();
  sub_9C88C();
  __chkstk_darwin(v19);
  sub_9EC0();
  v22 = v21 - v20;
  sub_4948(&qword_19AFE8);
  sub_9C88C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v46[0] = v23;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  sub_13BF64();
  sub_6627C(v1, v1[3]);
  sub_13A3F4();
  sub_4948(&qword_19AFE0);
  sub_13A4F4();
  *(sub_9C868() + 16) = xmmword_13E660;
  sub_4B14((v1 + 10), v46);
  (*(v41 + 104))(v17);
  sub_9C898(v42 + 104);
  v24();
  sub_13A4E4();
  v40 = *(v42 + 8);
  v40(v11);
  v39 = *(v41 + 8);
  v39(v17);
  sub_1D2CC(v46);
  sub_4B14((v1 + 34), v46);
  sub_6627C(v1 + 24, v1[27]);
  if (sub_13A324())
  {
    v25 = (v1 + 10);
  }

  else
  {
    v25 = (v1 + 15);
  }

  sub_4B14(v25, v44);
  sub_6627C(v1 + 39, v1[42]);
  if (sub_13A324())
  {
    sub_4B14((v1 + 5), v43);
  }

  else
  {
    sub_1398D4();
    v43[3] = &type metadata for CGFloat;
    v43[4] = &protocol witness table for CGFloat;
    v43[0] = v26;
  }

  v27 = sub_9C810();
  v28(v27);
  sub_9C7FC();
  v29();
  sub_13A4E4();
  v40(v11);
  v39(v17);
  sub_3C04(v44);
  sub_3C04(v46);
  sub_1D2CC(v43);
  v46[3] = &type metadata for Double;
  v46[4] = &protocol witness table for Double;
  v46[0] = 0;
  sub_1398D4();
  v45[0] = &type metadata for CGFloat;
  v45[1] = &protocol witness table for CGFloat;
  v44[0] = v30;
  v31 = sub_9C810();
  v32(v31);
  sub_9C7FC();
  v33();
  sub_13A4E4();
  v40(v11);
  v39(v17);
  sub_1D2CC(v44);
  sub_3C04(v46);
  sub_13A4D4();
  sub_13A464();
  v35 = v34;
  sub_40750();
  v36();
  sub_40750();
  v37(v22, v18);
  return v35;
}