unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{

  if (!a2)
  {
    a3 = 0;
    goto LABEL_18;
  }

  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_22:
      __break(1u);
    }

    else
    {
      v4 = a4 & 0xFFFFFFFFFFFFFF8;
      if (!(a4 >> 62))
      {
        v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    v9 = __CocoaSet.count.getter();
LABEL_6:
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v9 == v10)
      {
        break;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1C68F41F0](v10, a4);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v12 = *(a4 + 8 * v10 + 32);
      }

      *(a2 + 8 * v10) = v13;
      if (v11 == a3)
      {
        goto LABEL_18;
      }

      ++v10;
      if (v11 >= a3)
      {
        goto LABEL_21;
      }
    }

    a3 = v9;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a3;
  return a3;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_14:
    result = 0;
    v14 = a5;
LABEL_18:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v14;
    return result;
  }

  if (!a3)
  {
    v14 = a5;
LABEL_16:
    result = a3;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 1;
    v13 = a5;
    while (1)
    {
      if (v13 == a6)
      {
        v14 = a6;
        goto LABEL_18;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      while (1)
      {
        v15 = *(a4 + 16);
        if (v14 >= REEntityGetComponentCount() || (Entity.ComponentSet.isComponentInTheSwiftAPI(atIndex:)() & 1) != 0)
        {
          break;
        }

        ++v14;
      }

      *v11 = v13;
      if (v12 == a3)
      {
        goto LABEL_16;
      }

      ++v11;
      v13 = v14;
      result = v12;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t *a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = v4;
  v10 = *v4;
  v11 = v6[1];
  v31 = v11;
  if (!v11)
  {
    if (v10)
    {
      v12 = AnimationLibraryResource.keyedResources.getter();
    }

    else
    {
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit17AnimationResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v11 = v12;
  }

  v13 = v11 + 64;
  v14 = *(v11 + 64);
  v15 = -1 << *(v11 + 32);
  outlined init with copy of [String : AnimationResource]?(&v31, v30);
  result = a4(v6);
  if (-v15 < 64)
  {
    v17 = ~(-1 << -v15);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  if (!a2)
  {
LABEL_23:
    v19 = 0;
    a3 = 0;
LABEL_30:
    *a1 = v11;
    a1[1] = v13;
    a1[2] = ~v15;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_30;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v19 = 0;
    v29 = v15;
    v15 = (63 - v15) >> 6;
    v20 = 1;
    while (v18)
    {
LABEL_19:
      v23 = __clz(__rbit64(v18)) | (v19 << 6);
      v24 = (*(v11 + 48) + 16 * v23);
      v25 = v24[1];
      v26 = *(*(v11 + 56) + 8 * v23);
      v18 &= v18 - 1;
      *a2 = *v24;
      a2[1] = v25;
      a2[2] = v26;
      if (v20 == a3)
      {

        goto LABEL_28;
      }

      a2 += 3;

      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    v21 = v19;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v22 >= v15)
      {
        break;
      }

      v18 = *(v13 + 8 * v22);
      ++v21;
      if (v18)
      {
        v19 = v22;
        goto LABEL_19;
      }
    }

    v18 = 0;
    if (v15 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v15;
    }

    v19 = v28 - 1;
    a3 = result;
LABEL_28:
    v15 = v29;
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);

  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    PinCount = REPinComponentGetPinCount();
  }

  else
  {
    PinCount = 0;
  }

  if (!a2)
  {
LABEL_16:
    a3 = 0;
    goto LABEL_17;
  }

  if (!a3)
  {
LABEL_17:
    v11 = -1;
LABEL_21:
    *a1 = a4;
    *(a1 + 8) = PinCount;
    *(a1 + 16) = v11;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    v11 = 0;
    v12 = PinCount;
    PinCount = a3 - 1;
    a1 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = a3;
    v24 = v12;
    a3 = v12 & ~(v12 >> 63);
    while (1)
    {
      if (a3 == v11)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        outlined destroy of BodyTrackingComponent?(&v28, &_s17RealityFoundation12GeometricPinVSgMd, &_s17RealityFoundation12GeometricPinVSgMR);
        a1 = v25;
        goto LABEL_20;
      }

      v13 = *(a4 + 16);
      REPinComponentGetComponentType();
      result = REEntityGetComponentByClass();
      if (!result)
      {
        goto LABEL_23;
      }

      REPinComponentGetPinNameAtIndex();
      v14 = String.init(cString:)();
      v16 = v15;
      REPinComponentGetPinOffsetPoseAtIndex();
      v18 = v17;
      HIDWORD(v18) = HIDWORD(v27);
      v26 = v19;
      v27 = v18;
      if (REPinComponentIsSkeletalJointPinAtIndex())
      {
        REPinComponentGetSkeletalJointNameAtIndex();
        v20 = String.init(cString:)();
        v22 = v21;
        swift_weakInit();
        v31 = v27;
        v32 = v26;
        swift_weakAssign();
      }

      else
      {
        swift_weakInit();
        v31 = v27;
        v32 = v26;
        swift_weakAssign();
        v20 = 0;
        v22 = 0;
      }

      *(&v28 + 1) = v14;
      *&v29 = v16;
      *(&v29 + 1) = v20;
      *&v30 = v22;
      outlined init with take of GeometricPin(&v28, v33);
      outlined init with take of GeometricPin(v33, a2);
      if (PinCount == v11)
      {
        break;
      }

      a2 += 80;
      if (++v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    a1 = v25;
    a3 = v23;
LABEL_20:
    PinCount = v24;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v11 = a4;
  v12 = 0;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    v8 = 0;
LABEL_14:
    *v4 = a4;
    v4[1] = v5;
    return v8;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    v8 = v5;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      v8 = v7 - 1;
      if (v7 - 1 >= Scene.AnchorCollection.endIndex.getter())
      {
        a4 = v11;
        v5 = v12;
        goto LABEL_14;
      }

      v12 = v7;
      *v6 = Scene.AnchorCollection.subscript.getter(v7 - 1);
      v6[1] = v9;
      if (v5 == v7)
      {
        break;
      }

      v6 += 2;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      *&v26[9] = *(v18 + 57);
      v25[2] = v20;
      *v26 = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x49uLL);
      if (v14 == v10)
      {
        outlined init with copy of AudioMixGroup(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      outlined init with copy of AudioMixGroup(v25, v24);
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
      v18 = (*(a4 + 56) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        outlined init with copy of ExtrudedGlyphDescriptor(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      outlined init with copy of ExtrudedGlyphDescriptor(v25, v24);
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
      v18 = (*(a4 + 56) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        outlined init with copy of ComponentInfo(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      outlined init with copy of ComponentInfo(v25, v24);
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      *a2 = *(*(a4 + 56) + ((v9 << 10) | (16 * v14)));
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

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v32 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(a2 + 56) + 80 * v12);
      v17 = *(v16 + 57);
      v19 = v16[2];
      v18 = v16[3];
      v40 = v16[1];
      v20 = *v16;
      v41 = v19;
      *v42 = v18;
      *&v42[9] = v17;
      v39 = v20;
      v30 = *v42;
      v31 = v40;
      v28 = v19;
      v29 = v20;
      v21 = v17 >> 56;
      v22 = HIBYTE(v17);

      outlined init with copy of AudioMixGroup(&v39, v38);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v39 = v29;
      v40 = v31;
      v41 = v28;
      *v42 = v30;
      *&v42[16] = v21;
      v42[24] = v22;
      v35 = a1[2];
      v36 = a1[3];
      v37 = *(a1 + 8);
      v33 = *a1;
      v34 = a1[1];
      String.hash(into:)();

      v23 = *&v42[8];
      outlined init with copy of AudioMixGroup(&v39, v38);
      String.hash(into:)();
      outlined destroy of AudioMixGroup(&v39);
      if (v23 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v23;
      }

      v25 = *&v42[16];
      MEMORY[0x1C68F4C50](*&v24);
      if (v25 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v25;
      }

      v27 = v42[24];
      MEMORY[0x1C68F4C50](*&v26);
      Hasher._combine(_:)(v27);
      outlined destroy of AudioMixGroup(&v39);
      result = Hasher._finalize()();
      v32 ^= result;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_17:

    return MEMORY[0x1C68F4C10](v32);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_17;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSDictionary()
{
  result = lazy cache variable for type metadata for NSDictionary;
  if (!lazy cache variable for type metadata for NSDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDictionary);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent()
{
  result = lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent;
  if (!lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioMixGroupsComponent and conformance AudioMixGroupsComponent);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySiSo13simd_float4x4aSg_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1C68F39B0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = specialized Set._Variant.insert(_:)(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1C68F39B0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AudioFileGroupResource.__allocating_init(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](AudioFileGroupResource.__allocating_init(named:from:in:), v8, v7);
}

uint64_t AudioFileGroupResource.__allocating_init(named:from:in:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](v4, v3);

  *(v0 + 88) = v12;
  v5 = v2;
  static LoadableResource.getAssetRefFromRealityFileInBundle(named:in:)(v11, v12, v2);
  v7 = v6;

  v8 = *(v7 + 16);
  *(v0 + 96) = v8;
  RERetain();

  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = AudioFileGroupResource.__allocating_init(named:from:in:);

  return specialized static AudioResource.loadAssetWithSharedAssetService(asset:debugAssetName:)(v8, v11, v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 112) = v0;

  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = AudioFileGroupResource.__allocating_init(named:from:in:);
  }

  else
  {
    v8 = AudioFileGroupResource.__allocating_init(named:from:in:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];

  type metadata accessor for AudioFileGroupResource();
  swift_allocObject();
  v4 = AudioFileGroupResource.init(fromCore:)(v1);
  RERelease();

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[6];

  RERelease();

  v4 = v0[14];
  v5 = v0[1];

  return v5();
}

int64_t AudioFileGroupResource.init(_:)(unint64_t a1)
{
  v4 = v2;
  if (!(a1 >> 62))
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_38:

    lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error();
    swift_allocError();
    v32 = 1;
    goto LABEL_39;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_38;
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v19 = 1;
    goto LABEL_15;
  }

LABEL_3:
  v48[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = v48[0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v1; ++i)
    {
      v8 = *(MEMORY[0x1C68F41F0](i, a1) + 16);
      LayoutTag = REAudioFileAssetGetLayoutTag();
      swift_unknownObjectRelease();
      v48[0] = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v48[0];
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 4 * v11 + 32) = LayoutTag;
    }
  }

  else
  {
    v12 = a1 + 32;
    v13 = v1;
    do
    {
      v14 = *(*v12 + 16);
      v15 = REAudioFileAssetGetLayoutTag();
      v48[0] = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        v45 = v4;
        v18 = v15;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v18;
        v4 = v45;
        v6 = v48[0];
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 4 * v17 + 32) = v15;
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  v19 = 0;
LABEL_15:
  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(v6);

  v21 = *(v20 + 16);

  if (v21 != 1)
  {

    lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error();
    swift_allocError();
    v32 = 2;
LABEL_39:
    *v31 = v32;
    goto LABEL_40;
  }

  v22 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v22 + 120, v48);
  v23 = v49;
  v24 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v24 + 32))(v23, v24);
  _StringGuts.grow(_:)(22);

  v51 = specialized RandomNumberGenerator.next<A>(upperBound:)(0xFFFFFFFFFFFFFFFFLL);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v25);

  v26 = MEMORY[0x1C68F3280](0xD000000000000014, 0x80000001C18E3F80);

  if ((v19 & 1) == 0)
  {
    v44 = v26;
    v46 = v4;
    v47 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v27 = 0;
      do
      {
        v28 = *(MEMORY[0x1C68F41F0](v27, a1) + 16);
        swift_unknownObjectRelease();
        v30 = *(v47 + 16);
        v29 = *(v47 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        }

        ++v27;
        *(v47 + 16) = v30 + 1;
        *(v47 + 8 * v30 + 32) = v28;
      }

      while (v1 != v27);
    }

    else
    {
      v33 = a1 + 32;
      v34 = *(v47 + 16);
      v35 = v1;
      do
      {
        v36 = *(*v33 + 16);
        v37 = *(v47 + 24);
        if (v34 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v34 + 1, 1);
        }

        *(v47 + 16) = v34 + 1;
        *(v47 + 8 * v34 + 32) = v36;
        v33 += 8;
        ++v34;
        --v35;
      }

      while (v35);
    }

    v4 = v46;
    v26 = v44;
  }

  v3 = REAudioFileGroupAssetCreateWithFileAssets();

  __swift_destroy_boxed_opaque_existential_1(v48);
  if (!v3)
  {

    lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
    swift_allocError();
    *v42 = 0x2E6E776F6E6B6E55;
    v42[1] = 0xE800000000000000;
LABEL_40:
    swift_willThrow();
    type metadata accessor for AudioFileGroupResource();
    swift_deallocPartialClassInstance();
    return v1;
  }

  if (one-time initialization token for audio != -1)
  {
LABEL_43:
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.audio);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = REAssetGetAssetId();
    _os_log_impl(&dword_1C1358000, v39, v40, "[API/RealityKit] Loading an AudioFileGroupResource with REAssetID: %llu", v41, 0xCu);
    MEMORY[0x1C6902A30](v41, -1, -1);
  }

  *(v4 + 24) = a1;
  v1 = AudioResource.init(fromCore:)(v3);
  RERelease();
  return v1;
}

uint64_t AudioFileGroupResource.init(fromCore:)(uint64_t a1)
{
  result = REAudioFileGroupAssetGetAssetCount();
  v43 = MEMORY[0x1E69E7CC0];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v34 = v1;
    if (result)
    {
      v5 = 0;
      v40 = MEMORY[0x1E69E7CC0];
      v6 = &static ComponentInfo.Platform.macOS;
      v7 = &_ss23_ContiguousArrayStorageCys7CVarArg_pGMd;
      v39 = xmmword_1C1887600;
      while (1)
      {
        AssetAtIndex = REAudioFileGroupAssetGetAssetAtIndex();
        if (AssetAtIndex)
        {
          v12 = AssetAtIndex;
          v13 = REAssetGetSwiftObject();
          type metadata accessor for AudioResource();
          if (swift_dynamicCastClass())
          {
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          v15 = REAssetHandleAssetType();
          if (v6[466] != -1)
          {
            v32 = v7;
            v33 = v15;
            swift_once();
            v15 = v33;
            v7 = v32;
          }

          rawValue = resourceClasses._rawValue;
          if (*(resourceClasses._rawValue + 2))
          {
            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
            if (v18)
            {
              v19 = *(rawValue[7] + 16 * v17);
              v20 = *(rawValue[7] + 16 * v17 + 8);
              v37 = *(v20 + 16);
              v36 = v19;
              v21 = v19;
              v22 = type metadata accessor for Optional();
              v38 = &v34;
              v35 = v22;
              v23 = *(v22 - 8);
              v24 = *(v23 + 64);
              v25 = MEMORY[0x1EEE9AC00](v22);
              v27 = &v34 - v26;
              v37(v12, v21, v20, v25);
              v28 = *(v21 - 8);
              if ((*(v28 + 48))(v27, 1, v21) == 1)
              {
                (*(v23 + 8))(v27, v35);
                memset(v42, 0, sizeof(v42));
              }

              else
              {
                *&v42[24] = v36;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
                (*(v28 + 32))(boxed_opaque_existential_1, v27, v21);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation16LoadableResource_pSgMd, &_s17RealityFoundation16LoadableResource_pSgMR);
              v6 = &static ComponentInfo.Platform.macOS;
              v7 = &_ss23_ContiguousArrayStorageCys7CVarArg_pGMd;
              if (!swift_dynamicCast() || !v41)
              {
                goto LABEL_5;
              }

LABEL_8:
              type metadata accessor for AudioFileResource();
              if (swift_dynamicCastClass())
              {

                MEMORY[0x1C68F3650](v14);
                if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v30 = v7;
                  v31 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v7 = v30;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v40 = v43;
              }

              else
              {
              }

              goto LABEL_5;
            }
          }

          static os_log_type_t.error.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(v7, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v8 = swift_allocObject();
          *(v8 + 16) = v39;
          v9 = REAssetGetType();
          *(v8 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
          *(v8 + 64) = lazy protocol witness table accessor for type NSString and conformance NSObject();
          *(v8 + 32) = v9;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
          v10 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();
        }

LABEL_5:
        if (v4 == ++v5)
        {
          goto LABEL_24;
        }
      }
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *(v34 + 24) = v40;
    return AudioResource.init(fromCore:)(a1);
  }

  return result;
}

uint64_t AudioFileGroupResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();
  v9 = *(v1 + 24);

  return v1;
}

uint64_t AudioFileGroupResource.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();
  v9 = *(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t vtable thunk for AudioResource.__allocating_init(fromCore:) dispatching to AudioFileGroupResource.__allocating_init(fromCore:)(uint64_t a1)
{
  type metadata accessor for AudioFileGroupResource();
  swift_allocObject();
  return AudioFileGroupResource.init(fromCore:)(a1);
}

void AudioFileGroupResource.hash(into:)()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = MEMORY[0x1C68F41F0](i, v1);
      MEMORY[0x1C68F4C10](*(v4 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1C68F4C10](*(v6 + 16));
      --v2;
    }

    while (v2);
  }
}

uint64_t AudioFileGroupResource.hashValue.getter()
{
  result = Hasher.init(_seed:)();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v8 = *(v0 + 24);
    }

    result = __CocoaSet.count.getter();
    v3 = result;
    if (!result)
    {
      return Hasher._finalize()();
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return Hasher._finalize()();
    }
  }

  if (v3 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v5 = MEMORY[0x1C68F41F0](i, v2);
        MEMORY[0x1C68F4C10](*(v5 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = (v2 + 32);
      do
      {
        v7 = *v6++;
        MEMORY[0x1C68F4C10](*(v7 + 16));
        --v3;
      }

      while (v3);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioFileGroupResource()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  AudioFileGroupResource.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AudioFileGroupResource.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v15 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  *(v10 + 32) = 0x656372756F736572;
  *(v10 + 40) = 0xE900000000000073;
  v11 = *(v0 + 24);
  *(v10 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AudioFileResourceCGMd, &_sSay10RealityKit17AudioFileResourceCGMR);
  *(v10 + 48) = v11;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E75D8], v1);
  type metadata accessor for AudioFileGroupResource();

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6902A50](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6902A50](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation20InputTargetComponentV06DirectD4TypeV0gD6OptionO_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for InputTargetComponent.DirectInputType.DirectInputOption, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation17CollisionPlane_v1V_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for CollisionPlane_v1, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v11[2] = v5[2];
      v11[3] = v6;
      v11[4] = v5[4];
      v8 = *v5;
      v7 = v5[1];
      v5 += 5;
      v11[0] = v8;
      v11[1] = v7;
      specialized Set._Variant.insert(_:)(v9, v11);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDVSg_SayAGGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
  result = MEMORY[0x1C68F39B0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      outlined init with copy of UUID?(v13, v6);
      specialized Set._Variant.insert(_:)(v9, v6);
      outlined destroy of UUID?(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation27NetworkSendBlockingCategoryO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for NetworkSendBlockingCategory, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt32V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_nTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = MEMORY[0x1C68F39B0](v6);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode();
  result = MEMORY[0x1C68F39B0](v2, &type metadata for ImagePresentationComponent.ViewingMode, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileGroupResource.Error and conformance AudioFileGroupResource.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError()
{
  result = lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError;
  if (!lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioResource.CoreREError and conformance AudioResource.CoreREError);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode and conformance ImagePresentationComponent.ViewingMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1()
{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlane_v1 and conformance CollisionPlane_v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory()
{
  result = lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory;
  if (!lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory;
  if (!lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkSendBlockingCategory and conformance NetworkSendBlockingCategory);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption()
{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption;
  if (!lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputTargetComponent.DirectInputType.DirectInputOption and conformance InputTargetComponent.DirectInputType.DirectInputOption);
  }

  return result;
}

uint64_t RKARSegmentationComponent.segmentationBuffer.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t RKARSegmentationComponent.estimatedDepthData.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t RKARSegmentationComponent.cameraTextureY.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RKARSegmentationComponent.cameraTextureCbCr.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  result = swift_unknownObjectRelease();
  *(v1 + 24) = a1;
  return result;
}

double RKARSegmentationComponent.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t RKARSegmentationComponent.init(segmentationBuffer:estimatedDepthData:cameraTextureY:cameraTextureCbCr:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

id static RKARSegmentationComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = REARSegmentationComponentGetSegmentationBuffer();
  v5 = REARSegmentationComponentGetEstimatedDepthData();
  v6 = REARSegmentationComponentGetCameraTextureY();
  result = REARSegmentationComponentGetCameraTextureCbCr();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = result;
  return result;
}

uint64_t RKARSegmentationComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v3)
  {
    v7 = *a1;
    REARSegmentationComponentSetSegmentationBuffer();
  }

  if (v4)
  {
    REARSegmentationComponentSetEstimatedDepthData();
  }

  if (v6)
  {
    REARSegmentationComponentSetCameraTextureY();
  }

  if (v5)
  {
    REARSegmentationComponentSetCameraTextureCbCr();
  }

  return RENetworkMarkComponentDirty();
}

id protocol witness for static Component.__fromCore(_:) in conformance RKARSegmentationComponent@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = REARSegmentationComponentGetSegmentationBuffer();
  v5 = REARSegmentationComponentGetEstimatedDepthData();
  v6 = REARSegmentationComponentGetCameraTextureY();
  result = REARSegmentationComponentGetCameraTextureCbCr();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance RKARSegmentationComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v3)
  {
    v7 = *a1;
    REARSegmentationComponentSetSegmentationBuffer();
  }

  if (v4)
  {
    REARSegmentationComponentSetEstimatedDepthData();
  }

  if (v6)
  {
    REARSegmentationComponentSetCameraTextureY();
  }

  if (v5)
  {
    REARSegmentationComponentSetCameraTextureCbCr();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t getEnumTagSinglePayload for RKARSegmentationComponent(uint64_t *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RKARSegmentationComponent(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialMediaError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialMediaError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialMediaError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SpatialMediaError@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SpatialMediaError(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation17SpatialMediaErrorV10CodingKeys33_B76EF9165CBFDC19EB6A27859D28FFEBLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError.CodingKeys and conformance SpatialMediaError.CodingKeys);
  }

  return result;
}

uint64_t __RKEntityTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t __RKEntityTrigger.reversible.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t __RKEntityTrigger.shouldReverse.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 17) = a1;
  return result;
}

uint64_t __RKEntityTrigger.shouldFireAlternate.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 18) = a1;
  return result;
}

BOOL __RKEntityTrigger.matches(with:)()
{
  type metadata accessor for __RKEntityTriggerGroup();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](v5, v3);
      if (__OFADD__(v5, 1))
      {
LABEL_13:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v5 + 32);

      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }
    }

    v8 = (*(*v0 + 184))(v7);

    ++v5;
  }

  while ((v8 & 1) == 0);

  return v6;
}

