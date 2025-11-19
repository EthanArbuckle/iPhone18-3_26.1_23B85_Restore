uint64_t _s19CollectionsInternal4RopeV4joinyACyxGAEn_AEntFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    if (*(a5 + 16))
    {
      if (!result)
      {
        return a5;
      }

      if (!*(result + 16))
      {
        swift_unknownObjectRelease();
        return a5;
      }

      v33 = result;
      v34 = a2;
      v35 = a3;
      v30 = a5;
      v31 = a6;
      v32 = a7;
      if (*(result + 18) >= *(a5 + 18))
      {
        result = specialized Rope._Node._graftBack(_:)(v29, &v30);
        if (result)
        {
          v21 = v33;
          v22 = *(v33 + 18) + 1;
          if (((v22 >> 8) & 1) == 0)
          {
            v23 = result;
            v24 = v19;
            v25 = v20;
            v26 = v34;
            v27 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 18) = v22;
            if (!__OFADD__(v26, v24))
            {
              if (!__OFADD__(v27, v25))
              {
                v16 = result;
                specialized closure #1 in static Rope._Node.createInner(children:_:)((result + 16), result + 24, v21, v26, v27, v23, v24, v25);
                v28 = 0;
                MEMORY[0x1865D26B0](&v28, 8);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return v16;
              }

LABEL_29:
              __break(1u);
              return result;
            }

            goto LABEL_27;
          }

          goto LABEL_25;
        }

        v17 = v33;
        v28 = 0;
        swift_unknownObjectRetain();
        MEMORY[0x1865D26B0](&v28, 8);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        result = specialized Rope._Node._graftFront(_:)(v29, &v33);
        if (result)
        {
          v9 = result;
          v10 = *(result + 18) + 1;
          if (((v10 >> 8) & 1) == 0)
          {
            v11 = v7;
            v12 = v8;
            v13 = v30;
            v14 = v31;
            v15 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 18) = v10;
            if (!__OFADD__(v11, v14))
            {
              if (!__OFADD__(v12, v15))
              {
                v16 = result;
                specialized closure #1 in static Rope._Node.createInner(children:_:)((result + 16), result + 24, v9, v11, v12, v13, v14, v15);
                v28 = 0;
                MEMORY[0x1865D26B0](&v28, 8);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return v16;
              }

              goto LABEL_28;
            }

            goto LABEL_26;
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v17 = v30;
        v28 = 0;
        swift_unknownObjectRetain();
        MEMORY[0x1865D26B0](&v28, 8);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = result;
      swift_unknownObjectRelease();
    }

    return v17;
  }

  return result;
}

BOOL specialized Rope._Node.rebalance(nextNeighbor:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *a1;
  if (*(*v1 + 16))
  {
    v5 = *(v4 + 16);
    if (v3 >= 8 && v5 >= 8)
    {
      return 0;
    }

    else
    {
      _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(v1, a1, (v5 + v3) >> ((v5 + v3) > 0xF));
      return *(*a1 + 16) == 0;
    }
  }

  else
  {
    v9 = *(a1 + 8);
    *v1 = v4;
    v10 = *(v1 + 1);
    *(v1 + 1) = v9;
    *a1 = v2;
    *(a1 + 8) = v10;
    return 1;
  }
}

