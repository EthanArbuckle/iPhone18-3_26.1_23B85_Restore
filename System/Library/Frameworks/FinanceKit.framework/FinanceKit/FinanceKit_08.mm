void *sub_1B725D804()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F260);
  v2 = *v0;
  v3 = sub_1B7801CB8();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B725D960()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F240);
  v2 = *v0;
  v3 = sub_1B7801CB8();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(v2 + 56) + 56 * v17;
        v21 = *(v19 + 16);
        v20 = *(v19 + 32);
        v22 = *v19;
        v31 = *(v19 + 48);
        v29 = v21;
        v30 = v20;
        v28 = v22;
        *(*(v4 + 48) + v17) = v18;
        v23 = *(v4 + 56) + 56 * v17;
        v24 = v28;
        v25 = v29;
        v26 = v30;
        *(v23 + 48) = v31;
        *(v23 + 16) = v25;
        *(v23 + 32) = v26;
        *v23 = v24;
        result = sub_1B7223834(&v28, v27);
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

char *sub_1B725DB04()
{
  v1 = v0;
  v2 = type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B77FFA18();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F238);
  v5 = *v0;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1B7263498(*(v5 + 56) + v26, v35, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1B726332C(v25, *(v27 + 56) + v26, type metadata accessor for SpendingSummary.SpendingBreakdowns.GroupBreakdown);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B725DE30()
{
  v1 = v0;
  v2 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F418);
  v4 = *v0;
  v5 = sub_1B7801CB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B7263498(*(v4 + 56) + v26, v30, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1B726332C(v25, *(v27 + 56) + v26, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1B725E0B0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_1B7801CB8();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    v18 = v8;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = v36;
        v24 = *(v36 + 72) * v22;
        v26 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v24, v34);
        v27 = *(*(v6 + 56) + 8 * v22);
        (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + 8 * v22) = v27;
        result = v27;
        v16 = v37;
      }

      while (v37);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v21 = *(v30 + v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_1B725E364(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1B7801CB8();
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
        v21 = *v19;
        v20 = v19[1];
        LOBYTE(v19) = *(*(v3 + 56) + v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = v21;
        v22[1] = v20;
        *(*(v5 + 56) + v18) = v19;
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

char *sub_1B725E4BC()
{
  v1 = v0;
  v2 = type metadata accessor for PredictedTransaction.StylingMetadata(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B77FFA18();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990388);
  v5 = *v0;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1B7263498(*(v5 + 56) + v26, v35, type metadata accessor for PredictedTransaction.StylingMetadata);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1B726332C(v25, *(v27 + 56) + v26, type metadata accessor for PredictedTransaction.StylingMetadata);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1B725E7FC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1B7801CB8();
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

char *sub_1B725E958()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionGroup.StylingMetadata(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B77FFA18();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F2D8);
  v5 = *v0;
  v6 = sub_1B7801CB8();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1B7263498(*(v5 + 56) + v26, v35, type metadata accessor for TransactionGroup.StylingMetadata);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1B726332C(v25, *(v27 + 56) + v26, type metadata accessor for TransactionGroup.StylingMetadata);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B725EC84()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F278);
  v2 = *v0;
  v3 = sub_1B7801CB8();
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

void *sub_1B725EDF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F310);
  v2 = *v0;
  v3 = sub_1B7801CB8();
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
        sub_1B72238E4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B719BDE4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B72051F0(v22, (*(v4 + 56) + v17));
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

void *sub_1B725EF98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F5B8);
  v2 = *v0;
  v3 = sub_1B7801CB8();
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
        v18 = 32 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 32 * v17);
        v21 = v20[1];
        v29 = *v20;
        v30 = v21;
        v17 *= 48;
        v22 = *(v19 + v17 + 25);
        v23 = *(v19 + v17 + 16);
        v31 = *(v19 + v17);
        v32[0] = v23;
        *(v32 + 9) = v22;
        v24 = (*(v4 + 48) + v18);
        *v24 = v29;
        v24[1] = v21;
        v25 = (*(v4 + 56) + v17);
        v26 = *(v32 + 9);
        v27 = v32[0];
        *v25 = v31;
        v25[1] = v27;
        *(v25 + 25) = v26;
        result = sub_1B71B4C14(&v31, &v28);
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

uint64_t sub_1B725F13C(uint64_t a1)
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

  sub_1B7801958();
LABEL_9:
  result = sub_1B7801AB8();
  *v1 = result;
  return result;
}

uint64_t sub_1B725F3BC(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_1B7801958();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1B7247350(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B725F458(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990508, &qword_1EB990500);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990500);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedApplePayMerchantTokenUpcomingPayment();
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

uint64_t sub_1B725F5E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9904F8, &qword_1EB9904F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9904F0);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedApplePayMerchantTokenPastPayment();
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

uint64_t sub_1B725F778(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9904A0, &qword_1EB990498);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990498);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedCascadeExtractedOrderEmail();
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

uint64_t sub_1B725F908(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990488, &qword_1EB990480);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990480);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedCascadeExtractedOrderShippingFulfillment();
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

uint64_t sub_1B725FA98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990470, &qword_1EB990468);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990468);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedCascadeExtractedOrderTransaction();
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

uint64_t sub_1B725FC28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990458, &qword_1EB990450);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990450);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedApplePayMerchantTokenPastPaymentLineItem();
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

uint64_t sub_1B725FDB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990448, &qword_1EB990440);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990440);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedApplePayMerchantTokenPastPaymentSummaryItem();
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

uint64_t sub_1B725FF48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9903C8, &qword_1EB9903C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903C0);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderShippingFulfillment();
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

uint64_t sub_1B72600D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9903B8, &qword_1EB9903B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903B0);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderPickupFulfillment();
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

uint64_t sub_1B7260268(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990420, &qword_1EB990418);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990418);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderLineItem();
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

uint64_t sub_1B72603F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990410, &qword_1EB990408);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990408);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderPaymentTransaction();
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

uint64_t sub_1B7260588(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9903F8, &qword_1EB9903F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903F0);
            v9 = sub_1B729B524(v13, i, a3);
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
        sub_1B7205540(0, &qword_1EDAFAF30);
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

uint64_t sub_1B7260728(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990270, &qword_1EB990268);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990268);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderReceipt();
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

uint64_t sub_1B72608B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9903A8, &qword_1EB9903A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903A0);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderReturn();
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

uint64_t sub_1B7260A48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990240, &qword_1EB990238);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990238);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderImage();
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

uint64_t sub_1B7260BD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990300, &qword_1EB9902F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902F8);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedExtractedOrderShippingFulfillment();
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

uint64_t sub_1B7260D68(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9902C0, &qword_1EB9902B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902B8);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedInternalTransaction();
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

uint64_t sub_1B7260EF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990258, &qword_1EB990250);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990250);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderReturnLabel();
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

uint64_t sub_1B7261088(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990398, &qword_1EB990390);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990390);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedFoundInMailItem();
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

uint64_t sub_1B7261218(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990330, &qword_1EB990328);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990328);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderPaymentSummaryItem();
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

uint64_t sub_1B72613A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9902E8, &qword_1EB9902E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902E0);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedExtractedOrderTransaction();
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

uint64_t sub_1B7261538(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9902D0, &qword_1EB9902C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902C8);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedApplePayMerchantTokenScheduledPayment();
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

uint64_t sub_1B72616C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB9902B0, &qword_1EB9902A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9902A8);
            v9 = sub_1B729B524(v13, i, a3);
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
        type metadata accessor for ManagedOrderApplication();
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

uint64_t sub_1B7261858(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B7801958();
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
      result = sub_1B7801958();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B7263444(&qword_1EB990430, &qword_1EB990428);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990428);
            v9 = sub_1B729B5A4(v13, i, a3);
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
        type metadata accessor for ManagedOrder();
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