uint64_t __RKEntityTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityTrigger.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for __RKEntityTrigger();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  a1[3] = v2;
  *a1 = result;
  return result;
}

double AnimationView.init(name:source:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  v21 = *a4;
  v22 = a4[1];
  v23 = *(a4 + 16);
  v24 = *a6;
  v33 = *a7;
  outlined init with copy of __REAssetService(a3, v51);
  if (v23 == 255)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    LOBYTE(v23) = 0;
  }

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v39[0] = 0;
  v40 = 0;
  type metadata accessor for TimelineDefinition();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v39[0];
  v27 = v40;
  v39[0] = 0;
  v40 = 0;
  v39[61] = 0;
  v39[56] = 0;
  v39[48] = 0;
  v39[40] = 0;
  *&v41 = a8;
  WORD4(v41) = a13 & 1;
  *&v42 = a14;
  WORD4(v42) = a15 & 1;
  *&v43 = a16;
  WORD4(v43) = a17 & 1;
  *&v44 = a10;
  BYTE8(v44) = 0;
  *&v45 = a11;
  BYTE8(v45) = 0;
  *(&v45 + 3) = a12;
  LOBYTE(v46) = 0;
  BYTE1(v46) = v24;
  *(&v46 + 1) = 0;
  *&v47 = a1;
  *(&v47 + 1) = a2;
  *&v48 = v21;
  *(&v48 + 1) = v22;
  LOBYTE(v49) = v23;
  DWORD1(v49) = a5;
  BYTE8(v49) = v26;
  BYTE9(v49) = v33;
  WORD5(v49) = v27;
  v50 = v25;
  outlined init with copy of __REAssetService(v51, v39);
  AnimationView.source.setter(v39);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v28 = v48;
  *(a9 + 96) = v47;
  *(a9 + 112) = v28;
  *(a9 + 128) = v49;
  *(a9 + 144) = v50;
  v29 = v44;
  *(a9 + 32) = v43;
  *(a9 + 48) = v29;
  v30 = v46;
  *(a9 + 64) = v45;
  *(a9 + 80) = v30;
  result = *&v41;
  v32 = v42;
  *a9 = v41;
  *(a9 + 16) = v32;
  return result;
}

uint64_t FromToByAnimation.init(name:from:to:by:duration:additive:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, float a13@<S3>, unsigned __int8 *a14, unsigned __int8 *a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23)
{
  v57 = a8;
  v59 = a6;
  v60 = a5;
  v61 = a4;
  v62 = a3;
  v58 = a2;
  v55 = a9;
  v56 = a1;
  v53 = a18;
  v54 = a16;
  v52 = a20;
  v51 = a21;
  v49 = a19;
  v48 = a17;
  v50 = a23;
  v47 = a22;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  v30 = v29[8];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v45 - v34;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v45 - v38;
  v40 = *a7;
  v41 = *(a7 + 8);
  LOBYTE(a7) = *(a7 + 16);
  v45 = *a14;
  v46 = *a15;
  v42 = v29[2];
  v42(&v45 - v38, v62, v28, v37);
  (v42)(v35, v61, v28);
  (v42)(v32, v60, v28);
  v67[0] = 0;
  v67[1] = 0;
  v68 = 0;
  v69 = 10;
  v65[0] = v40;
  v65[1] = v41;
  v66 = a7;
  v64 = v45;
  v63 = v46;
  FromToByAnimation.init(name:from:to:by:duration:timing:isAdditive:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)(v56, v58, v39, v35, v32, v67, v59, v65, v55, a10, a11, a12, a13, v57, &v64, &v63, v54, v48 & 1, v53, v49 & 1, v52, v51 & 1);
  v43 = v29[1];
  v43(v60, v28);
  v43(v61, v28);
  return (v43)(v62, v28);
}

__n128 OrbitAnimation.init(name:duration:axis:startTransform:spinClockwise:orientToPath:rotationCount:additive:targetPath:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, float a15@<S5>, double a16@<D6>, double a17@<D7>, char *a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, int a25)
{
  v31 = *a6;
  v32 = a6[1];
  v33 = *(a6 + 16);
  v41 = *a8;
  v37 = *a18;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v49[0] = 0;
  LOBYTE(v61) = 0;
  LOBYTE(v59) = 0;
  LOBYTE(v57) = 0;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v48[0] = 0;
  v56[0] = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 24) = v32;
  *(a9 + 32) = v33;
  *(a9 + 33) = v63;
  *(a9 + 35) = v64;
  *(a9 + 36) = a7;
  *(a9 + 40) = 0;
  *(a9 + 41) = v37;
  *(a9 + 42) = 0;
  *(a9 + 43) = a5;
  *(a9 + 48) = v35;
  *(a9 + 56) = a19;
  *(a9 + 64) = a20 & 1;
  *(a9 + 65) = 0;
  *(a9 + 70) = v62;
  *(a9 + 66) = v61;
  *(a9 + 72) = a21;
  *(a9 + 80) = a22 & 1;
  *(a9 + 81) = 0;
  *(a9 + 86) = v60;
  *(a9 + 82) = v59;
  *(a9 + 88) = a23;
  *(a9 + 96) = a24 & 1;
  *(a9 + 97) = 0;
  *(a9 + 102) = v58;
  *(a9 + 98) = v57;
  *(a9 + 104) = a16;
  *(a9 + 112) = 0;
  *(a9 + 116) = *&v56[3];
  *(a9 + 113) = *v56;
  *(a9 + 120) = a17;
  *(a9 + 128) = 0;
  *(a9 + 131) = v55;
  *(a9 + 129) = v54;
  *(a9 + 132) = a25;
  *(a9 + 136) = 0;
  *(a9 + 137) = v41;
  *(a9 + 142) = v53;
  *(a9 + 138) = v52;
  *(a9 + 144) = 0;
  *(a9 + 152) = a1;
  *(a9 + 160) = a2;
  *(a9 + 168) = xmmword_1C1898800;
  *(a9 + 184) = 0;
  *(a9 + 187) = v51;
  *(a9 + 185) = v50;
  *(a9 + 188) = 0;
  *(a9 + 192) = 0;
  *(a9 + 193) = 0;
  *(a9 + 194) = 0;
  *(a9 + 195) = 0;
  *(a9 + 200) = v34;
  *(a9 + 208) = a10;
  *(a9 + 216) = 0;
  *(a9 + 220) = *&v49[3];
  *(a9 + 217) = *v49;
  *(a9 + 224) = a11;
  *(a9 + 240) = 0;
  *(a9 + 248) = *&v48[7];
  *(a9 + 241) = *v48;
  *(a9 + 256) = a12;
  *(a9 + 272) = a13;
  result = a14;
  *(a9 + 288) = a14;
  *(a9 + 304) = 0;
  *(a9 + 305) = a3;
  *(a9 + 306) = a4;
  *(a9 + 308) = a15;
  *(a9 + 312) = 0;
  return result;
}

uint64_t static MeshResource.generateFace(faceGeometry:fillMesh:)(void *a1, char a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = [a1 vertexCount];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if (HIDWORD(v4))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = [a1 triangleCount];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v6 = v5;
  if (HIDWORD(v5))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = [a1 triangleIndices];
  v8 = [a1 triangleCount];
  v9 = 3 * v8;
  if ((v8 * 3) >> 64 != (3 * v8) >> 63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  v38[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  v10 = v9 < 1;
  v11 = v9 - 1;
  if (v10)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (*v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = *v7;
  v13 = v38[0];
  v14 = *(v38[0] + 16);
  v15 = v7 + 1;
  while (1)
  {
    v38[0] = v13;
    v16 = *(v13 + 24);
    if (v14 >= v16 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1);
      v13 = v38[0];
    }

    *(v13 + 16) = v14 + 1;
    *(v13 + 4 * v14 + 32) = v12;
    if (!v11)
    {
      break;
    }

    v17 = *v15++;
    v12 = v17;
    --v11;
    ++v14;
    if (v17 < 0)
    {
      goto LABEL_34;
    }
  }

LABEL_15:
  if (a2)
  {
    v18 = __CFADD__(v6, 34);
    v19 = v6 + 34;
    if (!v18)
    {
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of static MeshResource.generateFace(faceGeometry:fillMesh:));
      v18 = __CFADD__(v19, 22);
      v20 = v19 + 22;
      if (!v18)
      {
        specialized Array.append<A>(contentsOf:)(&outlined read-only object #1 of static MeshResource.generateFace(faceGeometry:fillMesh:));
        v18 = __CFADD__(v20, 22);
        v6 = (v20 + 22);
        if (!v18)
        {
          specialized Array.append<A>(contentsOf:)(&outlined read-only object #2 of static MeshResource.generateFace(faceGeometry:fillMesh:));
LABEL_21:
          v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v21 + 16) = v6;
          memset((v21 + 32), 3, v6);
          goto LABEL_22;
        }

LABEL_43:
        __break(1u);
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v6)
  {
    goto LABEL_21;
  }

LABEL_22:
  v22 = [a1 vertices];
  v23 = [a1 vertexCount];
  if (v23)
  {
    v24 = v23;
    v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD3VySfG_Tt1g5(v23, 0);
    memcpy(v25 + 4, v22, 16 * v24);
  }

  v26 = [a1 textureCoordinates];
  v27 = [a1 vertexCount];
  if (v27)
  {
    v28 = v27;
    v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5SIMD2VySfG_Tt1g5(v27, 0);
    memcpy(v29 + 4, v26, 8 * v28);
  }

  if (REGeomMeshCreateFromCoreAttributes())
  {
    v30 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v30 + 120, v38);
    v31 = v39;
    v32 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v32 + 32))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v33 = REAssetManagerMeshMemoryAssetCreate();
    if (v33)
    {
      v34 = v33;

      if (REAssetGetSwiftObject())
      {
        type metadata accessor for MeshResource();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
LABEL_32:
          RERelease();
          RERelease();
          v36 = *MEMORY[0x1E69E9840];
          return v35;
        }

        swift_unknownObjectRelease();
      }

      type metadata accessor for MeshResource();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      RERetain();
      REAssetSetSwiftObject();
      goto LABEL_32;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGImageRef specialized static CGImageRef.image(with:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v2)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = CGImageSourceCreateWithData(isa, 0);

  if (v4)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, PrimaryImageIndex, 0);

    return ImageAtIndex;
  }

  return 0;
}