uint64_t specialized Rope._Node.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = swift_isUniquelyReferenced_nonNull();
  v10 = *v4;
  if ((result & 1) == 0)
  {
    v11 = specialized Rope._Node.copy()(*v4);
    v13 = v12;
    v15 = v14;
    result = swift_unknownObjectRelease();
    *v4 = v11;
    v4[1] = v13;
    v10 = v11;
    v4[2] = v15;
  }

  v16 = (a4 >> ((4 * *(v10 + 18) + 8) & 0x3C)) & 0xF;
  v17 = *(v10 + 16);
  if (*(v10 + 18))
  {
    if (v16 < v17)
    {
      MEMORY[0x1EEE9AC00](result);
      v19 = specialized Rope._Node._innerInsert(at:with:)(v18, partial apply for specialized closure #1 in Rope._Node.insert(_:at:));

      return v19;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (v16 > v17)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return specialized Rope._Node._leafInsert(_:at:)(a1, a2, a3, v16);
}

uint64_t specialized Rope._Node._leafInsert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*v4 + 16) != 15)
  {
    specialized Rope._Node._insertItem(_:at:)(a1, a2, a3, a4);

    return 0;
  }

  if (a4 < 8)
  {
    v9 = specialized Rope._Node.split(keeping:)(7);
    specialized Rope._Node._insertItem(_:at:)(a1, a2, a3, a4);

    return v9;
  }

  v9 = specialized Rope._Node.split(keeping:)(8);
  v11 = v10;
  v13 = v12;
  v14 = *(*v4 + 16);
  result = swift_isUniquelyReferenced_nonNull();
  if ((result & 1) == 0)
  {
    v16 = specialized Rope._Node.copy()(v9);
    v11 = v17;
    v13 = v18;
    result = swift_unknownObjectRelease();
    v9 = v16;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v13, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = (v9 + 24 * (a4 - v14));
  memmove(v19 + 6, v19 + 3, 24 * (*(v9 + 16) - (a4 - v14)));
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  v20 = *(v9 + 16);
  swift_unknownObjectRetain();

  if (v20 != 0xFFFF)
  {
    *(v9 + 16) = v20 + 1;

    swift_unknownObjectRelease();
    return v9;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized Rope._Node._innerInsert(at:with:)(uint64_t result, void *(*a2)(void *__return_ptr, uint64_t))
{
  v3 = v2;
  v4 = v2[1];
  v5 = *v2 + 24 * result;
  v6 = *(v5 + 32);
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v2[2];
  v9 = *(v5 + 40);
  v10 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  swift_unknownObjectRetain();
  result = a2(v21, v5 + 24);
  v13 = *(v5 + 32);
  v14 = __OFADD__(v7, v13);
  v15 = v7 + v13;
  if (v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = *(v5 + 40);
  v14 = __OFADD__(v10, v16);
  v17 = v10 + v16;
  if (v14)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v19 = v21[0];
  v18 = v21[1];
  v20 = v21[2];
  swift_unknownObjectRelease();
  v3[1] = v15;
  v3[2] = v17;
  if (v19)
  {
    return specialized Rope._Node._applySpawn(_:of:)(v19, v18, v20, v12);
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Rope._Node._applySpawn(_:of:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36[0] = result;
  v36[1] = a2;
  v36[2] = a3;
  v5 = a4 + 1;
  if (__OFADD__(a4, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = result;
  if (a4 >= 1)
  {
    v9 = *v4;
    v10 = *v4 + 24;
    v11 = 24 * a4;
    v12 = *(*(v10 + 24 * a4) + 16) + *(*(*v4 + 24 * a4) + 16);
    if (v12 >= 0x10)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_7:
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5((v9 + v11), (v10 + v11), v12);
    specialized Rope._UnsafeHandle._removeChild(at:)(a4, (v9 + 16), v10);
    result = swift_unknownObjectRelease();
    v14 = __OFSUB__(v5--, 1);
    if (!v14)
    {
      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  swift_unknownObjectRetain();
LABEL_8:
  v15 = *v4;
  if (v5 < *(*v4 + 16))
  {
    v16 = v15 + 24 * v5;
    v18 = *(v16 + 24);
    v17 = (v16 + 24);
    if (*(v18 + 16) + *(v8 + 16) < 0x10)
    {
      swift_unknownObjectRetain();
      _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(v36, v17, 0);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v26 = v4[1];
      v14 = __OFADD__(v26, a2);
      v27 = v26 + a2;
      if (!v14)
      {
        v4[1] = v27;
        v28 = v4[2];
        v14 = __OFADD__(v28, a3);
        v29 = v28 + a3;
        if (!v14)
        {
          v19 = 0;
          v4[2] = v29;
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  swift_unknownObjectRelease();
  if (*(v15 + 16) != 15)
  {
    v25 = swift_unknownObjectRetain();
    specialized Rope._Node._insertNode(_:at:)(v25, a2, a3, v5);
    swift_unknownObjectRelease();
    v19 = 0;
LABEL_24:
    swift_unknownObjectRelease();
    return v19;
  }

  v19 = specialized Rope._Node.split(keeping:)(7);
  v21 = v20;
  v23 = v22;
  if (v5 < 8)
  {
    v24 = swift_unknownObjectRetain();
    specialized Rope._Node._insertNode(_:at:)(v24, a2, a3, v5);
LABEL_23:
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v30 = *(*v4 + 16);
  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull();
  if ((result & 1) == 0)
  {
    v31 = specialized Rope._Node.copy()(v19);
    v21 = v32;
    v23 = v33;
    result = swift_unknownObjectRelease();
    v19 = v31;
  }

  if (__OFADD__(v21, a2))
  {
    goto LABEL_29;
  }

  if (__OFADD__(v23, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = (v19 + 24 * (v5 - v30));
  memmove(v34 + 6, v34 + 3, 24 * (*(v19 + 16) - (v5 - v30)));
  v34[3] = v8;
  v34[4] = a2;
  v34[5] = a3;
  v35 = *(v19 + 16);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  if (v35 != 0xFFFF)
  {
    *(v19 + 16) = v35 + 1;
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized Rope._Node._graftBack(_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v6 = specialized Rope._Node.copy()(*v2);
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    *v2 = v6;
    v2[1] = v8;
    v2[2] = v10;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v13 = specialized Rope._Node.copy()(*a2);
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    *a2 = v13;
    a2[1] = v15;
    v12 = v13;
    a2[2] = v17;
  }

  v18 = *v3;
  if (*(v12 + 18) >= *(*v3 + 18))
  {
    v37 = v3[1];
    v36 = v3[2];
    if (specialized Rope._Node.rebalance(nextNeighbor:)(a2))
    {
      result = 0;
    }

    else
    {
      result = swift_unknownObjectRetain();
    }

    v38 = v3[1];
    v28 = __OFSUB__(v38, v37);
    v39 = v38 - v37;
    if (!v28)
    {
      v40 = v3[2];
      *a1 = v39;
      if (!__OFSUB__(v40, v36))
      {
        a1[1] = v40 - v36;
        return result;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  swift_unknownObjectRetain();
  v19 = specialized Rope._Node._graftBack(_:)(&v41, a2);
  v21 = v20;
  v23 = v22;
  v25 = v41;
  v24 = v42;
  result = swift_unknownObjectRelease();
  v27 = v3[1];
  v28 = __OFADD__(v27, v25);
  v29 = v27 + v25;
  if (v28)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3[1] = v29;
  v30 = v3[2];
  v28 = __OFADD__(v30, v24);
  v31 = v30 + v24;
  if (v28)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v3[2] = v31;
  if (v19)
  {
    if (*(v18 + 16) == 15)
    {
      result = specialized Rope._Node.split(keeping:)(7);
      v41 = result;
      v42 = v33;
      v43 = v32;
      v34 = v25 - v33;
      if (!__OFSUB__(v25, v33))
      {
        v35 = v24 - v32;
        if (!__OFSUB__(v24, v32))
        {
          specialized Rope._Node._appendNode(_:)(v19, v21, v23);
          result = v41;
          *a1 = v34;
          a1[1] = v35;
          return result;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (__OFADD__(v25, v21))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = __OFADD__(v24, v23);
    v24 += v23;
    if (v28)
    {
LABEL_32:
      __break(1u);
      return result;
    }

    specialized Rope._Node._appendNode(_:)(v19, v21, v23);
    result = 0;
    *a1 = v25 + v21;
  }

  else
  {
    result = 0;
    *a1 = v25;
  }

  a1[1] = v24;
  return result;
}

uint64_t specialized Rope._Node._graftFront(_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v6 = specialized Rope._Node.copy()(*v2);
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    *v2 = v6;
    v2[1] = v8;
    v2[2] = v10;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v13 = specialized Rope._Node.copy()(*a2);
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    *a2 = v13;
    a2[1] = v15;
    v12 = v13;
    a2[2] = v17;
  }

  v18 = *v3;
  if (*(v12 + 18) >= *(*v3 + 18))
  {
    v44 = a2[1];
    v43 = a2[2];
    result = specialized Rope._Node.rebalance(nextNeighbor:)(v3);
    if (result)
    {
      v32 = 0;
      v45 = *v3;
      v46 = *(a2 + 1);
      *v3 = *a2;
      v47 = *(v3 + 8);
      *(v3 + 8) = v46;
      *a2 = v45;
      *(a2 + 1) = v47;
      *a1 = v44;
      a1[1] = v43;
      return v32;
    }

    v48 = a2[1];
    if (!__OFSUB__(v44, v48))
    {
      v32 = *a2;
      v49 = a2[2];
      *a1 = v44 - v48;
      if (!__OFSUB__(v43, v49))
      {
        a1[1] = v43 - v49;
        swift_unknownObjectRetain();
        return v32;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_unknownObjectRetain();
  v19 = specialized Rope._Node._graftFront(_:)(v50, a2);
  v21 = v20;
  v23 = v22;
  v24 = v50[0];
  v25 = v50[1];
  result = swift_unknownObjectRelease();
  v27 = *(v3 + 8);
  v28 = __OFADD__(v27, v24);
  v29 = v27 + v24;
  if (v28)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + 8) = v29;
  v30 = *(v3 + 16);
  v28 = __OFADD__(v30, v25);
  v31 = v30 + v25;
  if (v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v3 + 16) = v31;
  if (!v19)
  {
    v32 = 0;
    *a1 = v24;
    a1[1] = v25;
    return v32;
  }

  if (*(v18 + 16) != 15)
  {
    if (!__OFADD__(v24, v21))
    {
      if (!__OFADD__(v25, v23))
      {
        specialized Rope._Node._insertNode(_:at:)(v19, v21, v23, 0);
        swift_unknownObjectRelease();
        v32 = 0;
        *a1 = v24 + v21;
        a1[1] = v25 + v23;
        return v32;
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

  result = specialized Rope._Node.split(keeping:)(7);
  v32 = *v3;
  v33 = *(v3 + 8);
  v34 = *(v3 + 16);
  *v3 = result;
  *(v3 + 8) = v35;
  *(v3 + 16) = v36;
  v28 = __OFSUB__(v24, v33);
  v37 = v24 - v33;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = __OFSUB__(v25, v34);
  v38 = v25 - v34;
  if (v28)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  result = swift_isUniquelyReferenced_nonNull();
  if ((result & 1) == 0)
  {
    v39 = specialized Rope._Node.copy()(v32);
    v33 = v40;
    v34 = v41;
    result = swift_unknownObjectRelease();
    v32 = v39;
  }

  if (__OFADD__(v33, v21))
  {
    goto LABEL_36;
  }

  if (__OFADD__(v34, v23))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = *(v32 + 16);
  memmove((v32 + 48), (v32 + 24), 24 * *(v32 + 16));
  *(v32 + 24) = v19;
  *(v32 + 32) = v21;
  *(v32 + 40) = v23;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  if (v42 != 0xFFFF)
  {
    *(v32 + 16) = v42 + 1;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *a1 = v37;
    a1[1] = v38;
    return v32;
  }

LABEL_38:
  __break(1u);
  return result;
}

void specialized Rope._Node._innerSplit(at:into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v8 = specialized Rope._Node.copy()(v7);
    v10 = v9;
    v12 = v11;
    swift_unknownObjectRelease();
    *v3 = v8;
    v3[1] = v10;
    v7 = v8;
    v3[2] = v12;
  }

  v13 = *(v7 + 16);
  if (v13 - 2 == a1)
  {
    v14 = specialized Rope._Node._removeNode(at:)(v13 - 1);
    v16 = v15;
    v18 = v17;
    v54 = 0;
    MEMORY[0x1865D26B0](&v54, 8);
    v19 = v54;
    v20 = *(a2 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v23 = &v20[4 * v22];
    v23[4] = v14;
    v23[5] = v16;
    v23[6] = v18;
    v23[7] = v19;
    *(a2 + 80) = v20;
  }

  if (a1 == 1)
  {
    v24 = specialized Rope._Node._removeNode(at:)(0);
    specialized Rope.Builder._insertBeforeTip(_:)(v24, v25, v26);
    a1 = 0;
  }

  v27 = specialized Rope._Node._removeNode(at:)(a1);
  v28 = *v3;
  v29 = v3[1];
  v30 = v3[2];
  *v3 = v27;
  v3[1] = v31;
  v3[2] = v32;
  v54 = v28;
  v55 = v29;
  v56 = v30;
  if (*(v28 + 16))
  {
    if (a1)
    {
      if (a1 == *(v28 + 16))
      {
        specialized Rope.Builder._insertBeforeTip(_:)(v28, v29, v30);
      }

      else
      {
        v39 = specialized Rope._Node.split(keeping:)(a1);
        v41 = v40;
        v43 = v42;
        v44 = v55;
        v45 = v56;
        v46 = swift_unknownObjectRetain();
        v47 = specialized Rope.Builder._insertBeforeTip(_:)(v46, v44, v45);
        v53 = 0;
        MEMORY[0x1865D26B0](&v53, 8, v47);
        v48 = v53;
        v49 = *(a2 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v52 = &v49[4 * v51];
        v52[4] = v39;
        v52[5] = v41;
        v52[6] = v43;
        v52[7] = v48;
        swift_unknownObjectRelease();
        *(a2 + 80) = v49;
      }
    }

    else
    {
      v53 = 0;
      v33 = v28;
      swift_unknownObjectRetain();
      MEMORY[0x1865D26B0](&v53, 8);
      v34 = v53;
      v35 = *(a2 + 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
      }

      v37 = v35[2];
      v36 = v35[3];
      if (v37 >= v36 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v35);
      }

      v35[2] = v37 + 1;
      v38 = &v35[4 * v37];
      v38[4] = v33;
      v38[5] = v29;
      v38[6] = v30;
      v38[7] = v34;
      swift_unknownObjectRelease();
      *(a2 + 80) = v35;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t specialized Rope._Node._removeNode(at:)(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v5 = specialized Rope._Node.copy()(*v1);
    v7 = v6;
    v9 = v8;
    swift_unknownObjectRelease();
    *v1 = v5;
    v1[1] = v7;
    v4 = v5;
    v1[2] = v9;
  }

  swift_unknownObjectRetain();
  v10 = specialized Rope._UnsafeHandle._removeChild(at:)(a1, (v4 + 16), v4 + 24);
  v12 = v11;
  v14 = v13;
  result = swift_unknownObjectRelease();
  v16 = v1[1];
  v17 = __OFSUB__(v16, v12);
  v18 = v16 - v12;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v1[1] = v18;
    v19 = v1[2];
    v17 = __OFSUB__(v19, v14);
    v20 = v19 - v14;
    if (!v17)
    {
      v1[2] = v20;
      return v10;
    }
  }

  __break(1u);
  return result;
}

_WORD *specialized Rope.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  v10 = v4[3];
  result = specialized Rope._endPath.getter(*v4);
  if (result != a4)
  {
    if (!v9)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    result = specialized Rope._Node.insert(_:at:)(a1, a2, a3, a4);
    if (!result)
    {
LABEL_11:
      v4[3] = v10 + 1;
      return result;
    }

    v14 = *v4;
    v15 = *(*v4 + 18) + 1;
    if ((v15 >> 8))
    {
      __break(1u);
    }

    else
    {
      v16 = result;
      v17 = v12;
      v18 = v13;
      v19 = v4[1];
      v20 = v4[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      result = (v21 + 16);
      *(v21 + 18) = v15;
      if (!__OFADD__(v19, v17))
      {
        if (!__OFADD__(v20, v18))
        {
          specialized closure #1 in static Rope._Node.createInner(children:_:)(result, v21 + 24, v14, v19, v20, v16, v17, v18);
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          *v4 = v21;
          v4[1] = v19 + v17;
          v4[2] = v20 + v18;
          goto LABEL_11;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return specialized Rope.append(_:)(a1, a2, a3);
}

uint64_t specialized Rope._Node.copy(slots:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 18);
  v6 = a2 - a1;
  LOBYTE(v7) = __OFSUB__(a2, a1);
  if (*(a3 + 18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
    result = swift_allocObject();
    *(result + 18) = v5;
    if (v7)
    {
LABEL_24:
      __break(1u);
    }

    else if ((v6 & 0x8000000000000000) == 0)
    {
      if (!(v6 >> 16))
      {
        v9 = result;
        v7 = result + 24;
        *(result + 16) = v6;
        v4 *= 24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV5_NodeVy10Foundation16AttributedStringV01_B3RunV_GMd);
        result = swift_arrayInitWithCopy();
        v10 = 0;
        v11 = 0;
        v12 = 24 * a2 - v4;
        while (v12)
        {
          v13 = *(v7 + 8);
          v14 = __OFADD__(v11, v13);
          v11 += v13;
          if (v14)
          {
            __break(1u);
            goto LABEL_24;
          }

          v15 = *(v7 + 16);
          v7 += 24;
          v12 -= 24;
          v14 = __OFADD__(v10, v15);
          v10 += v15;
          if (v14)
          {
            __break(1u);
            goto LABEL_14;
          }
        }

        return v9;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
  result = swift_allocObject();
  *(result + 18) = 0;
  if (v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!(v6 >> 16))
  {
    v9 = result;
    v16 = (result + 24);
    *(result + 16) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV5_ItemVy10Foundation16AttributedStringV01_B3RunV_GMd);
    swift_arrayInitWithCopy();
    v17 = 0;
    v18 = 24 * a2 - 24 * v4;
    while (v18)
    {
      v19 = *v16;
      v16 += 3;
      v18 -= 24;
      v14 = __OFADD__(v17, v19);
      v17 += v19;
      if (v14)
      {
        __break(1u);
        return v9;
      }
    }

    return v9;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized Rope._Node._leafRemoveSuffix(returning:into:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 1)
  {
    v10 = a3[3];
    v9 = a3[4];
    v11 = a3[5];
    v8 = a3[6];

    swift_unknownObjectRelease();
    if (v10)
    {
      v12 = a2[4];
      v13 = a2[5];
      v14 = a2[6];
      a2[5] = 0;
      a2[6] = 0;
      a2[4] = 0;
      if (v13)
      {
        specialized Rope.Builder._appendNow(_:)(v12, v13, v14);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(a2[4], a2[5]);
      }

      a2[4] = v10;
      a2[5] = v9;
      a2[6] = v11;
    }

    else
    {
    }

    return v8;
  }

  if (!a1)
  {
    v8 = a3[3];

    swift_unknownObjectRelease();
    return v8;
  }

  swift_unknownObjectRetain();
  result = swift_isUniquelyReferenced_nonNull();
  if (result)
  {
    v18 = a3;
  }

  else
  {
    v18 = specialized Rope._Node.copy()(a3);
    a4 = v19;
    a5 = v20;
    result = swift_unknownObjectRelease();
  }

  v21 = *(v18 + 16);
  if (v21 - 1 <= a1)
  {
    goto LABEL_18;
  }

  v22 = __OFSUB__(v21, a1);
  v23 = v21 - a1;
  if (v22)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRetain();
  v25 = specialized Rope._UnsafeHandle._removeSuffix(_:)(v24, (v18 + 16), v18 + 24);
  v27 = v26;
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v22 = __OFSUB__(a4, v25);
  a4 -= v25;
  if (!v22)
  {
    v22 = __OFSUB__(a5, v27);
    a5 -= v27;
    if (!v22)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    swift_unknownObjectRelease();
LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v28 = specialized Rope._Node.copy()(v18);
      a4 = v29;
      a5 = v30;
      swift_unknownObjectRelease();
      v18 = v28;
    }

    swift_unknownObjectRetain();
    v8 = specialized Rope._UnsafeHandle._removeChild(at:)(a1, (v18 + 16), v18 + 24);
    result = swift_unknownObjectRelease();
    if (__OFSUB__(a4, 1))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a5, v8))
    {
      specialized Rope.Builder._insertBeforeTip(_:)(v18, a4 - 1, a5 - v8);
      return v8;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized Rope._Node._innerRemovePrefix(descending:into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 - 1 == a1)
  {
    v6 = (v4 + 24 * *(*v2 + 16));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *v2 = v7;
    v2[1] = v8;
    v2[2] = v9;
    return result;
  }

  if (v5 - 2 != a1)
  {
    v25 = a1;
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v27 = *v2;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v28 = specialized Rope._Node.copy()(*v2);
      v30 = v29;
      v3 = v31;
      swift_unknownObjectRelease();
      *v2 = v28;
      v2[1] = v30;
      v27 = v28;
      v2[2] = v3;
    }

    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      v33 = v27 + 24 + 24 * v25;
      v34 = *v33;
      v48 = *(v33 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v35 = specialized Rope._UnsafeHandle._removePrefix(_:)(v25 + 1, (v27 + 16), (v27 + 24));
      v32 = v36;
      swift_unknownObjectRelease();
      v37 = v2[1];
      v38 = __OFSUB__(v37, v35);
      v3 = v37 - v35;
      if (!v38)
      {
        v39 = v2[2];
        v38 = __OFSUB__(v39, v32);
        v32 = v39 - v32;
        if (!v38)
        {
          *v2 = v34;
          *(v2 + 1) = v48;
          v49 = 0;
          MEMORY[0x1865D26B0](&v49, 8);
          v25 = v49;
          v2 = *(a2 + 80);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_15:
            v40 = v2[2];
            v41 = v2[3];
            v42 = v40 + 1;
            if (v40 >= v41 >> 1)
            {
              v46 = v2;
              v47 = v2[2];
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v40 + 1, 1, v46);
              v40 = v47;
              v2 = result;
            }

            v2[2] = v42;
            v43 = &v2[4 * v40];
            v43[4] = v27;
            v43[5] = v3;
            v43[6] = v32;
            v43[7] = v25;
            goto LABEL_18;
          }

LABEL_22:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
          v2 = result;
          goto LABEL_15;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v12 = (v4 + 24 * a1);
  v13 = v12[3];
  v14 = v12[4];
  v15 = v12[5];
  v16 = (v4 + 24 * *(*v2 + 16));
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v2 = v13;
  v2[1] = v14;
  v2[2] = v15;
  v49 = 0;
  MEMORY[0x1865D26B0](&v49, 8);
  v20 = v49;
  v2 = *(a2 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    v2 = result;
  }

  v21 = v2[2];
  v22 = v2[3];
  v23 = v21 + 1;
  if (v21 >= v22 >> 1)
  {
    v44 = v2;
    v45 = v2[2];
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v21 + 1, 1, v44);
    v21 = v45;
    v2 = result;
  }

  v2[2] = v23;
  v24 = &v2[4 * v21];
  v24[4] = v17;
  v24[5] = v18;
  v24[6] = v19;
  v24[7] = v20;
LABEL_18:
  *(a2 + 80) = v2;
  return result;
}

uint64_t specialized Rope._Node._leafRemovePrefix(returning:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  if (v7 - 1 == a1)
  {
    v8 = *(a3 + 24 * *(a3 + 16));

LABEL_5:
    swift_unknownObjectRelease();
    return v8;
  }

  if (v7 - 2 == a1)
  {
    v8 = *(a3 + 24 * a1 + 24);
    v10 = (a3 + 24 * *(a3 + 16));
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];

    specialized Rope.Builder._insertAfterTip(_:)(v11, v12, v13);
    goto LABEL_5;
  }

  v8 = a1;
  swift_unknownObjectRetain();
  if (swift_isUniquelyReferenced_nonNull())
  {
    v16 = a3;
  }

  else
  {
    v16 = specialized Rope._Node.copy()(a3);
    a4 = v17;
    a5 = v18;
    swift_unknownObjectRelease();
  }

  v19 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v16 + 24 + 24 * v8);
  swift_unknownObjectRetain();

  v20 = specialized Rope._UnsafeHandle._removePrefix(_:)(v19, (v16 + 16), (v16 + 24));
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = __OFSUB__(a4, v20);
  v5 = a4 - v20;
  if (v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = a5 - v22;
  if (__OFSUB__(a5, v22))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = 0;
  swift_unknownObjectRetain();
  MEMORY[0x1865D26B0](&v31, 8);
  a5 = *(a2 + 80);
  v29 = v31;
  v30 = v24;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
  }

  v26 = a5[2];
  v25 = a5[3];
  if (v26 >= v25 >> 1)
  {
    a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, a5);
  }

  a5[2] = v26 + 1;
  v27 = &a5[4 * v26];
  v27[4] = v16;
  v27[5] = v5;
  v27[6] = v30;
  v27[7] = v29;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a2 + 80) = a5;
  return v8;
}

uint64_t specialized Rope._UnsafeHandle._removePrefix(_:)(uint64_t result, _WORD *a2, char *__dst)
{
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = 0;
  v6 = 0;
  v7 = result;
  if (result)
  {
    v8 = (__dst + 16);
    v9 = result;
    while (1)
    {
      v10 = *(v8 - 1);
      v11 = *v8;
      result = swift_unknownObjectRelease();
      v12 = __OFADD__(v6, v10);
      v6 += v10;
      if (v12)
      {
        break;
      }

      v12 = __OFADD__(v5, v11);
      v5 += v11;
      if (v12)
      {
        goto LABEL_13;
      }

      v8 += 3;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  v13 = *a2 - v7;
  if (v13 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a2 = v13;
  v14 = &__dst[24 * v7];
  if (v7 || &v14[24 * v13] <= __dst)
  {
    memmove(__dst, v14, 24 * v13);
  }

  return v6;
}

{
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = 0;
  v6 = result;
  if (result)
  {
    v7 = __dst + 16;
    v8 = result;
    while (1)
    {
      v9 = *(v7 - 2);

      v10 = __OFADD__(v5, v9);
      v5 += v9;
      if (v10)
      {
        break;
      }

      v7 += 24;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  v11 = *a2 - v6;
  if (v11 < 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *a2 = v11;
  v12 = &__dst[24 * v6];
  if (v6 || &v12[24 * v11] <= __dst)
  {
    memmove(__dst, v12, 24 * v11);
  }

  return v6;
}

uint64_t specialized Rope._UnsafeHandle._removeSuffix(_:)(uint64_t result, _WORD *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = v3 - result;
  v5 = __OFSUB__(v3, result);
  if (__OFSUB__(v3, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 == v3)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (v4 < v3)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = 24 * *a2 - 24 * result + a3 + 8;
    do
    {
      v11 = *(v10 - 8);

      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        goto LABEL_21;
      }

      ++v8;
      v10 += 24;
    }

    while (v7 != v8);
    v13 = *a2;
    v12 = __OFSUB__(v13, v7);
    v4 = v13 - v7;
    v5 = v12;
LABEL_16:
    if (!v5)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        if (!(v4 >> 16))
        {
          *a2 = v4;
          return v7;
        }

        goto LABEL_26;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Rope._Node.insert(_:at:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  result = specialized Rope._Node.insert(_:at:)(v5, v6, v7, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

uint64_t specialized Rope._Node._insertNode(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (result)
  {
    v10 = v4[1];
  }

  else
  {
    v11 = specialized Rope._Node.copy()(*v4);
    v10 = v12;
    v14 = v13;
    result = swift_unknownObjectRelease();
    *v4 = v11;
    v4[1] = v10;
    v4[2] = v14;
  }

  if (__OFADD__(v10, a2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4[1] = v10 + a2;
  v15 = v4[2];
  v16 = __OFADD__(v15, a3);
  v17 = v15 + a3;
  if (v16)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4[2] = v17;
  v18 = *v4;
  v19 = *(v18 + 16);
  v20 = v19 - a4;
  v21 = __OFSUB__(v19, a4);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  if (v21)
  {
    goto LABEL_16;
  }

  v22 = (v18 + 24 * a4);
  result = memmove(v22 + 6, v22 + 3, 24 * v20);
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v23 = *(v18 + 16);
  if (v23 == 0xFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v18 + 16) = v23 + 1;

  return swift_unknownObjectRelease();
}

uint64_t specialized Rope._Node._insertItem(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (result)
  {
    v10 = v4[1];
  }

  else
  {
    v11 = specialized Rope._Node.copy()(*v4);
    v10 = v12;
    v14 = v13;
    result = swift_unknownObjectRelease();
    *v4 = v11;
    v4[1] = v10;
    v4[2] = v14;
  }

  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v4[1] = v10 + 1;
  v15 = v4[2];
  v16 = __OFADD__(v15, a1);
  v17 = v15 + a1;
  if (v16)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4[2] = v17;
  v18 = *v4;
  v19 = *(v18 + 16);
  v20 = v19 - a4;
  v21 = __OFSUB__(v19, a4);
  swift_unknownObjectRetain();

  if (v21)
  {
    goto LABEL_16;
  }

  v22 = (v18 + 24 * a4);
  result = memmove(v22 + 6, v22 + 3, 24 * v20);
  v22[3] = a1;
  v22[4] = a2;
  v22[5] = a3;
  v23 = *(v18 + 16);
  if (v23 == 0xFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v18 + 16) = v23 + 1;

  return swift_unknownObjectRelease();
}

unint64_t specialized closure #1 in Rope.builder<A>(removing:in:)(unint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = *a3;
  v6 = *result;
  if (*result)
  {
    result = 0;
    v7 = (a2 + 16);
    v8 = *a3;
    while (1)
    {
      v9 = *v7;
      v7 += 3;
      v10 = v8 - v9;
      if (__OFSUB__(v8, v9))
      {
        break;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (v10 + 1 < 1)
      {
        goto LABEL_11;
      }

      ++result;
      v8 = v10;
      if (v6 == result)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = *a3;
LABEL_9:
  if (v10)
  {
    goto LABEL_25;
  }

  v8 = 0;
  result = v6;
LABEL_11:
  v11 = __OFSUB__(*a4, v5);
  v12 = *a4 - v5;
  if (v11)
  {
    goto LABEL_23;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (result < v6)
  {
    v14 = (a2 + 24 * result + 16);
    v15 = result;
    do
    {
      v17 = *v14;
      v14 += 3;
      v16 = v17;
      if (v17 >= v13)
      {
        break;
      }

      v11 = __OFSUB__(v13, v16);
      v13 -= v16;
      if (v11)
      {
        goto LABEL_22;
      }

      ++v15;
    }

    while (v6 != v15);
  }

  return result;
}

void specialized Rope.Builder._insertBeforeTip(slots:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    return;
  }

  if (v4 >= 1)
  {
    if (v4 != 1)
    {
      v9 = specialized Rope._Node.copy(slots:)(a1, a2, a3);
LABEL_7:

      specialized Rope.Builder._insertBeforeTip(_:)(v9, v10, v11);
      return;
    }

    v5 = a3 + 24;
    if (*(a3 + 18))
    {
      v6 = v5 + 24 * a1;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = swift_unknownObjectRetain();
      v10 = v7;
      v11 = v8;
      goto LABEL_7;
    }

    v12 = (v5 + 24 * a1);
    v13 = *v12;
    if (*v12)
    {
      v15 = v12[1];
      v14 = v12[2];
      v16 = v3[4];
      v17 = v3[5];
      v18 = v3[6];
      v3[5] = 0;
      v3[6] = 0;
      v3[4] = 0;
      if (v17)
      {

        specialized Rope.Builder._appendNow(_:)(v16, v17, v18);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(v3[4], v3[5]);
        v3[4] = v13;
        v3[5] = v15;
        v3[6] = v14;
      }

      else
      {
        v3[4] = v13;
        v3[5] = v15;
        v3[6] = v14;
      }
    }
  }
}

uint64_t specialized Rope.Builder._insertAfterTip(slots:in:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < 1)
  {
    return result;
  }

  if (v9 != 1)
  {
    v3 = specialized Rope._Node.copy(slots:)(result, a2, a3);
    v5 = v20;
    v6 = v21;
    v29 = 0;
    MEMORY[0x1865D26B0](&v29, 8);
    v8 = v29;
    v7 = *(v4 + 80);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_12:
      v23 = v7[2];
      v22 = v7[3];
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v7);
        v7 = result;
      }

      v7[2] = v23 + 1;
      v24 = &v7[4 * v23];
      v24[4] = v3;
      v24[5] = v5;
      v24[6] = v6;
      v24[7] = v8;
      *(v4 + 80) = v7;
      return result;
    }

LABEL_20:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    v7 = result;
    goto LABEL_12;
  }

  v10 = a3 + 24;
  if (*(a3 + 18))
  {
    v11 = (v10 + 24 * result);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v29 = 0;
    swift_unknownObjectRetain_n();
    MEMORY[0x1865D26B0](&v29, 8);
    v15 = v29;
    v16 = *(v4 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
    }

    result = swift_unknownObjectRelease();
    v16[2] = v18 + 1;
    v19 = &v16[4 * v18];
    v19[4] = v12;
    v19[5] = v13;
    v19[6] = v14;
    v19[7] = v15;
    *(v4 + 80) = v16;
  }

  else
  {
    v25 = (v10 + 24 * result);
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];

    return specialized Rope.Builder._insertAfterTip(_:)(v26, v27, v28);
  }

  return result;
}

uint64_t specialized closure #2 in Rope._Node.removeSuffix<A>(from:in:into:)(unsigned __int16 *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  v4 = *a3;
  if (result)
  {
    v5 = 0;
    while (1)
    {
      v6 = *a2;
      a2 += 3;
      v7 = v4 - v6;
      if (__OFSUB__(v4, v6))
      {
        break;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      if (v7 + 1 < 1)
      {
        return v5;
      }

      ++v5;
      v4 = v7;
      if (result == v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *a3;
LABEL_9:
  if (v7)
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

void specialized Rope._Node.removeSuffix<A>(from:in:into:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  if (a1 < 1)
  {
    swift_unknownObjectRelease_n();
  }

  else if (a1 < a5)
  {
    while (*(a3 + 18))
    {
      if (!*(a3 + 16))
      {
        goto LABEL_67;
      }

      v10 = 0;
      v11 = -1;
      v12 = 64;
      v13 = 1;
      while (1)
      {
        v14 = *(a3 + 40 + v10);
        v15 = __OFSUB__(a1, v14);
        v16 = a1 - v14;
        if (v15)
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v16 < 1)
        {
          break;
        }

        ++v13;
        v10 += 24;
        --v11;
        v12 += 24;
        a1 = v16;
        if (24 * *(a3 + 16) == v10)
        {
          goto LABEL_67;
        }
      }

      v56 = a4;
      if (v13 == 1)
      {
        v9 = *(a3 + 24);
        a4 = *(a3 + 32);
        a5 = *(a3 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        a3 = v9;
      }

      else if (v13 == 2)
      {
        v17 = *(a3 + 24);
        v18 = *(a3 + 32);
        v19 = *(a3 + 40);
        v20 = *(a3 + 48);
        a4 = *(a3 + 56);
        a5 = *(a3 + 64);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        specialized Rope.Builder._insertBeforeTip(_:)(v17, v18, v19);
        a3 = v20;
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull())
        {
          v54 = a5;
        }

        else
        {
          v21 = specialized Rope._Node.copy()(a3);
          v56 = v22;
          v54 = v23;
          swift_unknownObjectRelease();
          a3 = v21;
        }

        v24 = *(a3 + 16);
        if (v13 - 1 >= v24 - 1)
        {
          v29 = v54;
          v30 = v56;
        }

        else
        {
          if (v24 < v13)
          {
            goto LABEL_60;
          }

          if (24 * *(a3 + 16) - 24 == v10)
          {
            swift_unknownObjectRetain();
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = v13;
          }

          else
          {
            if (v24 <= v13)
            {
              goto LABEL_66;
            }

            v53 = v24 - v13;
            swift_unknownObjectRetain();
            v26 = 0;
            v27 = 0;
            v31 = v24 + v11;
            v32 = (a3 + v12);
            do
            {
              v33 = *(v32 - 1);
              v34 = *v32;
              swift_unknownObjectRelease();
              v15 = __OFADD__(v27, v33);
              v27 += v33;
              if (v15)
              {
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v15 = __OFADD__(v26, v34);
              v26 += v34;
              if (v15)
              {
                goto LABEL_56;
              }

              v32 += 3;
              --v31;
            }

            while (v31);
            v35 = *(a3 + 16);
            v15 = __OFSUB__(v35, v53);
            v28 = v35 - v53;
            v25 = v15;
          }

          if (v25)
          {
            goto LABEL_61;
          }

          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v28 >> 16)
          {
            goto LABEL_63;
          }

          *(a3 + 16) = v28;
          swift_unknownObjectRelease();
          v30 = v56 - v27;
          if (__OFSUB__(v56, v27))
          {
            goto LABEL_64;
          }

          v29 = v54 - v26;
          if (__OFSUB__(v54, v26))
          {
            goto LABEL_65;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
        {
          v36 = specialized Rope._Node.copy()(a3);
          v30 = v37;
          v29 = v38;
          swift_unknownObjectRelease();
          a3 = v36;
        }

        v39 = *(a3 + v10 + 24);
        a4 = *(a3 + v10 + 32);
        v40 = *(a3 + v10 + 40);
        memmove((a3 + v10 + 24), (a3 + v10 + 48), 24 * (*(a3 + 16) - v13));
        v41 = *(a3 + 16);
        swift_unknownObjectRetain();
        if (!v41)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
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
          return;
        }

        *(a3 + 16) = v41 - 1;
        swift_unknownObjectRelease();
        if (__OFSUB__(v30, a4))
        {
          goto LABEL_58;
        }

        if (__OFSUB__(v29, v40))
        {
          goto LABEL_59;
        }

        specialized Rope.Builder._insertBeforeTip(_:)(a3, v30 - a4, v29 - v40);
        a5 = v40;
        a3 = v39;
      }

      if (a1 >= a5)
      {
        goto LABEL_3;
      }
    }

    v57 = a1;
    v42 = specialized closure #2 in Rope._Node.removeSuffix<A>(from:in:into:)((a3 + 16), (a3 + 24), &v57);
    v44 = v43;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    v45 = specialized Rope._Node._leafRemoveSuffix(returning:into:)(v42, a2, a3, a4, a5);
    if (v44 < 0 || v45 < v44)
    {
      goto LABEL_68;
    }

    v48 = v46;
    v49 = v47;
    if (v44)
    {
      v50 = a2[4];
      v51 = a2[5];
      v52 = a2[6];
      a2[5] = 0;
      a2[6] = 0;
      a2[4] = 0;
      if (v51)
      {
        specialized Rope.Builder._appendNow(_:)(v50, v51, v52);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(a2[4], a2[5]);
      }

      swift_unknownObjectRelease();
      a2[4] = v44;
      a2[5] = v48;
      a2[6] = v49;
    }

    else
    {
LABEL_52:
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_3:
    swift_unknownObjectRelease();
    specialized Rope.Builder._insertBeforeTip(_:)(a3, a4, a5);
  }
}

uint64_t specialized Rope._Node.removePrefix<A>(upTo:in:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = a4;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  swift_unknownObjectRetain();
  if (a1 < 1)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v26 = 0;
    swift_unknownObjectRetain();
    MEMORY[0x1865D26B0](&v26, 8);
    v5 = v26;
    a1 = *(a2 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    if (v16 >= v15 >> 1)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, a1);
    }

    *(a1 + 16) = v16 + 1;
    v17 = (a1 + 32 * v16);
    v17[4] = a3;
    v17[5] = v7;
    v17[6] = v6;
    v17[7] = v5;
    *(a2 + 80) = a1;
    return swift_unknownObjectRelease();
  }

  v6 = v29;
  if (v29 <= a1)
  {
LABEL_3:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  while (1)
  {
    v7 = v27;
    if (!*(v27 + 18))
    {
      break;
    }

    if (!*(v27 + 16))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = 0;
    v12 = (v27 + 40);
    while (1)
    {
      v13 = *v12;
      v12 += 3;
      v14 = a1 - v13;
      if (__OFSUB__(a1, v13))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v14 < 1)
      {
        break;
      }

      ++v11;
      a1 = v14;
      if (*(v27 + 16) == v11)
      {
        goto LABEL_11;
      }
    }

    specialized Rope._Node._innerRemovePrefix(descending:into:)(v11, a2);
    v6 = v29;
    if (a1 >= v29)
    {
      goto LABEL_3;
    }
  }

  v26 = a1;
  v18 = specialized closure #2 in Rope.builder<A>(splittingAt:in:)((v27 + 16), (v27 + 24), &v26);
  v20 = v19;
  swift_unknownObjectRelease();
  v21 = v28;
  swift_unknownObjectRetain();
  result = specialized Rope._Node._leafRemovePrefix(returning:into:)(v18, a2, v7, v21, v6);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v25 = result < v20;
    result -= v20;
    if (!v25)
    {
      specialized Rope.Builder._insertAfterTip(_:)(result, v23, v24);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in AttributedString.init<A, B>(_:including:)(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  *a2 = 0;
  v6 = *a1;
  v7 = *a1 + 64;
  v8 = 1 << *(*a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(*a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v114 = v6;
  v115 = v11;
  v111 = v4;
  v112 = a3;
  v113 = v5;
  if (v10)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v14 = v4;
      v12 = v13;
LABEL_12:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = (*(v6 + 48) + ((v12 << 10) | (16 * v15)));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(a3 + 16);

      if (v19 && (specialized __RawDictionaryStorage.find<A>(_:)(v18, v17), (v20 & 1) != 0))
      {

        v4 = v14;
        v11 = v115;
        if (!v10)
        {
          continue;
        }
      }

      else
      {
        v116 = v18;
        v130 = 0;
        memset(v129, 0, sizeof(v129));
        outlined init with copy of FloatingPointRoundingRule?(v129, &v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v125 + 1))
        {
          v122[2] = v126;
          v122[3] = v127;
          v123 = v128;
          v122[0] = v124;
          v122[1] = v125;
          outlined init with copy of AttributedString._AttributeValue(v122, &v117);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *v5;
          v23 = v17;
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
          v26 = *(v22 + 16);
          v27 = (v24 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_70;
          }

          v29 = v24;
          if (*(v22 + 24) >= v28)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v30 = v22;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v60 = static _DictionaryStorage.copy(original:)();
              v30 = v60;
              if (*(v22 + 16))
              {
                v61 = (v60 + 64);
                v62 = (v22 + 64);
                v63 = ((1 << *(v30 + 32)) + 63) >> 6;
                if (v30 != v22 || v61 >= &v62[8 * v63])
                {
                  memmove(v61, v62, 8 * v63);
                }

                v64 = 0;
                *(v30 + 16) = *(v22 + 16);
                v65 = 1 << *(v22 + 32);
                if (v65 < 64)
                {
                  v66 = ~(-1 << v65);
                }

                else
                {
                  v66 = -1;
                }

                v67 = v66 & *(v22 + 64);
                v68 = (v65 + 63) >> 6;
                v102 = v68;
                if (v67)
                {
                  do
                  {
                    v69 = __clz(__rbit64(v67));
                    v109 = (v67 - 1) & v67;
LABEL_48:
                    v72 = v69 | (v64 << 6);
                    v103 = 16 * v72;
                    v73 = (*(v22 + 48) + 16 * v72);
                    v105 = v73[1];
                    v107 = *v73;
                    v74 = 72 * v72;
                    outlined init with copy of AttributedString._AttributeValue(*(v22 + 56) + 72 * v72, &v124);
                    v75 = (*(v30 + 48) + v103);
                    *v75 = v107;
                    v75[1] = v105;
                    v76 = *(v30 + 56) + v74;
                    *v76 = v124;
                    v77 = v125;
                    v78 = v126;
                    v79 = v127;
                    *(v76 + 64) = v128;
                    *(v76 + 32) = v78;
                    *(v76 + 48) = v79;
                    *(v76 + 16) = v77;

                    v68 = v102;
                    v67 = v109;
                  }

                  while (v109);
                }

                v70 = v64;
                while (1)
                {
                  v64 = v70 + 1;
                  if (__OFADD__(v70, 1))
                  {
                    goto LABEL_72;
                  }

                  if (v64 >= v68)
                  {
                    break;
                  }

                  v71 = *(v22 + 64 + 8 * v64);
                  ++v70;
                  if (v71)
                  {
                    v69 = __clz(__rbit64(v71));
                    v109 = (v71 - 1) & v71;
                    goto LABEL_48;
                  }
                }
              }
            }

            v5 = v113;
            v31 = v116;
            if ((v29 & 1) == 0)
            {
              goto LABEL_27;
            }

LABEL_19:
            v34 = *(v30 + 56) + 72 * v25;
            v36 = *(v34 + 16);
            v35 = *(v34 + 32);
            v37 = *(v34 + 48);
            v128 = *(v34 + 64);
            v127 = v37;
            v124 = *v34;
            v125 = v36;
            v126 = v35;
            v38 = *(v30 + 56) + 72 * v25;
            v39 = v118;
            v40 = v119;
            v41 = v120;
            *(v38 + 64) = v121;
            *(v38 + 32) = v40;
            *(v38 + 48) = v41;
            *(v38 + 16) = v39;
            *v38 = v117;
            outlined destroy of AttributedString._AttributeValue(v122);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
            v31 = v116;
            v30 = v22;
            v32 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v17);
            if ((v29 & 1) != (v33 & 1))
            {
              goto LABEL_74;
            }

            v25 = v32;
            v5 = v113;
            if (v29)
            {
              goto LABEL_19;
            }

LABEL_27:
            *(v30 + 8 * (v25 >> 6) + 64) |= 1 << v25;
            v52 = (*(v30 + 48) + 16 * v25);
            *v52 = v31;
            v52[1] = v23;
            v53 = *(v30 + 56) + 72 * v25;
            *v53 = v117;
            v54 = v118;
            v55 = v119;
            v56 = v120;
            *(v53 + 64) = v121;
            *(v53 + 32) = v55;
            *(v53 + 48) = v56;
            *(v53 + 16) = v54;
            v57 = *(v30 + 16);
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_71;
            }

            *(v30 + 16) = v59;

            outlined destroy of AttributedString._AttributeValue(v122);
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v128 = 0;
          }

          *v5 = v30;
          v4 = v111;
          a3 = v112;
LABEL_30:
          v6 = v114;
        }

        else
        {
          outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
          v4 = v14;
          if (v43)
          {
            v44 = v42;
            v45 = swift_isUniquelyReferenced_nonNull_native();
            v46 = *v5;
            if (v45)
            {
              v47 = v46;
              v23 = v17;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v80 = static _DictionaryStorage.copy(original:)();
              v47 = v80;
              v23 = v17;
              if (*(v46 + 16))
              {
                v81 = (v80 + 64);
                v82 = (v46 + 64);
                v83 = ((1 << *(v47 + 32)) + 63) >> 6;
                if (v47 != v46 || v81 >= &v82[8 * v83])
                {
                  memmove(v81, v82, 8 * v83);
                }

                v84 = 0;
                *(v47 + 16) = *(v46 + 16);
                v85 = 1 << *(v46 + 32);
                if (v85 < 64)
                {
                  v86 = ~(-1 << v85);
                }

                else
                {
                  v86 = -1;
                }

                v87 = v86 & *(v46 + 64);
                v88 = (v85 + 63) >> 6;
                v104 = v88;
                if (v87)
                {
                  do
                  {
                    v89 = __clz(__rbit64(v87));
                    v110 = (v87 - 1) & v87;
LABEL_65:
                    v92 = v89 | (v84 << 6);
                    v106 = 16 * v92;
                    v93 = (*(v46 + 48) + 16 * v92);
                    v94 = v93[1];
                    v108 = *v93;
                    v95 = 72 * v92;
                    outlined init with copy of AttributedString._AttributeValue(*(v46 + 56) + 72 * v92, &v124);
                    v96 = (*(v47 + 48) + v106);
                    *v96 = v108;
                    v96[1] = v94;
                    v97 = *(v47 + 56) + v95;
                    *v97 = v124;
                    v98 = v125;
                    v99 = v126;
                    v100 = v127;
                    *(v97 + 64) = v128;
                    *(v97 + 32) = v99;
                    *(v97 + 48) = v100;
                    *(v97 + 16) = v98;

                    v88 = v104;
                    v87 = v110;
                  }

                  while (v110);
                }

                v90 = v84;
                while (1)
                {
                  v84 = v90 + 1;
                  if (__OFADD__(v90, 1))
                  {
                    goto LABEL_73;
                  }

                  if (v84 >= v88)
                  {
                    break;
                  }

                  v91 = *(v46 + 64 + 8 * v84);
                  ++v90;
                  if (v91)
                  {
                    v89 = __clz(__rbit64(v91));
                    v110 = (v91 - 1) & v91;
                    goto LABEL_65;
                  }
                }
              }

              v4 = v111;
              a3 = v112;
            }

            v48 = *(v47 + 56) + 72 * v44;
            v124 = *v48;
            v50 = *(v48 + 32);
            v49 = *(v48 + 48);
            v51 = *(v48 + 64);
            v125 = *(v48 + 16);
            v126 = v50;
            v128 = v51;
            v127 = v49;
            specialized _NativeDictionary._delete(at:)(v44, v47);
            v5 = v113;
            *v113 = v47;
            goto LABEL_30;
          }

          v128 = 0;
          v126 = 0u;
          v127 = 0u;
          v124 = 0u;
          v125 = 0u;
          v6 = v114;
          v23 = v17;
        }

        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v116, v23, &v124, v129);

        outlined destroy of TermOfAddress?(v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        *v4 = 1;
        v11 = v115;
        if (!v10)
        {
          continue;
        }
      }

LABEL_11:
      v14 = v4;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1, v7);
  return AttributedString.subscript.setter(v9, v11, a2, a3);
}

uint64_t specialized AttributedString.subscript.setter(_OWORD *a1)
{
  v2 = a1[3];
  v23[2] = a1[2];
  v23[3] = v2;
  v23[4] = a1[4];
  v3 = a1[1];
  v23[0] = *a1;
  v23[1] = v3;
  v4 = *v1;
  v5 = *(*v1 + 40);
  v23[5] = *(*v1 + 24);
  v23[6] = v5;
  v23[7] = *(v4 + 56);
  *&v18 = v4;
  *(&v18 + 1) = BigString.startIndex.getter();
  *&v19 = v6;
  *(&v19 + 1) = v7;
  *&v20 = v8;
  *(&v20 + 1) = BigString.endIndex.getter();
  *&v21 = v9;
  *(&v21 + 1) = v10;
  v22 = v11;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v19;
  outlined destroy of AttributedString.CharacterView(v24);
  v20 = v15;
  v21 = v16;
  v22 = v17;
  v18 = v13;
  v19 = v14;
  specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v18, v23);
  return outlined destroy of AttributedSubstring(v23);
}

uint64_t storeEnumTagSinglePayload for AttributedString._InternalRun(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString._InternalRun(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v3, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString._InternalRun()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  specialized Dictionary<>.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributedString._InternalRun(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  MEMORY[0x1865CD060](*v1);
  specialized Dictionary<>.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString._InternalRun()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  specialized Dictionary<>.hash(into:)(v5, v2);
  specialized Set.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

void protocol witness for RopeElement.summary.getter in conformance AttributedString._InternalRun(void *a1@<X8>)
{
  v2 = *v1;
  *a1 = 1;
  a1[1] = v2;
}

uint64_t *protocol witness for RopeElement.split(at:) in conformance AttributedString._InternalRun@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *v2 - v3;
  if (*v2 < v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = v2[1];
  v6 = v2[2];
  *v2 = v3;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

void *protocol witness for RopeSummary.add(_:) in conformance AttributedString._InternalRun.Summary(void *result)
{
  if (__OFADD__(*v1, *result))
  {
    __break(1u);
  }

  else
  {
    v2 = result[1];
    *v1 += *result;
    v3 = v1[1];
    v4 = __OFADD__(v3, v2);
    v5 = v3 + v2;
    if (!v4)
    {
      v1[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RopeSummary.subtract(_:) in conformance AttributedString._InternalRun.Summary(void *result)
{
  if (__OFSUB__(*v1, *result))
  {
    __break(1u);
  }

  else
  {
    v2 = result[1];
    *v1 -= *result;
    v3 = v1[1];
    v4 = __OFSUB__(v3, v2);
    v5 = v3 - v2;
    if (!v4)
    {
      v1[1] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for AttributedString._InternalRun.Summary(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRun.Summary and conformance AttributedString._InternalRun.Summary);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRun and conformance AttributedString._InternalRun()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRun and conformance AttributedString._InternalRun;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRun and conformance AttributedString._InternalRun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRun and conformance AttributedString._InternalRun);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString._InternalRuns(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString._InternalRuns(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t AttributedString._InternalRuns.startIndex.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (result)
  {
    v3 = *(result + 18);
  }

  else
  {
    v3 = 0;
  }

  *a3 = a2;
  a3[1] = v3;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  return result;
}

uint64_t AttributedString._InternalRuns.index(_:offsetBy:limitedBy:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v14 = a3[4];
  v15 = a1[4];
  v16 = *a1;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (v14 < v15)
    {
      goto LABEL_8;
    }

    result = specialized Rope.distance<A>(from:to:in:)(v16, a1[1], a1[2], *a3, a3[1], a3[2], a4, a5, a6, a7);
    if (result >= a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
LABEL_10:
    *a8 = v18;
    a8[1] = v19;
    a8[2] = v22;
    a8[3] = v20;
    a8[4] = v21;
    return result;
  }

  if (v15 >= v14)
  {
    result = specialized Rope.distance<A>(from:to:in:)(v16, a1[1], a1[2], *a3, a3[1], a3[2], a4, a5, a6, a7);
    if (result > a2)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v29 = v15;
  v24 = a1[1];
  v23 = a1[2];
  v32 = v16;
  v33 = v24;
  v34 = v23;
  v31 = a2;
  specialized Rope.formIndex<A>(_:offsetBy:in:preferEnd:)(&v32, &v31, 0, a4, a5, a6, a7);
  v25 = a4;
  v19 = v33;
  v22 = v34;
  v28 = a6;
  v18 = v32;
  result = specialized Rope.distance<A>(from:to:in:)(v16, v24, v23, v32, v33, v34, v25, a5, v28, a7);
  v26 = a1[3];
  v27 = __OFADD__(v26, a2);
  v20 = v26 + a2;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v21 = v29 + result;
    if (!__OFADD__(v29, result))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance AttributedString._InternalRuns@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v16 = *result;
  v17 = v4;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = v5 - 1;
    v11 = v6;
    specialized Rope.formIndex(before:)(&v16, v8, v7, v9, v10);
    v12 = v16;
    v13 = v17;
    v14 = specialized Rope.subscript.getter(v16, *(&v16 + 1), v17, v8, v7, v9, v10);

    if (!__OFSUB__(v11, v14))
    {
      *a2 = v12;
      *(a2 + 16) = v13;
      *(a2 + 24) = v15;
      *(a2 + 32) = v11 - v14;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance AttributedString._InternalRuns(uint64_t result)
{
  v2 = *(result + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v7 = v1[2];
    v6 = v1[3];
    v10 = v1;
    v8 = *v1;
    v9 = v10[1];
    *(result + 24) = v4;
    specialized Rope.formIndex(before:)(result, v8, v9, v7, v6);
    v11 = specialized Rope.subscript.getter(*v5, v5[1], v5[2], v8, v9, v7, v6);

    v12 = v5[4];
    v3 = __OFSUB__(v12, v11);
    v13 = v12 - v11;
    if (!v3)
    {
      v5[4] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.startIndex.getter in conformance AttributedString._InternalRuns(void *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v2 = *(v2 + 18);
  }

  *a1 = v1[3];
  a1[1] = v2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
}

unint64_t protocol witness for Collection.endIndex.getter in conformance AttributedString._InternalRuns@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  result = specialized Rope._endPath.getter(v3);
  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v5;
  a1[1] = result;
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  a1[2] = 0;
  a1[3] = v9;
  a1[4] = v8;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString._InternalRuns(uint64_t *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = specialized Rope.subscript.getter(*a2, *(a2 + 8), *(a2 + 16), *v2, v2[1], v2[2], v2[3]);
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  return protocol witness for Collection.subscript.read in conformance AttributedString._InternalRuns;
}

void protocol witness for Collection.subscript.read in conformance AttributedString._InternalRuns(void **a1)
{
  v1 = *a1;

  free(v1);
}

unint64_t protocol witness for Collection.subscript.getter in conformance AttributedString._InternalRuns@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  v12 = a1[3];
  v13 = a1[1];
  v15 = a1[2];
  v14 = a1[4];
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = *v2;
  v10 = v4;
  result = specialized Rope._endPath.getter(v7);
  if (v7)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < *(&v14 + 1))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *a2 = v11;
  *(a2 + 16) = v13;
  *(a2 + 32) = v15;
  *(a2 + 48) = v12;
  *(a2 + 64) = v14;
  *(a2 + 80) = v10;

  return swift_unknownObjectRetain();
}

uint64_t specialized Collection<>.indices.getter@<X0>(uint64_t a1@<X8>)
{
  result = outlined init with copy of AttributedString.Runs.NSAttributesSlice(v1, a1);
  v4 = *(v1 + 96);
  if (v4 == 2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 88);
    v11 = *(v1 + 72);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSIy10Foundation16AttributedStringV4RunsV17NSAttributesSliceVGMd);
    v6 = a1 + *(result + 36);
    v7 = *(*v1 + 16);
    *v6 = v11;
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = v7;
    v8 = *(v1 + 208);
    if (v8 != 2)
    {
      v9 = *(v1 + 200);
      v10 = a1 + *(result + 40);
      *v10 = *(v1 + 184);
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      *(v10 + 32) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *specialized Collection<>.indices.getter@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a4;
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  v5 = result[9];
  if (v5)
  {
    v6 = result[11];
  }

  else
  {
    v6 = 0;
  }

  if (a2 < 0 || (v7 = a2, v6 < a2))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v8 = result;
  v46 = result[12];
  v48 = v4;
  v44 = result[10];
  if (v5)
  {
    v9 = (v5 + 16);
    LODWORD(v10) = *(v5 + 16);
    if (result[11] > a2 && v10 != 0)
    {
      v47 = a2;
      v30 = *(v5 + 18);
      swift_unknownObjectRetain_n();

      if (v30)
      {
        v14 = 24;
        v31 = v47;
        v15 = v30;
        v32 = v5;
        do
        {
          v33 = *v9;
          if (*v9)
          {
            v35 = 0;
            v36 = (v32 + 40);
            while (1)
            {
              v37 = *v36;
              v36 += 3;
              v38 = v31 - v37;
              if (__OFSUB__(v31, v37))
              {
                break;
              }

              if (__OFADD__(v38, 1))
              {
                goto LABEL_87;
              }

              if (v38 + 1 < 1)
              {
                v33 = v35;
                goto LABEL_38;
              }

              ++v35;
              v31 = v38;
              if (v33 == v35)
              {
                goto LABEL_47;
              }
            }

            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
            goto LABEL_90;
          }

          v38 = v31;
LABEL_47:
          if (v38)
          {
            goto LABEL_92;
          }

          v31 = 0;
LABEL_38:
          v15 = (v33 << ((4 * v30 + 8) & 0x3C)) | ((-15 << ((4 * v30 + 8) & 0x3C)) - 1) & v15;
          v13 = *(v32 + 24 + 24 * v33);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v9 = (v13 + 16);
          LOBYTE(v30) = *(v13 + 18);
          v32 = v13;
        }

        while (v30);
        LODWORD(v10) = *v9;
        if (*v9)
        {
          v7 = v47;
          goto LABEL_55;
        }

        v10 = 0;
        v7 = v47;
        if (!v31)
        {
LABEL_61:
          v14 = 0;
LABEL_63:
          swift_unknownObjectRelease();
          v12 = v15 & 0xFFFFFFFFFFFFF0FFLL | (v10 << 8);
          v4 = v48;
          v9 = v46;
          goto LABEL_13;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v19 = v34;
LABEL_82:
        result = swift_unknownObjectRelease();
        v29 = v8 & 0xFFFFFFFFFFFFF0FFLL | (v19 << 8);
        v8 = v46;
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_83;
      }

      v15 = 0;
      v7 = v47;
      v31 = v47;
      v13 = v5;
LABEL_55:
      v34 = 0;
      v39 = 24;
      v14 = v31;
      v10 = v10;
      while (1)
      {
        v40 = *(v13 + v39);
        v41 = v14 - v40;
        if (__OFSUB__(v14, v40))
        {
          break;
        }

        if (__OFADD__(v41, 1))
        {
          goto LABEL_91;
        }

        if (v41 + 1 < 1)
        {
          v10 = v34;
          goto LABEL_63;
        }

        ++v34;
        v39 += 24;
        v14 -= v40;
        if (v10 == v34)
        {
          if (v41)
          {
            goto LABEL_80;
          }

          goto LABEL_61;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }
  }

  swift_unknownObjectRetain();

  v9 = v46;
  result = specialized Rope._endPath.getter(v5);
  v12 = result;
  v13 = 0;
  v14 = 0;
  if (v5)
  {
LABEL_13:
    v15 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v12, v13, v5, v44);
    result = swift_unknownObjectRelease();
    v16 = v7 - v14;
    if (__OFSUB__(v7, v14))
    {
      __break(1u);
      goto LABEL_67;
    }
  }

  else
  {
    v15 = 0;
    v16 = v7;
  }

  v4[3] = v9;
  v4[4] = v12;
  v4[5] = v13;
  v4[6] = v15;
  v4[7] = v16;
  v15 = *(v8 + 72);
  v9 = *(v8 + 80);
  v17 = *(v8 + 88);
  v8 = *(v8 + 96);
  if (v7 != a3)
  {
    v28 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v28);
    v29 = result;
    if (v15)
    {
      result = swift_unknownObjectRelease();
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v17 = 0;
    }

    goto LABEL_85;
  }

  v47 = v7;
  if (v15)
  {
    if (v17 < v7)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v18 = (v15 + 16);
    LODWORD(v19) = *(v15 + 16);
    if (*(v15 + 16) && v17 > v47)
    {
      v46 = v8;
      v20 = *(v15 + 18);
      result = swift_unknownObjectRetain_n();
      if (v20)
      {
        v21 = v47;
        v8 = v20;
        v22 = v15;
        do
        {
          v23 = *v18;
          if (*v18)
          {
            v24 = 0;
            v25 = (v22 + 40);
            while (1)
            {
              v26 = *v25;
              v25 += 3;
              v27 = v21 - v26;
              if (__OFSUB__(v21, v26))
              {
                goto LABEL_88;
              }

              if (__OFADD__(v27, 1))
              {
                goto LABEL_89;
              }

              if (v27 + 1 < 1)
              {
                v23 = v24;
                goto LABEL_22;
              }

              ++v24;
              v21 = v27;
              if (v23 == v24)
              {
                goto LABEL_31;
              }
            }
          }

          v27 = v21;
LABEL_31:
          if (v27)
          {
            goto LABEL_95;
          }

          v21 = 0;
LABEL_22:
          v8 = (v23 << ((4 * v20 + 8) & 0x3C)) | ((-15 << ((4 * v20 + 8) & 0x3C)) - 1) & v8;
          v10 = *(v22 + 24 + 24 * v23);
          swift_unknownObjectRetain();
          result = swift_unknownObjectRelease();
          v18 = (v10 + 16);
          LOBYTE(v20) = *(v10 + 18);
          v22 = v10;
        }

        while (v20);
        LODWORD(v19) = *v18;
        if (*v18)
        {
          goto LABEL_72;
        }

        v19 = 0;
LABEL_77:
        if (!v21)
        {
          v14 = 0;
          goto LABEL_82;
        }

        goto LABEL_100;
      }

      v8 = 0;
      v21 = v47;
      v10 = v15;
LABEL_72:
      v34 = 0;
      v42 = 24;
      v14 = v21;
      v19 = v19;
      while (1)
      {
        v43 = *(v10 + v42);
        v21 = v14 - v43;
        if (__OFSUB__(v14, v43))
        {
          break;
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_94;
        }

        if (v21 + 1 < 1)
        {
          goto LABEL_81;
        }

        ++v34;
        v42 += 24;
        v14 -= v43;
        if (v19 == v34)
        {
          goto LABEL_77;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

LABEL_67:
    swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v15);
    v29 = result;
    v10 = 0;
    v14 = 0;
    if (v15)
    {
LABEL_68:
      v9 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v8, v29, v10, v15, v9);
      result = swift_unknownObjectRelease();
      goto LABEL_84;
    }

LABEL_83:
    v9 = 0;
LABEL_84:
    v17 = v47 - v14;
    if (!__OFSUB__(v47, v14))
    {
LABEL_85:
      v48[8] = v8;
      v48[9] = v29;
      v48[10] = v10;
      v48[11] = v9;
      v48[12] = v17;
      return result;
    }

    goto LABEL_97;
  }

  if (v7 <= 0)
  {
    goto LABEL_67;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

unint64_t specialized Collection<>.indices.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  if (a1)
  {
    v7 = *(a1 + 18);
    a1 = swift_unknownObjectRetain();
    v10 = a3;
    v11 = a2;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v7 = 0;
  }

  a5[4] = a4;
  a5[5] = v7;
  a5[7] = 0;
  a5[8] = 0;
  a5[6] = 0;
  result = specialized Rope._endPath.getter(a1);
  a5[9] = a4;
  a5[10] = result;
  a5[11] = 0;
  a5[12] = v11;
  a5[13] = v12;
  return result;
}

BOOL protocol witness for Collection.isEmpty.getter in conformance AttributedString._InternalRuns()
{
  v1 = *v0;
  v2 = v0[2];
  specialized Rope._endPath.getter(*v0);
  return !v1 || v2 == 0;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance AttributedString._InternalRuns@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v18 = a1[3];
  v8 = v3[1];
  v15 = a1[4];
  v16 = *v3;
  v9 = v3[2];
  v10 = v3[3];
  v20 = *a1;
  v5 = v20;
  v21 = v6;
  v22 = v7;
  v19 = a2;
  specialized Rope.formIndex<A>(_:offsetBy:in:preferEnd:)(&v20, &v19, 0, v16, v8, v9, v10);
  v11 = v20;
  v12 = v21;
  v13 = v22;
  result = specialized Rope.distance<A>(from:to:in:)(v5, v6, v7, v20, v21, v22, v16, v8, v9, v10);
  if (__OFADD__(v18, a2))
  {
    __break(1u);
  }

  else if (!__OFADD__(v15, result))
  {
    *a3 = v11;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = v18 + a2;
    a3[4] = v15 + result;
    return result;
  }

  __break(1u);
  return result;
}

double protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance AttributedString._InternalRuns@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  AttributedString._InternalRuns.index(_:offsetBy:limitedBy:)(a1, a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), v8);
  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v9;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AttributedString._InternalRuns(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 72);
  if (v2 >= *(a2 + 32))
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

{
  v2 = *(result + 32);
  if (v2 < *(a2 + 32) || *(a2 + 72) < v2)
  {
    __break(1u);
  }

  return result;
}

{
  if (*(result + 32) < *(a2 + 32) || *(a2 + 72) < *(result + 72))
  {
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for Collection.index(after:) in conformance AttributedString._InternalRuns@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v11 = *v2;
  v10 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  *&v19 = result;
  *(&v19 + 1) = v6;
  v20 = v7;
  v14 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = specialized Rope.subscript.getter(result, v6, v7, v11, v10, v12, v13);

    v16 = __OFADD__(v9, v15);
    v17 = v9 + v15;
    if (!v16)
    {
      result = specialized Rope.formIndex(after:)(&v19, v11, v10, v12, v13);
      v18 = v20;
      *a2 = v19;
      *(a2 + 16) = v18;
      *(a2 + 24) = v14;
      *(a2 + 32) = v17;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString._InternalRuns(unint64_t *result)
{
  v2 = result[3];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  result[3] = v4;
  v10 = specialized Rope.subscript.getter(*result, v5[1], v5[2], v7, v6, v8, v9);

  v11 = v5[4];
  v3 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5[4] = v12;

  return specialized Rope.formIndex(after:)(v5, v7, v6, v8, v9);
}

void protocol witness for Sequence.makeIterator() in conformance AttributedString._InternalRuns(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = *v1;
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  v5 = v4;
  if (v4)
  {
    v5 = *(v4 + 18);
  }

  *(a1 + 32) = v2;
  *(a1 + 40) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AttributedString._InternalRuns()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v0[1], v0[2], v0[3]);
  swift_unknownObjectRelease();
  return v1;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index()
{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index;
  if (!lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._InternalRuns.Index and conformance AttributedString._InternalRuns.Index);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<AttributedString._InternalRuns> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type AttributedString._InternalRuns and conformance AttributedString._InternalRuns();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AttributedString._InternalRuns.index(atUTF8Offset:preferEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  result = specialized Rope.find<A>(at:in:preferEnd:)(a1, a2, a3, a4, a5, a6);
  if (result == a6)
  {
    v16 = v13;
    v17 = v14;
    v18 = v15;
    if (a3)
    {
      result = specialized Rope._Node.distanceFromStart<A>(to:in:)(a6, v13, v14, a3, a4);
      v19 = a1 - v18;
      if (!__OFSUB__(a1, v18))
      {
LABEL_4:
        *a7 = a6;
        a7[1] = v16;
        a7[2] = v17;
        a7[3] = result;
        a7[4] = v19;
        a7[5] = v18;
        return result;
      }
    }

    else
    {
      result = 0;
      v19 = a1 - v15;
      if (!__OFSUB__(a1, v15))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *specialized AttributedString._InternalRuns.updateAndCoalesce(at:with:)(uint64_t *result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if (*result != a2[3])
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!*a2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v46 = result[3];
  v47 = result[4];
  v45 = result;
  v6 = result[1];
  specialized Rope._Node._prepareModify(at:)(v6, &v54);
  v61 = v55;
  outlined destroy of TermOfAddress?(&v61, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  outlined destroy of TermOfAddress?(&v61 + 8, &_sShySSGMd);
  v51 = v54;
  v52 = v55;
  v53 = v56;
  result = *a3;
  v7 = *(a3 + 8);
  *&v52 = result;
  *(&v52 + 1) = v7;
  v8 = v3 + 1;
  a2[3] = v3 + 1;
  if (!*a2)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v48 = result;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v9 = specialized Rope._Node._finalizeModify(_:)(&v50, &v51);

  v10 = *a2;
  v11 = a2[3];
  *&v51 = v3 + 1;
  *(&v51 + 1) = v6;
  *&v52 = v9;
  if (v8 != v11)
  {
    goto LABEL_48;
  }

  result = specialized Rope._endPath.getter(v10);
  if (v6 >= result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = (4 * *(v9 + 18) + 8) & 0x3C;
  v13 = ((v6 >> v12) & 0xF) + 1;
  v49 = v7;
  if (v13 >= *(v9 + 16))
  {
    if (specialized Rope._Node.formSuccessor(of:)(&v51, v10))
    {
      v14 = *(&v51 + 1);
      v16 = v52;
      v15 = v51;
    }

    else
    {
      v14 = specialized Rope._endPath.getter(v10);
      v16 = 0;
      v15 = v8;
    }
  }

  else
  {
    v14 = (v13 << v12) | ((-15 << v12) - 1) & v6;
    v15 = v8;
    v16 = v9;
  }

  result = specialized Rope._endPath.getter(v10);
  if (v14 >= result)
  {
    v21 = v48;
LABEL_16:
    v17 = v49;
    goto LABEL_27;
  }

  if (v15 != v8)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v17 = v49;
  if (v16)
  {
    v18 = v16 + 24 * ((v14 >> ((4 * *(v16 + 18) + 8) & 0x3C)) & 0xF);
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);
  }

  else
  {
    specialized Rope._Node.subscript.getter(v14, v10);
    v20 = v22;
    v19 = v23;
  }

  v21 = v48;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v20, v48))
  {
    v24 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v19, v49);

    if (v24)
    {
      v6 = specialized Rope._remove(at:)(&v51, v8, v6);
      v25 = *a2;
      v26 = a2[3];
      if (v6 < specialized Rope._endPath.getter(*a2))
      {
        specialized Rope._Node.unmanagedLeaf(at:)(v6, v25);
      }

      v27 = v51;

      if (!v25)
      {
        goto LABEL_58;
      }

      result = specialized Rope._Node._prepareModify(at:)(v6, &v57);
      if (__OFADD__(v58, v27))
      {
        goto LABEL_52;
      }

      v58 += v27;
      v8 = v26 + 1;
      a2[3] = v26 + 1;
      if (!*a2)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v9 = specialized Rope._Node._finalizeModify(_:)(&v51, &v57);

      goto LABEL_16;
    }
  }

  else
  {
  }

LABEL_27:
  v28 = *a2;
  if (*a2)
  {
    if (*(v28 + 18) >= v6)
    {
      goto LABEL_36;
    }
  }

  else if (!v6)
  {
    goto LABEL_36;
  }

  v29 = a2[1];
  v30 = a2[2];
  *&v51 = v8;
  *(&v51 + 1) = v6;
  *&v52 = v9;
  specialized Rope.formIndex(before:)(&v51, v28, v29, v30, v8);
  specialized Rope.subscript.getter(v51, *(&v51 + 1), v52, v28, v29, v30, v8);
  v32 = v31;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v33, v21) & 1) == 0)
  {

LABEL_36:

    goto LABEL_37;
  }

  v34 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v32, v17);

  if ((v34 & 1) == 0)
  {
LABEL_37:
    v41 = v45;
    v42 = v46;
    v43 = v47;
LABEL_38:
    *v41 = v8;
    v41[1] = v6;
    v41[2] = v9;
    v41[3] = v42;
    v41[4] = v43;
    return result;
  }

  v35 = specialized Rope._remove(at:)(&v50, v8, v6);
  v36 = *a2;
  v37 = a2[1];
  v39 = a2[2];
  v38 = a2[3];
  if (v35 >= specialized Rope._endPath.getter(*a2))
  {
    v40 = 0;
  }

  else
  {
    v40 = specialized Rope._Node.unmanagedLeaf(at:)(v35, v36);
  }

  *&v51 = v38;
  *(&v51 + 1) = v35;
  *&v52 = v40;
  v44 = v50;

  result = specialized Rope.formIndex(before:)(&v51, v36, v37, v39, v38);
  if (v51 != v38)
  {
    goto LABEL_51;
  }

  if (!v36)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v6 = *(&v51 + 1);
  result = specialized Rope._Node._prepareModify(at:)(*(&v51 + 1), &v59);
  v43 = v47 - v60;
  if (__OFSUB__(v47, v60))
  {
    goto LABEL_53;
  }

  if (__OFADD__(v60, v44))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v60 += v44;
  v8 = v38 + 1;
  a2[3] = v38 + 1;
  if (*a2)
  {
    v9 = specialized Rope._Node._finalizeModify(_:)(&v50, &v59);

    v42 = v46 - 1;
    if (!__OFSUB__(v46, 1))
    {
      v41 = v45;
      goto LABEL_38;
    }

    goto LABEL_55;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v6 = specialized Rope._Node.copy()(*a1);
    v8 = v7;
    v10 = v9;
    swift_unknownObjectRelease();
    *a1 = v6;
    a1[1] = v8;
    a1[2] = v10;
  }

  result = swift_isUniquelyReferenced_nonNull();
  v12 = *a2;
  if ((result & 1) == 0)
  {
    v13 = specialized Rope._Node.copy()(*a2);
    v15 = v14;
    v17 = v16;
    result = swift_unknownObjectRelease();
    *a2 = v13;
    a2[1] = v15;
    v12 = v13;
    a2[2] = v17;
  }

  v18 = *(*a1 + 16);
  v19 = *(v12 + 16) + v18;
  if (v19 >= a3)
  {
    v19 = a3;
  }

  v20 = v19 - v18;
  if (__OFSUB__(v19, v18))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (!v20)
  {
    return result;
  }

  if (v20 <= 0)
  {
    v24 = __OFSUB__(0, v20);
    v20 = v18 - v19;
    if (!v24)
    {
      v21 = specialized Rope._UnsafeHandle._prependChildren(movingFromSuffixOf:count:);
      v22 = specialized Rope._UnsafeHandle._prependChildren(movingFromSuffixOf:count:);
      v23 = a1;
      return specialized Rope._Node.prependChildren(movingFromSuffixOf:count:)(v23, v20, v21, v22);
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v21 = specialized Rope._UnsafeHandle._appendChildren(movingFromPrefixOf:count:);
  v22 = specialized Rope._UnsafeHandle._appendChildren(movingFromPrefixOf:count:);
  v23 = a2;
  return specialized Rope._Node.prependChildren(movingFromSuffixOf:count:)(v23, v20, v21, v22);
}

uint64_t specialized Rope._Node.prependChildren(movingFromSuffixOf:count:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v4;
  v10 = *(*v4 + 18);
  v11 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v12 = v11 + 16;
  v13 = v11 + 24;
  v14 = v9 + 16;
  v15 = v9 + 24;
  if (v10)
  {
    v16 = a4(v12, v13, a2, v14, v15);
  }

  else
  {
    v16 = a3(v12, v13, a2, v14, v15);
  }

  v18 = v16;
  v19 = v17;
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v21 = v4[1];
  v22 = __OFADD__(v21, v18);
  v23 = v21 + v18;
  if (v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4[1] = v23;
  v24 = v4[2];
  v22 = __OFADD__(v24, v19);
  v25 = v24 + v19;
  if (v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4[2] = v25;
  v26 = a1[1];
  v22 = __OFSUB__(v26, v18);
  v27 = v26 - v18;
  if (v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  a1[1] = v27;
  v28 = a1[2];
  v22 = __OFSUB__(v28, v19);
  v29 = v28 - v19;
  if (!v22)
  {
    a1[2] = v29;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *specialized Rope._UnsafeHandle._appendChildren(movingFromPrefixOf:count:)(_WORD *a1, char *__dst, uint64_t a3, _WORD *a4, uint64_t a5)
{
  if (a3 < 1)
  {
    return 0;
  }

  v9 = (a5 + 24 * *a4);
  v10 = &__dst[24 * a3];
  if (v9 != __dst || v9 >= v10)
  {
    v12 = __dst;
    memmove(v9, __dst, 24 * a3);
    __dst = v12;
  }

  result = memmove(__dst, v10, 24 * (*a1 - a3));
  v14 = *a4;
  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 >> 16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a4 = v16;
  v17 = *a1 - a3;
  if (v17 < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = 0;
  result = 0;
  *a1 = v17;
  v19 = *a4;
  if (a3 < v19)
  {
    v19 = a3;
  }

  v20 = (24 * *a4 - 24 * v19 + a5 + 16);
  v21 = v19 + 1;
  while (--v21)
  {
    v22 = *(v20 - 1);
    v15 = __OFADD__(result, v22);
    result += v22;
    if (v15)
    {
      __break(1u);
      goto LABEL_23;
    }

    v23 = *v20;
    v20 += 3;
    v15 = __OFADD__(v18, v23);
    v18 += v23;
    if (v15)
    {
      __break(1u);
      return 0;
    }
  }

  return result;
}

uint64_t specialized Rope._UnsafeHandle._appendChildren(movingFromPrefixOf:count:)(_WORD *a1, char *__dst, uint64_t a3, _WORD *a4, uint64_t a5)
{
  if (a3 < 1)
  {
    return 0;
  }

  v9 = (a5 + 24 * *a4);
  v10 = &__dst[24 * a3];
  if (v9 != __dst || v9 >= v10)
  {
    v12 = __dst;
    memmove(v9, __dst, 24 * a3);
    __dst = v12;
  }

  result = memmove(__dst, v10, 24 * (*a1 - a3));
  v14 = *a4;
  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 >> 16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *a4 = v16;
  v17 = *a1 - a3;
  if (v17 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v18 = 0;
  *a1 = v17;
  if (a3 >= *a4)
  {
    result = *a4;
  }

  else
  {
    result = a3;
  }

  v19 = -24 * result;
  while (v19)
  {
    v20 = *(a5 + 24 * *a4 + v19);
    v19 += 24;
    v15 = __OFADD__(v18, v20);
    v18 += v20;
    if (v15)
    {
      __break(1u);
      return 0;
    }
  }

  return result;
}

char *specialized Rope._UnsafeHandle._prependChildren(movingFromSuffixOf:count:)(_WORD *a1, uint64_t a2, uint64_t a3, _WORD *a4, char *__src)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = memmove(&__src[24 * a3], __src, 24 * *a4);
  v11 = a2 + 24 * *a1;
  v12 = (v11 - 24 * a3);
  if (v11 <= __src || v12 != __src)
  {
    result = memmove(__src, v12, 24 * a3);
  }

  v14 = *a4;
  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 >> 16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *a4 = v16;
  v17 = *a1 - a3;
  if (v17 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v18 = 0;
  result = 0;
  *a1 = v17;
  v19 = *a4;
  if (v19 >= a3)
  {
    v19 = a3;
  }

  v20 = (__src + 16);
  v21 = v19 + 1;
  while (--v21)
  {
    v22 = *(v20 - 1);
    v15 = __OFADD__(result, v22);
    result += v22;
    if (v15)
    {
      __break(1u);
      goto LABEL_22;
    }

    v23 = *v20;
    v20 += 3;
    v15 = __OFADD__(v18, v23);
    v18 += v23;
    if (v15)
    {
      __break(1u);
      return 0;
    }
  }

  return result;
}

uint64_t specialized Rope._UnsafeHandle._prependChildren(movingFromSuffixOf:count:)(_WORD *a1, uint64_t a2, uint64_t a3, _WORD *a4, char *__src)
{
  if (a3 < 1)
  {
    return 0;
  }

  v5 = __src;
  result = memmove(&__src[24 * a3], __src, 24 * *a4);
  v11 = a2 + 24 * *a1;
  v12 = (v11 - 24 * a3);
  if (v11 <= v5 || v12 != v5)
  {
    result = memmove(v5, v12, 24 * a3);
  }

  v14 = *a4;
  v15 = __OFADD__(v14, a3);
  v16 = v14 + a3;
  if (v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v16;
  v17 = *a1 - a3;
  if (v17 < 0)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v18 = 0;
  *a1 = v17;
  if (*a4 >= a3)
  {
    result = a3;
  }

  else
  {
    result = *a4;
  }

  v19 = result + 1;
  while (--v19)
  {
    v20 = *v5;
    v5 += 3;
    v15 = __OFADD__(v18, v20);
    v18 += v20;
    if (v15)
    {
      __break(1u);
      return 0;
    }
  }

  return result;
}

uint64_t specialized Rope._Node.unmanagedLeaf(at:)(unint64_t a1, uint64_t a2)
{
  if (!*(a2 + 18))
  {
    return a2;
  }

  v2 = (a2 + 24 * ((a1 >> ((4 * *(a2 + 18) + 8) & 0x3C)) & 0xF));
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized Rope._Node.unmanagedLeaf(at:)(a1, v3, v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t specialized Rope._remove(at:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (v3[3] != a2)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = a3;
  if (!*v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v6 = specialized Rope._Node.remove(at:)(v13, v14, &v15);
  result = *v3;
  if (*(*v3 + 16) != 1)
  {
    if (!*(*v3 + 16))
    {
      swift_unknownObjectRelease();
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    goto LABEL_10;
  }

  if (*(result + 18))
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 24);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *v3 = v9;
    v3[1] = v8;
    v3[2] = v7;
    if (((v15 - 1) & 0xFFFFFF00) == 0)
    {
      v15 = v15 & 0xFFFFFFFFFFFFFF00 | (v15 - 1);
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_10:
  v3[3] = a2 + 1;
  v10 = v13[1];
  v11 = v13[2];
  *v5 = v13[0];
  v5[1] = v10;
  v5[2] = v11;

  if ((v6 & 0x100) != 0)
  {
    v12 = specialized Rope._endPath.getter(*v3);
  }

  else
  {
    v12 = v15;
  }

  return v12;
}

uint64_t specialized Rope._Node.remove(at:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    v10 = specialized Rope._Node.copy()(*v3);
    v12 = v11;
    v14 = v13;
    result = swift_unknownObjectRelease();
    *v4 = v10;
    v4[1] = v12;
    v9 = v10;
    v4[2] = v14;
  }

  v15 = (v9 + 16);
  v16 = 4 * *(v9 + 18);
  v17 = (v16 + 8) & 0x3C;
  v18 = (*a3 >> v17) & 0xF;
  if (v18 >= *(v9 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(v9 + 18))
  {
    v53 = a1;
    swift_unknownObjectRetain();
    v19 = specialized Rope._Node.remove(at:)(&v54, v56, a3);
    v57 = v19 & 0x101;
    result = swift_unknownObjectRelease();
    v20 = v56[0];
    v21 = v4[1];
    v22 = __OFSUB__(v21, v56[0]);
    v23 = v21 - v56[0];
    if (!v22)
    {
      v52 = a2;
      v24 = v56[1];
      v4[1] = v23;
      v25 = v4[2];
      v22 = __OFSUB__(v25, v24);
      v26 = v25 - v24;
      if (!v22)
      {
        v27 = v19 & 0x100;
        v4[2] = v26;
        v28 = v55;
        if (v19)
        {
          v51 = v55;
          v29 = v20;
          swift_unknownObjectRetain();
          v30 = specialized closure #1 in Rope._Node.fixDeficiency(on:)((v9 + 16), (v9 + 24), a3);
          swift_unknownObjectRelease();
          v31 = 0;
          v20 = v29;
          if (v27)
          {
            v28 = v51;
            if ((v30 & 1) == 0)
            {
              goto LABEL_22;
            }

LABEL_17:
            v49 = (*a3 >> v17) & 0xF;
            if (v49 >= *v15 - 1)
            {
              v31 = 1;
            }

            else
            {
              v31 = 0;
              *a3 = (((v49 + 1) << v17) | *a3 & ((-15 << v17) - 1)) & ((-256 << (v16 & 0x3C)) | 0xFF);
            }

            goto LABEL_22;
          }

          v28 = v51;
        }

        else
        {
          if ((v19 & 0x100) != 0)
          {
            goto LABEL_17;
          }

          v31 = 0;
        }

LABEL_22:
        *v53 = v54;
        *(v53 + 1) = v28;
        *v52 = v20;
        v52[1] = v24;
        LODWORD(v48) = *v15;
        goto LABEL_23;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v33 = *v4;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v34 = specialized Rope._Node.copy()(*v4);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    *v4 = v34;
    v4[1] = v36;
    v33 = v34;
    v4[2] = v38;
  }

  swift_unknownObjectRetain();
  v39 = specialized Rope._UnsafeHandle._removeChild(at:)(v18, (v33 + 16), v33 + 24);
  v41 = v40;
  v43 = v42;
  result = swift_unknownObjectRelease();
  v44 = v4[1];
  v22 = __OFSUB__(v44, 1);
  v45 = v44 - 1;
  if (v22)
  {
    goto LABEL_33;
  }

  v4[1] = v45;
  v46 = v4[2];
  v22 = __OFSUB__(v46, v39);
  v47 = v46 - v39;
  if (v22)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v4[2] = v47;
  *a1 = v39;
  a1[1] = v41;
  a1[2] = v43;
  *a2 = 1;
  a2[1] = v39;
  v48 = *(v33 + 16);
  v31 = v18 == v48;
LABEL_23:
  if (v31)
  {
    v50 = 256;
  }

  else
  {
    v50 = 0;
  }

  if (v48 >= 8)
  {
    return v50;
  }

  else
  {
    return v50 + 1;
  }
}

uint64_t specialized closure #1 in Rope._Node.fixDeficiency(on:)(unsigned __int16 *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  if (v3 < 2)
  {
    return 1;
  }

  v4 = *(a1 + 2);
  v5 = (*a3 >> ((4 * v4 + 8) & 0x3C)) & 0xFLL;
  if (!v5)
  {
    v12 = a2 + 3;
    v13 = *(*a2 + 16) + *(a2[3] + 16);
    if (v13 > 0xF)
    {
      _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(a2, a2 + 3, v13 >> 1);
      return 0;
    }

    v22 = a1;
    v11 = 1;
LABEL_16:
    _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(&a2[3 * ((*a3 >> ((4 * v4 + 8) & 0x3C)) & 0xFLL)], v12, v13);
    specialized Rope._UnsafeHandle._removeChild(at:)(v11, v22, a2);
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = &a2[3 * v5 - 3];
  v7 = *(*v6 + 16);
  v8 = &a2[3 * ((*a3 >> ((4 * v4 + 8) & 0x3C)) & 0xFLL)];
  v9 = *(*v8 + 16);
  v10 = v9 + v7;
  if ((v9 + v7) < 0x10)
  {
    _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(&a2[3 * v5 - 3], &a2[3 * v5], v10);
    specialized Rope._UnsafeHandle._removeChild(at:)(v5, a1, a2);
    result = swift_unknownObjectRelease();
    if (((v4 - 1) & 0xFFFFFF00) == 0)
    {
      v21 = *a3 & ((-15 << ((4 * v4 + 8) & 0x3C)) - 1) | ((v5 - 1) << ((4 * v4 + 8) & 0x3C));
      *a3 = ((((v21 >> ((4 * (v4 - 1) + 8) & 0x3C)) & 0xF) + v7) << ((4 * (v4 - 1) + 8) & 0x3C)) | v21 & ((-15 << ((4 * (v4 - 1) + 8) & 0x3C)) - 1);
      return 1;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = v5 + 1;
  if (v5 + 1 < v3)
  {
    v12 = &a2[3 * v11];
    v13 = v9 + *(*v12 + 16);
    if (v13 <= 0xF)
    {
      v22 = a1;
      goto LABEL_16;
    }
  }

  result = _s19CollectionsInternal4RopeV5_NodeV20redistributeChildren__2toyAEyx_Gz_AHzSitFZ10Foundation16AttributedStringV01_B3RunV_Tt2g5(v6, v8, v10 >> 1);
  if (((v4 - 1) & 0xFFFFFF00) == 0)
  {
    v16 = (4 * (v4 - 1) + 8) & 0x3C;
    v17 = ((*a3 >> v16) & 0xFLL) - v9 + *(*v8 + 16);
    if (v17 >= 0)
    {
      *a3 = (v17 << v16) | *a3 & ((-15 << v16) - 1);
      return 1;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of AttributedString.Runs.NSAttributesSlice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AttributedString._InternalRuns.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributedString._InternalRuns.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

char *specialized AttributedString._InternalRunsSlice.updateEach(with:)(char *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 9);
  if (v3)
  {
    v4 = *(result + 11);
  }

  else
  {
    v4 = 0;
  }

  if (a2 < 0 || v4 < a2)
  {
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v5 = a3;
  v6 = *(result + 10);
  v255 = (result + 72);
  v7 = *(result + 12);
  v252 = result;
  if (!v3 || ((v8 = (v3 + 16), v9 = *(v3 + 16), *(v3 + 16)) ? (v10 = *(result + 11) <= a2) : (v10 = 1), v10))
  {
    v11 = a2;
    v12 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v12);
    v13 = result;
    v14 = 0;
    v15 = 0;
    if (!v3)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v254 = *(result + 10);
  v16 = a2;
  v17 = *(v3 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v17)
  {
    v18 = 0;
    v11 = v16;
    v14 = v3;
    goto LABEL_31;
  }

  v246 = v7;
  v18 = v17;
  v19 = v3;
  do
  {
    v20 = *v8;
    if (*v8)
    {
      v21 = 0;
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *v22;
        v22 += 3;
        v24 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_320;
        }

        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v24 + 1 < 1)
        {
          v20 = v21;
          goto LABEL_17;
        }

        ++v21;
        v16 = v24;
        if (v20 == v21)
        {
          goto LABEL_26;
        }
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

    v24 = v16;
LABEL_26:
    if (v24)
    {
      goto LABEL_346;
    }

    v16 = 0;
LABEL_17:
    v18 = (v20 << ((4 * v17 + 8) & 0x3C)) | ((-15 << ((4 * v17 + 8) & 0x3C)) - 1) & v18;
    v14 = *(v19 + 24 + 24 * v20);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v8 = (v14 + 16);
    LOBYTE(v17) = *(v14 + 18);
    v19 = v14;
  }

  while (v17);
  v9 = *v8;
  if (*v8)
  {
    v5 = a3;
    v11 = a2;
LABEL_31:
    v25 = 0;
    v26 = 24;
    v15 = v16;
    v27 = v9;
    while (1)
    {
      v28 = *(v14 + v26);
      v29 = v15 - v28;
      if (__OFSUB__(v15, v28))
      {
        goto LABEL_343;
      }

      if (__OFADD__(v29, 1))
      {
        goto LABEL_344;
      }

      if (v29 + 1 < 1)
      {
        break;
      }

      ++v25;
      v26 += 24;
      v15 -= v28;
      if (v9 == v25)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }
    }

    v27 = v25;
  }

  else
  {
LABEL_318:
    v27 = 0;
    v7 = v246;
    v5 = a3;
    v11 = a2;
    if (v16)
    {
      goto LABEL_319;
    }

LABEL_37:
    v15 = 0;
  }

  result = swift_unknownObjectRelease();
  v13 = v18 & 0xFFFFFFFFFFFFF0FFLL | (v27 << 8);
  v6 = v254;
  if (v3)
  {
LABEL_13:
    v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v3, v6);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v254 = 0;
LABEL_41:
  v3 = v5;
  v30 = v11 - v15;
  v31 = v255;
  if (!__OFSUB__(v11, v15))
  {
    v32 = v11;
    v33 = v14;
    while (1)
    {
      v16 = *v31;
      v256 = v30;
      v251 = v13;
      v14 = v33;
      if (v32 == v3)
      {
        if (v16)
        {
          v34 = *(v252 + 11);
          if (v34 < v32)
          {
            goto LABEL_345;
          }

          v240 = *(v252 + 12);
          v242 = *(v252 + 10);
          v18 = v16 + 16;
          v35 = *(v16 + 16);
          v36 = *(v16 + 18);
          if (*(v16 + 16))
          {
            v37 = v34 <= v32;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v246 = v7;
            result = swift_unknownObjectRetain_n();
            if (!v36)
            {
              v43 = 0;
              v42 = a2;
              v40 = v16;
LABEL_74:
              v30 = v256;
              v50 = 0;
              v51 = 24;
              v39 = v42;
              while (1)
              {
                v52 = *(v40 + v51);
                v42 = v39 - v52;
                if (__OFSUB__(v39, v52))
                {
                  goto LABEL_322;
                }

                if (__OFADD__(v42, 1))
                {
                  goto LABEL_323;
                }

                if (v42 + 1 < 1)
                {
                  goto LABEL_82;
                }

                ++v50;
                v51 += 24;
                v39 -= v52;
                if (v35 == v50)
                {
                  v50 = v35;
                  goto LABEL_80;
                }
              }
            }

            v42 = a2;
            v43 = v36;
            v44 = v16;
            do
            {
              v45 = *v18;
              if (*v18)
              {
                v46 = 0;
                v47 = (v44 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v42 - v48;
                  if (__OFSUB__(v42, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_313;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_60;
                  }

                  ++v46;
                  v42 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_69;
                  }
                }

                __break(1u);
LABEL_313:
                __break(1u);
LABEL_314:
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
                goto LABEL_318;
              }

              v49 = v42;
LABEL_69:
              if (v49)
              {
                goto LABEL_324;
              }

              v42 = 0;
LABEL_60:
              v43 = (v45 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v43;
              v40 = *(v44 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v18 = v40 + 16;
              LOBYTE(v36) = *(v40 + 18);
              v44 = v40;
            }

            while (v36);
            LODWORD(v35) = *v18;
            if (*v18)
            {
              goto LABEL_74;
            }

            v50 = 0;
            v30 = v256;
LABEL_80:
            if (!v42)
            {
              v39 = 0;
LABEL_82:
              swift_unknownObjectRelease();
              v38 = v43 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v7 = v246;
              v3 = a3;
              v13 = v251;
              goto LABEL_83;
            }

            goto LABEL_361;
          }

          v38 = ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v36 | (v35 << ((4 * v36 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v39 = 0;
          v40 = 0;
          v30 = v256;
LABEL_83:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v240, v38, v40, v16, v242);
          result = swift_unknownObjectRelease();
        }

        else
        {
          if (v32 > 0)
          {
            goto LABEL_354;
          }

          v39 = 0;
        }

        v16 = v252;
        v41 = a2 - v39;
        if (__OFSUB__(a2, v39))
        {
          goto LABEL_338;
        }

        v32 = a2;
      }

      else if (v16)
      {
        v16 = v252;
        v41 = *(v252 + 11);
      }

      else
      {
        v41 = 0;
        v16 = v252;
      }

      if (v30 >= v41)
      {
        return result;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_327;
      }

      if (v14)
      {
        v53 = v32;
        v54 = (v14 + 24 * ((v13 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF));
        v56 = v54[4];
        v55 = v54[5];
        v57 = v54[3];
        v58 = v30 + v57;
        v59 = __OFADD__(v30, v57);

        if (v59)
        {
          goto LABEL_336;
        }

        *&v269 = v56;
        *(&v269 + 1) = v55;
        v60 = v53;
        v61 = v53;
        if (v30 >= v53)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v86 = v3;
        v87 = *(v16 + 72);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v13, v87);
        v88 = v13;
        v90 = v89;
        v92 = v91;
        result = swift_unknownObjectRelease();
        if (v7 != *(v16 + 96))
        {
          goto LABEL_340;
        }

        v93 = *(v16 + 72);
        swift_unknownObjectRetain();
        v94 = specialized Rope._Node.subscript.getter(v88, v93);
        v30 = v256;
        swift_unknownObjectRelease();

        v58 = v256 + v94;
        if (__OFADD__(v256, v94))
        {
          goto LABEL_341;
        }

        *&v269 = v90;
        *(&v269 + 1) = v92;
        v60 = a2;
        v61 = a2;
        v3 = v86;
        if (v256 >= a2)
        {
LABEL_94:
          if (v30 >= v3)
          {
            v61 = v3;
          }

          else
          {
            v61 = v30;
          }
        }
      }

      if (v58 <= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v58;
      }

      if (v58 <= v3)
      {
        v63 = v62;
      }

      else
      {
        v63 = v3;
      }

      if (v61 == v63)
      {
        goto LABEL_329;
      }

      if (v61 != v256 || v63 != v58)
      {
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0);
        if (v77)
        {
          v78 = v76;
          v79 = v269;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v80 = v79;
          }

          else
          {
            v248 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v197 = static _DictionaryStorage.copy(original:)();
            v80 = v197;
            if (*(v79 + 16))
            {
              result = (v197 + 64);
              v198 = (v79 + 64);
              v199 = ((1 << *(v80 + 32)) + 63) >> 6;
              if (v80 != v79 || result >= &v198[8 * v199])
              {
                result = memmove(result, v198, 8 * v199);
              }

              v200 = 0;
              *(v80 + 16) = *(v79 + 16);
              v201 = 1 << *(v79 + 32);
              if (v201 < 64)
              {
                v202 = ~(-1 << v201);
              }

              else
              {
                v202 = -1;
              }

              v203 = v202 & *(v79 + 64);
              v204 = (v201 + 63) >> 6;
              v241 = v204;
              if (v203)
              {
                do
                {
                  v205 = __clz(__rbit64(v203));
                  v244 = (v203 - 1) & v203;
LABEL_291:
                  v208 = v205 | (v200 << 6);
                  v209 = 16 * v208;
                  v210 = (*(v79 + 48) + 16 * v208);
                  v211 = v210[1];
                  v243 = *v210;
                  v212 = 72 * v208;
                  outlined init with copy of AttributedString._AttributeValue(*(v79 + 56) + 72 * v208, &v264);
                  v213 = (*(v80 + 48) + v209);
                  *v213 = v243;
                  v213[1] = v211;
                  v214 = *(v80 + 56) + v212;
                  *v214 = v264;
                  v215 = v265;
                  v216 = v266;
                  v217 = v267;
                  *(v214 + 64) = v268;
                  *(v214 + 32) = v216;
                  *(v214 + 48) = v217;
                  *(v214 + 16) = v215;

                  v16 = v252;
                  v204 = v241;
                  v203 = v244;
                }

                while (v244);
              }

              v206 = v200;
              while (1)
              {
                v200 = v206 + 1;
                if (__OFADD__(v206, 1))
                {
                  goto LABEL_370;
                }

                if (v200 >= v204)
                {
                  break;
                }

                v207 = *(v79 + 64 + 8 * v200);
                ++v206;
                if (v207)
                {
                  v205 = __clz(__rbit64(v207));
                  v244 = (v207 - 1) & v207;
                  goto LABEL_291;
                }
              }
            }

            v7 = v248;
          }

          v81 = *(v80 + 56) + 72 * v78;
          v264 = *v81;
          v83 = *(v81 + 32);
          v82 = *(v81 + 48);
          v84 = *(v81 + 64);
          v265 = *(v81 + 16);
          v266 = v83;
          v268 = v84;
          v267 = v82;
          specialized _NativeDictionary._delete(at:)(v78, v80);
          *&v269 = v80;
          v85 = 0uLL;
        }

        else
        {
          v268 = 0;
          v85 = 0uLL;
          v266 = 0u;
          v267 = 0u;
          v264 = 0u;
          v265 = 0u;
        }

        v263 = 0;
        v261 = v85;
        v262 = v85;
        v259 = v85;
        v260 = v85;
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001DLL, 0x800000018147CCB0, &v264, &v259);
        outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v95 = *(&v265 + 1);
        result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v95)
        {
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_347;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v61, v63, v63 - v61, v269, *(&v269 + 1));
          v96 = *(v16 + 72);
          v3 = *(v16 + 88);
          if (v96)
          {
            v97 = *(v16 + 88);
          }

          else
          {
            v97 = 0;
          }

          v98 = v256;
          if (v256 < 0 || v97 < v256)
          {
            goto LABEL_348;
          }

          v7 = *(v16 + 96);
          if (v96)
          {
            v246 = *(v16 + 96);
            v99 = *(v16 + 80);
            v100 = (v96 + 16);
            v18 = *(v96 + 16);
            v101 = *(v96 + 18);
            if (*(v96 + 16) && v256 < v3)
            {
              v254 = *(v16 + 80);
              result = swift_unknownObjectRetain_n();
              if (!v101)
              {
                v103 = 0;
                v102 = v256;
                v14 = v96;
LABEL_178:
                v134 = 0;
                v135 = 24;
                v120 = v102;
                v136 = v18;
                v98 = v256;
                while (1)
                {
                  v137 = *(v14 + v135);
                  v102 = v120 - v137;
                  if (__OFSUB__(v120, v137))
                  {
                    goto LABEL_325;
                  }

                  if (__OFADD__(v102, 1))
                  {
                    goto LABEL_326;
                  }

                  if (v102 + 1 < 1)
                  {
                    goto LABEL_186;
                  }

                  ++v134;
                  v135 += 24;
                  v120 -= v137;
                  if (v136 == v134)
                  {
                    v134 = v136;
                    goto LABEL_184;
                  }
                }
              }

              v102 = v256;
              v103 = v101;
              v104 = v96;
              do
              {
                v105 = *v100;
                if (*v100)
                {
                  v106 = 0;
                  v107 = (v104 + 40);
                  while (1)
                  {
                    v108 = *v107;
                    v107 += 3;
                    v109 = v102 - v108;
                    if (__OFSUB__(v102, v108))
                    {
                      goto LABEL_314;
                    }

                    if (__OFADD__(v109, 1))
                    {
                      goto LABEL_315;
                    }

                    if (v109 + 1 < 1)
                    {
                      v105 = v106;
                      goto LABEL_135;
                    }

                    ++v106;
                    v102 = v109;
                    if (v105 == v106)
                    {
                      goto LABEL_144;
                    }
                  }
                }

                v109 = v102;
LABEL_144:
                if (v109)
                {
                  goto LABEL_328;
                }

                v102 = 0;
LABEL_135:
                v103 = (v105 << ((4 * v101 + 8) & 0x3C)) | ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v103;
                v14 = *(v104 + 24 + 24 * v105);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v100 = (v14 + 16);
                LOBYTE(v101) = *(v14 + 18);
                v104 = v14;
              }

              while (v101);
              LODWORD(v18) = *v100;
              if (*v100)
              {
                goto LABEL_178;
              }

              v134 = 0;
              v98 = v256;
LABEL_184:
              if (!v102)
              {
                v120 = 0;
LABEL_186:
                swift_unknownObjectRelease();
                v70 = v103 & 0xFFFFFFFFFFFFF0FFLL | (v134 << 8);
                v99 = v254;
                goto LABEL_187;
              }

              goto LABEL_362;
            }

            v70 = ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v101 | (v18 << ((4 * v101 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v120 = 0;
            v14 = 0;
            v98 = v256;
LABEL_187:
            v7 = v246;
            v118 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v246, v70, v14, v96, v99);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v120 = 0;
            v14 = 0;
            v70 = 0;
            v118 = 0;
          }

          v138 = __OFSUB__(v98, v120);
          v117 = v98 - v120;
          if (v138)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v117 = v256;
          v118 = v254;
          v70 = v251;
        }

        goto LABEL_221;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_339;
      }

      if (!*v255)
      {
        goto LABEL_372;
      }

      specialized Rope._Node._prepareModify(at:)(v251, &v270);
      v285 = v271;
      v264 = v270;
      v265 = v271;
      v266 = v272;
      outlined destroy of TermOfAddress?(&v285, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(&v285 + 8, &_sShySSGMd);
      v265 = MEMORY[0x1E69E7CC8];
      v64 = v7 + 1;
      *(v16 + 96) = v7 + 1;
      if (!*(v16 + 72))
      {
        goto LABEL_373;
      }

      specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

      v65 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x800000018147CCB0);
      if (v66)
      {
        v67 = v65;
        v68 = v269;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v68;
          v70 = v251;
        }

        else
        {
          v249 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v218 = static _DictionaryStorage.copy(original:)();
          v69 = v218;
          v70 = v251;
          if (*(v68 + 16))
          {
            result = (v218 + 64);
            v219 = (v68 + 64);
            v220 = ((1 << *(v69 + 32)) + 63) >> 6;
            if (v69 != v68 || result >= &v219[8 * v220])
            {
              result = memmove(result, v219, 8 * v220);
            }

            v221 = 0;
            *(v69 + 16) = *(v68 + 16);
            v222 = 1 << *(v68 + 32);
            if (v222 < 64)
            {
              v223 = ~(-1 << v222);
            }

            else
            {
              v223 = -1;
            }

            v224 = v223 & *(v68 + 64);
            v225 = (v222 + 63) >> 6;
            if (v224)
            {
              do
              {
                v226 = __clz(__rbit64(v224));
                v245 = (v224 - 1) & v224;
LABEL_307:
                v229 = v226 | (v221 << 6);
                v230 = 16 * v229;
                v231 = (*(v68 + 48) + 16 * v229);
                v232 = *v231;
                v233 = v231[1];
                v234 = 72 * v229;
                outlined init with copy of AttributedString._AttributeValue(*(v68 + 56) + 72 * v229, &v264);
                v235 = (*(v69 + 48) + v230);
                *v235 = v232;
                v235[1] = v233;
                v236 = *(v69 + 56) + v234;
                *v236 = v264;
                v237 = v265;
                v238 = v266;
                v239 = v267;
                *(v236 + 64) = v268;
                *(v236 + 32) = v238;
                *(v236 + 48) = v239;
                *(v236 + 16) = v237;

                v70 = v251;
                v16 = v252;
                v224 = v245;
              }

              while (v245);
            }

            v227 = v221;
            while (1)
            {
              v221 = v227 + 1;
              if (__OFADD__(v227, 1))
              {
                goto LABEL_371;
              }

              if (v221 >= v225)
              {
                break;
              }

              v228 = *(v68 + 64 + 8 * v221);
              ++v227;
              if (v228)
              {
                v226 = __clz(__rbit64(v228));
                v245 = (v228 - 1) & v228;
                goto LABEL_307;
              }
            }
          }

          v7 = v249;
        }

        v71 = *(v69 + 56) + 72 * v67;
        v264 = *v71;
        v73 = *(v71 + 32);
        v72 = *(v71 + 48);
        v74 = *(v71 + 64);
        v265 = *(v71 + 16);
        v266 = v73;
        v268 = v74;
        v267 = v72;
        specialized _NativeDictionary._delete(at:)(v67, v69);
        *&v269 = v69;
        v75 = 0uLL;
      }

      else
      {
        v268 = 0;
        v75 = 0uLL;
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        v70 = v251;
      }

      v263 = 0;
      v261 = v75;
      v262 = v75;
      v259 = v75;
      v260 = v75;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001DLL, 0x800000018147CCB0, &v264, &v259);
      outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v110 = *(&v265 + 1);
      result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!v110)
      {
        if (v64 != *(v16 + 96))
        {
          goto LABEL_355;
        }

        if (!*v255)
        {
          goto LABEL_377;
        }

        specialized Rope._Node._prepareModify(at:)(v70, &v279);
        v284 = v280;
        v264 = v279;
        v265 = v280;
        v266 = v281;
        v119 = v269;

        outlined destroy of TermOfAddress?(&v284, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v284 + 8, &_sShySSGMd);
        v265 = v119;
        v7 += 2;
        *(v16 + 96) = v7;
        v117 = v256;
        if (!*(v16 + 72))
        {
          goto LABEL_376;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

        v118 = v254;
        goto LABEL_221;
      }

      if (v64 != *(v16 + 96))
      {
        goto LABEL_349;
      }

      if (!*v255)
      {
        goto LABEL_374;
      }

      specialized Rope._Node._prepareModify(at:)(v70, &v273);
      v282 = v274;
      v283 = v275;
      outlined destroy of TermOfAddress?(&v282, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v283, &_sShySSGMd);
      v264 = v273;
      v266 = v276;
      v111 = *(&v269 + 1);
      result = v269;
      v265 = v269;
      v7 += 2;
      *(v16 + 96) = v7;
      if (!*(v16 + 72))
      {
        goto LABEL_375;
      }

      v112 = result;

      v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

      v113 = *(v16 + 72);
      v114 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      if (v7 != v114)
      {
        goto LABEL_350;
      }

      v115 = v70;
      v247 = v111;
      if (!v113)
      {
        goto LABEL_351;
      }

      v116 = ((-15 << ((4 * *(v113 + 18) + 8) & 0x3C)) - 1) & *(v113 + 18) | (*(v113 + 16) << ((4 * *(v113 + 18) + 8) & 0x3C));
      result = swift_unknownObjectRetain();
      if (v70 >= v116)
      {
        goto LABEL_351;
      }

      v121 = (4 * *(v14 + 18) + 8) & 0x3C;
      v122 = ((v70 >> v121) & 0xF) + 1;
      if (v122 >= *(v14 + 16))
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v264, v113))
        {
          result = swift_unknownObjectRelease();
          v123 = *(&v264 + 1);
          v125 = v265;
          v124 = v264;
        }

        else
        {
          v123 = specialized Rope._endPath.getter(v113);
          result = swift_unknownObjectRelease();
          v125 = 0;
          *&v264 = v7;
          v124 = v7;
        }

        v118 = v254;
        v126 = v255;
      }

      else
      {
        v123 = (v122 << v121) | ((-15 << v121) - 1) & v70;
        result = swift_unknownObjectRelease();
        v124 = v7;
        v125 = v14;
        v118 = v254;
        v126 = v255;
      }

      v127 = *v126;
      v117 = v256;
      v128 = v112;
      if (!*v126)
      {
        v133 = 0;
        goto LABEL_205;
      }

      if (v123 >= (((-15 << ((4 * *(v127 + 18) + 8) & 0x3C)) - 1) & *(v127 + 18) | (*(v127 + 16) << ((4 * *(v127 + 18) + 8) & 0x3C))))
      {
        goto LABEL_203;
      }

      if (v124 != *(v16 + 96))
      {
        goto LABEL_358;
      }

      v129 = v126;
      if (v125)
      {
        v130 = v125 + 24 * ((v123 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF);
        v132 = *(v130 + 32);
        v131 = *(v130 + 40);
      }

      else
      {
        specialized Rope._Node.subscript.getter(v123, v127);
        v132 = v139;
        v131 = v140;
      }

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v132, v128) & 1) == 0)
      {

        v118 = v254;
        v126 = v129;
LABEL_203:
        v133 = *v126;
        if (!*v126)
        {
          goto LABEL_205;
        }

LABEL_204:
        v133 = *(v133 + 18);
        goto LABEL_205;
      }

      v141 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v131, v247);

      if (v141)
      {
        v70 = specialized Rope._remove(at:)(&v264, v7, v115);
        v142 = *(v16 + 96);
        if (v70 < specialized Rope._endPath.getter(*(v16 + 72)))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v70, *(v16 + 72));
        }

        v143 = v264;

        if (v142 != *(v16 + 96))
        {
          goto LABEL_368;
        }

        if (!*v255)
        {
          goto LABEL_381;
        }

        result = specialized Rope._Node._prepareModify(at:)(v70, v277);
        v264 = v277[0];
        v265 = v277[1];
        v266 = v277[2];
        if (__OFADD__(*(&v277[0] + 1), v143))
        {
          goto LABEL_369;
        }

        *(&v264 + 1) = *(&v277[0] + 1) + v143;
        v7 = v142 + 1;
        *(v16 + 96) = v142 + 1;
        v118 = v254;
        if (!*(v16 + 72))
        {
          goto LABEL_380;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

        v133 = *v255;
        if (*v255)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v118 = v254;
        v70 = v115;
        v133 = *v129;
        if (*v129)
        {
          goto LABEL_204;
        }
      }

LABEL_205:
      if (v133 < v70)
      {
        v145 = *(v16 + 72);
        v144 = *(v16 + 80);
        v146 = v70;
        v147 = *(v16 + 88);
        v148 = *(v16 + 96);
        v149 = v7;
        *&v264 = v7;
        *(&v264 + 1) = v146;
        v150 = v146;
        *&v265 = v14;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v264, v145, v144, v147, v148);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v264, *(&v264 + 1), v265, *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96));
        v152 = v151;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v153, v128))
        {
          v154 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v152, v247);

          if (v154)
          {
            v155 = specialized Rope._remove(at:)(&v264, v149, v150);
            v156 = *(v16 + 96);
            if (v155 >= specialized Rope._endPath.getter(*(v16 + 72)))
            {
              v157 = 0;
            }

            else
            {
              v157 = specialized Rope._Node.unmanagedLeaf(at:)(v155, *(v16 + 72));
            }

            *&v259 = v156;
            *(&v259 + 1) = v155;
            *&v260 = v157;
            v158 = v264;

            v159 = *(v16 + 72);
            v160 = *(v16 + 80);
            v161 = *(v16 + 88);
            v162 = *(v16 + 96);
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v259, v159, v160, v161, v162);
            result = swift_unknownObjectRelease();
            v163 = v259;
            if (v259 != *(v16 + 96))
            {
              goto LABEL_363;
            }

            if (!*v255)
            {
              goto LABEL_378;
            }

            v70 = *(&v259 + 1);
            result = specialized Rope._Node._prepareModify(at:)(*(&v259 + 1), v278);
            v264 = v278[0];
            v265 = v278[1];
            v266 = v278[2];
            v117 = v256 - *(&v278[0] + 1);
            if (__OFSUB__(v256, *(&v278[0] + 1)))
            {
              goto LABEL_364;
            }

            if (__OFADD__(*(&v278[0] + 1), v158))
            {
              goto LABEL_365;
            }

            *(&v264 + 1) = *(&v278[0] + 1) + v158;
            v7 = v163 + 1;
            *(v16 + 96) = v163 + 1;
            if (!*(v16 + 72))
            {
              goto LABEL_379;
            }

            v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

            v118 = v254 - 1;
            if (__OFSUB__(v254, 1))
            {
              goto LABEL_366;
            }

            goto LABEL_221;
          }
        }

        else
        {
        }

        v118 = v254;
        v70 = v150;
        v7 = v149;
      }

LABEL_221:

      v164 = *(v16 + 72);
      v165 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      v138 = __OFADD__(v118, 1);
      v166 = v118 + 1;
      if (v138)
      {
        goto LABEL_331;
      }

      if (v7 != v165)
      {
        goto LABEL_332;
      }

      v254 = v166;
      if (v14)
      {
        v167 = *(v14 + 24 * ((v70 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v138 = __OFADD__(v117, v167);
        v30 = v117 + v167;
        if (v138)
        {
          goto LABEL_337;
        }

        v168 = v7;
        v169 = a3;
        if (!v164)
        {
          goto LABEL_330;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        v168 = v7;
        v169 = a3;
        swift_unknownObjectRetain();
        v170 = v70;
        v171 = specialized Rope._Node.subscript.getter(v70, v164);
        v172 = v117;

        v30 = v117 + v171;
        if (__OFADD__(v172, v171))
        {
          goto LABEL_342;
        }

        v70 = v170;
        if (!v164)
        {
          goto LABEL_330;
        }
      }

      if (v70 >= (((-15 << ((4 * *(v164 + 18) + 8) & 0x3C)) - 1) & *(v164 + 18) | (*(v164 + 16) << ((4 * *(v164 + 18) + 8) & 0x3C))))
      {
        goto LABEL_330;
      }

      if (v14 && (v173 = v70, v174 = (4 * *(v14 + 18) + 8) & 0x3C, v175 = ((v70 >> v174) & 0xF) + 1, v175 < *(v14 + 16)))
      {
        result = swift_unknownObjectRelease();
        v13 = (v175 << v174) | ((-15 << v174) - 1) & v173;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v264, v164))
      {
        result = swift_unknownObjectRelease();
        v13 = *(&v264 + 1);
      }

      else
      {
        v176 = *(v164 + 18);
        v177 = *(v164 + 16);
        result = swift_unknownObjectRelease();
        v13 = ((-15 << ((4 * v176 + 8) & 0x3C)) - 1) & v176 | (v177 << ((4 * v176 + 8) & 0x3C));
        *&v264 = v168;
        *(&v264 + 1) = v13;
        *&v265 = 0;
      }

      v31 = v255;
      v3 = v169;
      v7 = v264;
      v33 = v265;
      v14 = v252;
      v32 = a2;
      if (v30 >= v3)
      {
        v178 = *v255;
        if (a2 == v3)
        {
          v7 = *(v252 + 12);
          if (v178)
          {
            v18 = *(v252 + 11);
            if (v18 < a2)
            {
              goto LABEL_356;
            }

            v246 = *(v252 + 12);
            v3 = *(v252 + 10);
            v179 = (v178 + 16);
            v180 = *(v178 + 16);
            v181 = *(v178 + 18);
            v257 = v3;
            if (*(v178 + 16) && v18 > a2)
            {
              result = swift_unknownObjectRetain_n();
              if (!v181)
              {
                v182 = 0;
                v16 = a2;
                v14 = v178;
LABEL_264:
                v190 = v255;
                v192 = 0;
                v194 = 24;
                v191 = v16;
                v195 = v180;
                v7 = v246;
                v193 = a3;
                while (1)
                {
                  v196 = *(v14 + v194);
                  v16 = v191 - v196;
                  if (__OFSUB__(v191, v196))
                  {
                    goto LABEL_333;
                  }

                  if (__OFADD__(v16, 1))
                  {
                    goto LABEL_334;
                  }

                  if (v16 + 1 < 1)
                  {
                    goto LABEL_272;
                  }

                  ++v192;
                  v194 += 24;
                  v191 -= v196;
                  if (v195 == v192)
                  {
                    v192 = v195;
                    goto LABEL_270;
                  }
                }
              }

              v16 = a2;
              v182 = v181;
              v183 = v178;
              do
              {
                v184 = *v179;
                if (*v179)
                {
                  v185 = 0;
                  v186 = (v183 + 40);
                  while (1)
                  {
                    v187 = *v186;
                    v186 += 3;
                    v188 = v16 - v187;
                    if (__OFSUB__(v16, v187))
                    {
                      goto LABEL_316;
                    }

                    if (__OFADD__(v188, 1))
                    {
                      goto LABEL_317;
                    }

                    if (v188 + 1 < 1)
                    {
                      v184 = v185;
                      goto LABEL_245;
                    }

                    ++v185;
                    v16 = v188;
                    if (v184 == v185)
                    {
                      goto LABEL_254;
                    }
                  }
                }

                v188 = v16;
LABEL_254:
                if (v188)
                {
                  goto LABEL_335;
                }

                v16 = 0;
LABEL_245:
                v182 = (v184 << ((4 * v181 + 8) & 0x3C)) | ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v182;
                v14 = *(v183 + 24 + 24 * v184);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v179 = (v14 + 16);
                LOBYTE(v181) = *(v14 + 18);
                v183 = v14;
              }

              while (v181);
              LODWORD(v180) = *v179;
              if (*v179)
              {
                goto LABEL_264;
              }

              v192 = 0;
              v7 = v246;
              v193 = a3;
              v190 = v255;
LABEL_270:
              if (!v16)
              {
                v191 = 0;
LABEL_272:
                swift_unknownObjectRelease();
                v13 = v182 & 0xFFFFFFFFFFFFF0FFLL | (v192 << 8);
                v189 = v193;
                goto LABEL_273;
              }

              goto LABEL_367;
            }

            v13 = ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v181 | (v180 << ((4 * v181 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v191 = 0;
            v14 = 0;
            v7 = v246;
            v189 = a3;
            v190 = v255;
LABEL_273:
            v33 = v14;
            v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v178, v257);
            result = swift_unknownObjectRelease();
            v32 = a2;
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_360;
            }

            v189 = v3;
            v190 = v255;
            v191 = 0;
            v33 = 0;
            v13 = 0;
            v254 = 0;
          }

          v30 = v32 - v191;
          v31 = v190;
          v3 = v189;
          if (__OFSUB__(v32, v191))
          {
            goto LABEL_353;
          }
        }

        else
        {
          v30 = 0;
          v254 = 0;
          v33 = 0;
          v13 = 0;
          v7 = *(v252 + 12);
          if (v178)
          {
            v33 = 0;
            v30 = *(v252 + 11);
            v254 = *(v252 + 10);
            v13 = ((-15 << ((4 * *(v178 + 18) + 8) & 0x3C)) - 1) & *(v178 + 18) | (*(v178 + 16) << ((4 * *(v178 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
  return result;
}

{
  v3 = *(result + 9);
  if (v3)
  {
    v4 = *(result + 11);
  }

  else
  {
    v4 = 0;
  }

  if (a2 < 0 || v4 < a2)
  {
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v5 = a3;
  v6 = *(result + 10);
  v255 = (result + 72);
  v7 = *(result + 12);
  v252 = result;
  if (!v3 || ((v8 = (v3 + 16), v9 = *(v3 + 16), *(v3 + 16)) ? (v10 = *(result + 11) <= a2) : (v10 = 1), v10))
  {
    v11 = a2;
    v12 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v12);
    v13 = result;
    v14 = 0;
    v15 = 0;
    if (!v3)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v254 = *(result + 10);
  v16 = a2;
  v17 = *(v3 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v17)
  {
    v18 = 0;
    v11 = v16;
    v14 = v3;
    goto LABEL_31;
  }

  v246 = v7;
  v18 = v17;
  v19 = v3;
  do
  {
    v20 = *v8;
    if (*v8)
    {
      v21 = 0;
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *v22;
        v22 += 3;
        v24 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_320;
        }

        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v24 + 1 < 1)
        {
          v20 = v21;
          goto LABEL_17;
        }

        ++v21;
        v16 = v24;
        if (v20 == v21)
        {
          goto LABEL_26;
        }
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

    v24 = v16;
LABEL_26:
    if (v24)
    {
      goto LABEL_346;
    }

    v16 = 0;
LABEL_17:
    v18 = (v20 << ((4 * v17 + 8) & 0x3C)) | ((-15 << ((4 * v17 + 8) & 0x3C)) - 1) & v18;
    v14 = *(v19 + 24 + 24 * v20);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v8 = (v14 + 16);
    LOBYTE(v17) = *(v14 + 18);
    v19 = v14;
  }

  while (v17);
  v9 = *v8;
  if (*v8)
  {
    v5 = a3;
    v11 = a2;
LABEL_31:
    v25 = 0;
    v26 = 24;
    v15 = v16;
    v27 = v9;
    while (1)
    {
      v28 = *(v14 + v26);
      v29 = v15 - v28;
      if (__OFSUB__(v15, v28))
      {
        goto LABEL_343;
      }

      if (__OFADD__(v29, 1))
      {
        goto LABEL_344;
      }

      if (v29 + 1 < 1)
      {
        break;
      }

      ++v25;
      v26 += 24;
      v15 -= v28;
      if (v9 == v25)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }
    }

    v27 = v25;
  }

  else
  {
LABEL_318:
    v27 = 0;
    v7 = v246;
    v5 = a3;
    v11 = a2;
    if (v16)
    {
      goto LABEL_319;
    }

LABEL_37:
    v15 = 0;
  }

  result = swift_unknownObjectRelease();
  v13 = v18 & 0xFFFFFFFFFFFFF0FFLL | (v27 << 8);
  v6 = v254;
  if (v3)
  {
LABEL_13:
    v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v3, v6);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v254 = 0;
LABEL_41:
  v3 = v5;
  v30 = v11 - v15;
  v31 = v255;
  if (!__OFSUB__(v11, v15))
  {
    v32 = v11;
    v33 = v14;
    while (1)
    {
      v16 = *v31;
      v256 = v30;
      v251 = v13;
      v14 = v33;
      if (v32 == v3)
      {
        if (v16)
        {
          v34 = *(v252 + 11);
          if (v34 < v32)
          {
            goto LABEL_345;
          }

          v240 = *(v252 + 12);
          v242 = *(v252 + 10);
          v18 = v16 + 16;
          v35 = *(v16 + 16);
          v36 = *(v16 + 18);
          if (*(v16 + 16))
          {
            v37 = v34 <= v32;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v246 = v7;
            result = swift_unknownObjectRetain_n();
            if (!v36)
            {
              v43 = 0;
              v42 = a2;
              v40 = v16;
LABEL_74:
              v30 = v256;
              v50 = 0;
              v51 = 24;
              v39 = v42;
              while (1)
              {
                v52 = *(v40 + v51);
                v42 = v39 - v52;
                if (__OFSUB__(v39, v52))
                {
                  goto LABEL_322;
                }

                if (__OFADD__(v42, 1))
                {
                  goto LABEL_323;
                }

                if (v42 + 1 < 1)
                {
                  goto LABEL_82;
                }

                ++v50;
                v51 += 24;
                v39 -= v52;
                if (v35 == v50)
                {
                  v50 = v35;
                  goto LABEL_80;
                }
              }
            }

            v42 = a2;
            v43 = v36;
            v44 = v16;
            do
            {
              v45 = *v18;
              if (*v18)
              {
                v46 = 0;
                v47 = (v44 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v42 - v48;
                  if (__OFSUB__(v42, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_313;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_60;
                  }

                  ++v46;
                  v42 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_69;
                  }
                }

                __break(1u);
LABEL_313:
                __break(1u);
LABEL_314:
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
                goto LABEL_318;
              }

              v49 = v42;
LABEL_69:
              if (v49)
              {
                goto LABEL_324;
              }

              v42 = 0;
LABEL_60:
              v43 = (v45 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v43;
              v40 = *(v44 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v18 = v40 + 16;
              LOBYTE(v36) = *(v40 + 18);
              v44 = v40;
            }

            while (v36);
            LODWORD(v35) = *v18;
            if (*v18)
            {
              goto LABEL_74;
            }

            v50 = 0;
            v30 = v256;
LABEL_80:
            if (!v42)
            {
              v39 = 0;
LABEL_82:
              swift_unknownObjectRelease();
              v38 = v43 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v7 = v246;
              v3 = a3;
              v13 = v251;
              goto LABEL_83;
            }

            goto LABEL_361;
          }

          v38 = ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v36 | (v35 << ((4 * v36 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v39 = 0;
          v40 = 0;
          v30 = v256;
LABEL_83:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v240, v38, v40, v16, v242);
          result = swift_unknownObjectRelease();
        }

        else
        {
          if (v32 > 0)
          {
            goto LABEL_354;
          }

          v39 = 0;
        }

        v16 = v252;
        v41 = a2 - v39;
        if (__OFSUB__(a2, v39))
        {
          goto LABEL_338;
        }

        v32 = a2;
      }

      else if (v16)
      {
        v16 = v252;
        v41 = *(v252 + 11);
      }

      else
      {
        v41 = 0;
        v16 = v252;
      }

      if (v30 >= v41)
      {
        return result;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_327;
      }

      if (v14)
      {
        v53 = v32;
        v54 = (v14 + 24 * ((v13 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF));
        v56 = v54[4];
        v55 = v54[5];
        v57 = v54[3];
        v58 = v30 + v57;
        v59 = __OFADD__(v30, v57);

        if (v59)
        {
          goto LABEL_336;
        }

        *&v269 = v56;
        *(&v269 + 1) = v55;
        v60 = v53;
        v61 = v53;
        if (v30 >= v53)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v86 = v3;
        v87 = *(v16 + 72);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v13, v87);
        v88 = v13;
        v90 = v89;
        v92 = v91;
        result = swift_unknownObjectRelease();
        if (v7 != *(v16 + 96))
        {
          goto LABEL_340;
        }

        v93 = *(v16 + 72);
        swift_unknownObjectRetain();
        v94 = specialized Rope._Node.subscript.getter(v88, v93);
        v30 = v256;
        swift_unknownObjectRelease();

        v58 = v256 + v94;
        if (__OFADD__(v256, v94))
        {
          goto LABEL_341;
        }

        *&v269 = v90;
        *(&v269 + 1) = v92;
        v60 = a2;
        v61 = a2;
        v3 = v86;
        if (v256 >= a2)
        {
LABEL_94:
          if (v30 >= v3)
          {
            v61 = v3;
          }

          else
          {
            v61 = v30;
          }
        }
      }

      if (v58 <= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v58;
      }

      if (v58 <= v3)
      {
        v63 = v62;
      }

      else
      {
        v63 = v3;
      }

      if (v61 == v63)
      {
        goto LABEL_329;
      }

      if (v61 != v256 || v63 != v58)
      {
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x800000018147DF20);
        if (v77)
        {
          v78 = v76;
          v79 = v269;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v80 = v79;
          }

          else
          {
            v248 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v197 = static _DictionaryStorage.copy(original:)();
            v80 = v197;
            if (*(v79 + 16))
            {
              result = (v197 + 64);
              v198 = (v79 + 64);
              v199 = ((1 << *(v80 + 32)) + 63) >> 6;
              if (v80 != v79 || result >= &v198[8 * v199])
              {
                result = memmove(result, v198, 8 * v199);
              }

              v200 = 0;
              *(v80 + 16) = *(v79 + 16);
              v201 = 1 << *(v79 + 32);
              if (v201 < 64)
              {
                v202 = ~(-1 << v201);
              }

              else
              {
                v202 = -1;
              }

              v203 = v202 & *(v79 + 64);
              v204 = (v201 + 63) >> 6;
              v241 = v204;
              if (v203)
              {
                do
                {
                  v205 = __clz(__rbit64(v203));
                  v244 = (v203 - 1) & v203;
LABEL_291:
                  v208 = v205 | (v200 << 6);
                  v209 = 16 * v208;
                  v210 = (*(v79 + 48) + 16 * v208);
                  v211 = v210[1];
                  v243 = *v210;
                  v212 = 72 * v208;
                  outlined init with copy of AttributedString._AttributeValue(*(v79 + 56) + 72 * v208, &v264);
                  v213 = (*(v80 + 48) + v209);
                  *v213 = v243;
                  v213[1] = v211;
                  v214 = *(v80 + 56) + v212;
                  *v214 = v264;
                  v215 = v265;
                  v216 = v266;
                  v217 = v267;
                  *(v214 + 64) = v268;
                  *(v214 + 32) = v216;
                  *(v214 + 48) = v217;
                  *(v214 + 16) = v215;

                  v16 = v252;
                  v204 = v241;
                  v203 = v244;
                }

                while (v244);
              }

              v206 = v200;
              while (1)
              {
                v200 = v206 + 1;
                if (__OFADD__(v206, 1))
                {
                  goto LABEL_370;
                }

                if (v200 >= v204)
                {
                  break;
                }

                v207 = *(v79 + 64 + 8 * v200);
                ++v206;
                if (v207)
                {
                  v205 = __clz(__rbit64(v207));
                  v244 = (v207 - 1) & v207;
                  goto LABEL_291;
                }
              }
            }

            v7 = v248;
          }

          v81 = *(v80 + 56) + 72 * v78;
          v264 = *v81;
          v83 = *(v81 + 32);
          v82 = *(v81 + 48);
          v84 = *(v81 + 64);
          v265 = *(v81 + 16);
          v266 = v83;
          v268 = v84;
          v267 = v82;
          specialized _NativeDictionary._delete(at:)(v78, v80);
          *&v269 = v80;
          v85 = 0uLL;
        }

        else
        {
          v268 = 0;
          v85 = 0uLL;
          v266 = 0u;
          v267 = 0u;
          v264 = 0u;
          v265 = 0u;
        }

        v263 = 0;
        v261 = v85;
        v262 = v85;
        v259 = v85;
        v260 = v85;
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000021, 0x800000018147DF20, &v264, &v259);
        outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v95 = *(&v265 + 1);
        result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v95)
        {
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_347;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v61, v63, v63 - v61, v269, *(&v269 + 1));
          v96 = *(v16 + 72);
          v3 = *(v16 + 88);
          if (v96)
          {
            v97 = *(v16 + 88);
          }

          else
          {
            v97 = 0;
          }

          v98 = v256;
          if (v256 < 0 || v97 < v256)
          {
            goto LABEL_348;
          }

          v7 = *(v16 + 96);
          if (v96)
          {
            v246 = *(v16 + 96);
            v99 = *(v16 + 80);
            v100 = (v96 + 16);
            v18 = *(v96 + 16);
            v101 = *(v96 + 18);
            if (*(v96 + 16) && v256 < v3)
            {
              v254 = *(v16 + 80);
              result = swift_unknownObjectRetain_n();
              if (!v101)
              {
                v103 = 0;
                v102 = v256;
                v14 = v96;
LABEL_178:
                v134 = 0;
                v135 = 24;
                v120 = v102;
                v136 = v18;
                v98 = v256;
                while (1)
                {
                  v137 = *(v14 + v135);
                  v102 = v120 - v137;
                  if (__OFSUB__(v120, v137))
                  {
                    goto LABEL_325;
                  }

                  if (__OFADD__(v102, 1))
                  {
                    goto LABEL_326;
                  }

                  if (v102 + 1 < 1)
                  {
                    goto LABEL_186;
                  }

                  ++v134;
                  v135 += 24;
                  v120 -= v137;
                  if (v136 == v134)
                  {
                    v134 = v136;
                    goto LABEL_184;
                  }
                }
              }

              v102 = v256;
              v103 = v101;
              v104 = v96;
              do
              {
                v105 = *v100;
                if (*v100)
                {
                  v106 = 0;
                  v107 = (v104 + 40);
                  while (1)
                  {
                    v108 = *v107;
                    v107 += 3;
                    v109 = v102 - v108;
                    if (__OFSUB__(v102, v108))
                    {
                      goto LABEL_314;
                    }

                    if (__OFADD__(v109, 1))
                    {
                      goto LABEL_315;
                    }

                    if (v109 + 1 < 1)
                    {
                      v105 = v106;
                      goto LABEL_135;
                    }

                    ++v106;
                    v102 = v109;
                    if (v105 == v106)
                    {
                      goto LABEL_144;
                    }
                  }
                }

                v109 = v102;
LABEL_144:
                if (v109)
                {
                  goto LABEL_328;
                }

                v102 = 0;
LABEL_135:
                v103 = (v105 << ((4 * v101 + 8) & 0x3C)) | ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v103;
                v14 = *(v104 + 24 + 24 * v105);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v100 = (v14 + 16);
                LOBYTE(v101) = *(v14 + 18);
                v104 = v14;
              }

              while (v101);
              LODWORD(v18) = *v100;
              if (*v100)
              {
                goto LABEL_178;
              }

              v134 = 0;
              v98 = v256;
LABEL_184:
              if (!v102)
              {
                v120 = 0;
LABEL_186:
                swift_unknownObjectRelease();
                v70 = v103 & 0xFFFFFFFFFFFFF0FFLL | (v134 << 8);
                v99 = v254;
                goto LABEL_187;
              }

              goto LABEL_362;
            }

            v70 = ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v101 | (v18 << ((4 * v101 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v120 = 0;
            v14 = 0;
            v98 = v256;
LABEL_187:
            v7 = v246;
            v118 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v246, v70, v14, v96, v99);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v120 = 0;
            v14 = 0;
            v70 = 0;
            v118 = 0;
          }

          v138 = __OFSUB__(v98, v120);
          v117 = v98 - v120;
          if (v138)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v117 = v256;
          v118 = v254;
          v70 = v251;
        }

        goto LABEL_221;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_339;
      }

      if (!*v255)
      {
        goto LABEL_372;
      }

      specialized Rope._Node._prepareModify(at:)(v251, &v270);
      v285 = v271;
      v264 = v270;
      v265 = v271;
      v266 = v272;
      outlined destroy of TermOfAddress?(&v285, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(&v285 + 8, &_sShySSGMd);
      v265 = MEMORY[0x1E69E7CC8];
      v64 = v7 + 1;
      *(v16 + 96) = v7 + 1;
      if (!*(v16 + 72))
      {
        goto LABEL_373;
      }

      specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

      v65 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, 0x800000018147DF20);
      if (v66)
      {
        v67 = v65;
        v68 = v269;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v68;
          v70 = v251;
        }

        else
        {
          v249 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v218 = static _DictionaryStorage.copy(original:)();
          v69 = v218;
          v70 = v251;
          if (*(v68 + 16))
          {
            result = (v218 + 64);
            v219 = (v68 + 64);
            v220 = ((1 << *(v69 + 32)) + 63) >> 6;
            if (v69 != v68 || result >= &v219[8 * v220])
            {
              result = memmove(result, v219, 8 * v220);
            }

            v221 = 0;
            *(v69 + 16) = *(v68 + 16);
            v222 = 1 << *(v68 + 32);
            if (v222 < 64)
            {
              v223 = ~(-1 << v222);
            }

            else
            {
              v223 = -1;
            }

            v224 = v223 & *(v68 + 64);
            v225 = (v222 + 63) >> 6;
            if (v224)
            {
              do
              {
                v226 = __clz(__rbit64(v224));
                v245 = (v224 - 1) & v224;
LABEL_307:
                v229 = v226 | (v221 << 6);
                v230 = 16 * v229;
                v231 = (*(v68 + 48) + 16 * v229);
                v232 = *v231;
                v233 = v231[1];
                v234 = 72 * v229;
                outlined init with copy of AttributedString._AttributeValue(*(v68 + 56) + 72 * v229, &v264);
                v235 = (*(v69 + 48) + v230);
                *v235 = v232;
                v235[1] = v233;
                v236 = *(v69 + 56) + v234;
                *v236 = v264;
                v237 = v265;
                v238 = v266;
                v239 = v267;
                *(v236 + 64) = v268;
                *(v236 + 32) = v238;
                *(v236 + 48) = v239;
                *(v236 + 16) = v237;

                v70 = v251;
                v16 = v252;
                v224 = v245;
              }

              while (v245);
            }

            v227 = v221;
            while (1)
            {
              v221 = v227 + 1;
              if (__OFADD__(v227, 1))
              {
                goto LABEL_371;
              }

              if (v221 >= v225)
              {
                break;
              }

              v228 = *(v68 + 64 + 8 * v221);
              ++v227;
              if (v228)
              {
                v226 = __clz(__rbit64(v228));
                v245 = (v228 - 1) & v228;
                goto LABEL_307;
              }
            }
          }

          v7 = v249;
        }

        v71 = *(v69 + 56) + 72 * v67;
        v264 = *v71;
        v73 = *(v71 + 32);
        v72 = *(v71 + 48);
        v74 = *(v71 + 64);
        v265 = *(v71 + 16);
        v266 = v73;
        v268 = v74;
        v267 = v72;
        specialized _NativeDictionary._delete(at:)(v67, v69);
        *&v269 = v69;
        v75 = 0uLL;
      }

      else
      {
        v268 = 0;
        v75 = 0uLL;
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        v70 = v251;
      }

      v263 = 0;
      v261 = v75;
      v262 = v75;
      v259 = v75;
      v260 = v75;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000021, 0x800000018147DF20, &v264, &v259);
      outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v110 = *(&v265 + 1);
      result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!v110)
      {
        if (v64 != *(v16 + 96))
        {
          goto LABEL_355;
        }

        if (!*v255)
        {
          goto LABEL_377;
        }

        specialized Rope._Node._prepareModify(at:)(v70, &v279);
        v284 = v280;
        v264 = v279;
        v265 = v280;
        v266 = v281;
        v119 = v269;

        outlined destroy of TermOfAddress?(&v284, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v284 + 8, &_sShySSGMd);
        v265 = v119;
        v7 += 2;
        *(v16 + 96) = v7;
        v117 = v256;
        if (!*(v16 + 72))
        {
          goto LABEL_376;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

        v118 = v254;
        goto LABEL_221;
      }

      if (v64 != *(v16 + 96))
      {
        goto LABEL_349;
      }

      if (!*v255)
      {
        goto LABEL_374;
      }

      specialized Rope._Node._prepareModify(at:)(v70, &v273);
      v282 = v274;
      v283 = v275;
      outlined destroy of TermOfAddress?(&v282, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v283, &_sShySSGMd);
      v264 = v273;
      v266 = v276;
      v111 = *(&v269 + 1);
      result = v269;
      v265 = v269;
      v7 += 2;
      *(v16 + 96) = v7;
      if (!*(v16 + 72))
      {
        goto LABEL_375;
      }

      v112 = result;

      v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

      v113 = *(v16 + 72);
      v114 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      if (v7 != v114)
      {
        goto LABEL_350;
      }

      v115 = v70;
      v247 = v111;
      if (!v113)
      {
        goto LABEL_351;
      }

      v116 = ((-15 << ((4 * *(v113 + 18) + 8) & 0x3C)) - 1) & *(v113 + 18) | (*(v113 + 16) << ((4 * *(v113 + 18) + 8) & 0x3C));
      result = swift_unknownObjectRetain();
      if (v70 >= v116)
      {
        goto LABEL_351;
      }

      v121 = (4 * *(v14 + 18) + 8) & 0x3C;
      v122 = ((v70 >> v121) & 0xF) + 1;
      if (v122 >= *(v14 + 16))
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v264, v113))
        {
          result = swift_unknownObjectRelease();
          v123 = *(&v264 + 1);
          v125 = v265;
          v124 = v264;
        }

        else
        {
          v123 = specialized Rope._endPath.getter(v113);
          result = swift_unknownObjectRelease();
          v125 = 0;
          *&v264 = v7;
          v124 = v7;
        }

        v118 = v254;
        v126 = v255;
      }

      else
      {
        v123 = (v122 << v121) | ((-15 << v121) - 1) & v70;
        result = swift_unknownObjectRelease();
        v124 = v7;
        v125 = v14;
        v118 = v254;
        v126 = v255;
      }

      v127 = *v126;
      v117 = v256;
      v128 = v112;
      if (!*v126)
      {
        v133 = 0;
        goto LABEL_205;
      }

      if (v123 >= (((-15 << ((4 * *(v127 + 18) + 8) & 0x3C)) - 1) & *(v127 + 18) | (*(v127 + 16) << ((4 * *(v127 + 18) + 8) & 0x3C))))
      {
        goto LABEL_203;
      }

      if (v124 != *(v16 + 96))
      {
        goto LABEL_358;
      }

      v129 = v126;
      if (v125)
      {
        v130 = v125 + 24 * ((v123 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF);
        v132 = *(v130 + 32);
        v131 = *(v130 + 40);
      }

      else
      {
        specialized Rope._Node.subscript.getter(v123, v127);
        v132 = v139;
        v131 = v140;
      }

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v132, v128) & 1) == 0)
      {

        v118 = v254;
        v126 = v129;
LABEL_203:
        v133 = *v126;
        if (!*v126)
        {
          goto LABEL_205;
        }

LABEL_204:
        v133 = *(v133 + 18);
        goto LABEL_205;
      }

      v141 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v131, v247);

      if (v141)
      {
        v70 = specialized Rope._remove(at:)(&v264, v7, v115);
        v142 = *(v16 + 96);
        if (v70 < specialized Rope._endPath.getter(*(v16 + 72)))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v70, *(v16 + 72));
        }

        v143 = v264;

        if (v142 != *(v16 + 96))
        {
          goto LABEL_368;
        }

        if (!*v255)
        {
          goto LABEL_381;
        }

        result = specialized Rope._Node._prepareModify(at:)(v70, v277);
        v264 = v277[0];
        v265 = v277[1];
        v266 = v277[2];
        if (__OFADD__(*(&v277[0] + 1), v143))
        {
          goto LABEL_369;
        }

        *(&v264 + 1) = *(&v277[0] + 1) + v143;
        v7 = v142 + 1;
        *(v16 + 96) = v142 + 1;
        v118 = v254;
        if (!*(v16 + 72))
        {
          goto LABEL_380;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

        v133 = *v255;
        if (*v255)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v118 = v254;
        v70 = v115;
        v133 = *v129;
        if (*v129)
        {
          goto LABEL_204;
        }
      }

LABEL_205:
      if (v133 < v70)
      {
        v145 = *(v16 + 72);
        v144 = *(v16 + 80);
        v146 = v70;
        v147 = *(v16 + 88);
        v148 = *(v16 + 96);
        v149 = v7;
        *&v264 = v7;
        *(&v264 + 1) = v146;
        v150 = v146;
        *&v265 = v14;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v264, v145, v144, v147, v148);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v264, *(&v264 + 1), v265, *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96));
        v152 = v151;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v153, v128))
        {
          v154 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v152, v247);

          if (v154)
          {
            v155 = specialized Rope._remove(at:)(&v264, v149, v150);
            v156 = *(v16 + 96);
            if (v155 >= specialized Rope._endPath.getter(*(v16 + 72)))
            {
              v157 = 0;
            }

            else
            {
              v157 = specialized Rope._Node.unmanagedLeaf(at:)(v155, *(v16 + 72));
            }

            *&v259 = v156;
            *(&v259 + 1) = v155;
            *&v260 = v157;
            v158 = v264;

            v159 = *(v16 + 72);
            v160 = *(v16 + 80);
            v161 = *(v16 + 88);
            v162 = *(v16 + 96);
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v259, v159, v160, v161, v162);
            result = swift_unknownObjectRelease();
            v163 = v259;
            if (v259 != *(v16 + 96))
            {
              goto LABEL_363;
            }

            if (!*v255)
            {
              goto LABEL_378;
            }

            v70 = *(&v259 + 1);
            result = specialized Rope._Node._prepareModify(at:)(*(&v259 + 1), v278);
            v264 = v278[0];
            v265 = v278[1];
            v266 = v278[2];
            v117 = v256 - *(&v278[0] + 1);
            if (__OFSUB__(v256, *(&v278[0] + 1)))
            {
              goto LABEL_364;
            }

            if (__OFADD__(*(&v278[0] + 1), v158))
            {
              goto LABEL_365;
            }

            *(&v264 + 1) = *(&v278[0] + 1) + v158;
            v7 = v163 + 1;
            *(v16 + 96) = v163 + 1;
            if (!*(v16 + 72))
            {
              goto LABEL_379;
            }

            v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

            v118 = v254 - 1;
            if (__OFSUB__(v254, 1))
            {
              goto LABEL_366;
            }

            goto LABEL_221;
          }
        }

        else
        {
        }

        v118 = v254;
        v70 = v150;
        v7 = v149;
      }

LABEL_221:

      v164 = *(v16 + 72);
      v165 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      v138 = __OFADD__(v118, 1);
      v166 = v118 + 1;
      if (v138)
      {
        goto LABEL_331;
      }

      if (v7 != v165)
      {
        goto LABEL_332;
      }

      v254 = v166;
      if (v14)
      {
        v167 = *(v14 + 24 * ((v70 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v138 = __OFADD__(v117, v167);
        v30 = v117 + v167;
        if (v138)
        {
          goto LABEL_337;
        }

        v168 = v7;
        v169 = a3;
        if (!v164)
        {
          goto LABEL_330;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        v168 = v7;
        v169 = a3;
        swift_unknownObjectRetain();
        v170 = v70;
        v171 = specialized Rope._Node.subscript.getter(v70, v164);
        v172 = v117;

        v30 = v117 + v171;
        if (__OFADD__(v172, v171))
        {
          goto LABEL_342;
        }

        v70 = v170;
        if (!v164)
        {
          goto LABEL_330;
        }
      }

      if (v70 >= (((-15 << ((4 * *(v164 + 18) + 8) & 0x3C)) - 1) & *(v164 + 18) | (*(v164 + 16) << ((4 * *(v164 + 18) + 8) & 0x3C))))
      {
        goto LABEL_330;
      }

      if (v14 && (v173 = v70, v174 = (4 * *(v14 + 18) + 8) & 0x3C, v175 = ((v70 >> v174) & 0xF) + 1, v175 < *(v14 + 16)))
      {
        result = swift_unknownObjectRelease();
        v13 = (v175 << v174) | ((-15 << v174) - 1) & v173;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v264, v164))
      {
        result = swift_unknownObjectRelease();
        v13 = *(&v264 + 1);
      }

      else
      {
        v176 = *(v164 + 18);
        v177 = *(v164 + 16);
        result = swift_unknownObjectRelease();
        v13 = ((-15 << ((4 * v176 + 8) & 0x3C)) - 1) & v176 | (v177 << ((4 * v176 + 8) & 0x3C));
        *&v264 = v168;
        *(&v264 + 1) = v13;
        *&v265 = 0;
      }

      v31 = v255;
      v3 = v169;
      v7 = v264;
      v33 = v265;
      v14 = v252;
      v32 = a2;
      if (v30 >= v3)
      {
        v178 = *v255;
        if (a2 == v3)
        {
          v7 = *(v252 + 12);
          if (v178)
          {
            v18 = *(v252 + 11);
            if (v18 < a2)
            {
              goto LABEL_356;
            }

            v246 = *(v252 + 12);
            v3 = *(v252 + 10);
            v179 = (v178 + 16);
            v180 = *(v178 + 16);
            v181 = *(v178 + 18);
            v257 = v3;
            if (*(v178 + 16) && v18 > a2)
            {
              result = swift_unknownObjectRetain_n();
              if (!v181)
              {
                v182 = 0;
                v16 = a2;
                v14 = v178;
LABEL_264:
                v190 = v255;
                v192 = 0;
                v194 = 24;
                v191 = v16;
                v195 = v180;
                v7 = v246;
                v193 = a3;
                while (1)
                {
                  v196 = *(v14 + v194);
                  v16 = v191 - v196;
                  if (__OFSUB__(v191, v196))
                  {
                    goto LABEL_333;
                  }

                  if (__OFADD__(v16, 1))
                  {
                    goto LABEL_334;
                  }

                  if (v16 + 1 < 1)
                  {
                    goto LABEL_272;
                  }

                  ++v192;
                  v194 += 24;
                  v191 -= v196;
                  if (v195 == v192)
                  {
                    v192 = v195;
                    goto LABEL_270;
                  }
                }
              }

              v16 = a2;
              v182 = v181;
              v183 = v178;
              do
              {
                v184 = *v179;
                if (*v179)
                {
                  v185 = 0;
                  v186 = (v183 + 40);
                  while (1)
                  {
                    v187 = *v186;
                    v186 += 3;
                    v188 = v16 - v187;
                    if (__OFSUB__(v16, v187))
                    {
                      goto LABEL_316;
                    }

                    if (__OFADD__(v188, 1))
                    {
                      goto LABEL_317;
                    }

                    if (v188 + 1 < 1)
                    {
                      v184 = v185;
                      goto LABEL_245;
                    }

                    ++v185;
                    v16 = v188;
                    if (v184 == v185)
                    {
                      goto LABEL_254;
                    }
                  }
                }

                v188 = v16;
LABEL_254:
                if (v188)
                {
                  goto LABEL_335;
                }

                v16 = 0;
LABEL_245:
                v182 = (v184 << ((4 * v181 + 8) & 0x3C)) | ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v182;
                v14 = *(v183 + 24 + 24 * v184);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v179 = (v14 + 16);
                LOBYTE(v181) = *(v14 + 18);
                v183 = v14;
              }

              while (v181);
              LODWORD(v180) = *v179;
              if (*v179)
              {
                goto LABEL_264;
              }

              v192 = 0;
              v7 = v246;
              v193 = a3;
              v190 = v255;
LABEL_270:
              if (!v16)
              {
                v191 = 0;
LABEL_272:
                swift_unknownObjectRelease();
                v13 = v182 & 0xFFFFFFFFFFFFF0FFLL | (v192 << 8);
                v189 = v193;
                goto LABEL_273;
              }

              goto LABEL_367;
            }

            v13 = ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v181 | (v180 << ((4 * v181 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v191 = 0;
            v14 = 0;
            v7 = v246;
            v189 = a3;
            v190 = v255;
LABEL_273:
            v33 = v14;
            v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v178, v257);
            result = swift_unknownObjectRelease();
            v32 = a2;
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_360;
            }

            v189 = v3;
            v190 = v255;
            v191 = 0;
            v33 = 0;
            v13 = 0;
            v254 = 0;
          }

          v30 = v32 - v191;
          v31 = v190;
          v3 = v189;
          if (__OFSUB__(v32, v191))
          {
            goto LABEL_353;
          }
        }

        else
        {
          v30 = 0;
          v254 = 0;
          v33 = 0;
          v13 = 0;
          v7 = *(v252 + 12);
          if (v178)
          {
            v33 = 0;
            v30 = *(v252 + 11);
            v254 = *(v252 + 10);
            v13 = ((-15 << ((4 * *(v178 + 18) + 8) & 0x3C)) - 1) & *(v178 + 18) | (*(v178 + 16) << ((4 * *(v178 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
  return result;
}

{
  v3 = *(result + 9);
  if (v3)
  {
    v4 = *(result + 11);
  }

  else
  {
    v4 = 0;
  }

  if (a2 < 0 || v4 < a2)
  {
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v5 = a3;
  v6 = *(result + 10);
  v255 = (result + 72);
  v7 = *(result + 12);
  v252 = result;
  if (!v3 || ((v8 = (v3 + 16), v9 = *(v3 + 16), *(v3 + 16)) ? (v10 = *(result + 11) <= a2) : (v10 = 1), v10))
  {
    v11 = a2;
    v12 = swift_unknownObjectRetain();
    result = specialized Rope._endPath.getter(v12);
    v13 = result;
    v14 = 0;
    v15 = 0;
    if (!v3)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v254 = *(result + 10);
  v16 = a2;
  v17 = *(v3 + 18);
  result = swift_unknownObjectRetain_n();
  if (!v17)
  {
    v18 = 0;
    v11 = v16;
    v14 = v3;
    goto LABEL_31;
  }

  v246 = v7;
  v18 = v17;
  v19 = v3;
  do
  {
    v20 = *v8;
    if (*v8)
    {
      v21 = 0;
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *v22;
        v22 += 3;
        v24 = v16 - v23;
        if (__OFSUB__(v16, v23))
        {
          goto LABEL_320;
        }

        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v24 + 1 < 1)
        {
          v20 = v21;
          goto LABEL_17;
        }

        ++v21;
        v16 = v24;
        if (v20 == v21)
        {
          goto LABEL_26;
        }
      }

LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
LABEL_354:
      __break(1u);
LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

    v24 = v16;
LABEL_26:
    if (v24)
    {
      goto LABEL_346;
    }

    v16 = 0;
LABEL_17:
    v18 = (v20 << ((4 * v17 + 8) & 0x3C)) | ((-15 << ((4 * v17 + 8) & 0x3C)) - 1) & v18;
    v14 = *(v19 + 24 + 24 * v20);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v8 = (v14 + 16);
    LOBYTE(v17) = *(v14 + 18);
    v19 = v14;
  }

  while (v17);
  v9 = *v8;
  if (*v8)
  {
    v5 = a3;
    v11 = a2;
LABEL_31:
    v25 = 0;
    v26 = 24;
    v15 = v16;
    v27 = v9;
    while (1)
    {
      v28 = *(v14 + v26);
      v29 = v15 - v28;
      if (__OFSUB__(v15, v28))
      {
        goto LABEL_343;
      }

      if (__OFADD__(v29, 1))
      {
        goto LABEL_344;
      }

      if (v29 + 1 < 1)
      {
        break;
      }

      ++v25;
      v26 += 24;
      v15 -= v28;
      if (v9 == v25)
      {
        if (!v29)
        {
          goto LABEL_37;
        }

LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
        goto LABEL_321;
      }
    }

    v27 = v25;
  }

  else
  {
LABEL_318:
    v27 = 0;
    v7 = v246;
    v5 = a3;
    v11 = a2;
    if (v16)
    {
      goto LABEL_319;
    }

LABEL_37:
    v15 = 0;
  }

  result = swift_unknownObjectRelease();
  v13 = v18 & 0xFFFFFFFFFFFFF0FFLL | (v27 << 8);
  v6 = v254;
  if (v3)
  {
LABEL_13:
    v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v3, v6);
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v254 = 0;
LABEL_41:
  v3 = v5;
  v30 = v11 - v15;
  v31 = v255;
  if (!__OFSUB__(v11, v15))
  {
    v32 = v11;
    v33 = v14;
    while (1)
    {
      v16 = *v31;
      v256 = v30;
      v251 = v13;
      v14 = v33;
      if (v32 == v3)
      {
        if (v16)
        {
          v34 = *(v252 + 11);
          if (v34 < v32)
          {
            goto LABEL_345;
          }

          v240 = *(v252 + 12);
          v242 = *(v252 + 10);
          v18 = v16 + 16;
          v35 = *(v16 + 16);
          v36 = *(v16 + 18);
          if (*(v16 + 16))
          {
            v37 = v34 <= v32;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            v246 = v7;
            result = swift_unknownObjectRetain_n();
            if (!v36)
            {
              v43 = 0;
              v42 = a2;
              v40 = v16;
LABEL_74:
              v30 = v256;
              v50 = 0;
              v51 = 24;
              v39 = v42;
              while (1)
              {
                v52 = *(v40 + v51);
                v42 = v39 - v52;
                if (__OFSUB__(v39, v52))
                {
                  goto LABEL_322;
                }

                if (__OFADD__(v42, 1))
                {
                  goto LABEL_323;
                }

                if (v42 + 1 < 1)
                {
                  goto LABEL_82;
                }

                ++v50;
                v51 += 24;
                v39 -= v52;
                if (v35 == v50)
                {
                  v50 = v35;
                  goto LABEL_80;
                }
              }
            }

            v42 = a2;
            v43 = v36;
            v44 = v16;
            do
            {
              v45 = *v18;
              if (*v18)
              {
                v46 = 0;
                v47 = (v44 + 40);
                while (1)
                {
                  v48 = *v47;
                  v47 += 3;
                  v49 = v42 - v48;
                  if (__OFSUB__(v42, v48))
                  {
                    break;
                  }

                  if (__OFADD__(v49, 1))
                  {
                    goto LABEL_313;
                  }

                  if (v49 + 1 < 1)
                  {
                    v45 = v46;
                    goto LABEL_60;
                  }

                  ++v46;
                  v42 = v49;
                  if (v45 == v46)
                  {
                    goto LABEL_69;
                  }
                }

                __break(1u);
LABEL_313:
                __break(1u);
LABEL_314:
                __break(1u);
LABEL_315:
                __break(1u);
LABEL_316:
                __break(1u);
LABEL_317:
                __break(1u);
                goto LABEL_318;
              }

              v49 = v42;
LABEL_69:
              if (v49)
              {
                goto LABEL_324;
              }

              v42 = 0;
LABEL_60:
              v43 = (v45 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v43;
              v40 = *(v44 + 24 + 24 * v45);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v18 = v40 + 16;
              LOBYTE(v36) = *(v40 + 18);
              v44 = v40;
            }

            while (v36);
            LODWORD(v35) = *v18;
            if (*v18)
            {
              goto LABEL_74;
            }

            v50 = 0;
            v30 = v256;
LABEL_80:
            if (!v42)
            {
              v39 = 0;
LABEL_82:
              swift_unknownObjectRelease();
              v38 = v43 & 0xFFFFFFFFFFFFF0FFLL | (v50 << 8);
              v7 = v246;
              v3 = a3;
              v13 = v251;
              goto LABEL_83;
            }

            goto LABEL_361;
          }

          v38 = ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v36 | (v35 << ((4 * v36 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v39 = 0;
          v40 = 0;
          v30 = v256;
LABEL_83:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v240, v38, v40, v16, v242);
          result = swift_unknownObjectRelease();
        }

        else
        {
          if (v32 > 0)
          {
            goto LABEL_354;
          }

          v39 = 0;
        }

        v16 = v252;
        v41 = a2 - v39;
        if (__OFSUB__(a2, v39))
        {
          goto LABEL_338;
        }

        v32 = a2;
      }

      else if (v16)
      {
        v16 = v252;
        v41 = *(v252 + 11);
      }

      else
      {
        v41 = 0;
        v16 = v252;
      }

      if (v30 >= v41)
      {
        return result;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_327;
      }

      if (v14)
      {
        v53 = v32;
        v54 = (v14 + 24 * ((v13 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF));
        v56 = v54[4];
        v55 = v54[5];
        v57 = v54[3];
        v58 = v30 + v57;
        v59 = __OFADD__(v30, v57);

        if (v59)
        {
          goto LABEL_336;
        }

        *&v269 = v56;
        *(&v269 + 1) = v55;
        v60 = v53;
        v61 = v53;
        if (v30 >= v53)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v86 = v3;
        v87 = *(v16 + 72);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v13, v87);
        v88 = v13;
        v90 = v89;
        v92 = v91;
        result = swift_unknownObjectRelease();
        if (v7 != *(v16 + 96))
        {
          goto LABEL_340;
        }

        v93 = *(v16 + 72);
        swift_unknownObjectRetain();
        v94 = specialized Rope._Node.subscript.getter(v88, v93);
        v30 = v256;
        swift_unknownObjectRelease();

        v58 = v256 + v94;
        if (__OFADD__(v256, v94))
        {
          goto LABEL_341;
        }

        *&v269 = v90;
        *(&v269 + 1) = v92;
        v60 = a2;
        v61 = a2;
        v3 = v86;
        if (v256 >= a2)
        {
LABEL_94:
          if (v30 >= v3)
          {
            v61 = v3;
          }

          else
          {
            v61 = v30;
          }
        }
      }

      if (v58 <= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v58;
      }

      if (v58 <= v3)
      {
        v63 = v62;
      }

      else
      {
        v63 = v3;
      }

      if (v61 == v63)
      {
        goto LABEL_329;
      }

      if (v61 != v256 || v63 != v58)
      {
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000018147CCD0);
        if (v77)
        {
          v78 = v76;
          v79 = v269;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v80 = v79;
          }

          else
          {
            v248 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v197 = static _DictionaryStorage.copy(original:)();
            v80 = v197;
            if (*(v79 + 16))
            {
              result = (v197 + 64);
              v198 = (v79 + 64);
              v199 = ((1 << *(v80 + 32)) + 63) >> 6;
              if (v80 != v79 || result >= &v198[8 * v199])
              {
                result = memmove(result, v198, 8 * v199);
              }

              v200 = 0;
              *(v80 + 16) = *(v79 + 16);
              v201 = 1 << *(v79 + 32);
              if (v201 < 64)
              {
                v202 = ~(-1 << v201);
              }

              else
              {
                v202 = -1;
              }

              v203 = v202 & *(v79 + 64);
              v204 = (v201 + 63) >> 6;
              v241 = v204;
              if (v203)
              {
                do
                {
                  v205 = __clz(__rbit64(v203));
                  v244 = (v203 - 1) & v203;
LABEL_291:
                  v208 = v205 | (v200 << 6);
                  v209 = 16 * v208;
                  v210 = (*(v79 + 48) + 16 * v208);
                  v211 = v210[1];
                  v243 = *v210;
                  v212 = 72 * v208;
                  outlined init with copy of AttributedString._AttributeValue(*(v79 + 56) + 72 * v208, &v264);
                  v213 = (*(v80 + 48) + v209);
                  *v213 = v243;
                  v213[1] = v211;
                  v214 = *(v80 + 56) + v212;
                  *v214 = v264;
                  v215 = v265;
                  v216 = v266;
                  v217 = v267;
                  *(v214 + 64) = v268;
                  *(v214 + 32) = v216;
                  *(v214 + 48) = v217;
                  *(v214 + 16) = v215;

                  v16 = v252;
                  v204 = v241;
                  v203 = v244;
                }

                while (v244);
              }

              v206 = v200;
              while (1)
              {
                v200 = v206 + 1;
                if (__OFADD__(v206, 1))
                {
                  goto LABEL_370;
                }

                if (v200 >= v204)
                {
                  break;
                }

                v207 = *(v79 + 64 + 8 * v200);
                ++v206;
                if (v207)
                {
                  v205 = __clz(__rbit64(v207));
                  v244 = (v207 - 1) & v207;
                  goto LABEL_291;
                }
              }
            }

            v7 = v248;
          }

          v81 = *(v80 + 56) + 72 * v78;
          v264 = *v81;
          v83 = *(v81 + 32);
          v82 = *(v81 + 48);
          v84 = *(v81 + 64);
          v265 = *(v81 + 16);
          v266 = v83;
          v268 = v84;
          v267 = v82;
          specialized _NativeDictionary._delete(at:)(v78, v80);
          *&v269 = v80;
          v85 = 0uLL;
        }

        else
        {
          v268 = 0;
          v85 = 0uLL;
          v266 = 0u;
          v267 = 0u;
          v264 = 0u;
          v265 = 0u;
        }

        v263 = 0;
        v261 = v85;
        v262 = v85;
        v259 = v85;
        v260 = v85;
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000012, 0x800000018147CCD0, &v264, &v259);
        outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v95 = *(&v265 + 1);
        result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v95)
        {
          if (__OFSUB__(v63, v61))
          {
            goto LABEL_347;
          }

          result = specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v61, v63, v63 - v61, v269, *(&v269 + 1));
          v96 = *(v16 + 72);
          v3 = *(v16 + 88);
          if (v96)
          {
            v97 = *(v16 + 88);
          }

          else
          {
            v97 = 0;
          }

          v98 = v256;
          if (v256 < 0 || v97 < v256)
          {
            goto LABEL_348;
          }

          v7 = *(v16 + 96);
          if (v96)
          {
            v246 = *(v16 + 96);
            v99 = *(v16 + 80);
            v100 = (v96 + 16);
            v18 = *(v96 + 16);
            v101 = *(v96 + 18);
            if (*(v96 + 16) && v256 < v3)
            {
              v254 = *(v16 + 80);
              result = swift_unknownObjectRetain_n();
              if (!v101)
              {
                v103 = 0;
                v102 = v256;
                v14 = v96;
LABEL_178:
                v134 = 0;
                v135 = 24;
                v120 = v102;
                v136 = v18;
                v98 = v256;
                while (1)
                {
                  v137 = *(v14 + v135);
                  v102 = v120 - v137;
                  if (__OFSUB__(v120, v137))
                  {
                    goto LABEL_325;
                  }

                  if (__OFADD__(v102, 1))
                  {
                    goto LABEL_326;
                  }

                  if (v102 + 1 < 1)
                  {
                    goto LABEL_186;
                  }

                  ++v134;
                  v135 += 24;
                  v120 -= v137;
                  if (v136 == v134)
                  {
                    v134 = v136;
                    goto LABEL_184;
                  }
                }
              }

              v102 = v256;
              v103 = v101;
              v104 = v96;
              do
              {
                v105 = *v100;
                if (*v100)
                {
                  v106 = 0;
                  v107 = (v104 + 40);
                  while (1)
                  {
                    v108 = *v107;
                    v107 += 3;
                    v109 = v102 - v108;
                    if (__OFSUB__(v102, v108))
                    {
                      goto LABEL_314;
                    }

                    if (__OFADD__(v109, 1))
                    {
                      goto LABEL_315;
                    }

                    if (v109 + 1 < 1)
                    {
                      v105 = v106;
                      goto LABEL_135;
                    }

                    ++v106;
                    v102 = v109;
                    if (v105 == v106)
                    {
                      goto LABEL_144;
                    }
                  }
                }

                v109 = v102;
LABEL_144:
                if (v109)
                {
                  goto LABEL_328;
                }

                v102 = 0;
LABEL_135:
                v103 = (v105 << ((4 * v101 + 8) & 0x3C)) | ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v103;
                v14 = *(v104 + 24 + 24 * v105);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v100 = (v14 + 16);
                LOBYTE(v101) = *(v14 + 18);
                v104 = v14;
              }

              while (v101);
              LODWORD(v18) = *v100;
              if (*v100)
              {
                goto LABEL_178;
              }

              v134 = 0;
              v98 = v256;
LABEL_184:
              if (!v102)
              {
                v120 = 0;
LABEL_186:
                swift_unknownObjectRelease();
                v70 = v103 & 0xFFFFFFFFFFFFF0FFLL | (v134 << 8);
                v99 = v254;
                goto LABEL_187;
              }

              goto LABEL_362;
            }

            v70 = ((-15 << ((4 * v101 + 8) & 0x3C)) - 1) & v101 | (v18 << ((4 * v101 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v120 = 0;
            v14 = 0;
            v98 = v256;
LABEL_187:
            v7 = v246;
            v118 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v246, v70, v14, v96, v99);
            result = swift_unknownObjectRelease();
          }

          else
          {
            v120 = 0;
            v14 = 0;
            v70 = 0;
            v118 = 0;
          }

          v138 = __OFSUB__(v98, v120);
          v117 = v98 - v120;
          if (v138)
          {
            goto LABEL_352;
          }
        }

        else
        {
          v117 = v256;
          v118 = v254;
          v70 = v251;
        }

        goto LABEL_221;
      }

      if (v7 != *(v16 + 96))
      {
        goto LABEL_339;
      }

      if (!*v255)
      {
        goto LABEL_372;
      }

      specialized Rope._Node._prepareModify(at:)(v251, &v270);
      v285 = v271;
      v264 = v270;
      v265 = v271;
      v266 = v272;
      outlined destroy of TermOfAddress?(&v285, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      result = outlined destroy of TermOfAddress?(&v285 + 8, &_sShySSGMd);
      v265 = MEMORY[0x1E69E7CC8];
      v64 = v7 + 1;
      *(v16 + 96) = v7 + 1;
      if (!*(v16 + 72))
      {
        goto LABEL_373;
      }

      specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

      v65 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000018147CCD0);
      if (v66)
      {
        v67 = v65;
        v68 = v269;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v68;
          v70 = v251;
        }

        else
        {
          v249 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v218 = static _DictionaryStorage.copy(original:)();
          v69 = v218;
          v70 = v251;
          if (*(v68 + 16))
          {
            result = (v218 + 64);
            v219 = (v68 + 64);
            v220 = ((1 << *(v69 + 32)) + 63) >> 6;
            if (v69 != v68 || result >= &v219[8 * v220])
            {
              result = memmove(result, v219, 8 * v220);
            }

            v221 = 0;
            *(v69 + 16) = *(v68 + 16);
            v222 = 1 << *(v68 + 32);
            if (v222 < 64)
            {
              v223 = ~(-1 << v222);
            }

            else
            {
              v223 = -1;
            }

            v224 = v223 & *(v68 + 64);
            v225 = (v222 + 63) >> 6;
            if (v224)
            {
              do
              {
                v226 = __clz(__rbit64(v224));
                v245 = (v224 - 1) & v224;
LABEL_307:
                v229 = v226 | (v221 << 6);
                v230 = 16 * v229;
                v231 = (*(v68 + 48) + 16 * v229);
                v232 = *v231;
                v233 = v231[1];
                v234 = 72 * v229;
                outlined init with copy of AttributedString._AttributeValue(*(v68 + 56) + 72 * v229, &v264);
                v235 = (*(v69 + 48) + v230);
                *v235 = v232;
                v235[1] = v233;
                v236 = *(v69 + 56) + v234;
                *v236 = v264;
                v237 = v265;
                v238 = v266;
                v239 = v267;
                *(v236 + 64) = v268;
                *(v236 + 32) = v238;
                *(v236 + 48) = v239;
                *(v236 + 16) = v237;

                v70 = v251;
                v16 = v252;
                v224 = v245;
              }

              while (v245);
            }

            v227 = v221;
            while (1)
            {
              v221 = v227 + 1;
              if (__OFADD__(v227, 1))
              {
                goto LABEL_371;
              }

              if (v221 >= v225)
              {
                break;
              }

              v228 = *(v68 + 64 + 8 * v221);
              ++v227;
              if (v228)
              {
                v226 = __clz(__rbit64(v228));
                v245 = (v228 - 1) & v228;
                goto LABEL_307;
              }
            }
          }

          v7 = v249;
        }

        v71 = *(v69 + 56) + 72 * v67;
        v264 = *v71;
        v73 = *(v71 + 32);
        v72 = *(v71 + 48);
        v74 = *(v71 + 64);
        v265 = *(v71 + 16);
        v266 = v73;
        v268 = v74;
        v267 = v72;
        specialized _NativeDictionary._delete(at:)(v67, v69);
        *&v269 = v69;
        v75 = 0uLL;
      }

      else
      {
        v268 = 0;
        v75 = 0uLL;
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        v70 = v251;
      }

      v263 = 0;
      v261 = v75;
      v262 = v75;
      v259 = v75;
      v260 = v75;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000012, 0x800000018147CCD0, &v264, &v259);
      outlined destroy of TermOfAddress?(&v259, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v110 = *(&v265 + 1);
      result = outlined destroy of TermOfAddress?(&v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!v110)
      {
        if (v64 != *(v16 + 96))
        {
          goto LABEL_355;
        }

        if (!*v255)
        {
          goto LABEL_377;
        }

        specialized Rope._Node._prepareModify(at:)(v70, &v279);
        v284 = v280;
        v264 = v279;
        v265 = v280;
        v266 = v281;
        v119 = v269;

        outlined destroy of TermOfAddress?(&v284, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        result = outlined destroy of TermOfAddress?(&v284 + 8, &_sShySSGMd);
        v265 = v119;
        v7 += 2;
        *(v16 + 96) = v7;
        v117 = v256;
        if (!*(v16 + 72))
        {
          goto LABEL_376;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(&v259, &v264);

        v118 = v254;
        goto LABEL_221;
      }

      if (v64 != *(v16 + 96))
      {
        goto LABEL_349;
      }

      if (!*v255)
      {
        goto LABEL_374;
      }

      specialized Rope._Node._prepareModify(at:)(v70, &v273);
      v282 = v274;
      v283 = v275;
      outlined destroy of TermOfAddress?(&v282, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v283, &_sShySSGMd);
      v264 = v273;
      v266 = v276;
      v111 = *(&v269 + 1);
      result = v269;
      v265 = v269;
      v7 += 2;
      *(v16 + 96) = v7;
      if (!*(v16 + 72))
      {
        goto LABEL_375;
      }

      v112 = result;

      v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

      v113 = *(v16 + 72);
      v114 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      if (v7 != v114)
      {
        goto LABEL_350;
      }

      v115 = v70;
      v247 = v111;
      if (!v113)
      {
        goto LABEL_351;
      }

      v116 = ((-15 << ((4 * *(v113 + 18) + 8) & 0x3C)) - 1) & *(v113 + 18) | (*(v113 + 16) << ((4 * *(v113 + 18) + 8) & 0x3C));
      result = swift_unknownObjectRetain();
      if (v70 >= v116)
      {
        goto LABEL_351;
      }

      v121 = (4 * *(v14 + 18) + 8) & 0x3C;
      v122 = ((v70 >> v121) & 0xF) + 1;
      if (v122 >= *(v14 + 16))
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v264, v113))
        {
          result = swift_unknownObjectRelease();
          v123 = *(&v264 + 1);
          v125 = v265;
          v124 = v264;
        }

        else
        {
          v123 = specialized Rope._endPath.getter(v113);
          result = swift_unknownObjectRelease();
          v125 = 0;
          *&v264 = v7;
          v124 = v7;
        }

        v118 = v254;
        v126 = v255;
      }

      else
      {
        v123 = (v122 << v121) | ((-15 << v121) - 1) & v70;
        result = swift_unknownObjectRelease();
        v124 = v7;
        v125 = v14;
        v118 = v254;
        v126 = v255;
      }

      v127 = *v126;
      v117 = v256;
      v128 = v112;
      if (!*v126)
      {
        v133 = 0;
        goto LABEL_205;
      }

      if (v123 >= (((-15 << ((4 * *(v127 + 18) + 8) & 0x3C)) - 1) & *(v127 + 18) | (*(v127 + 16) << ((4 * *(v127 + 18) + 8) & 0x3C))))
      {
        goto LABEL_203;
      }

      if (v124 != *(v16 + 96))
      {
        goto LABEL_358;
      }

      v129 = v126;
      if (v125)
      {
        v130 = v125 + 24 * ((v123 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF);
        v132 = *(v130 + 32);
        v131 = *(v130 + 40);
      }

      else
      {
        specialized Rope._Node.subscript.getter(v123, v127);
        v132 = v139;
        v131 = v140;
      }

      if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v132, v128) & 1) == 0)
      {

        v118 = v254;
        v126 = v129;
LABEL_203:
        v133 = *v126;
        if (!*v126)
        {
          goto LABEL_205;
        }

LABEL_204:
        v133 = *(v133 + 18);
        goto LABEL_205;
      }

      v141 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v131, v247);

      if (v141)
      {
        v70 = specialized Rope._remove(at:)(&v264, v7, v115);
        v142 = *(v16 + 96);
        if (v70 < specialized Rope._endPath.getter(*(v16 + 72)))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v70, *(v16 + 72));
        }

        v143 = v264;

        if (v142 != *(v16 + 96))
        {
          goto LABEL_368;
        }

        if (!*v255)
        {
          goto LABEL_381;
        }

        result = specialized Rope._Node._prepareModify(at:)(v70, v277);
        v264 = v277[0];
        v265 = v277[1];
        v266 = v277[2];
        if (__OFADD__(*(&v277[0] + 1), v143))
        {
          goto LABEL_369;
        }

        *(&v264 + 1) = *(&v277[0] + 1) + v143;
        v7 = v142 + 1;
        *(v16 + 96) = v142 + 1;
        v118 = v254;
        if (!*(v16 + 72))
        {
          goto LABEL_380;
        }

        v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

        v133 = *v255;
        if (*v255)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v118 = v254;
        v70 = v115;
        v133 = *v129;
        if (*v129)
        {
          goto LABEL_204;
        }
      }

LABEL_205:
      if (v133 < v70)
      {
        v145 = *(v16 + 72);
        v144 = *(v16 + 80);
        v146 = v70;
        v147 = *(v16 + 88);
        v148 = *(v16 + 96);
        v149 = v7;
        *&v264 = v7;
        *(&v264 + 1) = v146;
        v150 = v146;
        *&v265 = v14;
        swift_unknownObjectRetain();
        specialized Rope.formIndex(before:)(&v264, v145, v144, v147, v148);
        swift_unknownObjectRelease();
        specialized Rope.subscript.getter(v264, *(&v264 + 1), v265, *(v16 + 72), *(v16 + 80), *(v16 + 88), *(v16 + 96));
        v152 = v151;
        if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v153, v128))
        {
          v154 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v152, v247);

          if (v154)
          {
            v155 = specialized Rope._remove(at:)(&v264, v149, v150);
            v156 = *(v16 + 96);
            if (v155 >= specialized Rope._endPath.getter(*(v16 + 72)))
            {
              v157 = 0;
            }

            else
            {
              v157 = specialized Rope._Node.unmanagedLeaf(at:)(v155, *(v16 + 72));
            }

            *&v259 = v156;
            *(&v259 + 1) = v155;
            *&v260 = v157;
            v158 = v264;

            v159 = *(v16 + 72);
            v160 = *(v16 + 80);
            v161 = *(v16 + 88);
            v162 = *(v16 + 96);
            swift_unknownObjectRetain();
            specialized Rope.formIndex(before:)(&v259, v159, v160, v161, v162);
            result = swift_unknownObjectRelease();
            v163 = v259;
            if (v259 != *(v16 + 96))
            {
              goto LABEL_363;
            }

            if (!*v255)
            {
              goto LABEL_378;
            }

            v70 = *(&v259 + 1);
            result = specialized Rope._Node._prepareModify(at:)(*(&v259 + 1), v278);
            v264 = v278[0];
            v265 = v278[1];
            v266 = v278[2];
            v117 = v256 - *(&v278[0] + 1);
            if (__OFSUB__(v256, *(&v278[0] + 1)))
            {
              goto LABEL_364;
            }

            if (__OFADD__(*(&v278[0] + 1), v158))
            {
              goto LABEL_365;
            }

            *(&v264 + 1) = *(&v278[0] + 1) + v158;
            v7 = v163 + 1;
            *(v16 + 96) = v163 + 1;
            if (!*(v16 + 72))
            {
              goto LABEL_379;
            }

            v14 = specialized Rope._Node._finalizeModify(_:)(v258, &v264);

            v118 = v254 - 1;
            if (__OFSUB__(v254, 1))
            {
              goto LABEL_366;
            }

            goto LABEL_221;
          }
        }

        else
        {
        }

        v118 = v254;
        v70 = v150;
        v7 = v149;
      }

LABEL_221:

      v164 = *(v16 + 72);
      v165 = *(v16 + 96);
      *&v264 = v7;
      *(&v264 + 1) = v70;
      *&v265 = v14;
      v138 = __OFADD__(v118, 1);
      v166 = v118 + 1;
      if (v138)
      {
        goto LABEL_331;
      }

      if (v7 != v165)
      {
        goto LABEL_332;
      }

      v254 = v166;
      if (v14)
      {
        v167 = *(v14 + 24 * ((v70 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v138 = __OFADD__(v117, v167);
        v30 = v117 + v167;
        if (v138)
        {
          goto LABEL_337;
        }

        v168 = v7;
        v169 = a3;
        if (!v164)
        {
          goto LABEL_330;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        v168 = v7;
        v169 = a3;
        swift_unknownObjectRetain();
        v170 = v70;
        v171 = specialized Rope._Node.subscript.getter(v70, v164);
        v172 = v117;

        v30 = v117 + v171;
        if (__OFADD__(v172, v171))
        {
          goto LABEL_342;
        }

        v70 = v170;
        if (!v164)
        {
          goto LABEL_330;
        }
      }

      if (v70 >= (((-15 << ((4 * *(v164 + 18) + 8) & 0x3C)) - 1) & *(v164 + 18) | (*(v164 + 16) << ((4 * *(v164 + 18) + 8) & 0x3C))))
      {
        goto LABEL_330;
      }

      if (v14 && (v173 = v70, v174 = (4 * *(v14 + 18) + 8) & 0x3C, v175 = ((v70 >> v174) & 0xF) + 1, v175 < *(v14 + 16)))
      {
        result = swift_unknownObjectRelease();
        v13 = (v175 << v174) | ((-15 << v174) - 1) & v173;
      }

      else if (specialized Rope._Node.formSuccessor(of:)(&v264, v164))
      {
        result = swift_unknownObjectRelease();
        v13 = *(&v264 + 1);
      }

      else
      {
        v176 = *(v164 + 18);
        v177 = *(v164 + 16);
        result = swift_unknownObjectRelease();
        v13 = ((-15 << ((4 * v176 + 8) & 0x3C)) - 1) & v176 | (v177 << ((4 * v176 + 8) & 0x3C));
        *&v264 = v168;
        *(&v264 + 1) = v13;
        *&v265 = 0;
      }

      v31 = v255;
      v3 = v169;
      v7 = v264;
      v33 = v265;
      v14 = v252;
      v32 = a2;
      if (v30 >= v3)
      {
        v178 = *v255;
        if (a2 == v3)
        {
          v7 = *(v252 + 12);
          if (v178)
          {
            v18 = *(v252 + 11);
            if (v18 < a2)
            {
              goto LABEL_356;
            }

            v246 = *(v252 + 12);
            v3 = *(v252 + 10);
            v179 = (v178 + 16);
            v180 = *(v178 + 16);
            v181 = *(v178 + 18);
            v257 = v3;
            if (*(v178 + 16) && v18 > a2)
            {
              result = swift_unknownObjectRetain_n();
              if (!v181)
              {
                v182 = 0;
                v16 = a2;
                v14 = v178;
LABEL_264:
                v190 = v255;
                v192 = 0;
                v194 = 24;
                v191 = v16;
                v195 = v180;
                v7 = v246;
                v193 = a3;
                while (1)
                {
                  v196 = *(v14 + v194);
                  v16 = v191 - v196;
                  if (__OFSUB__(v191, v196))
                  {
                    goto LABEL_333;
                  }

                  if (__OFADD__(v16, 1))
                  {
                    goto LABEL_334;
                  }

                  if (v16 + 1 < 1)
                  {
                    goto LABEL_272;
                  }

                  ++v192;
                  v194 += 24;
                  v191 -= v196;
                  if (v195 == v192)
                  {
                    v192 = v195;
                    goto LABEL_270;
                  }
                }
              }

              v16 = a2;
              v182 = v181;
              v183 = v178;
              do
              {
                v184 = *v179;
                if (*v179)
                {
                  v185 = 0;
                  v186 = (v183 + 40);
                  while (1)
                  {
                    v187 = *v186;
                    v186 += 3;
                    v188 = v16 - v187;
                    if (__OFSUB__(v16, v187))
                    {
                      goto LABEL_316;
                    }

                    if (__OFADD__(v188, 1))
                    {
                      goto LABEL_317;
                    }

                    if (v188 + 1 < 1)
                    {
                      v184 = v185;
                      goto LABEL_245;
                    }

                    ++v185;
                    v16 = v188;
                    if (v184 == v185)
                    {
                      goto LABEL_254;
                    }
                  }
                }

                v188 = v16;
LABEL_254:
                if (v188)
                {
                  goto LABEL_335;
                }

                v16 = 0;
LABEL_245:
                v182 = (v184 << ((4 * v181 + 8) & 0x3C)) | ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v182;
                v14 = *(v183 + 24 + 24 * v184);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v179 = (v14 + 16);
                LOBYTE(v181) = *(v14 + 18);
                v183 = v14;
              }

              while (v181);
              LODWORD(v180) = *v179;
              if (*v179)
              {
                goto LABEL_264;
              }

              v192 = 0;
              v7 = v246;
              v193 = a3;
              v190 = v255;
LABEL_270:
              if (!v16)
              {
                v191 = 0;
LABEL_272:
                swift_unknownObjectRelease();
                v13 = v182 & 0xFFFFFFFFFFFFF0FFLL | (v192 << 8);
                v189 = v193;
                goto LABEL_273;
              }

              goto LABEL_367;
            }

            v13 = ((-15 << ((4 * v181 + 8) & 0x3C)) - 1) & v181 | (v180 << ((4 * v181 + 8) & 0x3C));
            swift_unknownObjectRetain();
            v191 = 0;
            v14 = 0;
            v7 = v246;
            v189 = a3;
            v190 = v255;
LABEL_273:
            v33 = v14;
            v254 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v13, v14, v178, v257);
            result = swift_unknownObjectRelease();
            v32 = a2;
          }

          else
          {
            if (a2 > 0)
            {
              goto LABEL_360;
            }

            v189 = v3;
            v190 = v255;
            v191 = 0;
            v33 = 0;
            v13 = 0;
            v254 = 0;
          }

          v30 = v32 - v191;
          v31 = v190;
          v3 = v189;
          if (__OFSUB__(v32, v191))
          {
            goto LABEL_353;
          }
        }

        else
        {
          v30 = 0;
          v254 = 0;
          v33 = 0;
          v13 = 0;
          v7 = *(v252 + 12);
          if (v178)
          {
            v33 = 0;
            v30 = *(v252 + 11);
            v254 = *(v252 + 10);
            v13 = ((-15 << ((4 * *(v178 + 18) + 8) & 0x3C)) - 1) & *(v178 + 18) | (*(v178 + 16) << ((4 * *(v178 + 18) + 8) & 0x3C));
          }
        }
      }
    }
  }

LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
  return result;
}