void *sub_1B72619E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B7261C14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B7261DA0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B7261F24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1B7263498(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v24 = v23;
      v25 = v31;
      sub_1B726332C(v24, v31, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B726332C(v25, a2, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1B7262188(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 88 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v25[0] = *v18;
      v25[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      LOBYTE(v17) = *(v18 + 80);
      v25[2] = v18[2];
      v26 = v17;
      v25[3] = v21;
      v25[4] = v20;
      memmove(v11, v18, 0x51uLL);
      if (v14 == v10)
      {
        sub_1B72630FC(v25, v24);
        goto LABEL_24;
      }

      v11 += 88;
      sub_1B72630FC(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B7262354(void *result, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  sub_1B7801908();
  a5(0);
  sub_1B7262E04(a6, 255, a7);
  result = sub_1B7800FE8();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1B7801988())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

uint64_t sub_1B7262594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1B77FFA18();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1B7262838(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B7262934(void *a1)
{
  v2 = sub_1B77FF338();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = v8[3];

  result = sub_1B78014D8();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_1B7262E04(&qword_1EB990510, 255, MEMORY[0x1E6968EB0]);
    do
    {
      result = sub_1B78017B8();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_1B72051F0(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_1B7262E04(&qword_1EB990510, 255, MEMORY[0x1E6968EB0]);
  sub_1B78017B8();
  if (v32)
  {
    while (1)
    {
      result = sub_1B72051F0(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99AA50);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_1B72051F0(&v33, v14);
      v14 += 2;
      sub_1B78017B8();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_1B7205418(&v31, &qword_1EB98FCB0);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B7262CF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7205540(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7262D38(__n128 a1, __n128 a2)
{
  v7 = a1.n128_f64[1];
  if (a1.n128_f64[0] == 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = a1.n128_f64[0];
  }

  MEMORY[0x1B8CA6660](*&v2);
  v3 = v7;
  if (v7 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v3);
  v4 = a2.n128_f64[0];
  if (a2.n128_f64[0] == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1B8CA6660](*&v4);
  v5 = a2.n128_f64[1];
  if (a2.n128_f64[1] == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x1B8CA6660](*&v5);
}

uint64_t sub_1B7262E04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7262E6C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1B724E408(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1B7262F0C(unint64_t a1, void (*a2)(id *, id))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CA5DC0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(&v8, v6);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void keypath_set_3Tm(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1B77FF8B8();
  [v6 *a5];
}

uint64_t sub_1B72630BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B72630DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B7263158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1B726321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1B726332C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7263444(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B7263498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7263500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B72635A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B7263600(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 mimeType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7263668(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setMimeType_];
}

id ManagedOrderReceipt.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderReceipt.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderReceipt.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedOrderReceipt.__allocating_init(data:name:mimeType:localizationName:context:)(uint64_t a1, unint64_t a2, int a3, int a4, int a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  v10 = v9;
  v15 = [objc_allocWithZone(v10) initWithContext_];
  v16 = sub_1B77FF598();
  [v15 setData_];

  v17 = sub_1B7800838();

  [v15 setName_];

  if (a6)
  {
    v18 = sub_1B7800838();
  }

  else
  {
    v18 = 0;
  }

  [v15 setMimeType_];

  if (a8)
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [v15 setLocalizationName_];

  sub_1B720A388(a1, a2);
  return v15;
}

id ManagedOrderReceipt.__allocating_init(name:url:localizationName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v46 = a1;
  v48 = a5;
  v49 = a6;
  v47 = a4;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1B77FEE18();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990530);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1B77FF518();
  v39 = v10;
  v40 = v11;
  v41 = v18;
  v42 = v17;
  v43 = a2;
  v44 = v9;
  v19 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7807CD0;
  v21 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v22 = v21;
  sub_1B7545498(inited);
  swift_setDeallocating();
  sub_1B7263FD4(inited + 32);
  sub_1B77FF3C8();

  sub_1B77FEDF8();
  (*(v40 + 8))(v13, v39);
  v23 = sub_1B77FFF98();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v16, 1, v23);
  v26 = v49;
  if (v25 == 1)
  {
    sub_1B7264030(v16);
    v27 = 0;
  }

  else
  {
    sub_1B77FFF38();
    v27 = v28;
    (*(v24 + 8))(v16, v23);
  }

  v29 = v19;
  v30 = v41;
  v31 = [objc_allocWithZone(v45) initWithContext_];
  v32 = v42;
  v33 = sub_1B77FF598();
  [v31 setData_];

  v34 = sub_1B7800838();

  [v31 setName_];

  v35 = v44;
  if (v27)
  {
    v36 = sub_1B7800838();
  }

  else
  {
    v36 = 0;
  }

  [v31 setMimeType_];

  if (v48)
  {
    v37 = sub_1B7800838();
  }

  else
  {
    v37 = 0;
  }

  [v31 setLocalizationName_];

  sub_1B720A388(v32, v30);
  (*(v35 + 8))(a3, v29);
  return v31;
}

uint64_t sub_1B7263FD4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7264030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ManagedAccountBalance.__allocating_init(_:account:context:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1B726602C(a1, a2, a3);

  return v5;
}

{
  v5 = sub_1B7266780(a1, a2, a3);

  return v5;
}

void sub_1B7264190(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    [v4 decimalValue];
    v6 = DWORD2(v16);
    v8 = v15;
    v7 = v16;
    v9 = [v2 currency];
    v10 = sub_1B7800868();
    v12 = v11;

    CurrencyAmount.init(_:currencyCode:)(v8, v7, v6, v10, v12, &v15);
    v13 = v16;
    v14 = v17;
    *a2 = v15;
  }

  else
  {
    *a2 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *(a2 + 8) = v13;
  *(a2 + 24) = v14;
}

void sub_1B7264288(SEL *a1@<X0>, const char *a2@<X1>, char *a3@<X8>)
{
  v6 = [v3 *a1];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shortValue];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
      }

      else
      {
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v10 = sub_1B78000B8();
        __swift_project_value_buffer(v10, qword_1EDAF65B0);
        v11 = v7;
        v12 = sub_1B7800098();
        v13 = sub_1B78011D8();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 33554688;
          *(v14 + 4) = [v11 shortValue];

          _os_log_impl(&dword_1B7198000, v12, v13, a2, v14, 6u);
          MEMORY[0x1B8CA7A40](v14, -1, -1);
        }

        else
        {
        }

        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2;
  }

  *a3 = v9;
}

uint64_t sub_1B7264400(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1B77FF988();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = sub_1B77FFA18();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v4);
  v47 = a3;
  v18 = [v17 initWithContext_];
  sub_1B77FFA08();
  v19 = sub_1B77FF9B8();
  v20 = *(v14 + 8);
  v20(v16, v13);
  [v18 setId_];

  v46 = a2;
  v21 = [a2 publicAccountObject];
  v22 = [v21 id];

  sub_1B77FF9E8();
  v23 = sub_1B77FF9B8();
  v20(v16, v13);
  [v18 setAccountId_];

  v24 = [a1 totalBalance];
  [v18 setAvailableAmountValue_];

  v25 = [a1 creditDebitIndicator];
  if (v25)
  {
    if (v25 != 1)
    {
      goto LABEL_18;
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v18 setAvailableAmountCreditDebitIndicatorValue_];

  v28 = [a1 currentBalance];
  [v18 setBookedAmountValue_];

  v25 = [a1 creditDebitIndicator];
  if (v25)
  {
    if (v25 == 1)
    {
      v29 = 1;
      goto LABEL_9;
    }

LABEL_18:
    v49 = 0;
    v50 = 0xE000000000000000;
    v42 = v25;
    sub_1B7801A78();
    MEMORY[0x1B8CA4D30](0xD000000000000029, 0x80000001B7876650);
    v48 = v42;
    type metadata accessor for FKCreditDebitIndicator(0);
    sub_1B7801C48();
    result = sub_1B7801C88();
    __break(1u);
    return result;
  }

  v29 = 0;
LABEL_9:
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  [v18 setBookedAmountCreditDebitIndicatorValue_];

  v31 = [a1 lastUpdated];
  if (v31)
  {
    v32 = v31;
    sub_1B77FF928();

    v33 = sub_1B77FF8B8();
    v35 = v44;
    v34 = v45;
    (*(v44 + 8))(v12, v45);
  }

  else
  {
    v33 = 0;
    v35 = v44;
    v34 = v45;
  }

  [v18 setAvailableAmountAsOf_];

  v36 = [a1 lastUpdated];
  if (v36)
  {
    v37 = v43;
    v38 = v36;
    sub_1B77FF928();

    v39 = sub_1B77FF8B8();
    (*(v35 + 8))(v37, v34);
  }

  else
  {
    v39 = 0;
  }

  [v18 setBookedAmountAsOf_];

  v40 = [a1 currency];
  if (!v40)
  {
    sub_1B7800868();
    v40 = sub_1B7800838();
  }

  [v18 setCurrency_];

  return v18;
}

void sub_1B7264968(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_1B77FF9E8();
}

uint64_t sub_1B72649C4@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1B77FF928();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B77FF988();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1B7264A64(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void sub_1B7264BA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 currency];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedAccountBalance.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAccountBalance.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAccountBalance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ManagedAccountBalance.ValidationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t sub_1B7264E7C(SEL *a1)
{
  v3 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FD70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v13.super_class = ObjectType;
  v14[0] = 0;
  v13.receiver = v3;
  if (objc_msgSendSuper2(&v13, *a1, v14))
  {
    v8 = v14[0];
    BalanceCalculation.init(managedAccountBalance:)(v3, v7);
    v9 = type metadata accessor for BalanceCalculation(0);
    v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
    result = sub_1B7205418(v7, &qword_1EB98FD70);
    if (v10 != 1)
    {
      return result;
    }

    sub_1B726710C();
    swift_allocError();
  }

  else
  {
    v12 = v14[0];
    sub_1B77FF318();
  }

  return swift_willThrow();
}

uint64_t sub_1B7265030(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

uint64_t AccountBalance.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990548);
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v121 - v4;
  v157 = sub_1B77FF988();
  v149 = *(v157 - 8);
  v5 = MEMORY[0x1EEE9AC00](v157);
  v135 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v134 = &v121 - v7;
  v146 = type metadata accessor for Balance(0);
  v154 = *(v146 - 8);
  v8 = MEMORY[0x1EEE9AC00](v146);
  v133 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v132 = &v121 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v131 = (&v121 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v130 = (&v121 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990550);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v147 = &v121 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v121 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v140 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v142 = &v121 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v139 = &v121 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v141 = &v121 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v158 = &v121 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v121 - v32;
  v34 = sub_1B77FFA18();
  v152 = *(v34 - 8);
  v153 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v121 - v38;
  v40 = [a1 id];
  v151 = v39;
  sub_1B77FF9E8();

  v41 = [a1 accountId];
  v150 = v37;
  sub_1B77FF9E8();

  v42 = [a1 availableAmountValue];
  if (v42)
  {
    v43 = v42;
    [v42 decimalValue];
    v44 = v161;
    v45 = v159;
    v46 = v160;
    v47 = [a1 currency];
    v48 = sub_1B7800868();
    v50 = v49;

    CurrencyAmount.init(_:currencyCode:)(v45, v46, v44, v48, v50, &v159);
    v122 = v159;
    v125 = v160;
    v124 = v161;
    v123 = v162;
    v148 = v163;
  }

  else
  {
    v122 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
    v148 = 0;
  }

  v51 = [a1 availableAmountAsOf];
  v155 = a2;
  if (v51)
  {
    v52 = v51;
    sub_1B77FF928();
  }

  v53 = v33;
  v54 = *(v149 + 56);
  v145 = v53;
  v54();
  sub_1B7264288(&selRef_availableAmountCreditDebitIndicatorValue, "Unexpected raw value for available CreditDebitIndicator: %hd.", &v164);
  v136 = v164;
  v55 = [a1 bookedAmountValue];
  if (v55)
  {
    v56 = v55;
    [v55 decimalValue];
    v57 = v161;
    v59 = v159;
    v58 = v160;
    v60 = [a1 currency];
    v61 = sub_1B7800868();
    v63 = v62;

    CurrencyAmount.init(_:currencyCode:)(v59, v58, v57, v61, v63, &v159);
    v126 = v159;
    v129 = v160;
    v128 = v161;
    v127 = v162;
    v64 = v163;
  }

  else
  {
    v126 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v64 = 0;
  }

  v65 = v158;
  v66 = [a1 bookedAmountAsOf];
  if (v66)
  {
    v67 = v66;
    sub_1B77FF928();

    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = v149;
  v70 = v157;
  (v54)(v65, v68, 1, v157);
  sub_1B7264288(&selRef_bookedAmountCreditDebitIndicatorValue, "Unexpected raw value for booked CreditDebitIndicator: %hd.", &v159);
  v137 = v159;
  v71 = *(v152 + 16);
  v72 = v155;
  v73 = v153;
  v71(v155, v151, v153);
  v149 = type metadata accessor for AccountBalance(0);
  v71(v72 + *(v149 + 20), v150, v73);
  v74 = v145;
  v75 = v141;
  sub_1B7205588(v145, v141, &qword_1EB98EBD0);
  if (!v148)
  {
    sub_1B7205418(v75, &qword_1EB98EBD0);
    v79 = 1;
    v78 = v146;
    goto LABEL_16;
  }

  v76 = v139;
  sub_1B7205340(v75, v139);
  v77 = (*(v69 + 48))(v76, 1, v70);
  v78 = v146;
  if (v77 == 1)
  {

    sub_1B7205418(v76, &qword_1EB98EBD0);
    v79 = 1;
LABEL_16:
    v80 = v154;
    v81 = v158;
    goto LABEL_21;
  }

  v82 = *(v69 + 32);
  v83 = v134;
  v82(v134, v76, v70);
  v84 = v70;
  v81 = v158;
  if (v136 == 2)
  {
    (*(v69 + 8))(v83, v70);

    v79 = 1;
  }

  else
  {
    v85 = v130;
    v86 = HIDWORD(v122);
    *v130 = v122;
    *(v85 + 4) = v86;
    v87 = v124;
    v88 = v125;
    *(v85 + 6) = HIWORD(v86);
    *(v85 + 8) = v88;
    *(v85 + 16) = v87;
    v89 = v148;
    *(v85 + 24) = v123;
    *(v85 + 32) = v89;
    v82((v85 + *(v78 + 20)), v83, v84);
    *(v85 + *(v78 + 24)) = v136 & 1;
    sub_1B7267324(v85, v156, type metadata accessor for Balance);
    v79 = 0;
  }

  v80 = v154;
LABEL_21:
  v90 = *(v80 + 56);
  v90(v156, v79, 1, v78);
  v91 = v142;
  sub_1B7205588(v81, v142, &qword_1EB98EBD0);
  if (!v64)
  {
    v94 = v91;
    goto LABEL_25;
  }

  v92 = v140;
  sub_1B7205340(v91, v140);
  v93 = v157;
  if ((*(v69 + 48))(v92, 1, v157) == 1)
  {

    v94 = v92;
LABEL_25:
    sub_1B7205418(v94, &qword_1EB98EBD0);
    v95 = 1;
    v96 = v147;
    goto LABEL_30;
  }

  v97 = *(v69 + 32);
  v98 = v92;
  v99 = v135;
  v97(v135, v98, v93);
  if (v137 == 2)
  {
    (*(v69 + 8))(v99, v93);

    v95 = 1;
    v78 = v146;
    v96 = v147;
  }

  else
  {
    v100 = v131;
    v101 = HIDWORD(v126);
    *v131 = v126;
    *(v100 + 4) = v101;
    v102 = v128;
    v103 = v129;
    *(v100 + 6) = HIWORD(v101);
    *(v100 + 8) = v103;
    *(v100 + 16) = v102;
    *(v100 + 24) = v127;
    *(v100 + 32) = v64;
    v104 = v146;
    v97((v100 + *(v146 + 20)), v99, v93);
    v78 = v104;
    *(v100 + *(v104 + 24)) = v137 & 1;
    v96 = v147;
    sub_1B7267324(v100, v147, type metadata accessor for Balance);
    v95 = 0;
  }

  v74 = v145;
LABEL_30:
  v90(v96, v95, 1, v78);
  v105 = *(v143 + 48);
  v106 = v156;
  v107 = v144;
  sub_1B7205588(v156, v144, &qword_1EB990550);
  sub_1B7205588(v96, v107 + v105, &qword_1EB990550);
  v108 = v96;
  v109 = *(v154 + 48);
  if (v109(v107, 1, v78) != 1)
  {

    sub_1B7205418(v108, &qword_1EB990550);
    sub_1B7205418(v106, &qword_1EB990550);
    v112 = v78;
    sub_1B7205418(v158, &qword_1EB98EBD0);
    sub_1B7205418(v74, &qword_1EB98EBD0);
    v113 = v153;
    v114 = *(v152 + 8);
    v114(v150, v153);
    v114(v151, v113);
    v115 = v138;
    sub_1B7205588(v107, v138, &qword_1EB990550);
    if (v109(v107 + v105, 1, v112) == 1)
    {
      sub_1B7267324(v115, v155 + *(v149 + 24), type metadata accessor for Balance);
    }

    else
    {
      v116 = v132;
      sub_1B7267324(v115, v132, type metadata accessor for Balance);
      v117 = v133;
      sub_1B7267324(v107 + v105, v133, type metadata accessor for Balance);
      v118 = v155 + *(v149 + 24);
      v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990558) + 48);
      sub_1B7267324(v116, v118, type metadata accessor for Balance);
      sub_1B7267324(v117, v118 + v119, type metadata accessor for Balance);
    }

    type metadata accessor for CurrentBalance(0);
    goto LABEL_37;
  }

  if (v109(v107 + v105, 1, v78) != 1)
  {

    sub_1B7205418(v147, &qword_1EB990550);
    sub_1B7205418(v106, &qword_1EB990550);
    sub_1B7205418(v158, &qword_1EB98EBD0);
    sub_1B7205418(v74, &qword_1EB98EBD0);
    v110 = v153;
    v111 = *(v152 + 8);
    v111(v150, v153);
    v111(v151, v110);
    sub_1B7267324(v107 + v105, v155 + *(v149 + 24), type metadata accessor for Balance);
    type metadata accessor for CurrentBalance(0);
LABEL_37:
    swift_storeEnumTagMultiPayload();
    return sub_1B7205418(v107, &qword_1EB990550);
  }

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

id sub_1B726602C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v52 = type metadata accessor for BalanceCalculation.CalculationDetails(0);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for BalanceCalculation(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B77FFA18();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(v4) initWithContext_];
  v20 = sub_1B77FF9B8();
  [v19 setId_];

  v21 = [a2 publicAccountObject];
  v22 = [v21 id];

  sub_1B77FF9E8();
  v23 = sub_1B77FF9B8();
  (*(v16 + 8))(v18, v15);
  v24 = a1;
  [v19 setAccountId_];

  v25 = type metadata accessor for InternalAccountBalance(0);
  sub_1B72672BC(a1 + *(v25 + 20), v14, type metadata accessor for BalanceCalculation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FAC8) + 48);
      sub_1B7267324(v14, v11, type metadata accessor for BalanceCalculation.CalculationDetails);
      v39 = v51;
      sub_1B7267324(&v14[v38], v51, type metadata accessor for BalanceCalculation.CalculationDetails);
      v55 = *v11;
      v56 = *(v11 + 4);
      v40 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v57 = v55;
      v58 = v56;
      v41 = [v40 initWithDecimal_];
      [v19 setAvailableAmountValue_];

      v42 = v52;
      v43 = sub_1B77FF8B8();
      [v19 setAvailableAmountAsOf_];

      v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      [v19 setAvailableAmountCreditDebitIndicatorValue_];

      v57 = *v39;
      v58 = *(v39 + 16);
      v24 = a1;
      v45 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v53 = v57;
      v54 = v58;
      v46 = [v45 initWithDecimal_];
      [v19 setBookedAmountValue_];

      v47 = sub_1B77FF8B8();
      [v19 setBookedAmountAsOf_];

      v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      [v19 setBookedAmountCreditDebitIndicatorValue_];

      sub_1B726738C(v39, type metadata accessor for BalanceCalculation.CalculationDetails);
      v37 = v11;
      goto LABEL_7;
    }

    sub_1B7267324(v14, v11, type metadata accessor for BalanceCalculation.CalculationDetails);
    [v19 setAvailableAmountValue_];
    [v19 setAvailableAmountAsOf_];
    [v19 setAvailableAmountCreditDebitIndicatorValue_];
    v57 = *v11;
    v58 = *(v11 + 4);
    v27 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v55 = v57;
    v56 = v58;
    v28 = [v27 initWithDecimal_];
    [v19 setBookedAmountValue_];

    v29 = v52;
    v30 = sub_1B77FF8B8();
    [v19 setBookedAmountAsOf_];

    v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    [v19 setBookedAmountCreditDebitIndicatorValue_];
  }

  else
  {
    sub_1B7267324(v14, v11, type metadata accessor for BalanceCalculation.CalculationDetails);
    v57 = *v11;
    v58 = *(v11 + 4);
    v32 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v55 = v57;
    v56 = v58;
    v33 = [v32 initWithDecimal_];
    [v19 setAvailableAmountValue_];

    v34 = v52;
    v35 = sub_1B77FF8B8();
    [v19 setAvailableAmountAsOf_];

    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    [v19 setAvailableAmountCreditDebitIndicatorValue_];

    [v19 setBookedAmountValue_];
    [v19 setBookedAmountAsOf_];
    [v19 setBookedAmountCreditDebitIndicatorValue_];
  }

  v37 = v11;
LABEL_7:
  sub_1B726738C(v37, type metadata accessor for BalanceCalculation.CalculationDetails);
  BalanceCalculation.currencyCode.getter();
  v49 = sub_1B7800838();

  [v19 setCurrency_];

  sub_1B726738C(v24, type metadata accessor for InternalAccountBalance);
  return v19;
}

id sub_1B7266780(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v76 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v81 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v69 - v14;
  v16 = sub_1B77FFA18();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(v4) initWithContext_];
  sub_1B77FFA08();
  v21 = sub_1B77FF9B8();
  v22 = *(v17 + 8);
  v22(v19, v16);
  [v20 setId_];

  v23 = [a2 publicAccountObject];
  v24 = [v23 id];

  sub_1B77FF9E8();
  v25 = sub_1B77FF9B8();
  v22(v19, v16);
  [v20 setAccountId_];

  v26 = RawBankConnectData.Account.availableBalance.getter();
  v29 = 0;
  if ((v28 & 0x100000000) == 0)
  {
    v30 = HIDWORD(v26);
    v31 = HIWORD(v26);
    v32 = v27 >> 16;
    v73 = HIDWORD(v27);
    v78 = HIWORD(v27);
    v33 = v28 >> 16;
    v34 = v15;
    v35 = v26;
    v36 = v20;
    v37 = a1;
    v38 = v28;
    v39 = v27;
    v40 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v82 = v35;
    v15 = v34;
    v83 = v30;
    v84 = v31;
    v85 = v39;
    v86 = v32;
    v87 = v73;
    v88 = v78;
    v89 = v38;
    a1 = v37;
    v20 = v36;
    v90 = v33;
    v29 = [v40 initWithDecimal_];
  }

  [v20 setAvailableAmountValue_];

  RawBankConnectData.Account.availableBalanceAsOf.getter(v15);
  v41 = sub_1B77FF988();
  v42 = *(v41 - 8);
  v78 = *(v42 + 48);
  v43 = 0;
  if (v78(v15, 1, v41) != 1)
  {
    v43 = sub_1B77FF8B8();
    (*(v42 + 8))(v15, v41);
  }

  [v20 setAvailableAmountAsOf_];

  RawBankConnectData.Account.availableBalanceCreditDebitIndicator.getter(&v82);
  v44 = 0x1E696A000uLL;
  v45 = &off_1E7CAF000;
  if (v82 == 2)
  {
    v46 = 0;
  }

  else
  {
    v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  }

  [v20 setAvailableAmountCreditDebitIndicatorValue_];

  v47 = RawBankConnectData.Account.bookedBalance.getter();
  if ((v49 & 0x100000000) != 0)
  {
    v59 = 0;
  }

  else
  {
    v73 = a1;
    v50 = HIDWORD(v47);
    v51 = HIWORD(v47);
    v52 = v48 >> 16;
    v70 = HIDWORD(v48);
    v71 = HIWORD(v48);
    v72 = v49 >> 16;
    v53 = v47;
    v54 = v20;
    v55 = v49;
    v56 = v42;
    v57 = v48;
    v58 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v82 = v53;
    v83 = v50;
    v84 = v51;
    v85 = v57;
    v42 = v56;
    v86 = v52;
    v45 = &off_1E7CAF000;
    v87 = v70;
    v88 = v71;
    v89 = v55;
    v20 = v54;
    v44 = 0x1E696A000;
    a1 = v73;
    v90 = v72;
    v59 = [v58 initWithDecimal_];
  }

  [v20 setBookedAmountValue_];

  v60 = v81;
  RawBankConnectData.Account.bookedBalanceAsOf.getter(v81);
  if (v78(v60, 1, v41) == 1)
  {
    v61 = 0;
  }

  else
  {
    v62 = v81;
    v61 = sub_1B77FF8B8();
    (*(v42 + 8))(v62, v41);
  }

  [v20 setBookedAmountAsOf_];

  RawBankConnectData.Account.bookedBalanceCreditDebitIndicator.getter(&v82);
  if (v82 == 2)
  {
    v63 = 0;
  }

  else
  {
    v63 = [objc_allocWithZone(*(v44 + 3480)) v45[112]];
  }

  [v20 setBookedAmountCreditDebitIndicatorValue_];

  v64 = v80;
  sub_1B72672BC(a1, v80, type metadata accessor for RawBankConnectData.Account);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v77;
    sub_1B7267324(v64, v77, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B734074C();
    v66 = type metadata accessor for RawBankConnectData.LiabilityAccount;
  }

  else
  {
    v65 = v75;
    sub_1B7267324(v64, v75, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B734074C();
    v66 = type metadata accessor for RawBankConnectData.AssetAccount;
  }

  sub_1B726738C(v65, v66);
  v67 = sub_1B7800838();

  [v20 setCurrency_];

  sub_1B726738C(a1, type metadata accessor for RawBankConnectData.Account);
  return v20;
}

void _s10FinanceKit21ManagedAccountBalanceC6update_23withAvailableAmountAsOf0g6BookedijK0yAC_10Foundation4DateVSgAJtFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1B7205588(a2, &v17 - v10, &qword_1EB98EBD0);
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = 0;
  if (v14(v11, 1, v12) != 1)
  {
    v15 = sub_1B77FF8B8();
    (*(v13 + 8))(v11, v12);
  }

  [a1 setAvailableAmountAsOf_];

  sub_1B7205588(a3, v9, &qword_1EB98EBD0);
  if (v14(v9, 1, v12) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_1B77FF8B8();
    (*(v13 + 8))(v9, v12);
  }

  [a1 setBookedAmountAsOf_];
}

unint64_t sub_1B726710C()
{
  result = qword_1EB990540;
  if (!qword_1EB990540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990540);
  }

  return result;
}

unint64_t sub_1B7267164()
{
  result = qword_1EB990560;
  if (!qword_1EB990560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990560);
  }

  return result;
}

void keypath_setTm_0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1B77FF9B8();
  [v6 *a5];
}

uint64_t sub_1B72672BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7267324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B726738C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BankConnectService.showBackgroundRefreshAlert(_:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = type metadata accessor for BankConnectService.Message();
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7267484, 0, 0);
}

uint64_t sub_1B7267484()
{
  **(v0 + 32) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7267548;
  v2 = *(v0 + 32);

  return sub_1B72676AC(v2);
}

uint64_t sub_1B7267548()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7228988, 0, 0);
}