uint64_t specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC22GenerationStartedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC21GenerationFailedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCompletedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC24GenerationCancelledEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOG_G3key_AQ7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVyAA26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOG_G3key_AQ7elementtMR, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26ImagePresentationComponentV14Spatial3DImageC30GenerationProgressUpdatedEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineUpdateEventVs5NeverOG_G3key_AN7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineUpdateEventVs5NeverOG_G3key_AN7elementtMR, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineUpdateEventVs5NeverOGMR, a4);
}

{
  return specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()(a1, a2, a3, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineRenderEventVs5NeverOG_G3key_AN7elementtMd, &_s17RealityFoundation19OrderedCoatCheckBagV6TicketVy7Combine13AnySubscriberVy0A3Kit17EngineRenderEventVs5NeverOG_G3key_AN7elementtMR, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMd, &_s7Combine13AnySubscriberVy10RealityKit17EngineRenderEventVs5NeverOGMR, a4);
}

uint64_t specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a6;
  v26 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  result = swift_beginAccess();
  v20 = *(a1 + 16);
  if (v20 >= a2)
  {
    v23 = 1;
    v22 = v25;
    v21 = v26;
    goto LABEL_6;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20 < *(a3 + 16))
  {
    outlined init with copy of [String : String](a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v18, a4, a5);
    v22 = v25;
    v21 = v26;
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(&v18[*(v14 + 48)], a8, v25, v26);
    swift_beginAccess();
    v23 = 0;
    *(a1 + 16) = v20 + 1;
LABEL_6:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v21);
    return (*(*(v24 - 8) + 56))(a8, v23, 1, v24);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t REEventDispatcher.receive(_:)(uint64_t a1)
{
  v19[2] = a1;
  v2 = *(*v1 + 80);
  v3 = type metadata accessor for AnySubscriber();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v19 - v6);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = v1[8];
  os_unfair_lock_lock(v12 + 4);
  swift_beginAccess();
  v13 = v1[9];

  os_unfair_lock_unlock(v12 + 4);
  v19[1] = v13;
  OrderedCoatCheckBag.makeIterator()(v13, v3);
  AnyIterator.next()();
  v14 = *(v4 + 48);
  if (v14(v11, 1, v3) != 1)
  {
    v15 = *(v4 + 32);
    do
    {
      v15(v7, v11, v3);
      v16 = *v7;
      dispatch thunk of AnySubscriberBase.receive(_:)();
      (*(v4 + 8))(v7, v3);
      AnyIterator.next()();
    }

    while (v14(v11, 1, v3) != 1);
  }

  v17 = static Subscribers.Demand.unlimited.getter();

  return v17;
}

uint64_t REEventDispatcher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v113 = *(*v3 + 80);
  v6 = type metadata accessor for AnySubscriber();
  v103 = type metadata accessor for Optional();
  v110 = *(v103 - 8);
  v7 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v96 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v96 - v26;
  v28 = *(v6 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v104 = &v96 - v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v96 - v36;
  v102 = v12;
  v38 = *(v12 + 16);
  v116 = a1;
  v38(v27, a1, a2, v35);
  v39 = swift_dynamicCast();
  v40 = *(v28 + 56);
  v111 = v28;
  v112 = v38;
  v114 = v37;
  v108 = v12 + 16;
  if (v39)
  {
    v40(v11, 0, 1, v6);
    (*(v28 + 32))(v37, v11, v6);
    v41 = a2;
    v42 = v116;
    v43 = v37;
  }

  else
  {
    v40(v11, 1, 1, v6);
    v44 = *(v110 + 8);
    v110 += 8;
    v96 = v44;
    v44(v11, v103);
    v45 = v107;
    (v38)(v107, v116, a2);
    (v38)(v101, v45, a2);
    v41 = a2;
    if (swift_dynamicCast())
    {
      v46 = v106;
      v40(v106, 0, 1, v6);
      v47 = v28;
      v48 = *(v28 + 32);
      v49 = v98;
      v48(v98, v46, v6);
      v50 = v104;
      v48(v104, v49, v6);
      v42 = v116;
      v43 = v114;
      v51 = v102;
      v52 = v107;
    }

    else
    {
      v53 = v106;
      v40(v106, 1, 1, v6);
      v96(v53, v103);
      v54 = *(v117 + 8);
      v55 = v104;
      v56 = &v104[*(v6 + 56)];
      v57 = v107;
      dispatch thunk of CustomCombineIdentifierConvertible.combineIdentifier.getter();
      type metadata accessor for AnySubscriberBox();
      (v38)(v115, v57, v41);
      *v55 = AnySubscriberBox.__allocating_init(_:)();
      (v38)(v99, v57, v41);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, &_ss23CustomStringConvertible_pMR);
      v58 = v57;
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v118, &v121);
        outlined init with take of ForceEffectBase(&v121, &v118);
        v59 = swift_allocObject();
        outlined init with take of ForceEffectBase(&v118, v59 + 16);
        v60 = partial apply for closure #1 in AnySubscriber.init<A>(_:);
      }

      else
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        outlined destroy of BodyTrackingComponent?(&v118, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
        swift_getDynamicType();
        v61 = _typeName(_:qualified:)();
        v63 = v62;
        v59 = swift_allocObject();
        *(v59 + 16) = v61;
        *(v59 + 24) = v63;
        v55 = v104;
        v60 = protocol witness for VFXParameter.objectName.getter in conformance VFXResource.VFXParameterImpl;
      }

      v51 = v102;
      v55[1] = v60;
      v55[2] = v59;
      v64 = v115;
      v42 = v116;
      v65 = v112;
      (v112)(v115, v58, v41);
      v66 = (*(v51 + 80) + 40) & ~*(v51 + 80);
      v67 = swift_allocObject();
      *(v67 + 2) = v113;
      *(v67 + 3) = v41;
      *(v67 + 4) = v117;
      v68 = v64;
      v50 = v104;
      (*(v51 + 32))(&v67[v66], v68, v41);
      v50[3] = partial apply for closure #3 in AnySubscriber.init<A>(_:);
      v50[4] = v67;
      v69 = v65;
      v65(v100, v58, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss34CustomPlaygroundDisplayConvertible_pMd, &_ss34CustomPlaygroundDisplayConvertible_pMR);
      v52 = v58;
      if (swift_dynamicCast())
      {
        outlined init with take of ForceEffectBase(&v118, &v121);
        outlined init with take of ForceEffectBase(&v121, &v118);
        v70 = swift_allocObject();
        outlined init with take of ForceEffectBase(&v118, v70 + 16);
        v50[5] = partial apply for closure #4 in AnySubscriber.init<A>(_:);
        v50[6] = v70;
        v47 = v111;
        v43 = v114;
      }

      else
      {
        v120 = 0;
        v118 = 0u;
        v119 = 0u;
        outlined destroy of BodyTrackingComponent?(&v118, &_ss34CustomPlaygroundDisplayConvertible_pSgMd, &_ss34CustomPlaygroundDisplayConvertible_pSgMR);
        v69(v97, v58, v41);
        v71 = swift_dynamicCast();
        v43 = v114;
        if (v71)
        {
          outlined init with take of ForceEffectBase(&v118, &v121);
          outlined init with take of ForceEffectBase(&v121, &v118);
          v72 = swift_allocObject();
          outlined init with take of ForceEffectBase(&v118, v72 + 16);
          v50[5] = partial apply for closure #5 in AnySubscriber.init<A>(_:);
          v50[6] = v72;
        }

        else
        {
          v120 = 0;
          v118 = 0u;
          v119 = 0u;
          outlined destroy of BodyTrackingComponent?(&v118, &_ss23CustomStringConvertible_pSgMd, &_ss23CustomStringConvertible_pSgMR);
          swift_getDynamicType();
          v73 = _typeName(_:qualified:)();
          v75 = v74;
          v76 = swift_allocObject();
          *(v76 + 16) = v73;
          *(v76 + 24) = v75;
          v50[5] = partial apply for closure #6 in AnySubscriber.init<A>(_:);
          v50[6] = v76;
        }

        v47 = v111;
      }
    }

    (*(v47 + 32))(v43, v50, v6);
    (*(v51 + 8))(v52, v41);
  }

  v105 = v6;
  v77 = v109;
  v78 = *(v109 + 64);
  os_unfair_lock_lock(v78 + 4);
  swift_beginAccess();
  v79 = type metadata accessor for OrderedCoatCheckBag();
  v104 = OrderedCoatCheckBag.append(_:)(v43, v79);
  v103 = v80;
  swift_endAccess();
  os_unfair_lock_unlock(v78 + 4);
  v81 = v113;
  v82 = v117;
  v83 = type metadata accessor for REEventDispatcher.EventSubscription();
  v84 = v77[2];
  swift_unownedRetainStrong();
  v85 = v77[4];
  v116 = v77[3];
  v110 = v85;
  v86 = v77[6];
  v107 = v77[5];
  v106 = v86;
  v87 = v77[7];
  v88 = v115;
  (v112)(v115, v42, v41);
  v89 = swift_allocObject();
  swift_weakInit();
  v90 = swift_allocObject();
  v90[2] = v81;
  v90[3] = v41;
  v90[4] = v82;
  v90[5] = v89;
  v91 = v103;
  v90[6] = v104;
  v90[7] = v91;
  v92 = *(v83 + 48);
  v93 = *(v83 + 52);
  swift_allocObject();

  v94 = REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(v84, v116, v110, v107, v106, v87, v88, partial apply for closure #1 in REEventDispatcher.receive<A>(subscriber:), v90);
  v122 = v83;
  WitnessTable = swift_getWitnessTable();
  *&v121 = v94;
  dispatch thunk of Subscriber.receive(subscription:)();
  (*(v111 + 8))(v114, v105);
  return __swift_destroy_boxed_opaque_existential_1(&v121);
}

uint64_t closure #1 in REEventDispatcher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for AnySubscriber();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 64);
    v12 = result;

    os_unfair_lock_lock(v11 + 4);

    swift_beginAccess();
    v13 = type metadata accessor for OrderedCoatCheckBag();
    OrderedCoatCheckBag.remove(_:)(a2, a3, v13, v9);
    (*(v6 + 8))(v9, v5);
    swift_endAccess();
    v14 = *(v12 + 64);

    os_unfair_lock_unlock(v14 + 4);
  }

  return result;
}

uint64_t *REEventDispatcher.EventSubscription.__allocating_init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  swift_allocObject();
  return REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t *REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v40 = a7;
  v30[0] = a4;
  v30[1] = a5;
  v36 = a3;
  v31 = a2;
  v33 = *v9;
  v34 = a6;
  v11 = *(v33 + 88);
  v38 = a9;
  v32 = type metadata accessor for Optional();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v15 = v30 - v14;
  swift_weakInit();
  v9[4] = 0;
  v9[5] = 0;
  *(v9 + 48) = 1;
  v16 = *(*v9 + 128);
  v17 = *(v11 - 8);
  v18 = *(v17 + 56);
  v18(v9 + v16, 1, 1, v11);
  v19 = (v9 + *(*v9 + 136));
  *v19 = 0;
  v19[1] = 0;
  *(v9 + *(*v9 + 144)) = 0;
  v37 = a1;
  v20 = v31;
  swift_weakAssign();
  v9[3] = v20;
  v35 = v17;
  (*(v17 + 16))(v15, v40, v11);
  v18(v15, 0, 1, v11);
  swift_beginAccess();
  (*(v12 + 40))(v9 + v16, v15, v32);
  v21 = v34;
  swift_endAccess();
  getEventID<A>(_:)(*(v33 + 80), *(v33 + 80));

  if (v21)
  {
    v45 = partial apply for implicit closure #2 in implicit closure #1 in REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:);
    v46 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    v44 = &block_descriptor_4;
    v22 = _Block_copy(&aBlock);

    String.utf8CString.getter();

    RETimelineEventFilter();
  }

  else
  {
    v45 = partial apply for implicit closure #4 in implicit closure #3 in REEventDispatcher.EventSubscription.init(eventBus:coreHandle:sourceObject:componentType:matching:downstream:cancellationHandler:);
    v46 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    v44 = &block_descriptor_12;
    v22 = _Block_copy(&aBlock);
  }

  v23 = REEventBusSubscribeWithMatch();
  v25 = v24;
  _Block_release(v22);

  (*(v35 + 8))(v40, v11);
  v9[4] = v23;
  v9[5] = v25;
  *(v9 + 48) = 0;
  v26 = *v19;
  v27 = v19[1];
  v28 = v38;
  *v19 = v39;
  v19[1] = v28;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v26, v27);
  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t *REEventDispatcher.EventSubscription.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  v2 = *(*v0 + 128);
  v3 = *(v1 + 88);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));
  return v0;
}

uint64_t REEventDispatcher.EventSubscription.__deallocating_deinit()
{
  v0 = *REEventDispatcher.EventSubscription.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void *REEventDispatcher.deinit()
{
  v1 = v0[2];
  swift_unownedRelease();
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  return v0;
}

uint64_t REEventDispatcher.__deallocating_deinit()
{
  REEventDispatcher.deinit();

  return swift_deallocClassInstance();
}

uint64_t REEventDispatcher.EventSubscription.request(_:)(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v1 + v3);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    return swift_endAccess();
  }

  static Subscribers.Demand.unlimited.getter();
  v5 = static Subscribers.Demand.== infix(_:_:)();
  v6 = static Subscribers.Demand.unlimited.getter();
  if (v5)
  {
LABEL_9:
    *(v1 + v3) = v6;
    return swift_endAccess();
  }

  result = static Subscribers.Demand.== infix(_:_:)();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v4 | a1) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 + a1;
  if (__OFADD__(v4, a1))
  {
LABEL_7:
    v6 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t REEventDispatcher.EventSubscription.cancel()()
{
  v1 = *(*v0 + 88);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16 - v6;
  (*(*(v1 - 8) + 56))(&v16 - v6, 1, 1, v1, v5);
  v8 = *(*v0 + 128);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v8, v7, v2);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {

    if ((*(v0 + 48) & 1) == 0)
    {
      MEMORY[0x1C68F9800](*(v0 + 24), *(v0 + 32), *(v0 + 40));
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 1;
    }
  }

  v9 = v0 + *(*v0 + 136);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(v12);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v11);
    v13 = *v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 8);
  *v9 = 0;
  *(v9 + 8) = 0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v13, v14);
}

uint64_t __REEventSubscriber.combineIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 16);
  type metadata accessor for REEventDispatcher();
  swift_getWitnessTable();
  return CustomCombineIdentifierConvertible<>.combineIdentifier.getter();
}

uint64_t __REEventSubscriber.init(dispatcher:sourceObject:componentType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[3] = 0;
  a4[4] = result;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = 0;
  return result;
}