uint64_t sub_1B72676AC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v2[22] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72677A8, 0, 0);
}

uint64_t sub_1B72677A8()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1B726784C;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726784C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72679A8, 0, 0);
}

uint64_t sub_1B72679A8()
{
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 160) + *(**(v0 + 160) + 120), *(v0 + 176), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 176), &qword_1EB990578);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7267BEC, 0, 0);
}

uint64_t sub_1B7267BEC()
{
  v1 = v0[20];
  v0[10] = v0;
  v0[11] = sub_1B7267C90;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7267C90()
{
  v1 = *(*v0 + 112);
  *(*v0 + 216) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B7269334;
  }

  else
  {
    v2 = sub_1B7269330;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7267DAC(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectService.Message();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7267E08(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[22] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7267F04, 0, 0);
}

uint64_t sub_1B7267F04()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1B7267FA8;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7267FA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7268104, 0, 0);
}

uint64_t sub_1B7268104()
{
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 160) + *(**(v0 + 160) + 120), *(v0 + 176), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 176), &qword_1EB990570);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268348, 0, 0);
}

uint64_t sub_1B7268348()
{
  v1 = v0[20];
  v0[10] = v0;
  v0[11] = sub_1B72683EC;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72683EC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 216) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B7268598;
  }

  else
  {
    v2 = sub_1B7268508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7268508()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7268598()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.updateAccountBackgroundRefreshUserPreference(fullyQualifiedAccountIdentifiers:userPreference:asOf:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for BankConnectService.Message();
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 72) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B72686D8, 0, 0);
}

uint64_t sub_1B72686D8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990568) + 64);
  *v2 = v4;
  *(v2 + 8) = v1;
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(v2 + v5, v3, v6);
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1B7268824;
  v8 = *(v0 + 48);

  return sub_1B72676AC(v8);
}

uint64_t sub_1B7268824()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268988, 0, 0);
}

uint64_t sub_1B7268988()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72689EC(char a1)
{
  *(v2 + 56) = a1;
  *(v2 + 16) = type metadata accessor for BankConnectService.Message();
  v3 = swift_task_alloc();
  v4 = *v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B7268A84, 0, 0);
}

uint64_t sub_1B7268A84()
{
  **(v0 + 24) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7268B48;
  v2 = *(v0 + 24);

  return sub_1B72676AC(v2);
}

uint64_t sub_1B7268B48()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7268CAC, 0, 0);
}

uint64_t sub_1B7268CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7268D10(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a3;
  *(v4 + 32) = type metadata accessor for BankConnectService.Message();
  v6 = swift_task_alloc();
  v7 = *v3;
  *(v4 + 40) = v6;
  *(v4 + 48) = v7;
  *(v4 + 72) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B7268DB4, 0, 0);
}

uint64_t sub_1B7268DB4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990568) + 64);
  *v2 = v4;
  *(v2 + 8) = v1;
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(v2 + v5, v3, v6);
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1B7268F00;
  v8 = *(v0 + 40);

  return sub_1B72676AC(v8);
}

uint64_t sub_1B7268F00()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7269064, 0, 0);
}

uint64_t sub_1B7269064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of BankConnectConnectionBackgroundRefreshing.showBackgroundRefreshAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B723838C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectConnectionBackgroundRefreshing.updateAccountBackgroundRefreshUserPreference(fullyQualifiedAccountIdentifiers:userPreference:asOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B7201BB0;

  return v13(a1, a2, a3, a4, a5);
}