uint64_t closure #3 in AnySubscriber.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for Mirror.AncestorRepresentation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = *(v14 + 16);
  v21(v25 - v22, a1, a2, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CustomReflectable_pMd, &_ss17CustomReflectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(v26, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    dispatch thunk of CustomReflectable.customMirror.getter();
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    outlined destroy of BodyTrackingComponent?(v26, &_ss17CustomReflectable_pSgMd, &_ss17CustomReflectable_pSgMR);
    (v21)(v18, a1, a2);
    v24 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    (*(v6 + 104))(v9, *MEMORY[0x1E69E75D8], v5);
    return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
  }
}

uint64_t specialized REEventDispatcher.receive(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - v11 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15 + 40;
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18 = *(a2 + 64);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  v19 = *(a2 + 72);

  os_unfair_lock_unlock(v18 + 4);
  if (v19 && (swift_beginAccess(), (v20 = *(v19 + 16)) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v20 + 16);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v24 + 24) = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGGGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v25 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v26 = *(v9 + 48);
  while (v26(v16, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v16, v12, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
    v27 = *v12;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v12, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation33AccessibilityRotorNavigationEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v28 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - v11 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15 + 40;
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18 = *(a2 + 64);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  v19 = *(a2 + 72);

  os_unfair_lock_unlock(v18 + 4);
  if (v19 && (swift_beginAccess(), (v20 = *(v19 + 16)) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v20 + 16);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v24 + 24) = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGGGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v25 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v26 = *(v9 + 48);
  while (v26(v16, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v16, v12, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
    v27 = *v12;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v12, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation26AccessibilityActivateEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v28 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - v11 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15 + 40;
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18 = *(a2 + 64);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  v19 = *(a2 + 72);

  os_unfair_lock_unlock(v18 + 4);
  if (v19 && (swift_beginAccess(), (v20 = *(v19 + 16)) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v20 + 16);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v24 + 24) = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGGGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v25 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v26 = *(v9 + 48);
  while (v26(v16, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v16, v12, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
    v27 = *v12;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v12, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityIncrementEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v28 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - v11 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15 + 40;
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18 = *(a2 + 64);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  v19 = *(a2 + 72);

  os_unfair_lock_unlock(v18 + 4);
  if (v19 && (swift_beginAccess(), (v20 = *(v19 + 16)) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v20 + 16);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v24 + 24) = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGGGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v25 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v26 = *(v9 + 48);
  while (v26(v16, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v16, v12, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
    v27 = *v12;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v12, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation27AccessibilityDecrementEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v28 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v31 - v11 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGSgMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v31 - v15 + 40;
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v18 = *(a2 + 64);
  os_unfair_lock_lock(v18 + 4);
  swift_beginAccess();
  v19 = *(a2 + 72);

  os_unfair_lock_unlock(v18 + 4);
  if (v19 && (swift_beginAccess(), (v20 = *(v19 + 16)) != 0))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = *(v20 + 16);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for specialized closure #2 in _OrderedCoatCheckBagRef.makeIterator();
    *(v24 + 24) = v23;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vy7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGGGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = specialized closure #1 in _OrderedCoatCheckBagRef.makeIterator();
    *(v25 + 24) = 0;
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v26 = *(v9 + 48);
  while (v26(v16, 1, v8) != 1)
  {
    outlined init with take of AnySubscriber<EngineRenderEvent, Never>(v16, v12, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
    v27 = *v12;
    dispatch thunk of AnySubscriberBase.receive(_:)();
    outlined destroy of BodyTrackingComponent?(v12, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMd, &_s7Combine13AnySubscriberVy17RealityFoundation30AccessibilityCustomActionEvent_ps5NeverOGMR);
    dispatch thunk of _AnyIteratorBoxBase.next()();
  }

  v28 = static Subscribers.Demand.unlimited.getter();

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v28;
}

uint64_t *specialized REEventDispatcher.init(eventBus:coreHandle:sourceObject:componentType:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v6[8] = v14;
  v15 = *(v13 + 80);
  type metadata accessor for AnySubscriber();
  v6[9] = __RKEntityLookAtCameraAction.reversed()();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  swift_unownedRetain();
  return v6;
}

uint64_t *specialized REEventDispatcher.__allocating_init(eventBus:coreHandle:sourceObject:componentType:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 80);
  type metadata accessor for REEventDispatcher();
  swift_allocObject();
  return specialized REEventDispatcher.init(eventBus:coreHandle:sourceObject:componentType:matching:)(a1, a2, a3, a4, a5, a6);
}

uint64_t specialized REEventDispatcher.receive(subscription:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  static Subscribers.Demand.unlimited.getter();
  return dispatch thunk of Subscription.request(_:)();
}

uint64_t type metadata completion function for REEventDispatcher.EventSubscription(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for __REEventSubscriber()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for __REEventSubscriber(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __REEventSubscriber(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized REEventDispatcher.EventSubscription.handleEvent(sourceObject:payloadRef:)(char *a1)
{
  v43 = a1;
  v41 = *v1;
  v2 = v41;
  v44 = *(v41 + 80);
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v38 - v5;
  v6 = *(v2 + 88);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  v18 = *(v2 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v18, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v38[0] = *(v12 + 32);
  v38[1] = v12 + 32;
  (v38[0])(v17, v11, v6);
  v19 = *(*v1 + 144);
  swift_beginAccess();
  v20 = *(v1 + v19);
  static Subscribers.Demand.unlimited.getter();
  result = static Subscribers.Demand.== infix(_:_:)();
  v22 = v17;
  v23 = v44;
  v24 = v12;
  if ((result & 1) == 0)
  {
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v20)
    {
LABEL_21:
      (*(v12 + 8))(v22, v6);
      return 0;
    }
  }

  UnsafeRawPointer.load<A>(fromByteOffset:as:)();
  swift_beginAccess();
  v25 = *(v1 + v19);
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
      v26 = static Subscribers.Demand.unlimited.getter();
LABEL_13:
      *(v1 + v19) = v26;
      goto LABEL_14;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      if (v25)
      {
        v26 = v25 - 1;
        goto LABEL_13;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_14:
  swift_endAccess();
  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    v36 = *(v41 + 96);
    v37 = v45;
    dispatch thunk of Subscriber.receive(_:)();
    (*(v42 + 8))(v37, v23);
    goto LABEL_21;
  }

  result = specialized static __ServiceLocator.__sharedEngine.getter();
  if (result)
  {
    v27 = *(v12 + 16);
    v28 = v39;
    v27(v39, v22, v6);
    v29 = v42;
    v30 = *(v42 + 16);
    v43 = v22;
    v31 = v40;
    v30(v40, v45, v23);
    v32 = v24;
    v33 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v34 = (v13 + *(v29 + 80) + v33) & ~*(v29 + 80);
    v35 = swift_allocObject();
    *(v35 + 2) = v23;
    *(v35 + 3) = v6;
    *(v35 + 4) = *(v41 + 96);
    (v38[0])(&v35[v33], v28, v6);
    (*(v29 + 32))(&v35[v34], v31, v23);

    __Engine.asyncOnEngineQueue(_:)(partial apply for closure #1 in REEventDispatcher.EventSubscription.handleEvent(sourceObject:payloadRef:), v35);

    (*(v29 + 8))(v45, v23);
    (*(v32 + 8))(v43, v6);
    return 0;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in REEventDispatcher.EventSubscription.handleEvent(sourceObject:payloadRef:)()
{
  v1 = v0[4];
  v2 = (*(*(v0[3] - 8) + 80) + 40) & ~*(*(v0[3] - 8) + 80);
  v3 = *(*(v0[3] - 8) + 64);
  v4 = *(*(v0[2] - 8) + 80);
  return dispatch thunk of Subscriber.receive(_:)();
}

uint64_t partial apply for closure #3 in AnySubscriber.init<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return closure #3 in AnySubscriber.init<A>(_:)(v1 + ((*(*(v1[3] - 8) + 80) + 40) & ~*(*(v1[3] - 8) + 80)), v1[3], a1);
}

uint64_t partial apply for closure #6 in AnySubscriber.init<A>(_:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
}

uint64_t partial apply for closure #1 in REEventDispatcher.receive<A>(subscriber:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return closure #1 in REEventDispatcher.receive<A>(subscriber:)(*(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t partial apply for closure #5 in AnySubscriber.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t partial apply for closure #4 in AnySubscriber.init<A>(_:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return dispatch thunk of CustomPlaygroundDisplayConvertible.playgroundDescription.getter();
}

uint64_t partial apply for closure #1 in AnySubscriber.init<A>(_:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t one-time initialization function for name()
{
  result = MEMORY[0x1C68F3280](0xD00000000000001ELL, 0x80000001C18E11E0);
  static __RKCustomTriggerNotification.name = result;
  return result;
}

{
  result = MEMORY[0x1C68F3280](0xD000000000000017, 0x80000001C18EC810);
  static __RKEntityCustomAction.RKEntityCustomActionNotification.name = result;
  return result;
}

uint64_t __RKCustomTrigger.__allocating_init(identifier:customArguments:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  if (!a3)
  {
    v7 = result;
    a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    result = v7;
  }

  *(result + 40) = a3;
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKCustomTrigger.init(identifier:customArguments:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  if (!a3)
  {
    a3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  *(v3 + 18) = 0;
  return v3;
}

uint64_t __RKCustomTrigger.matches(with:)()
{
  type metadata accessor for __RKCustomTrigger();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    goto LABEL_9;
  }

  if (v0[3] != v1[3] || v0[4] != v1[4])
  {
    v3 = v1;
    v4 = v0[3];
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v1 = v3;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v6 = v0[5];
  v7 = v1[5];

  v8 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v6, v7);

  if (v8)
  {
    return 1;
  }

LABEL_9:
  type metadata accessor for __RKEntityTriggerGroup();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  swift_beginAccess();
  v12 = *(v11 + 24);
  if (v12 >> 62)
  {
LABEL_26:
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  do
  {
    v9 = v13 != v14;
    if (v13 == v14)
    {
      break;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C68F41F0](v14, v12);
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v12 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    v16 = __RKCustomTrigger.matches(with:)(v15);

    ++v14;
  }

  while ((v16 & 1) == 0);

  return v9;
}

uint64_t __RKCustomTrigger.__ivar_destroyer()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t __RKCustomTrigger.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t __RKCustomTrigger.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t __RKEntityCustomTrigger.__allocating_init(targetEntity:identifier:customArguments:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  swift_beginAccess();
  *(v8 + 48) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  if (!a4)
  {
    a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v8 + 40) = a4;
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  return v8;
}

uint64_t __RKEntityCustomTrigger.init(targetEntity:identifier:customArguments:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  if (!a4)
  {
    a4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  *(v4 + 40) = a4;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  return v4;
}

uint64_t __RKEntityCustomTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41[-v20];
  type metadata accessor for __RKEntityCustomTrigger();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = v22;
  if ((v2[3] != *(v22 + 24) || v2[4] != *(v22 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_21;
  }

  v43 = v8;
  swift_beginAccess();
  if (v2[6])
  {

    Entity.__interactionIdentifier.getter(v21);
  }

  else
  {
    (*(v5 + 56))(v21, 1, 1, v4);
  }

  swift_beginAccess();
  v24 = *(v23 + 48);
  v44 = a1;
  if (v24)
  {

    Entity.__interactionIdentifier.getter(v18);
  }

  else
  {
    (*(v5 + 56))(v18, 1, 1, v4);
  }

  v25 = *(v9 + 48);
  outlined init with copy of UUID?(v21, v12);
  outlined init with copy of UUID?(v18, &v12[v25]);
  v26 = *(v5 + 48);
  if (v26(v12, 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v26(&v12[v25], 1, v4) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  outlined init with copy of UUID?(v12, v45);
  if (v26(&v12[v25], 1, v4) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v45, v4);
LABEL_16:
    outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_17:

    goto LABEL_21;
  }

  v27 = v43;
  (*(v5 + 32))(v43, &v12[v25], v4);
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v5 + 8);
  v28(v27, v4);
  outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of BodyTrackingComponent?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v28(v45, v4);
  outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v29 = v2[5];
  v30 = *(v23 + 40);

  v31 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v29, v30);

  if (v31)
  {
    return 1;
  }

LABEL_21:
  type metadata accessor for __RKEntityTriggerGroup();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    return 0;
  }

  v34 = v33;
  swift_beginAccess();
  v35 = *(v34 + 24);
  if (v35 >> 62)
  {
LABEL_38:
    v36 = __CocoaSet.count.getter();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  do
  {
    v32 = v36 != v37;
    if (v36 == v37)
    {
      break;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1C68F41F0](v37, v35);
      if (__OFADD__(v37, 1))
      {
LABEL_33:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v38 = *(v35 + 8 * v37 + 32);

      if (__OFADD__(v37, 1))
      {
        goto LABEL_33;
      }
    }

    v39 = __RKEntityCustomTrigger.matches(with:)(v38);

    ++v37;
  }

  while ((v39 & 1) == 0);

  return v32;
}

uint64_t __RKEntityCustomTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[6];
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  v8 = v2[3];
  v7 = v2[4];

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for __RKEntityCustomTrigger();
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  swift_beginAccess();
  *(v10 + 48) = a2;
  *(v10 + 24) = v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  *(v10 + 16) = 0;
  *(v10 + 18) = 0;

  return v10;
}

uint64_t __RKEntityCustomTrigger.__ivar_destroyer()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];
}

void *__RKEntityCustomTrigger.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t __RKEntityCustomTrigger.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t static _Proto_EnvironmentalOcclusionReceiverComponent_v1.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = REOcclusionComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t _Proto_EnvironmentalOcclusionReceiverComponent_v1.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return REOcclusionComponentSetEnabled();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance _Proto_EnvironmentalOcclusionReceiverComponent_v1(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return REOcclusionComponentSetEnabled();
}

uint64_t RERenderFrameWorkload.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t RERenderFrameWorkload.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

void RERenderFrameWorkload.configure(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  JUMPOUT(0x1C68FD7C0);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void RERenderFrameWorkload.addScheduledHandler(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v8[4] = partial apply for closure #1 in RERenderFrameWorkload.addScheduledHandler(handler:);
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
  v8[3] = &block_descriptor_13;
  v7 = _Block_copy(v8);

  RERenderFrameWorkloadAddScheduledHandler();
  _Block_release(v7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t PhotogrammetryMetadataHelper.exifDict.getter()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x1E696D9B8];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v1 + 16))
  {

    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t PhotogrammetryMetadataHelper.dateTimeOriginal.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v7)
  {
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v8 = v7;
  v9 = *MEMORY[0x1E696D9A0];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v8 + 16))
  {
    goto LABEL_36;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_37;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v12, &v80);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v16 = v78;
  v15 = v79;
  v17 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v17)
  {
LABEL_37:

    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v18 = v17;
  v19 = *MEMORY[0x1E696DA98];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v18 + 16))
  {

    goto LABEL_37;
  }

  v76 = v16;
  v77 = v15;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  outlined init with copy of Any(*(v18 + 56) + 32 * v22, &v80);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v25 = v79;
  v75 = v78;
  v26 = PhotogrammetryMetadataHelper.exifDict.getter();
  if (!v26)
  {
LABEL_41:
    v45 = 808464430;
LABEL_42:
    v46 = 0xE400000000000000;
LABEL_43:
    v47 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v48 = MEMORY[0x1C68F3280](0xD000000000000018, 0x80000001C18E42D0);
    [v47 setDateFormat_];

    v80 = v76;
    v81 = v77;

    MEMORY[0x1C68F3410](v45, v46);

    MEMORY[0x1C68F3410](v75, v25);

    v49 = MEMORY[0x1C68F3280](v80, v81);

    v50 = [v47 dateFromString_];

    if (v50)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(a1, v6, v2);
      return (*(v3 + 56))(a1, 0, 1, v2);
    }

    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  v27 = v26;
  v28 = *MEMORY[0x1E696DB30];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v27 + 16))
  {

    goto LABEL_40;
  }

  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v31, &v80);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  result = v79;
  v35 = HIBYTE(v79) & 0xF;
  v36 = v78 & 0xFFFFFFFFFFFFLL;
  if ((v79 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v79) & 0xF;
  }

  else
  {
    v37 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    v45 = 808464430;

    goto LABEL_42;
  }

  if ((v79 & 0x1000000000000000) != 0)
  {
    v41 = specialized _parseInteger<A, B>(ascii:radix:)(v78, v79, 10);
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_41;
  }

  if ((v79 & 0x2000000000000000) == 0)
  {
    if ((v78 & 0x1000000000000000) != 0)
    {
      v38 = ((v79 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v73 = v79;
      v38 = _StringObject.sharedUTF8.getter();
      result = v73;
    }

    v39 = *v38;
    if (v39 == 43)
    {
      if (v36 >= 1)
      {
        v54 = v36 - 1;
        if (v36 != 1)
        {
          v41 = 0;
          if (!v38)
          {
            goto LABEL_88;
          }

          v55 = v38 + 1;
          while (1)
          {
            v56 = *v55 - 48;
            if (v56 > 9)
            {
              break;
            }

            v57 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              break;
            }

            v41 = v57 + v56;
            if (__OFADD__(v57, v56))
            {
              break;
            }

            ++v55;
            if (!--v54)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }

      goto LABEL_96;
    }

    if (v39 == 45)
    {
      if (v36 >= 1)
      {
        v40 = v36 - 1;
        if (v36 != 1)
        {
          v41 = 0;
          if (!v38)
          {
            goto LABEL_88;
          }

          v42 = v38 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v41;
            if ((v41 * 10) >> 64 != (10 * v41) >> 63)
            {
              break;
            }

            v41 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v40)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_87;
      }

      __break(1u);
      goto LABEL_95;
    }

    if (v36)
    {
      v41 = 0;
      if (!v38)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v61 = *v38 - 48;
        if (v61 > 9)
        {
          break;
        }

        v62 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v62 + v61;
        if (__OFADD__(v62, v61))
        {
          break;
        }

        ++v38;
        if (!--v36)
        {
          goto LABEL_86;
        }
      }
    }

    goto LABEL_87;
  }

  v80 = v78;
  v81 = v79 & 0xFFFFFFFFFFFFFFLL;
  if (v78 != 43)
  {
    if (v78 == 45)
    {
      if (!v35)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v38 = (v35 - 1);
      if (v35 != 1)
      {
        v41 = 0;
        v51 = &v80 + 1;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v53 - v52;
          if (__OFSUB__(v53, v52))
          {
            break;
          }

          ++v51;
          if (!--v38)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v35)
    {
      v41 = 0;
      v63 = &v80;
      while (1)
      {
        v64 = *v63 - 48;
        if (v64 > 9)
        {
          break;
        }

        v65 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          break;
        }

        v63 = (v63 + 1);
        if (!--v35)
        {
LABEL_86:
          LOBYTE(v38) = 0;
          goto LABEL_88;
        }
      }
    }

LABEL_87:
    v41 = 0;
    LOBYTE(v38) = 1;
LABEL_88:
    LOBYTE(v78) = v38;
    v66 = v38;

    if ((v66 & 1) == 0)
    {
LABEL_89:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v67 = swift_allocObject();
      v68 = MEMORY[0x1E69E6530];
      *(v67 + 16) = xmmword_1C1887600;
      v69 = MEMORY[0x1E69E65A8];
      *(v67 + 56) = v68;
      *(v67 + 64) = v69;
      *(v67 + 32) = v41;
      v45 = String.init(format:_:)();
      v46 = v70;
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (v35)
  {
    v38 = (v35 - 1);
    if (v35 != 1)
    {
      v41 = 0;
      v58 = &v80 + 1;
      while (1)
      {
        v59 = *v58 - 48;
        if (v59 > 9)
        {
          break;
        }

        v60 = 10 * v41;
        if ((v41 * 10) >> 64 != (10 * v41) >> 63)
        {
          break;
        }

        v41 = v60 + v59;
        if (__OFADD__(v60, v59))
        {
          break;
        }

        ++v58;
        if (!--v38)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t PhotogrammetryMetadataHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized Array.subscript.modify(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*specialized Array.subscript.modify(uint64_t (***a1)(), unint64_t a2))()
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized Array.subscript.modify(uint64_t (***a1)(uint64_t result), unint64_t a2))(uint64_t result)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    return Array.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

uint64_t IKSolverDefinition.rigDefinition.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v1[1];
  a1[1] = v1[2];
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

__n128 IKSolverDefinition.rigDefinition.setter(__n128 *a1)
{
  v3 = a1->n128_u64[0];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v6 = v1[6];

  v1[1] = v3;
  v1[2] = a1->n128_u64[1];
  result = a1[1];
  v9 = a1[2];
  *(v1 + 3) = result;
  *(v1 + 5) = v9;
  return result;
}

__n128 IKSolverDefinition.init(id:rig:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 56) = xmmword_1C1887610;
  *(a3 + 80) = xmmword_1C1887610;
  *(a3 + 16) = a2->n128_u64[1];
  result = a2[1];
  v4 = a2[2];
  *(a3 + 24) = result;
  v5 = a2->n128_u64[0];
  *(a3 + 72) = 6;
  *(a3 + 96) = 6;
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 40) = v4;
  return result;
}

uint64_t IKSolverDefinition.init(asset:index:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 56) = xmmword_1C1887610;
  *(a1 + 72) = 6;
  *(a1 + 80) = xmmword_1C1887610;
  *(a1 + 96) = 6;
  *a1 = REIkRigAssetGetDefinitionSolverID();
  DefinitionRig = REIkRigAssetGetDefinitionRig();
  v3 = MEMORY[0x1C68F53F0]();
  v4 = MEMORY[0x1C68F5400](DefinitionRig);
  v5 = MEMORY[0x1C68F53E0](DefinitionRig);
  v6._rawValue = MEMORY[0x1E69E7CC0];
  IKRig.JointCollection.init(_:)(MEMORY[0x1E69E7CC0], &v17);
  v16 = v17;
  IKRig.ConstraintsCollection.init(_:)(v6);
  v7 = v17;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  *(a1 + 24) = v16;
  *(a1 + 40) = v7;
  REIkRigAssetGetDefinitionSourceTarget();
  v8 = String.init(cString:)();
  static InternalBindPath.targetFromPath(_:)(v8, v9, &v17);

  v10 = v17;
  v11 = v18;
  outlined consume of BindTarget(*(a1 + 56), *(a1 + 64), *(a1 + 72));
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  REIkRigAssetGetDefinitionOutputTarget();
  v12 = String.init(cString:)();
  static InternalBindPath.targetFromPath(_:)(v12, v13, &v17);

  v14 = v17;
  LOBYTE(v6._rawValue) = v18;
  result = outlined consume of BindTarget(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  *(a1 + 80) = v14;
  *(a1 + 96) = v6._rawValue;
  return result;
}

uint64_t IKRig.joints.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 IKRig.joints.setter(__n128 *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

uint64_t IKRig.constraints.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

__n128 IKRig.constraints.setter(__n128 *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);

  result = *a1;
  *(v1 + 32) = *a1;
  return result;
}

uint64_t IKRig.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    v21 = *(a1 + 16);

    v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
    IKRig.JointCollection.init(_:)(v7, &v36);
    v33 = v36;
    result = IKRig.ConstraintsCollection.init(_:)(MEMORY[0x1E69E7CC0]).storage._rawValue;
    v22 = v36;
    *v2 = 120;
    __asm { FMOV            V1.2S, #1.0 }

    *(v2 + 8) = _D1;
    *(v2 + 16) = v33;
    *(v2 + 32) = v22;
    return result;
  }

  v28 = *(a1 + 8);
  v37 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v7 = v37;
  v8 = v5 - 1;
  for (i = (v4 + 160); ; i += 9)
  {
    v10 = *(i - 16);
    v11 = *(i - 15);
    v31 = *(i - 1);
    v32 = *(i - 2);
    v30 = *i;
    if (*(i - 104))
    {
      v35 = 1;

      result = 0;
      goto LABEL_8;
    }

    v12 = *(i - 14);
    if ((v12 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v12 >= *(v4 + 16))
    {
      goto LABEL_16;
    }

    v13 = (v4 + 32 + 144 * v12);
    v15 = *v13;
    v14 = v13[1];
    *&v36 = v15;
    *(&v36 + 1) = v14;
    lazy protocol witness table accessor for type String and conformance String();

    result = StringProtocol.hash.getter();
    v35 = 0;
LABEL_8:
    v37 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      v20 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      result = v20;
      v7 = v37;
    }

    *(v7 + 16) = v17 + 1;
    v18 = v7 + 176 * v17;
    *(v18 + 32) = v10;
    *(v18 + 40) = v11;
    *(v18 + 48) = result;
    *(v18 + 56) = v35;
    *(v18 + 57) = *v34;
    *(v18 + 60) = *&v34[3];
    *(v18 + 64) = v32;
    *(v18 + 80) = v31;
    *(v18 + 96) = v30;
    *(v18 + 112) = 1;
    v19 = v36;
    *(v18 + 120) = *(&v36 + 7);
    *(v18 + 113) = v19;
    *(v18 + 128) = xmmword_1C1887620;
    *(v18 + 144) = 0;
    *(v18 + 152) = 0;
    *(v18 + 160) = 0x300000000;
    *(v18 + 200) = 0;
    *(v18 + 184) = 0u;
    *(v18 + 168) = 0u;
    if (!v8)
    {

      v2 = a2;
      goto LABEL_14;
    }

    --v8;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

__n128 IKRig.Joint.init(name:parentID:restTransform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 80) = 1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Joint.init(name:parentID:restTransform:));
  *(a4 + 96) = v12;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0x300000000;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = a5;
  *(a4 + 48) = a6;
  result = a7;
  *(a4 + 64) = a7;
  return result;
}

uint64_t IKRig.JointCollection.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = a2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v59 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v30 = *(v2 + 16);
    if (!v30)
    {
LABEL_14:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v6 = 0;
    v5 = v59;
    v31 = v4 - 1;
    v32 = v2;
    v7 = 32;
    while (1)
    {
      v8 = *(v2 + v7 + 144);
      v9 = *(v2 + v7 + 112);
      v43 = *(v2 + v7 + 128);
      v44 = v8;
      v10 = *(v2 + v7 + 144);
      v45 = *(v2 + v7 + 160);
      v11 = *(v2 + v7 + 80);
      v12 = *(v2 + v7 + 48);
      v39 = *(v2 + v7 + 64);
      v40 = v11;
      v13 = *(v2 + v7 + 112);
      v14 = *(v2 + v7 + 80);
      v41 = *(v2 + v7 + 96);
      v42 = v13;
      v15 = *(v2 + v7 + 16);
      v36[0] = *(v2 + v7);
      v36[1] = v15;
      v16 = *(v2 + v7 + 48);
      v18 = *(v2 + v7);
      v17 = *(v2 + v7 + 16);
      v37 = *(v2 + v7 + 32);
      v38 = v16;
      *&v35[104] = v41;
      *&v35[88] = v14;
      *&v35[72] = v39;
      *&v35[56] = v12;
      *&v35[168] = *(v2 + v7 + 160);
      *&v35[152] = v10;
      *&v35[136] = v43;
      *&v35[120] = v9;
      *&v35[8] = v18;
      *&v35[24] = v17;
      *&v35[40] = v37;
      v46 = v6;
      v53 = *&v35[96];
      v54 = *&v35[112];
      v51 = *&v35[64];
      v52 = *&v35[80];
      v58 = *&v35[176];
      v56 = *&v35[144];
      v57 = *&v35[160];
      v55 = *&v35[128];
      v49 = *&v35[32];
      v50 = *&v35[48];
      v47 = *v35;
      v48 = *&v35[16];
      v34 = v18;
      outlined init with copy of IKRig.Joint(v36, v33);
      lazy protocol witness table accessor for type String and conformance String();
      v19 = StringProtocol.hash.getter();
      outlined destroy of BodyTrackingComponent?(&v46, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
      v20 = v46;
      v59 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      v23 = v5;
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v23 = v59;
      }

      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      v5 = v23;
      if (v31 == v6)
      {
        break;
      }

      ++v6;
      v7 += 176;
      v2 = v32;
      if (v30 == v6)
      {
        goto LABEL_14;
      }
    }

    v2 = v32;

    v3 = a2;
  }

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC8];
  }

  v46 = v25;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v26, 1, &v46);

  v28 = v46;
  *v3 = v2;
  v3[1] = v28;
  return result;
}

double IKRig.ConstraintsCollection.init(arrayLiteral:)@<D0>(Swift::OpaquePointer a1@<X0>, _OWORD *a2@<X8>)
{
  IKRig.ConstraintsCollection.init(_:)(a1);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t IKRig.Joint.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Joint.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void IKRig.Joint.parentID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t IKRig.Joint.parentID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

__n128 IKRig.Joint.restTransform.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  return result;
}

void IKRig.Joint.restTransform.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

__n128 IKRig.Joint.limits.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 IKRig.Joint.limits.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

Swift::Int IKRig.Joint.LimitsDefinition.Axis.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

__n128 IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:)@<Q0>(unsigned __int8 *a1@<X0>, __n128 *a2@<X8>, float a3@<S0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v7 = *a1;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of IKRig.Joint.LimitsDefinition.init(weight:boneAxis:minimumAngles:maximumAngles:));
  a2->n128_f32[0] = a3;
  a2->n128_u8[4] = v7;
  result = a5;
  a2[1] = a4;
  a2[2] = a5;
  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance IKRig.Joint@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Constraint.id.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v5 = v1[1];
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  *a1 = result;
  return result;
}

uint64_t IKRig.Constraint.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IKRig.Constraint.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IKRig.Constraint.jointName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IKRig.Constraint.jointName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 IKRig.Constraint.offset.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  return result;
}

void IKRig.Constraint.offset.setter(__n128 a1, __n128 a2, __n128 a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
}

__n128 IKRig.Constraint.positionDemand.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 IKRig.Constraint.positionDemand.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

__n128 IKRig.Constraint.orientationDemand.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v2;
  result = *(v1 + 144);
  *(a1 + 32) = result;
  return result;
}

__n128 IKRig.Constraint.orientationDemand.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v2;
  result = *(a1 + 32);
  *(v1 + 144) = result;
  return result;
}

uint64_t IKRig.Constraint.IKPositionDemand.init()@<X0>(uint64_t a1@<X8>)
{
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Constraint.IKPositionDemand.init());
  *a1 = 0;
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 16) = v3;
  return result;
}

Swift::Int IKRig.Constraint.IKPositionDemand.Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t IKRig.Constraint.IKOrientationDemand.init()@<X0>(uint64_t a1@<X8>)
{
  result = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of IKRig.Constraint.IKOrientationDemand.init());
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 32) = v3;
  return result;
}

__n128 IKRig.Constraint.IKOrientationDemand.mode.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 IKRig.Constraint.IKOrientationDemand.mode.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t static IKRig.Constraint.point(named:on:positionWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.point(named:on:positionWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EBEB2BB0;
  v12 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 64) = v12;
  *(a5 + 80) = xmmword_1C189F1A0;
  *(a5 + 96) = a6;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = 255;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
}

uint64_t static IKRig.Constraint.orient(named:on:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.orient(named:on:orientationWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v11 = xmmword_1EBEB2BB0;
  v12 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v11;
  *(a5 + 64) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 80) = 2;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0;
  *(a5 + 128) = xmmword_1C18ABEC0;
  *(a5 + 144) = a6;
}

uint64_t static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of static IKRig.Constraint.parent(named:on:positionWeight:orientationWeight:));
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v12 = xmmword_1EBEB2BB0;
  v13 = xmmword_1EBEB2BC0;
  *(a5 + 32) = static Transform.identity;
  *(a5 + 48) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 64) = v13;
  *(a5 + 80) = xmmword_1C189F1A0;
  *(a5 + 96) = a6;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = xmmword_1C18ABEC0;
  *(a5 + 144) = a7;
}

uint64_t static IKRig.Constraint.lookAtAdditive(named:on:lookingAlong:orientationWeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(a5);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v14 = xmmword_1EBEB2BB0;
  v15 = xmmword_1EBEB2BC0;
  *(a6 + 32) = static Transform.identity;
  *(a6 + 48) = v14;
  *(a6 + 64) = v15;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 80) = 2;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = 0;
  *(a6 + 112) = a7;
  *(a6 + 128) = a9;
  *(a6 + 144) = a8;
}