void validateRelationshipExists<A, B>(object:keyPath:)(void *a1)
{
  sub_1B7205540(0, &qword_1EB990580);

  v2 = sub_1B7801138();
  v3 = [v2 keyPath];

  v4 = v3;
  if (!v3)
  {
    sub_1B7800868();
    v4 = sub_1B7800838();
  }

  v5 = sub_1B7800868();
  v7 = v6;
  v8 = [a1 valueForKeyPath_];

  if (v8)
  {
    sub_1B7801848();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (!*(&v18 + 1))
  {
    sub_1B726990C(v19);
    goto LABEL_11;
  }

  sub_1B7205540(0, &qword_1EB990590);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = v16;
  if (([v16 isDeleted] & 1) == 0)
  {

LABEL_14:

    return;
  }

LABEL_12:
  v10 = [a1 entity];
  v11 = [v10 name];

  if (v11)
  {
    v12 = sub_1B7800868();
    v14 = v13;

    sub_1B7269974();
    swift_allocError();
    *v15 = v12;
    *(v15 + 8) = v14;
    *(v15 + 16) = v5;
    *(v15 + 24) = v7;
    *(v15 + 32) = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t _s10FinanceKit28ManagedObjectValidationErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      v13 = v3 == v7 && v2 == v6;
      if (v13 || (sub_1B78020F8() & 1) != 0)
      {
        if (v5 != v9 || v4 != v8)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

LABEL_14:
    sub_1B7269A94();
    sub_1B7269A94();
    sub_1B7269AD0();
    sub_1B7269AD0();
    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = v3 == v7 && v2 == v6;
  if (!v10 && (sub_1B78020F8() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v5 != v9 || v4 != v8)
  {
LABEL_24:
    v15 = sub_1B78020F8();
    sub_1B7269A94();
    sub_1B7269A94();
    sub_1B7269AD0();
    sub_1B7269AD0();
    return v15 & 1;
  }

LABEL_25:
  sub_1B7269A94();
  sub_1B7269A94();
  sub_1B7269AD0();
  sub_1B7269AD0();
  return 1;
}

uint64_t sub_1B726990C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7269974()
{
  result = qword_1EB990588;
  if (!qword_1EB990588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990588);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B72699E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B7269A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B7269A94()
{
}

uint64_t sub_1B7269AD0()
{
}

uint64_t ContentPackageReader.returnLabelUrl(named:localization:preferUnlocalized:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v13 = sub_1B77FF4F8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = v6;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v17 = *(v6 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v14 + 16))(v16, v6 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v13);
  v20 = v16;
  v21 = sub_1B7269DCC;
  v22 = &v23;
  os_unfair_lock_lock((v17 + 24));
  sub_1B726A6E8((v17 + 16), a6);
  os_unfair_lock_unlock((v17 + 24));
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1B7269CA4@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B7807CD0;
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    v15 = a1;

    ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)(v14, 0, 0, v15, a4, a5, a6 & 1, a7);
  }

  else
  {
    v17 = sub_1B77FF4F8();
    return (*(*(v17 - 8) + 56))(a7, 1, 1, v17);
  }
}

uint64_t ContentPackageReader.returnLabelUrls(named:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v3;
  v19 = a1;
  v20 = a2;
  v11 = *(v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
  v14 = v10;
  v15 = sub_1B726A708;
  v16 = &v17;
  os_unfair_lock_lock((v11 + 24));
  sub_1B726A6E8((v11 + 16), a3);
  os_unfair_lock_unlock((v11 + 24));
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B7269F70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v73 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v60 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v60 - v20;
  v21 = sub_1B77FF4F8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v65 = &v60 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  if (a1)
  {
    v63 = v29;
    v60 = &v60 - v28;
    v62 = a5;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
    inited = swift_initStackObject();
    v69 = xmmword_1B7807CD0;
    *(inited + 16) = xmmword_1B7807CD0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    v61 = inited;
    v76 = v22 + 48;
    v31 = v22;
    v67 = (v22 + 32);
    swift_bridgeObjectRetain_n();
    v32 = a1;
    v71 = a3;
    v33 = sub_1B7800838();
    v75 = v32;
    v34 = [v32 URLForResource:v33 withExtension:0 subdirectory:0 localization:0];

    if (v34)
    {
      sub_1B77FF478();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = *(v31 + 56);
    v37(v14, v35, 1, v21);
    sub_1B726A728(v14, v17);
    v74 = *(v31 + 48);
    if (v74(v17, 1, v21) == 1)
    {
      sub_1B726A798(v17);
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v39 = a4;
      v40 = *v67;
      (*v67)(v63, v17, v21);
      v38 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1B723E714(0, v38[2] + 1, 1, v38);
      }

      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        v38 = sub_1B723E714(v41 > 1, v42 + 1, 1, v38);
      }

      v38[2] = v42 + 1;
      v40((v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v42), v63, v21);
      a4 = v39;
    }

    v43 = v64;
    if (v38[2])
    {
      (*(v31 + 16))(v64, v38 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v21);
      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v37(v43, v44, 1, v21);
    v45 = v68;
    sub_1B726A728(v43, v68);
    if (v74(v45, 1, v21) == 1)
    {
      sub_1B726A798(v45);
      v46 = [v75 localizations];
      v47 = sub_1B7800C38();

      v48 = *(v47 + 16);
      v61 = v47;
      if (v48)
      {
        v68 = a4;
        v63 = (v31 + 8);
        v64 = (v31 + 16);
        v49 = (v47 + 40);
        v50 = MEMORY[0x1E69E7CC8];
        do
        {
          v52 = *(v49 - 1);
          v51 = *v49;
          v53 = swift_allocObject();
          *(v53 + 16) = v69;
          *(v53 + 32) = v71;
          *(v53 + 40) = v68;

          v54 = v72;
          ContentPackageReader.fileUrl(possibleNames:ext:bundle:localization:preferUnlocalized:)(v53, 0, 0, v75, v52, v51, 0, v72);

          if (v74(v54, 1, v21) == 1)
          {

            sub_1B726A798(v54);
          }

          else
          {
            v55 = v65;
            (*v67)(v65, v54, v21);
            v56 = v66;
            (*v64)(v66, v55, v21);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77 = v50;
            sub_1B7392814(v56, v52, v51, isUniquelyReferenced_nonNull_native);

            (*v63)(v55, v21);
            v50 = v77;
          }

          v49 += 2;
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = MEMORY[0x1E69E7CC8];
      }

      *v62 = v50;
      type metadata accessor for LocalizedURLMap();
    }

    else
    {

      v58 = *v67;
      v59 = v60;
      (*v67)(v60, v45, v21);
      v58(v62, v59, v21);
      type metadata accessor for LocalizedURLMap();
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a5 = sub_1B7202854(MEMORY[0x1E69E7CC0]);
    type metadata accessor for LocalizedURLMap();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B726A728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B726A798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MapsInsightsExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1B726AA10;
  a3[1] = v10;
  return result;
}

uint64_t sub_1B726A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v13[3] = a3;
  v13[4] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_1B719B06C(v13, v12);
  type metadata accessor for MapsInsightsExtensionModel();
  v9 = swift_allocObject();
  sub_1B71E4C44(v12, v9 + 16);
  v10 = *(a1 + 16);
  [v10 setExportedObject_];

  [v10 resume];
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t dispatch thunk of MapsInsightsExtensionProviding.mapsInsights(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FB60;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MapsInsightsExtensionProviding.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7201BB0;

  return v15(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6);
}

uint64_t dispatch thunk of MapsInsightsExtensionProviding.encodedStylingInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B726AE04;

  return v9(a1, a2, a3);
}

uint64_t sub_1B726AE04(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_1B726AF08()
{
  result = qword_1EB990598;
  if (!qword_1EB990598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9905A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990598);
  }

  return result;
}

uint64_t ManagedUserTransactionInsightImporter.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t ManagedUserTransactionInsightImporter.init()()
{
  type metadata accessor for ManagedTransactionCategoryImporter();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

void ManagedUserTransactionInsightImporter.insertOrUpdateInsight(_:on:in:)(void *a1, uint64_t a2, uint64_t a3)
{
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v7 = v6;
    v8 = [v6 userInsightObject];
    if (!v8)
    {
      type metadata accessor for ManagedUserTransactionInsight();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v7 setUserInsightObject_];
    }

    sub_1B726B38C(v8, a1);
  }
}

void ManagedUserTransactionInsightImporter.insertOrUpdateInsight(on:transactionCategory:transactionCategoryChangedAt:in:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a4);
  if (!v4)
  {
    v9 = v8;
    v10 = [v8 userInsightObject];
    if (!v10)
    {
      type metadata accessor for ManagedUserTransactionInsight();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v9 setUserInsightObject_];
    }

    [v10 setTransactionCategoryValue_];
    v11 = sub_1B77FF8B8();
    [v10 setUpdatedAt_];

    ManagedTransactionCategoryImporter.insertOrUpdateTransactionCategory(for:in:)(a1, a4);
  }
}

void ManagedUserTransactionInsightImporter.insertOrUpdateInsight(on:excludeFromSpendingSummary:in:)(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1B77FF988();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ManagedInternalTransaction.createOrMergeInsightsIfNeeded(in:)(a3);
  if (!v3)
  {
    v11 = v10;
    v12 = [v10 userInsightObject];
    if (!v12)
    {
      type metadata accessor for ManagedUserTransactionInsight();
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      [v11 setUserInsightObject_];
    }

    [v12 setExcludeFromSpendingSummary_];
    sub_1B77FF938();
    v13 = sub_1B77FF8B8();
    (*(v7 + 8))(v9, v6);
    [v12 setUpdatedAt_];
  }
}

uint64_t ManagedUserTransactionInsightImporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B726B38C(void *a1, void *a2)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TransactionCategory.init(_:)([a2 transactionCategory], &v21);
  ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)(v21);
  v8 = v20;
  if (v20 == 13)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v9 = sub_1B78000B8();
    __swift_project_value_buffer(v9, qword_1EDAFAF58);
    v10 = a2;
    v18 = sub_1B7800098();
    v11 = sub_1B78011D8();

    if (os_log_type_enabled(v18, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_1B7198000, v18, v11, "Failed to update a user insight with: %@. The category is not supported!", v12, 0xCu);
      sub_1B726B694(v13);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }

    v15 = v18;
  }

  else
  {
    ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([a1 transactionCategoryValue]);
    if (v19 == 13)
    {
      if (!v8)
      {
        return;
      }
    }

    else if (v19 == v8)
    {
      return;
    }

    v16 = [a2 updatedAt];
    sub_1B77FF928();

    [a1 setTransactionCategoryValue_];
    v17 = sub_1B77FF8B8();
    [a1 setUpdatedAt_];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1B726B694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9910D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BankConnectService.loadTransactions(for:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726B794, 0, 0);
}