void IKRig.JointCollection.subscript.getter(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = v2[1];
  if (*(v5 + 16) && (v6 = *v3, v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v6 + 16))
    {
      v10 = (v6 + 176 * v9);
      v11 = v10[2];
      v12 = v10[4];
      v31[1] = v10[3];
      v31[2] = v12;
      v31[0] = v11;
      v13 = v10[5];
      v14 = v10[6];
      v15 = v10[8];
      v31[5] = v10[7];
      v31[6] = v15;
      v31[3] = v13;
      v31[4] = v14;
      v16 = v10[9];
      v17 = v10[10];
      v18 = v10[12];
      v31[9] = v10[11];
      v31[10] = v18;
      v31[7] = v16;
      v31[8] = v17;
      memmove(&__dst, v10 + 2, 0xB0uLL);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&__dst, v19);
      v20 = v41;
      a2[8] = v40;
      a2[9] = v20;
      a2[10] = v42;
      v21 = v37;
      a2[4] = v36;
      a2[5] = v21;
      v22 = v39;
      a2[6] = v38;
      a2[7] = v22;
      v23 = v33;
      *a2 = __dst;
      a2[1] = v23;
      v24 = v35;
      a2[2] = v34;
      a2[3] = v24;
      outlined init with copy of IKRig.Joint(v31, &v30);
      return;
    }

    __break(1u);
  }

  else
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&__dst);
    v25 = v41;
    a2[8] = v40;
    a2[9] = v25;
    a2[10] = v42;
    v26 = v37;
    a2[4] = v36;
    a2[5] = v26;
    v27 = v39;
    a2[6] = v38;
    a2[7] = v27;
    v28 = v33;
    *a2 = __dst;
    a2[1] = v28;
    v29 = v35;
    a2[2] = v34;
    a2[3] = v29;
  }
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v47 = a1[8];
  v48 = v5;
  v6 = a1[9];
  v49 = a1[10];
  v7 = a1[3];
  v8 = a1[5];
  v43 = a1[4];
  v44 = v8;
  v9 = a1[5];
  v10 = a1[7];
  v45 = a1[6];
  v46 = v10;
  v11 = a1[1];
  v40[0] = *a1;
  v40[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v41 = a1[2];
  v42 = v12;
  v58 = v47;
  v59 = v6;
  v60 = a1[10];
  v54 = v43;
  v55 = v9;
  v56 = v45;
  v57 = v4;
  v50 = v14;
  v51 = v13;
  v15 = *a2;
  v52 = v41;
  v53 = v7;
  result = getEnumTag for EnvironmentResource.OptionError(&v50);
  if (result != 1)
  {
    v39[0] = v50;
    lazy protocol witness table accessor for type String and conformance String();
    if (StringProtocol.hash.getter() == v15)
    {
      v17 = v2[1];
      if (*(v17 + 16))
      {
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);
          v21 = *v3;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
            v21 = result;
            if ((v20 & 0x8000000000000000) == 0)
            {
LABEL_7:
              if (v20 < *(v21 + 16))
              {
                v22 = (v21 + 176 * v20);
                v23 = v22[2];
                v24 = v22[4];
                v39[1] = v22[3];
                v39[2] = v24;
                v39[0] = v23;
                v25 = v22[5];
                v26 = v22[6];
                v27 = v22[8];
                v39[5] = v22[7];
                v39[6] = v27;
                v39[3] = v25;
                v39[4] = v26;
                v28 = v22[9];
                v29 = v22[10];
                v30 = v22[12];
                v39[9] = v22[11];
                v39[10] = v30;
                v39[7] = v28;
                v39[8] = v29;
                v31 = v50;
                v32 = v52;
                v22[3] = v51;
                v22[4] = v32;
                v22[2] = v31;
                v33 = v53;
                v34 = v54;
                v35 = v56;
                v22[7] = v55;
                v22[8] = v35;
                v22[5] = v33;
                v22[6] = v34;
                v36 = v57;
                v37 = v58;
                v38 = v60;
                v22[11] = v59;
                v22[12] = v38;
                v22[9] = v36;
                v22[10] = v37;
                result = outlined destroy of IKRig.Joint(v39);
                *v3 = v21;
                return result;
              }

              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }
      }
    }

    return outlined destroy of BodyTrackingComponent?(v40, &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  return result;
}

void (*IKRig.JointCollection.subscript.modify(uint64_t *a1, uint64_t *a2))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x2D0uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 704) = v2;
  v7 = *a2;
  *(v6 + 712) = *a2;
  v8 = v2[1];
  if (!*(v8 + 16) || (v9 = *v2, v10 = v2[1], result = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v12 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(v6);
    return IKRig.JointCollection.subscript.modify;
  }

  v13 = *(*(v8 + 56) + 8 * result);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v9 + 16))
  {
    v14 = (v9 + 176 * v13);
    v15 = v14[2];
    v16 = v14[4];
    *(v6 + 368) = v14[3];
    *(v6 + 384) = v16;
    *(v6 + 352) = v15;
    v17 = v14[5];
    v18 = v14[6];
    v19 = v14[8];
    *(v6 + 432) = v14[7];
    *(v6 + 448) = v19;
    *(v6 + 400) = v17;
    *(v6 + 416) = v18;
    v20 = v14[9];
    v21 = v14[10];
    v22 = v14[12];
    *(v6 + 496) = v14[11];
    *(v6 + 512) = v22;
    *(v6 + 464) = v20;
    *(v6 + 480) = v21;
    memmove((v6 + 176), v14 + 2, 0xB0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v6 + 176, v23);
    v24 = *(v6 + 320);
    *(v6 + 128) = *(v6 + 304);
    *(v6 + 144) = v24;
    *(v6 + 160) = *(v6 + 336);
    v25 = *(v6 + 256);
    *(v6 + 64) = *(v6 + 240);
    *(v6 + 80) = v25;
    v26 = *(v6 + 288);
    *(v6 + 96) = *(v6 + 272);
    *(v6 + 112) = v26;
    v27 = *(v6 + 192);
    *v6 = *(v6 + 176);
    *(v6 + 16) = v27;
    v28 = *(v6 + 224);
    *(v6 + 32) = *(v6 + 208);
    *(v6 + 48) = v28;
    outlined init with copy of IKRig.Joint(v6 + 352, v6 + 528);
    return IKRig.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

void IKRig.JointCollection.subscript.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[7];
    v5 = v2[8];
    v4 = v2[9];
    v2[30] = v5;
    v2[31] = v4;
    v6 = v2[9];
    v2[32] = v2[10];
    v7 = v2[3];
    v9 = v2[4];
    v8 = v2[5];
    v2[26] = v9;
    v2[27] = v8;
    v10 = v2[5];
    v12 = v2[6];
    v11 = v2[7];
    v2[28] = v12;
    v2[29] = v11;
    v13 = v2[1];
    v2[22] = *v2;
    v2[23] = v13;
    v14 = v2[3];
    v16 = *v2;
    v15 = v2[1];
    v17 = v2[2];
    v2[24] = v17;
    v2[25] = v14;
    v40 = v5;
    v41 = v6;
    v42 = v2[10];
    v36 = v9;
    v37 = v10;
    v38 = v12;
    v39 = v3;
    v32 = v16;
    v33 = v15;
    v18 = *(v2 + 89);
    v19 = *(v2 + 88);
    v34 = v17;
    v35 = v7;
    v43 = v18;
    outlined init with copy of [String : String]((v2 + 22), (v2 + 33), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
    IKRig.JointCollection.subscript.setter(&v32, &v43);
    v20 = v2[9];
    v2[19] = v2[8];
    v2[20] = v20;
    v2[21] = v2[10];
    v21 = v2[5];
    v2[15] = v2[4];
    v2[16] = v21;
    v22 = v2[7];
    v2[17] = v2[6];
    v2[18] = v22;
    v23 = v2[1];
    v2[11] = *v2;
    v2[12] = v23;
    v24 = v2[3];
    v2[13] = v2[2];
    v2[14] = v24;
    outlined destroy of BodyTrackingComponent?((v2 + 11), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  else
  {
    v25 = *(v2 + 89);
    v26 = *(v2 + 88);
    v27 = v2[9];
    v40 = v2[8];
    v41 = v27;
    v42 = v2[10];
    v28 = v2[5];
    v36 = v2[4];
    v37 = v28;
    v29 = v2[7];
    v38 = v2[6];
    v39 = v29;
    v30 = v2[1];
    v32 = *v2;
    v33 = v30;
    v31 = v2[3];
    v34 = v2[2];
    v35 = v31;
    v43 = v25;
    IKRig.JointCollection.subscript.setter(&v32, &v43);
  }

  free(v2);
}

{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[93];
    v4 = v2[92];
    v5 = v2[91];
    v6 = v2[90];
    v7 = *(v2 + 9);
    *(v2 + 30) = *(v2 + 8);
    *(v2 + 31) = v7;
    *(v2 + 32) = *(v2 + 10);
    v8 = *(v2 + 5);
    *(v2 + 26) = *(v2 + 4);
    *(v2 + 27) = v8;
    v9 = *(v2 + 7);
    *(v2 + 28) = *(v2 + 6);
    *(v2 + 29) = v9;
    v10 = *(v2 + 1);
    *(v2 + 22) = *v2;
    *(v2 + 23) = v10;
    v11 = *(v2 + 3);
    *(v2 + 24) = *(v2 + 2);
    *(v2 + 25) = v11;
    v2[88] = v6;
    v2[89] = v5;
    outlined init with copy of [String : String]((v2 + 44), (v2 + 66), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
    v12 = StringProtocol.hash.getter();
    v13 = *(v2 + 31);
    v40 = *(v2 + 30);
    v41 = v13;
    v42 = *(v2 + 32);
    v14 = *(v2 + 27);
    v36 = *(v2 + 26);
    v37 = v14;
    v15 = *(v2 + 29);
    v38 = *(v2 + 28);
    v39 = v15;
    v16 = *(v2 + 23);
    v32 = *(v2 + 22);
    v33 = v16;
    v17 = *(v2 + 25);
    v34 = *(v2 + 24);
    v35 = v17;
    v43 = v12;
    IKRig.JointCollection.subscript.setter(&v32, &v43);
    v18 = *(v2 + 9);
    *(v2 + 19) = *(v2 + 8);
    *(v2 + 20) = v18;
    *(v2 + 21) = *(v2 + 10);
    v19 = *(v2 + 5);
    *(v2 + 15) = *(v2 + 4);
    *(v2 + 16) = v19;
    v20 = *(v2 + 7);
    *(v2 + 17) = *(v2 + 6);
    *(v2 + 18) = v20;
    v21 = *(v2 + 1);
    *(v2 + 11) = *v2;
    *(v2 + 12) = v21;
    v22 = *(v2 + 3);
    *(v2 + 13) = *(v2 + 2);
    *(v2 + 14) = v22;
    outlined destroy of BodyTrackingComponent?((v2 + 22), &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  }

  else
  {
    v23 = v2[93];
    v24 = v2[92];
    v25 = v2[91];
    v26 = v2[90];
    v27 = *(v2 + 9);
    v40 = *(v2 + 8);
    v41 = v27;
    v42 = *(v2 + 10);
    v28 = *(v2 + 5);
    v36 = *(v2 + 4);
    v37 = v28;
    v29 = *(v2 + 7);
    v38 = *(v2 + 6);
    v39 = v29;
    v30 = *(v2 + 1);
    v32 = *v2;
    v33 = v30;
    v31 = *(v2 + 3);
    v34 = *(v2 + 2);
    v35 = v31;
    v2[22] = v26;
    v2[23] = v25;
    v43 = StringProtocol.hash.getter();
    IKRig.JointCollection.subscript.setter(&v32, &v43);
  }

  free(v2);
}

void IKRig.JointCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();
  v7 = *v3;
  v6 = v5;
  IKRig.JointCollection.subscript.getter(&v6, a3);
}

__n128 key path getter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection@<Q0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  *&v15[0] = *a2;
  *(&v15[0] + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();
  v14 = *a1;
  v13 = v6;
  IKRig.JointCollection.subscript.getter(&v13, v15);
  v7 = v15[7];
  v8 = v15[9];
  v9 = v15[10];
  *(a3 + 128) = v15[8];
  *(a3 + 144) = v8;
  *(a3 + 160) = v9;
  v10 = v15[5];
  *(a3 + 64) = v15[4];
  *(a3 + 80) = v10;
  *(a3 + 96) = v15[6];
  *(a3 + 112) = v7;
  v11 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v11;
  result = v15[3];
  *(a3 + 32) = v15[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t key path setter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[9];
  v22 = a1[8];
  v23 = v5;
  v24 = a1[10];
  v6 = a1[5];
  v18 = a1[4];
  v19 = v6;
  v7 = a1[7];
  v20 = a1[6];
  v21 = v7;
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  v9 = a1[3];
  v16 = a1[2];
  v17 = v9;
  v13[0] = v3;
  v13[1] = v4;
  outlined init with copy of [String : String](&v14, v12, &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v12[8] = v22;
  v12[9] = v23;
  v12[10] = v24;
  v12[4] = v18;
  v12[5] = v19;
  v12[6] = v20;
  v12[7] = v21;
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  v12[3] = v17;
  v13[0] = v10;
  return IKRig.JointCollection.subscript.setter(v12, v13);
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.hash.getter();

  v6[0] = v4;
  return IKRig.JointCollection.subscript.setter(a1, v6);
}

void (*IKRig.JointCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x2F0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[92] = v3;
  v7[91] = a3;
  v7[90] = a2;
  v10 = *v3;
  v9 = v3[1];
  v7[22] = a2;
  v7[23] = a3;
  v11 = v7 + 22;
  v7[93] = lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.hash.getter();
  if (!*(v9 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v14 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(v8);
    return IKRig.JointCollection.subscript.modify;
  }

  v15 = *(*(v9 + 56) + 8 * result);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(v10 + 16))
  {
    v16 = (v10 + 176 * v15);
    v17 = v16[2];
    v18 = v16[4];
    v11[12] = v16[3];
    v11[13] = v18;
    v11[11] = v17;
    v19 = v16[5];
    v20 = v16[6];
    v21 = v16[8];
    v11[16] = v16[7];
    v11[17] = v21;
    v11[14] = v19;
    v11[15] = v20;
    v22 = v16[9];
    v23 = v16[10];
    v24 = v16[12];
    v11[20] = v16[11];
    v11[21] = v24;
    v11[18] = v22;
    v11[19] = v23;
    memmove(v11, v16 + 2, 0xB0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v11, v25);
    v26 = v11[9];
    v8[8] = v11[8];
    v8[9] = v26;
    v8[10] = v11[10];
    v27 = v11[5];
    v8[4] = v11[4];
    v8[5] = v27;
    v28 = v11[7];
    v8[6] = v11[6];
    v8[7] = v28;
    v29 = v11[1];
    *v8 = *v11;
    v8[1] = v29;
    v30 = v11[3];
    v8[2] = v11[2];
    v8[3] = v30;
    outlined init with copy of IKRig.Joint((v11 + 11), (v11 + 22));
    return IKRig.JointCollection.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t IKRig.JointCollection.buildChildrenMap()()
{
  v1 = v0;
  v2 = *v0;
  v3 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5Tf4gn_n(MEMORY[0x1E69E7CC0], *(*v0 + 16));
  v4 = *(v2 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = v2 + 32;
    do
    {
      v32 = v3;
      v8 = (v7 + 176 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v10 = *v8;
        v11 = v8[2];
        v35[1] = v8[1];
        v35[2] = v11;
        v35[0] = v10;
        v12 = v8[3];
        v13 = v8[4];
        v14 = v8[6];
        v35[5] = v8[5];
        v35[6] = v14;
        v35[3] = v12;
        v35[4] = v13;
        v15 = v8[7];
        v16 = v8[8];
        v17 = v8[10];
        v35[9] = v8[9];
        v35[10] = v17;
        v35[7] = v15;
        v35[8] = v16;
        *&v34[104] = v8[6];
        *&v34[88] = v8[5];
        *&v34[72] = v8[4];
        *&v34[56] = v8[3];
        *&v34[168] = v8[10];
        *&v34[152] = v8[9];
        *&v34[136] = v8[8];
        *&v34[120] = v8[7];
        *&v34[8] = *v8;
        *&v34[24] = v8[1];
        *&v34[40] = v8[2];
        v36 = v9;
        v39 = *&v34[32];
        v40 = *&v34[48];
        v43 = *&v34[96];
        v44 = *&v34[112];
        v41 = *&v34[64];
        v42 = *&v34[80];
        v48 = *&v34[176];
        v46 = *&v34[144];
        v47 = *&v34[160];
        v45 = *&v34[128];
        v37 = *v34;
        v38 = *&v34[16];
        if ((v34[32] & 1) == 0)
        {
          v18 = v1[1];
          if (*(v18 + 16))
          {
            v19 = specialized __RawDictionaryStorage.find<A>(_:)(*(&v38 + 1));
            if (v20)
            {
              break;
            }
          }
        }

        outlined init with copy of IKRig.Joint(v35, v34);
        result = outlined destroy of BodyTrackingComponent?(&v36, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
        ++v9;
        v8 += 11;
        if (v4 == v9)
        {
          v3 = v32;
          goto LABEL_21;
        }
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      outlined init with copy of IKRig.Joint(v35, v34);
      v22 = v32;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
      v22 = result;
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v21 >= v22[2])
      {
        goto LABEL_24;
      }

      v33 = v22;
      v23 = v22 + 4;
      v31 = v23[v21];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v31;
      v30 = v23;
      v23[v21] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1, v31);
        v23[v21] = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
        v28 = v27 + 1;
        v25 = v29;
        v30[v21] = v29;
      }

      v6 = v9 + 1;
      *(v25 + 2) = v28;
      *&v25[8 * v27 + 32] = v9;
      result = outlined destroy of BodyTrackingComponent?(&v36, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV5JointV7elementtMR);
      v7 = v2 + 32;
      v3 = v33;
    }

    while (v4 - 1 != v9);
  }

LABEL_21:

  return v3;
}

uint64_t IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  lazy protocol witness table accessor for type String and conformance String();
  result = StringProtocol.hash.getter();
  v11 = v5[1];
  if (!*(v11 + 16))
  {
    return result;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(result);
  if ((v12 & 1) == 0)
  {
    return result;
  }

  v13 = *(*(v11 + 56) + 8 * result);
  if ((a3 & 1) == 0)
  {
    v14 = IKRig.JointCollection.buildChildrenMap()();
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_9;
  }

  a3 = *v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_121;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v13 >= *(a3 + 16))
    {
      goto LABEL_123;
    }

    a4(a3 + 176 * v13 + 32);
    *v6 = a3;
    v14 = IKRig.JointCollection.buildChildrenMap()();
LABEL_9:
    a3 = v14;
    if (v13 < *(v14 + 16))
    {
      break;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
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
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    a3 = result;
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }
  }

  v71 = v14 + 32;
  v15 = *(v14 + 32 + 8 * v13);
  v55 = *(v15 + 16);
  if (!v55)
  {
  }

  v60 = v15 + 32;

  v16 = 0;
  v48 = v15;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_110;
    }

    v54 = v16;
    v17 = *(v60 + 8 * v16);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v17 & 0x8000000000000000) != 0)
      {
LABEL_89:
        __break(1u);
      }
    }

    if (v17 >= *(v13 + 16))
    {
      goto LABEL_111;
    }

    a4(v13 + 176 * v17 + 32);
    *v6 = v13;
    if (v17 >= *(a3 + 16))
    {
      goto LABEL_112;
    }

    v18 = *(v71 + 8 * v17);
    v53 = *(v18 + 16);
    if (v53)
    {
      break;
    }