uint64_t sub_1B726B794()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t sub_1B726B820()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B726B8C4;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726B8C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B726BA50;
  }

  else
  {
    v2 = sub_1B726B9E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B726B9E0()
{
  sub_1B7267DAC(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B726BA50()
{
  sub_1B7267DAC(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.loadTransactions(for:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B726BB6C, 0, 0);
}

uint64_t sub_1B726BB6C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B726BC10()
{
  v1 = v0[17];
  v0[2] = v0;
  v0[3] = sub_1B726BCB8;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726BCB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B726BE44;
  }

  else
  {
    v2 = sub_1B726BDD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B726BDD4()
{
  sub_1B7267DAC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B726BE44()
{
  sub_1B7267DAC(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B726BEB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectService.loadTransactions(for:)(a1, a2);
}

uint64_t sub_1B726BF5C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.loadTransactions(for:)(a1);
}

uint64_t dispatch thunk of BankConnectTransactionsUpdating.loadTransactions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectTransactionsUpdating.loadTransactions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

void sub_1B726C24C(id *a1, uint64_t a2, uint64_t a3, SEL *a4, void (*a5)(void))
{
  v6 = [*a1 *a4];
  a5();
}

uint64_t sub_1B726C2B0(void **a1, void **a2)
{
  v4 = sub_1B77FFA18();
  v32 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - v7;
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = [v15 updatedAt];
  sub_1B77FF928();

  v18 = [v16 updatedAt];
  sub_1B77FF928();

  LOBYTE(v18) = sub_1B77FF918();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  if (v18)
  {
    v20 = [v15 id];
    v21 = v30;
    sub_1B77FF9E8();

    v22 = [v16 id];
    v23 = v31;
    sub_1B77FF9E8();

    sub_1B726E4E4();
    v24 = sub_1B78007D8();
    v25 = *(v32 + 8);
    v25(v23, v4);
    v25(v21, v4);
  }

  else
  {
    v26 = [v15 updatedAt];
    sub_1B77FF928();

    v27 = [v16 updatedAt];
    sub_1B77FF928();

    v24 = sub_1B77FF8C8();
    v19(v12, v8);
    v19(v14, v8);
  }

  return v24 & 1;
}

id ManagedFinHealthIncomeInsight.__allocating_init(insight:context:)(uint64_t a1, void *a2)
{
  v5 = sub_1B77FF988();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(v2) initWithContext_];
  v10 = sub_1B77FF9B8();
  [v9 setId_];

  sub_1B77FF938();
  v11 = sub_1B77FF8B8();
  (*(v6 + 8))(v8, v5);
  [v9 setUpdatedAt_];

  sub_1B726C754(a1);
  return v9;
}

uint64_t sub_1B726C754(uint64_t a1)
{
  v2 = type metadata accessor for FinHealthTransactionInsight.Income(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall ManagedFinHealthIncomeInsight.willSave()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B77FF988();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_willSave);
  if (([v1 isDeleted] & 1) == 0)
  {
    v7 = sub_1B7800838();
    v8 = [v1 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v9 = sub_1B7800C38();

    if (v9 >> 62)
    {
      v13 = sub_1B7801958();

      if (v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
LABEL_4:
        if (![v1 hasChanges])
        {
          return;
        }

        sub_1B77FF978();
        v11 = sub_1B77FF8B8();
        (*(v4 + 8))(v6, v3);
        v12 = sub_1B7800838();
        [v1 setPrimitiveValue:v11 forKey:v12];

        goto LABEL_8;
      }
    }

    v12 = [v1 managedObjectContext];
    [v12 deleteObject_];
LABEL_8:
  }
}

id ManagedFinHealthIncomeInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedFinHealthIncomeInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedFinHealthIncomeInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedFinHealthIncomeInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedFinHealthIncomeInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B726CBF8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B77E6DD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1B726CC74(v6);
  return sub_1B7801B78();
}

void sub_1B726CC74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B7802038();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ManagedFinHealthIncomeInsight();
        v6 = sub_1B7800C78();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1B726D1A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B726CD74(0, v2, 1, a1);
  }
}

void sub_1B726CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_1B77FFA18();
  v8 = *(v54 - 8);
  v9 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v44 - v11;
  v59 = sub_1B77FF988();
  v12 = MEMORY[0x1EEE9AC00](v59);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v44 - v16;
  v45 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v57 = (v15 + 8);
    v58 = v18;
    v50 = (v8 + 8);
    v51 = &v44 - v16;
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
    v49 = v14;
LABEL_5:
    v47 = v19;
    v48 = a3;
    v21 = *(v58 + 8 * a3);
    v46 = v20;
    while (1)
    {
      v22 = *v19;
      v23 = v21;
      v24 = v22;
      v25 = v23;
      v26 = [v23 updatedAt];
      sub_1B77FF928();

      v60 = v24;
      v27 = [v24 updatedAt];
      sub_1B77FF928();

      LOBYTE(v27) = sub_1B77FF918();
      v28 = *v57;
      v29 = v59;
      (*v57)(v14, v59);
      v28(v17, v29);
      if (v27)
      {
        v30 = [v25 id];
        v31 = v52;
        sub_1B77FF9E8();

        v32 = [v60 id];
        v33 = v53;
        sub_1B77FF9E8();

        sub_1B726E4E4();
        v34 = v54;
        v55 = sub_1B78007D8();
        v35 = *v50;
        v36 = v33;
        v14 = v49;
        (*v50)(v36, v34);
        v37 = v31;
        v17 = v51;
        v35(v37, v34);

        if ((v55 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v56 = v25;
        v38 = [v25 updatedAt];
        sub_1B77FF928();

        v39 = v60;
        v40 = [v60 updatedAt];
        sub_1B77FF928();

        LOBYTE(v40) = sub_1B77FF8C8();
        v41 = v59;
        v28(v14, v59);
        v28(v17, v41);

        if ((v40 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v58)
      {
        break;
      }

      v42 = *v19;
      v21 = *(v19 + 8);
      *v19 = v21;
      *(v19 + 8) = v42;
      v19 -= 8;
      if (__CFADD__(v20++, 1))
      {
LABEL_4:
        a3 = v48 + 1;
        v19 = v47 + 8;
        v20 = v46 - 1;
        if (v48 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1B726D1A0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  v159 = sub_1B77FFA18();
  v8 = *(v159 - 8);
  v9 = MEMORY[0x1EEE9AC00](v159);
  v158 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v146 - v11;
  v164 = sub_1B77FF988();
  v12 = MEMORY[0x1EEE9AC00](v164);
  v163 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v146 - v15;
  v151 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v8 = *v150;
    if (!*v150)
    {
      goto LABEL_139;
    }

    v22 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v151;
    if (isUniquelyReferenced_nonNull_native)
    {
      v141 = v22;
LABEL_102:
      v169 = v141;
      v22 = *(v141 + 2);
      if (v22 >= 2)
      {
        while (*v21)
        {
          v142 = *&v141[16 * v22];
          v143 = v141;
          v144 = *&v141[16 * v22 + 24];
          sub_1B726DD94((*v21 + 8 * v142), (*v21 + 8 * *&v141[16 * v22 + 16]), (*v21 + 8 * v144), v8);
          if (v5)
          {
            goto LABEL_110;
          }

          if (v144 < v142)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_1B77E4CA4(v143);
          }

          if ((v22 - 2) >= *(v143 + 2))
          {
            goto LABEL_127;
          }

          v145 = &v143[16 * v22];
          *v145 = v142;
          *(v145 + 1) = v144;
          v169 = v143;
          sub_1B77E4C18(v22 - 1);
          v141 = v169;
          v22 = *(v169 + 2);
          if (v22 <= 1)
          {
            goto LABEL_110;
          }
        }

        goto LABEL_137;
      }

LABEL_110:

      return;
    }

LABEL_133:
    v141 = sub_1B77E4CA4(v22);
    goto LABEL_102;
  }

  v148 = a4;
  v18 = 0;
  v162 = (v14 + 8);
  v156 = (v8 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  v20 = &off_1E7CAF000;
  v161 = &v146 - v15;
  while (1)
  {
    v21 = v18;
    v22 = v18 + 1;
    if (v18 + 1 >= v17)
    {
      v52 = v151;
    }

    else
    {
      v149 = v19;
      v23 = *v151;
      v24 = *(*v151 + 8 * v22);
      v167 = *(*v151 + 8 * v18);
      v25 = v167;
      v168 = v24;
      v26 = v24;
      v8 = v25;
      LODWORD(v160) = sub_1B726C2B0(&v168, &v167);
      if (v5)
      {

        return;
      }

      v22 = v18 + 2;
      if (v18 + 2 < v17)
      {
        v147 = 0;
        v146 = v18;
        v27 = (v23 + 8 * v18 + 16);
        v154 = v17;
        do
        {
          v155 = v22;
          v37 = *(v27 - 1);
          v38 = *v27;
          v39 = v37;
          v40 = v38;
          v41 = [v38 v20[188]];
          sub_1B77FF928();

          v42 = v20[188];
          v166 = v39;
          v43 = [v39 v42];
          v44 = v163;
          sub_1B77FF928();

          LOBYTE(v43) = sub_1B77FF918();
          v45 = *v162;
          v8 = v16;
          v46 = v164;
          (*v162)(v44, v164);
          v45(v8, v46);
          v165 = v40;
          if (v43)
          {
            v28 = [v40 id];
            v29 = v157;
            sub_1B77FF9E8();

            v8 = v166;
            v30 = [v166 id];
            v31 = v158;
            sub_1B77FF9E8();

            sub_1B726E4E4();
            v32 = v159;
            v33 = sub_1B78007D8();
            v34 = *v156;
            v35 = v31;
            v20 = &off_1E7CAF000;
            v36 = v161;
            (*v156)(v35, v32);
            v34(v29, v32);

            if ((v160 ^ v33))
            {
              goto LABEL_12;
            }
          }

          else
          {
            v47 = [v40 v20[188]];
            sub_1B77FF928();

            v48 = v166;
            v49 = [v166 v20[188]];
            sub_1B77FF928();

            LODWORD(v49) = sub_1B77FF8C8();
            v50 = v164;
            v45(v44, v164);
            v51 = v48;
            v36 = v8;
            v45(v8, v50);

            if ((v160 ^ v49))
            {
LABEL_12:
              v22 = v155;
              v16 = v36;
              goto LABEL_15;
            }
          }

          v22 = v155 + 1;
          ++v27;
          v16 = v36;
        }

        while (v154 != v155 + 1);
        v22 = v154;
LABEL_15:
        v5 = v147;
        v21 = v146;
      }

      v52 = v151;
      v19 = v149;
      if (v160)
      {
        if (v22 < v21)
        {
          goto LABEL_132;
        }

        if (v21 < v22)
        {
          v53 = 8 * v22 - 8;
          v54 = 8 * v21;
          v55 = v22;
          v56 = v21;
          do
          {
            if (v56 != --v55)
            {
              v58 = *v52;
              if (!*v52)
              {
                goto LABEL_136;
              }

              v57 = *(v58 + v54);
              *(v58 + v54) = *(v58 + v53);
              *(v58 + v53) = v57;
            }

            ++v56;
            v53 -= 8;
            v54 += 8;
          }

          while (v56 < v55);
        }
      }
    }

    v59 = v52[1];
    if (v22 < v59)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_129;
      }

      if (v22 - v21 < v148)
      {
        break;
      }
    }

LABEL_46:
    if (v22 < v21)
    {
      goto LABEL_128;
    }

    v92 = v19;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v22;
    if (v93)
    {
      v19 = v92;
    }

    else
    {
      v19 = sub_1B723E420(0, *(v92 + 2) + 1, 1, v92);
    }

    v8 = *(v19 + 2);
    v94 = *(v19 + 3);
    v22 = v8 + 1;
    if (v8 >= v94 >> 1)
    {
      v19 = sub_1B723E420((v94 > 1), v8 + 1, 1, v19);
    }

    *(v19 + 2) = v22;
    v95 = &v19[16 * v8];
    v96 = v155;
    *(v95 + 4) = v21;
    *(v95 + 5) = v96;
    v166 = *v150;
    if (!v166)
    {
      goto LABEL_138;
    }

    if (v8)
    {
      while (1)
      {
        v8 = v22 - 1;
        if (v22 >= 4)
        {
          break;
        }

        if (v22 == 3)
        {
          v97 = *(v19 + 4);
          v98 = *(v19 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_66:
          if (v100)
          {
            goto LABEL_117;
          }

          v113 = &v19[16 * v22];
          v115 = *v113;
          v114 = *(v113 + 1);
          v116 = __OFSUB__(v114, v115);
          v117 = v114 - v115;
          v118 = v116;
          if (v116)
          {
            goto LABEL_120;
          }

          v119 = &v19[16 * v8 + 32];
          v121 = *v119;
          v120 = *(v119 + 1);
          v107 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v107)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v117, v122))
          {
            goto LABEL_124;
          }

          if (v117 + v122 >= v99)
          {
            if (v99 < v122)
            {
              v8 = v22 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v123 = &v19[16 * v22];
        v125 = *v123;
        v124 = *(v123 + 1);
        v107 = __OFSUB__(v124, v125);
        v117 = v124 - v125;
        v118 = v107;
LABEL_80:
        if (v118)
        {
          goto LABEL_119;
        }

        v126 = &v19[16 * v8];
        v128 = *(v126 + 4);
        v127 = *(v126 + 5);
        v107 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v107)
        {
          goto LABEL_122;
        }

        if (v129 < v117)
        {
          goto LABEL_3;
        }

LABEL_87:
        v134 = v8 - 1;
        if (v8 - 1 >= v22)
        {
          __break(1u);
LABEL_113:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v135 = *v52;
        if (!*v52)
        {
          goto LABEL_135;
        }

        v136 = v52;
        v137 = v19;
        v22 = *&v19[16 * v134 + 32];
        v21 = *&v19[16 * v8 + 40];
        sub_1B726DD94((v135 + 8 * v22), (v135 + 8 * *&v19[16 * v8 + 32]), (v135 + 8 * v21), v166);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v21 < v22)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v138 = v137;
        }

        else
        {
          v138 = sub_1B77E4CA4(v137);
        }

        if (v134 >= *(v138 + 2))
        {
          goto LABEL_114;
        }

        v52 = v136;
        v139 = &v138[16 * v134];
        *(v139 + 4) = v22;
        *(v139 + 5) = v21;
        v169 = v138;
        sub_1B77E4C18(v8);
        v19 = v169;
        v22 = *(v169 + 2);
        if (v22 <= 1)
        {
          goto LABEL_3;
        }
      }

      v101 = &v19[16 * v22 + 32];
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_115;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_116;
      }

      v108 = &v19[16 * v22];
      v110 = *v108;
      v109 = *(v108 + 1);
      v107 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v107)
      {
        goto LABEL_118;
      }

      v107 = __OFADD__(v99, v111);
      v112 = v99 + v111;
      if (v107)
      {
        goto LABEL_121;
      }

      if (v112 >= v104)
      {
        v130 = &v19[16 * v8 + 32];
        v132 = *v130;
        v131 = *(v130 + 1);
        v107 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v107)
        {
          goto LABEL_125;
        }

        if (v99 < v133)
        {
          v8 = v22 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    v17 = v52[1];
    v18 = v155;
    if (v155 >= v17)
    {
      goto LABEL_99;
    }
  }

  v60 = (v21 + v148);
  if (__OFADD__(v21, v148))
  {
    goto LABEL_130;
  }

  if (v60 >= v59)
  {
    v60 = v52[1];
  }

  if (v60 < v21)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v22 == v60)
  {
    goto LABEL_46;
  }

  v149 = v19;
  v147 = v5;
  v160 = *v52;
  v146 = v21;
  v61 = (v21 - v22);
  v62 = v160 + 8 * v22 - 8;
  v152 = v60;
LABEL_36:
  v154 = v62;
  v155 = v22;
  v63 = *(v160 + 8 * v22);
  v153 = v61;
  v64 = v61;
  while (1)
  {
    v165 = v64;
    v65 = *v62;
    v66 = v63;
    v67 = v65;
    v68 = v66;
    v69 = [v66 v20[188]];
    sub_1B77FF928();

    v70 = v20[188];
    v166 = v67;
    v71 = [v67 v70];
    v72 = v163;
    sub_1B77FF928();

    LOBYTE(v71) = sub_1B77FF918();
    v73 = *v162;
    v74 = v20;
    v75 = v164;
    (*v162)(v72, v164);
    v73(v16, v75);
    if (v71)
    {
      v76 = v68;
      v77 = [v68 id];
      v78 = v157;
      sub_1B77FF9E8();

      v79 = v166;
      v80 = [v166 id];
      v81 = v158;
      sub_1B77FF9E8();

      sub_1B726E4E4();
      v82 = v159;
      v83 = sub_1B78007D8();
      v8 = v156;
      v84 = *v156;
      (*v156)(v81, v82);
      v84(v78, v82);

      if ((v83 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v85 = [v68 v74[188]];
      sub_1B77FF928();

      v86 = v74[188];
      v8 = v166;
      v87 = [v166 v86];
      sub_1B77FF928();

      LOBYTE(v87) = sub_1B77FF8C8();
      v88 = v164;
      v73(v72, v164);
      v73(v16, v88);

      if ((v87 & 1) == 0)
      {
LABEL_34:
        v16 = v161;
        v20 = &off_1E7CAF000;
LABEL_35:
        v22 = v155 + 1;
        v62 = v154 + 8;
        v61 = v153 - 1;
        if (v155 + 1 == v152)
        {
          v22 = v152;
          v5 = v147;
          v52 = v151;
          v19 = v149;
          v21 = v146;
          goto LABEL_46;
        }

        goto LABEL_36;
      }
    }

    v89 = v165;
    if (!v160)
    {
      break;
    }

    v90 = *v62;
    v63 = *(v62 + 8);
    *v62 = v63;
    *(v62 + 8) = v90;
    v62 -= 8;
    v91 = __CFADD__(v89, 1);
    v64 = v89 + 1;
    v16 = v161;
    v20 = &off_1E7CAF000;
    if (v91)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_1B726DD94(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1B726C2B0(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1B726C2B0(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1B726E130(uint64_t a1)
{
  v5 = sub_1B7519CB4(a1);
  sub_1B726CBF8(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_1B7801958())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CA5DC0](0, v1);
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1B726E1F4()
{
  v1 = v0;
  type metadata accessor for ManagedFinHealthIncomeInsight();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit29ManagedFinHealthIncomeInsight;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

void keypath_setTm_1(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), SEL *a6)
{
  v7 = *a2;
  v8 = a5();
  [v7 *a6];
}

unint64_t sub_1B726E47C()
{
  result = qword_1EB9905B0;
  if (!qword_1EB9905B0)
  {
    sub_1B7205540(255, &qword_1EB9905A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905B0);
  }

  return result;
}

unint64_t sub_1B726E4E4()
{
  result = qword_1EB9905B8;
  if (!qword_1EB9905B8)
  {
    sub_1B77FFA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9905B8);
  }

  return result;
}

uint64_t BankConnectService.logo(forInstitutionID:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for BankConnectService.Message();
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726E5D4, 0, 0);
}

uint64_t sub_1B726E5D4()
{
  v1 = v0[8];
  v2 = v0[5];
  *v1 = v0[4];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B726E6B0;
  v4 = v0[8];

  return sub_1B726E8B4((v0 + 2), v4);
}

uint64_t sub_1B726E6B0()
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = v0;

  sub_1B7267DAC(v2);
  if (v0)
  {
    v3 = sub_1B726E850;
  }

  else
  {
    v3 = sub_1B726E7E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B726E7E0()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1B726E850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B726E8B4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v3[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[27] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726E9B4, 0, 0);
}

uint64_t sub_1B726E9B4()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B726EA60;
  v2 = swift_continuation_init();
  sub_1B722C7E0(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726EA60()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (!v3)
  {
    **(v1 + 184) = *(v1 + 144);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B726EBC8, 0, 0);
}

uint64_t sub_1B726EBC8()
{
  v1 = *(v0 + 248);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 200) + *(**(v0 + 200) + 120), *(v0 + 216), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 216), &qword_1EB990578);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B726EE0C, 0, 0);
}

uint64_t sub_1B726EE0C()
{
  v1 = v0[25];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B726EEB8;
  v2 = swift_continuation_init();
  sub_1B722C7E0(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B726EEB8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 256) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279628;
  }

  else
  {
    **(v1 + 184) = *(v1 + 160);
    v3 = sub_1B7279610;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B726EFE0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726F0E0, 0, 0);
}

uint64_t sub_1B726F0E0()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1B726F18C;
  v2 = swift_continuation_init();
  sub_1B722C9AC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726F18C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (!v3)
  {
    **(v1 + 152) = *(v1 + 232);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B726F2F4, 0, 0);
}

uint64_t sub_1B726F2F4()
{
  v1 = *(v0 + 216);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B726F538, 0, 0);
}

uint64_t sub_1B726F538()
{
  v1 = v0[21];
  v0[10] = v0;
  v0[15] = v0 + 233;
  v0[11] = sub_1B726F5E4;
  v2 = swift_continuation_init();
  sub_1B722C9AC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B726F5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 224) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279624;
  }

  else
  {
    **(v1 + 152) = *(v1 + 233);
    v3 = sub_1B727960C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B726F70C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726F80C, 0, 0);
}

uint64_t sub_1B726F80C()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1B726F8B8;
  v2 = swift_continuation_init();
  sub_1B722CB78(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B726F8B8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (!v3)
  {
    v4 = *(v1 + 152);
    v5 = *(v1 + 233);
    *v4 = *(v1 + 232);
    v4[1] = v5;

    v6 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B726FA28, 0, 0);
}

uint64_t sub_1B726FA28()
{
  v1 = *(v0 + 216);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B726FC6C, 0, 0);
}

uint64_t sub_1B726FC6C()
{
  v1 = v0[21];
  v0[10] = v0;
  v0[15] = v0 + 234;
  v0[11] = sub_1B726FD18;
  v2 = swift_continuation_init();
  sub_1B722CB78(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B726FD18()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 224) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279624;
  }

  else
  {
    v4 = *(v1 + 152);
    v5 = *(v1 + 234);
    v6 = *(v1 + 235);
    *v4 = v5;
    v4[1] = v6;
    v3 = sub_1B727960C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B726FE48(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC40);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B726FF8C, 0, 0);
}

uint64_t sub_1B726FF8C()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7270038;
  v3 = swift_continuation_init();
  sub_1B722CD44(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7270038()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B722376C(*(v1 + 224), *(v1 + 152), &qword_1EB98FC40);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72701C4, 0, 0);
}