LABEL_86:
    v16 = v54 + 1;
    v15 = v48;
    if (v54 + 1 == v55)
    {
      goto LABEL_95;
    }
  }

  v59 = v18 + 32;

  v20 = 0;
  v47 = v19;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      goto LABEL_113;
    }

    v52 = v20;
    v21 = *(v59 + 8 * v20);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }
    }

    if (v21 >= *(v13 + 16))
    {
      goto LABEL_115;
    }

    a4(v13 + 176 * v21 + 32);
    *v6 = v13;
    if (v21 >= *(a3 + 16))
    {
      goto LABEL_117;
    }

    v22 = *(v71 + 8 * v21);
    v50 = *(v22 + 16);
    if (v50)
    {
      break;
    }

LABEL_82:
    v20 = v52 + 1;
    v19 = v47;
    if (v52 + 1 == v53)
    {

      goto LABEL_86;
    }
  }

  v58 = v22 + 32;

  v24 = 0;
  v46 = v23;
  while (1)
  {
    if (v24 >= *(v23 + 16))
    {
      goto LABEL_116;
    }

    v51 = v24;
    v25 = *(v58 + 8 * v24);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }
    }

    if (v25 >= *(v13 + 16))
    {
      goto LABEL_119;
    }

    a4(v13 + 176 * v25 + 32);
    *v6 = v13;
    if (v25 >= *(a3 + 16))
    {
      goto LABEL_120;
    }

    v26 = *(v71 + 8 * v25);
    v56 = *(v26 + 16);
    if (v56)
    {
      break;
    }

LABEL_78:
    v24 = v51 + 1;
    v23 = v46;
    if (v51 + 1 == v50)
    {

      goto LABEL_82;
    }
  }

  v61 = v26 + 32;

  v28 = 0;
  v49 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      goto LABEL_104;
    }

    v57 = v28;
    v29 = *(v61 + 8 * v28);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }
    }

    if (v29 >= *(v13 + 16))
    {
      goto LABEL_106;
    }

    a4(v13 + 176 * v29 + 32);
    *v6 = v13;
    if (v29 >= *(a3 + 16))
    {
      goto LABEL_107;
    }

    v30 = *(v71 + 8 * v29);
    v62 = *(v30 + 16);
    if (v62)
    {
      break;
    }

LABEL_74:
    v28 = v57 + 1;
    v27 = v49;
    if (v57 + 1 == v56)
    {

      goto LABEL_78;
    }
  }

  v63 = v30 + 32;
  v64 = *(v71 + 8 * v29);

  v31 = 0;
  while (1)
  {
    if (v31 >= *(v64 + 16))
    {
      goto LABEL_100;
    }

    v65 = v31;
    v32 = *(v63 + 8 * v31);
    v13 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }
    }

    if (v32 >= *(v13 + 16))
    {
      goto LABEL_102;
    }

    a4(v13 + 176 * v32 + 32);
    *v6 = v13;
    if (v32 >= *(a3 + 16))
    {
      goto LABEL_103;
    }

    v13 = *(v71 + 8 * v32);
    v68 = *(v13 + 16);
    if (v68)
    {
      break;
    }

LABEL_41:
    v31 = v65 + 1;
    if (v65 + 1 == v62)
    {

      goto LABEL_74;
    }
  }

  v67 = v13 + 32;

  v33 = 0;
  v66 = v13;
  while (1)
  {
    if (v33 >= *(v13 + 16))
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v34 = *(v67 + 8 * v33);
    v35 = *v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }
    }

    if (v34 >= *(v35 + 2))
    {
      goto LABEL_98;
    }

    a4(&v35[176 * v34 + 32]);
    *v6 = v35;
    if (v34 >= *(a3 + 16))
    {
      goto LABEL_99;
    }

    v36 = *(v71 + 8 * v34);
    v37 = *(v36 + 16);
    if (v37)
    {
      break;
    }

LABEL_50:
    if (++v33 == v68)
    {

      goto LABEL_41;
    }
  }

  v69 = *(v71 + 8 * v34);
  v70 = v33;
  v38 = v36 + 32;

  v39 = 0;
  while (1)
  {
    v40 = *(v38 + 8 * v39);
    v41 = *v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

LABEL_61:
    if (v40 >= *(v41 + 2))
    {
      goto LABEL_93;
    }

    a4(&v41[176 * v40 + 32]);
    *v6 = v41;
    if (v40 >= *(a3 + 16))
    {
      goto LABEL_94;
    }

    v42 = *(v71 + 8 * v40);
    v43 = *(v42 + 16);

    if (v43)
    {
      v44 = (v42 + 32);
      do
      {
        v45 = *v44++;
        updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(v45, a4, a5, v6, a3);
        --v43;
      }

      while (v43);
    }

    if (++v39 == v37)
    {

      v13 = v66;
      v33 = v70;
      goto LABEL_50;
    }
  }

  v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
}

uint64_t updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v10;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
  *a4 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (*(v10 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = a2(v10 + 176 * a1 + 32);
  if (*(a5 + 16) <= a1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = a5 + 8 * a1;
  v13 = *(v12 + 32);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v12 + 32);

    v16 = 32;
    do
    {
      updateChildren #1 (of:) in IKRig.JointCollection.forEach(descendantOf:inclusive:update:)(*(v13 + v16), a2, a3, a4, a5);
      v16 += 8;
      --v14;
    }

    while (v14);
  }

  return result;
}

void IKRig.JointCollection.set(_:)(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1[9];
  v83 = a1[8];
  v84 = v5;
  v85 = a1[10];
  v6 = a1[5];
  v79 = a1[4];
  v80 = v6;
  v7 = a1[7];
  v81 = a1[6];
  v82 = v7;
  v8 = a1[1];
  v75 = *a1;
  v76 = v8;
  v9 = a1[3];
  v77 = a1[2];
  v78 = v9;
  v64 = v75;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v11 = v2[1];
  if (!*(v11 + 2) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&v64);
    v48 = v73;
    a2[8] = v72;
    a2[9] = v48;
    a2[10] = v74;
    v49 = v69;
    a2[4] = v68;
    a2[5] = v49;
    v50 = v71;
    a2[6] = v70;
    a2[7] = v50;
    v51 = v65;
    *a2 = v64;
    a2[1] = v51;
    v47 = v66;
    v46 = v67;
    goto LABEL_8;
  }

  v14 = *(*(v11 + 7) + 8 * v12);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *v3;
  if (v14 >= *(*v3 + 2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = &v11[176 * v14];
  v16 = *(v15 + 2);
  v17 = *(v15 + 4);
  v65 = *(v15 + 3);
  v66 = v17;
  v64 = v16;
  v18 = *(v15 + 5);
  v19 = *(v15 + 6);
  v20 = *(v15 + 8);
  v69 = *(v15 + 7);
  v70 = v20;
  v67 = v18;
  v68 = v19;
  v21 = *(v15 + 9);
  v22 = *(v15 + 10);
  v23 = *(v15 + 12);
  v73 = *(v15 + 11);
  v74 = v23;
  v71 = v21;
  v72 = v22;
  outlined init with copy of IKRig.Joint(&v64, &v53);
  outlined init with copy of IKRig.Joint(&v75, &v53);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  }

  v24 = &v11[176 * v14];
  v25 = *(v24 + 2);
  v26 = *(v24 + 4);
  v52[1] = *(v24 + 3);
  v52[2] = v26;
  v52[0] = v25;
  v27 = *(v24 + 5);
  v28 = *(v24 + 6);
  v29 = *(v24 + 8);
  v52[5] = *(v24 + 7);
  v52[6] = v29;
  v52[3] = v27;
  v52[4] = v28;
  v30 = *(v24 + 9);
  v31 = *(v24 + 10);
  v32 = *(v24 + 12);
  v52[9] = *(v24 + 11);
  v52[10] = v32;
  v52[7] = v30;
  v52[8] = v31;
  v33 = v75;
  v34 = v77;
  *(v24 + 3) = v76;
  *(v24 + 4) = v34;
  *(v24 + 2) = v33;
  v35 = v78;
  v36 = v79;
  v37 = v81;
  *(v24 + 7) = v80;
  *(v24 + 8) = v37;
  *(v24 + 5) = v35;
  *(v24 + 6) = v36;
  v38 = v82;
  v39 = v83;
  v40 = v85;
  *(v24 + 11) = v84;
  *(v24 + 12) = v40;
  *(v24 + 9) = v38;
  *(v24 + 10) = v39;
  outlined destroy of IKRig.Joint(v52);
  *v3 = v11;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v53 = v64;
  v54 = v65;
  v55 = v66;
  v56 = v67;
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v53, v41);
  v42 = v62;
  a2[8] = v61;
  a2[9] = v42;
  a2[10] = v63;
  v43 = v58;
  a2[4] = v57;
  a2[5] = v43;
  v44 = v60;
  a2[6] = v59;
  a2[7] = v44;
  v45 = v54;
  *a2 = v53;
  a2[1] = v45;
  v47 = v55;
  v46 = v56;
LABEL_8:
  a2[2] = v47;
  a2[3] = v46;
}

unint64_t IKRig.JointCollection.subscript.getter@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 176 * result);
    v4 = v3[2];
    v5 = v3[4];
    v18[1] = v3[3];
    v18[2] = v5;
    v18[0] = v4;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[8];
    v18[5] = v3[7];
    v18[6] = v8;
    v18[3] = v6;
    v18[4] = v7;
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[12];
    v18[9] = v3[11];
    v18[10] = v11;
    v18[7] = v9;
    v18[8] = v10;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    a2[10] = v3[12];
    v13 = v3[7];
    a2[4] = v3[6];
    a2[5] = v13;
    v14 = v3[9];
    a2[6] = v3[8];
    a2[7] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    v16 = v3[5];
    a2[2] = v3[4];
    a2[3] = v16;
    return outlined init with copy of IKRig.Joint(v18, &v17);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *result;
    if (v5 < *(*result + 16))
    {
      v23 = v3;
      v24 = v4;
      v7 = (v6 + 176 * v5);
      v8 = v7[2];
      v9 = v7[4];
      v22[1] = v7[3];
      v22[2] = v9;
      v22[0] = v8;
      v10 = v7[5];
      v11 = v7[6];
      v12 = v7[8];
      v22[5] = v7[7];
      v22[6] = v12;
      v22[3] = v10;
      v22[4] = v11;
      v13 = v7[9];
      v14 = v7[10];
      v15 = v7[12];
      v22[9] = v7[11];
      v22[10] = v15;
      v22[7] = v13;
      v22[8] = v14;
      v16 = v7[11];
      a3[8] = v7[10];
      a3[9] = v16;
      a3[10] = v7[12];
      v17 = v7[7];
      a3[4] = v7[6];
      a3[5] = v17;
      v18 = v7[9];
      a3[6] = v7[8];
      a3[7] = v18;
      v19 = v7[3];
      *a3 = v7[2];
      a3[1] = v19;
      v20 = v7[5];
      a3[2] = v7[4];
      a3[3] = v20;
      return outlined init with copy of IKRig.Joint(v22, &v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for IKRig.JointCollection.subscript(_:) : IKRig.JointCollection(__int128 *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[9];
  v38 = a1[8];
  v39 = v5;
  v40 = a1[10];
  v6 = a1[5];
  v34 = a1[4];
  v35 = v6;
  v7 = a1[7];
  v36 = a1[6];
  v37 = v7;
  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  v9 = a1[3];
  v32 = a1[2];
  v33 = v9;
  v10 = *a2;
  outlined init with copy of IKRig.Joint(&v30, v29);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v10 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v10 + 16))
  {
    v12 = (v10 + 176 * v4);
    v13 = v12[2];
    v14 = v12[4];
    v29[1] = v12[3];
    v29[2] = v14;
    v29[0] = v13;
    v15 = v12[5];
    v16 = v12[6];
    v17 = v12[8];
    v29[5] = v12[7];
    v29[6] = v17;
    v29[3] = v15;
    v29[4] = v16;
    v18 = v12[9];
    v19 = v12[10];
    v20 = v12[12];
    v29[9] = v12[11];
    v29[10] = v20;
    v29[7] = v18;
    v29[8] = v19;
    v21 = v30;
    v22 = v32;
    v12[3] = v31;
    v12[4] = v22;
    v12[2] = v21;
    v23 = v33;
    v24 = v34;
    v25 = v36;
    v12[7] = v35;
    v12[8] = v25;
    v12[5] = v23;
    v12[6] = v24;
    v26 = v37;
    v27 = v38;
    v28 = v40;
    v12[11] = v39;
    v12[12] = v28;
    v12[9] = v26;
    v12[10] = v27;
    result = outlined destroy of IKRig.Joint(v29);
    *a2 = v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t IKRig.JointCollection.subscript.setter(_OWORD *a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    v7 = (v5 + 176 * a2);
    v8 = v7[2];
    v9 = v7[4];
    v21[1] = v7[3];
    v21[2] = v9;
    v21[0] = v8;
    v10 = v7[5];
    v11 = v7[6];
    v12 = v7[8];
    v21[5] = v7[7];
    v21[6] = v12;
    v21[3] = v10;
    v21[4] = v11;
    v13 = v7[9];
    v14 = v7[10];
    v15 = v7[12];
    v21[9] = v7[11];
    v21[10] = v15;
    v21[7] = v13;
    v21[8] = v14;
    v16 = a1[9];
    v7[10] = a1[8];
    v7[11] = v16;
    v7[12] = a1[10];
    v17 = a1[5];
    v7[6] = a1[4];
    v7[7] = v17;
    v18 = a1[7];
    v7[8] = a1[6];
    v7[9] = v18;
    v19 = a1[1];
    v7[2] = *a1;
    v7[3] = v19;
    v20 = a1[3];
    v7[4] = a1[2];
    v7[5] = v20;
    result = outlined destroy of IKRig.Joint(v21);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*IKRig.JointCollection.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized Array.subscript.modify(v4, a2);
  return IKRig.JointCollection.subscript.modify;
}

Swift::Int __swiftcall IKRig.JointCollection.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void IKRig.JointCollection.Iterator.next()(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    _s17RealityFoundation5IKRigV5JointVSgWOi0_(&v21);
    v5 = v30;
    a1[8] = v29;
    a1[9] = v5;
    a1[10] = v31;
    v6 = v26;
    a1[4] = v25;
    a1[5] = v6;
    v7 = v28;
    a1[6] = v27;
    a1[7] = v7;
    v8 = v22;
    *a1 = v21;
    a1[1] = v8;
    v9 = v24;
    a1[2] = v23;
    a1[3] = v9;
  }

  else if (v3 >= v4)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v1 + 176 * v3);
    v11 = v10[2];
    v12 = v10[4];
    v22 = v10[3];
    v23 = v12;
    v21 = v11;
    v13 = v10[5];
    v14 = v10[6];
    v15 = v10[8];
    v26 = v10[7];
    v27 = v15;
    v24 = v13;
    v25 = v14;
    v16 = v10[9];
    v17 = v10[10];
    v18 = v10[12];
    v30 = v10[11];
    v31 = v18;
    v28 = v16;
    v29 = v17;
    memmove(a1, v10 + 2, 0xB0uLL);
    v1[1] = v3 + 1;
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(a1, v19);
    outlined init with copy of IKRig.Joint(&v21, &v20);
  }
}