uint64_t sub_1B72701C4()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B727042C, 0, 0);
}

uint64_t sub_1B727042C()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B72704D8;
  v3 = swift_continuation_init();
  sub_1B722CD44(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72704D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279620;
  }

  else
  {
    sub_1B722376C(*(v1 + 216), *(v1 + 152), &qword_1EB98FC40);
    v3 = sub_1B727961C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7270610(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7270754, 0, 0);
}

uint64_t sub_1B7270754()
{
  v1 = v0[28];
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1B7270800;
  v3 = swift_continuation_init();
  sub_1B722CF10(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7270800()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (!v3)
  {
    sub_1B722376C(*(v1 + 224), *(v1 + 152), &unk_1EB994C70);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B727098C, 0, 0);
}

uint64_t sub_1B727098C()
{
  v1 = *(v0 + 232);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990578);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7270BF4, 0, 0);
}

uint64_t sub_1B7270BF4()
{
  v1 = v0[27];
  v2 = v0[21];
  v0[10] = v0;
  v0[15] = v1;
  v0[11] = sub_1B7270CA0;
  v3 = swift_continuation_init();
  sub_1B722CF10(v3, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7270CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7279620;
  }

  else
  {
    sub_1B722376C(*(v1 + 216), *(v1 + 152), &unk_1EB994C70);
    v3 = sub_1B727961C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7270DD8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[23] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7270ED8, 0, 0);
}

uint64_t sub_1B7270ED8()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1B7270F84;
  v2 = swift_continuation_init();
  sub_1B722D0DC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7270F84()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (!v3)
  {
    **(v1 + 152) = *(v1 + 232);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72710EC, 0, 0);
}

uint64_t sub_1B72710EC()
{
  v1 = *(v0 + 216);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 168) + *(**(v0 + 168) + 120), *(v0 + 184), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 184), &qword_1EB990570);
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7271330, 0, 0);
}

uint64_t sub_1B7271330()
{
  v1 = v0[21];
  v0[10] = v0;
  v0[15] = v0 + 233;
  v0[11] = sub_1B726F5E4;
  v2 = swift_continuation_init();
  sub_1B722D0DC(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72713DC(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v3[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v3[27] = swift_task_alloc();
  v4 = sub_1B7800168();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72714DC, 0, 0);
}

uint64_t sub_1B72714DC()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7271588;
  v2 = swift_continuation_init();
  sub_1B722D2A8(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7271588()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (!v3)
  {
    **(v1 + 184) = *(v1 + 144);

    v4 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B72716F0, 0, 0);
}

uint64_t sub_1B72716F0()
{
  v1 = *(v0 + 248);
  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 200) + *(**(v0 + 200) + 120), *(v0 + 216), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 216), &qword_1EB990570);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7271934, 0, 0);
}

uint64_t sub_1B7271934()
{
  v1 = v0[25];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B72719E0;
  v2 = swift_continuation_init();
  sub_1B722D2A8(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B72719E0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 256) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B7271B98;
  }

  else
  {
    **(v1 + 184) = *(v1 + 160);
    v3 = sub_1B7271B08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7271B08()
{
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7271B98()
{
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7271C34(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990570);
  v2[22] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7271D30, 0, 0);
}

uint64_t sub_1B7271D30()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B7271DDC;
  v2 = swift_continuation_init();
  sub_1B722D474(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7271DDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B7271F40, 0, 0);
}

uint64_t sub_1B7271F40()
{
  v1 = *(v0 + 208);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X2, X16 }
  }

  sub_1B7205588(*(v0 + 160) + *(**(v0 + 160) + 120), *(v0 + 176), &qword_1EB990570);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 176), &qword_1EB990570);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7272188, 0, 0);
}

uint64_t sub_1B7272188()
{
  v1 = v0[20];
  v0[10] = v0;
  v0[15] = v0 + 225;
  v0[11] = sub_1B7272234;
  v2 = swift_continuation_init();
  sub_1B722D474(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7272234()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 216) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B72723F0;
  }

  else
  {
    *(v1 + 226) = *(v1 + 225);
    v3 = sub_1B7272358;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7272358()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 226);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B72723F0()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1B7272490(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990578);
  v2[24] = swift_task_alloc();
  v3 = sub_1B7800168();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B727258C, 0, 0);
}

uint64_t sub_1B727258C()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7272638;
  v2 = swift_continuation_init();
  sub_1B722D80C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7272638()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (!v2)
  {

    v3 = *(v1 + 8);

    __asm { BRAA            X2, X16 }
  }

  swift_willThrow();

  return MEMORY[0x1EEE6DFA0](sub_1B727279C, 0, 0);
}

uint64_t sub_1B727279C()
{
  v1 = *(v0 + 224);
  *(v0 + 152) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_1B7205588(*(v0 + 176) + *(**(v0 + 176) + 120), *(v0 + 192), &qword_1EB990578);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B7205418(*(v0 + 192), &qword_1EB990578);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_12;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v3 = sub_1B78000B8();
  __swift_project_value_buffer(v3, qword_1EDAFAF58);
  v4 = sub_1B7800098();
  v5 = sub_1B78011F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B7198000, v4, v5, "XPC async call failed, retrying", v6, 2u);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  return MEMORY[0x1EEE6DFA0](sub_1B72729E0, 0, 0);
}

uint64_t sub_1B72729E0()
{
  v1 = v0[22];
  v0[10] = v0;
  v0[15] = v0 + 20;
  v0[11] = sub_1B7272A8C;
  v2 = swift_continuation_init();
  sub_1B722D80C(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B7272A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 232) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1B727962C;
  }

  else
  {
    *(v1 + 240) = *(v1 + 160);
    v3 = sub_1B7279618;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}