uint64_t IKRig.JointCollection.makeIterator()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = 0;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance IKRig.JointCollection(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x210uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 176 * v7);
    v9 = v8[2];
    v10 = v8[4];
    *(result + 1) = v8[3];
    *(result + 2) = v10;
    *result = v9;
    v11 = v8[5];
    v12 = v8[6];
    v13 = v8[8];
    *(result + 5) = v8[7];
    *(result + 6) = v13;
    *(result + 3) = v11;
    *(result + 4) = v12;
    v14 = v8[9];
    v15 = v8[10];
    v16 = v8[12];
    *(result + 9) = v8[11];
    *(result + 10) = v16;
    *(result + 7) = v14;
    *(result + 8) = v15;
    memmove(result + 176, v8 + 2, 0xB0uLL);
    outlined init with copy of IKRig.Joint(v6, v6 + 352);
    return protocol witness for Collection.subscript.read in conformance IKRig.JointCollection;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance IKRig.JointCollection(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 320);
  v1[30] = *(*a1 + 304);
  v1[31] = v2;
  v1[32] = v1[21];
  v3 = v1[16];
  v1[26] = v1[15];
  v1[27] = v3;
  v4 = v1[18];
  v1[28] = v1[17];
  v1[29] = v4;
  v5 = v1[12];
  v1[22] = v1[11];
  v1[23] = v5;
  v6 = v1[14];
  v1[24] = v1[13];
  v1[25] = v6;
  outlined destroy of IKRig.Joint((v1 + 22));

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance IKRig.JointCollection@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

RealityFoundation::IKRig::ConstraintsCollection __swiftcall IKRig.ConstraintsCollection.init(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v29 = v1;
    v57 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v30 = rawValue[2];
    if (!v30)
    {
LABEL_14:
      __break(1u);
      v25 = swift_unexpectedError();
      __break(1u);
      goto LABEL_15;
    }

    v6 = 0;
    v5 = v57;
    v31 = v4 - 1;
    v32 = rawValue;
    v7 = 4;
    while (1)
    {
      v8 = *&rawValue[v7 + 10];
      v9 = *&rawValue[v7 + 14];
      v41 = *&rawValue[v7 + 12];
      v42 = v9;
      v10 = *&rawValue[v7 + 18];
      v11 = *&rawValue[v7 + 14];
      v43 = *&rawValue[v7 + 16];
      v44 = v10;
      v12 = *&rawValue[v7 + 6];
      v13 = *&rawValue[v7 + 2];
      v37 = *&rawValue[v7 + 4];
      v38 = v12;
      v14 = *&rawValue[v7 + 10];
      v15 = *&rawValue[v7 + 6];
      v39 = *&rawValue[v7 + 8];
      v40 = v14;
      v16 = *&rawValue[v7 + 2];
      v36[0] = *&rawValue[v7];
      v36[1] = v16;
      *&v35[88] = v8;
      *&v35[72] = v39;
      *&v35[56] = v15;
      *&v35[40] = v37;
      *&v35[152] = *&rawValue[v7 + 18];
      *&v35[136] = v43;
      *&v35[120] = v11;
      *&v35[104] = v41;
      *&v35[8] = v36[0];
      *&v35[24] = v13;
      v45 = v6;
      v50 = *&v35[64];
      v51 = *&v35[80];
      v56 = *&v35[160];
      v54 = *&v35[128];
      v55 = *&v35[144];
      v52 = *&v35[96];
      v53 = *&v35[112];
      v48 = *&v35[32];
      v49 = *&v35[48];
      v46 = *v35;
      v47 = *&v35[16];
      v34 = v36[0];
      outlined init with copy of IKRig.Constraint(v36, v33);
      lazy protocol witness table accessor for type String and conformance String();
      v17 = StringProtocol.hash.getter();
      outlined destroy of BodyTrackingComponent?(&v45, &_sSi6offset_17RealityFoundation5IKRigV10ConstraintV7elementtMd, &_sSi6offset_17RealityFoundation5IKRigV10ConstraintV7elementtMR);
      v18 = v45;
      v57 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      v21 = v5;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v21 = v57;
      }

      *(v21 + 16) = v20 + 1;
      v22 = v21 + 16 * v20;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v5 = v21;
      if (v31 == v6)
      {
        break;
      }

      ++v6;
      v7 += 20;
      rawValue = v32;
      if (v30 == v6)
      {
        goto LABEL_14;
      }
    }

    rawValue = v32;

    v3 = v29;
  }

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
    v23 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC8];
  }

  v45 = v23;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v24, 1, &v45);

  v27 = v45;
  *v3 = rawValue;
  v3[1] = v27;
LABEL_15:
  result.lookUpHelper._rawValue = v26;
  result.storage._rawValue = v25;
  return result;
}

void IKRig.ConstraintsCollection.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v5 = StringProtocol.hash.getter();
  v7 = *v3;
  v6 = v5;
  IKRig.ConstraintsCollection.subscript.getter(&v6, a3);
}

double key path getter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection@<D0>(__int128 *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[1];
  *&v16[0] = *a2;
  *(&v16[0] + 1) = v5;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();
  v15 = *a1;
  v14 = v6;
  IKRig.ConstraintsCollection.subscript.getter(&v14, v16);
  v7 = v16[7];
  v8 = v16[8];
  a3[6] = v16[6];
  a3[7] = v7;
  v9 = v16[9];
  a3[8] = v8;
  a3[9] = v9;
  v10 = v16[3];
  a3[2] = v16[2];
  a3[3] = v10;
  v11 = v16[5];
  a3[4] = v16[4];
  a3[5] = v11;
  result = *v16;
  v13 = v16[1];
  *a3 = v16[0];
  a3[1] = v13;
  return result;
}

uint64_t key path setter for IKRig.ConstraintsCollection.subscript(_:) : IKRig.ConstraintsCollection(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[7];
  v20 = a1[6];
  v21 = v5;
  v6 = a1[9];
  v22 = a1[8];
  v23 = v6;
  v7 = a1[3];
  v16 = a1[2];
  v17 = v7;
  v8 = a1[5];
  v18 = a1[4];
  v19 = v8;
  v9 = a1[1];
  v14 = *a1;
  v15 = v9;
  v13[0] = v3;
  v13[1] = v4;
  outlined init with copy of [String : String](&v14, v12, &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.hash.getter();
  v12[6] = v20;
  v12[7] = v21;
  v12[8] = v22;
  v12[9] = v23;
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  v13[0] = v10;
  return IKRig.ConstraintsCollection.subscript.setter(v12, v13);
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = a3;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = StringProtocol.hash.getter();

  v6[0] = v4;
  return IKRig.ConstraintsCollection.subscript.setter(a1, v6);
}

void IKRig.ConstraintsCollection.subscript.getter(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = v2[1];
  if (*(v5 + 16) && (v6 = *v3, v7 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *(v6 + 16))
    {
      v10 = (v6 + 160 * v9);
      v11 = v10[3];
      v30[0] = v10[2];
      v30[1] = v11;
      v12 = v10[4];
      v13 = v10[5];
      v14 = v10[7];
      v30[4] = v10[6];
      v30[5] = v14;
      v30[2] = v12;
      v30[3] = v13;
      v15 = v10[8];
      v16 = v10[9];
      v17 = v10[11];
      v30[8] = v10[10];
      v30[9] = v17;
      v30[6] = v15;
      v30[7] = v16;
      memmove(&__dst, v10 + 2, 0xA0uLL);
      destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&__dst, v18);
      v19 = v38;
      a2[6] = v37;
      a2[7] = v19;
      v20 = v40;
      a2[8] = v39;
      a2[9] = v20;
      v21 = v34;
      a2[2] = v33;
      a2[3] = v21;
      v22 = v36;
      a2[4] = v35;
      a2[5] = v22;
      v23 = v32;
      *a2 = __dst;
      a2[1] = v23;
      outlined init with copy of IKRig.Constraint(v30, &v29);
      return;
    }

    __break(1u);
  }

  else
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(&__dst);
    v24 = v38;
    a2[6] = v37;
    a2[7] = v24;
    v25 = v40;
    a2[8] = v39;
    a2[9] = v25;
    v26 = v34;
    a2[2] = v33;
    a2[3] = v26;
    v27 = v36;
    a2[4] = v35;
    a2[5] = v27;
    v28 = v32;
    *a2 = __dst;
    a2[1] = v28;
  }
}

uint64_t IKRig.ConstraintsCollection.subscript.setter(__int128 *a1, void *a2)
{
  v3 = v2;
  v5 = v2[1];
  if (*(v5 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(*a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      v9 = a1[7];
      v53 = a1[6];
      v54 = v9;
      v10 = a1[9];
      v55 = a1[8];
      v56 = v10;
      v11 = a1[3];
      v49 = a1[2];
      v50 = v11;
      v12 = a1[5];
      v51 = a1[4];
      v52 = v12;
      v13 = a1[1];
      v47 = *a1;
      v48 = v13;
      if (getEnumTag for EnvironmentResource.OptionError(&v47) == 1)
      {
        specialized Array.remove(at:)(v8, v46);
        return outlined destroy of IKRig.Constraint(v46);
      }

      v20 = *v3;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        v20 = result;
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_13:
          if (v8 < *(v20 + 16))
          {
            v31 = (v20 + 160 * v8);
            v32 = v31[3];
            v46[0] = v31[2];
            v46[1] = v32;
            v33 = v31[4];
            v34 = v31[5];
            v35 = v31[7];
            v46[4] = v31[6];
            v46[5] = v35;
            v46[2] = v33;
            v46[3] = v34;
            v36 = v31[8];
            v37 = v31[9];
            v38 = v31[11];
            v46[8] = v31[10];
            v46[9] = v38;
            v46[6] = v36;
            v46[7] = v37;
            v39 = v48;
            v31[2] = v47;
            v31[3] = v39;
            v40 = v49;
            v41 = v50;
            v42 = v52;
            v31[6] = v51;
            v31[7] = v42;
            v31[4] = v40;
            v31[5] = v41;
            v43 = v53;
            v44 = v54;
            v45 = v56;
            v31[10] = v55;
            v31[11] = v45;
            v31[8] = v43;
            v31[9] = v44;
            result = outlined destroy of IKRig.Constraint(v46);
            goto LABEL_15;
          }

LABEL_19:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v15 = a1[7];
  v53 = a1[6];
  v54 = v15;
  v16 = a1[9];
  v55 = a1[8];
  v56 = v16;
  v17 = a1[3];
  v49 = a1[2];
  v50 = v17;
  v18 = a1[5];
  v51 = a1[4];
  v52 = v18;
  v19 = a1[1];
  v47 = *a1;
  v48 = v19;
  result = getEnumTag for EnvironmentResource.OptionError(&v47);
  if (result == 1)
  {
    return result;
  }

  v20 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
    v20 = result;
  }

  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v22 >= v21 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v20);
    v20 = result;
  }

  *(v20 + 16) = v22 + 1;
  v23 = (v20 + 160 * v22);
  v24 = v48;
  v23[2] = v47;
  v23[3] = v24;
  v25 = v49;
  v26 = v50;
  v27 = v52;
  v23[6] = v51;
  v23[7] = v27;
  v23[4] = v25;
  v23[5] = v26;
  v28 = v53;
  v29 = v54;
  v30 = v56;
  v23[10] = v55;
  v23[11] = v30;
  v23[8] = v28;
  v23[9] = v29;
LABEL_15:
  *v3 = v20;
  return result;
}

void (*IKRig.ConstraintsCollection.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x2B0uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[84] = v3;
  v7[83] = a3;
  v7[82] = a2;
  v10 = *v3;
  v9 = v3[1];
  v7[20] = a2;
  v7[21] = a3;
  v11 = v7 + 20;
  v7[85] = lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.hash.getter();
  if (!*(v9 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v14 & 1) == 0))
  {
    _s17RealityFoundation5IKRigV10ConstraintVSgWOi0_(v8);
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  v15 = *(*(v9 + 56) + 8 * result);
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(v10 + 16))
  {
    v16 = (v10 + 160 * v15);
    v17 = v16[3];
    v11[10] = v16[2];
    v11[11] = v17;
    v18 = v16[4];
    v19 = v16[5];
    v20 = v16[7];
    v11[14] = v16[6];
    v11[15] = v20;
    v11[12] = v18;
    v11[13] = v19;
    v21 = v16[8];
    v22 = v16[9];
    v23 = v16[11];
    v11[18] = v16[10];
    v11[19] = v23;
    v11[16] = v21;
    v11[17] = v22;
    memmove(v11, v16 + 2, 0xA0uLL);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(v11, v24);
    v25 = v11[7];
    v8[6] = v11[6];
    v8[7] = v25;
    v26 = v11[9];
    v8[8] = v11[8];
    v8[9] = v26;
    v27 = v11[3];
    v8[2] = v11[2];
    v8[3] = v27;
    v28 = v11[5];
    v8[4] = v11[4];
    v8[5] = v28;
    v29 = v11[1];
    *v8 = *v11;
    v8[1] = v29;
    outlined init with copy of IKRig.Constraint((v11 + 10), (v11 + 20));
    return IKRig.ConstraintsCollection.subscript.modify;
  }

  __break(1u);
  return result;
}