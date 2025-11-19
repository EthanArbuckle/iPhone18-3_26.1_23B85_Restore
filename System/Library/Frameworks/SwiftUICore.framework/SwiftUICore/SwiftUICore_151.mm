uint64_t specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[9 * v7 + 4];
            v38 = *v12;
            v13 = *(v12 + 16);
            v14 = *(v12 + 32);
            v15 = *(v12 + 48);
            v42 = *(v12 + 64);
            v40 = v14;
            v41 = v15;
            v39 = v13;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v16 = &v3[9 * v9 + 4];
            v43 = *v16;
            v17 = *(v16 + 16);
            v18 = *(v16 + 32);
            v19 = *(v16 + 48);
            v47 = *(v16 + 64);
            v45 = v18;
            v46 = v19;
            v44 = v17;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v38, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v43, v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v20 = &v3[9 * v7 + 4];
            v34[0] = *v20;
            v21 = *(v20 + 16);
            v22 = *(v20 + 32);
            v23 = *(v20 + 48);
            v35 = *(v20 + 64);
            v34[2] = v22;
            v34[3] = v23;
            v34[1] = v21;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            v25 = v44;
            v24 = v45;
            v26 = v46;
            *(v20 + 64) = v47;
            *(v20 + 48) = v26;
            *v20 = v43;
            *(v20 + 16) = v25;
            *(v20 + 32) = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v27 = &v3[9 * v9 + 4];
            v36[0] = *v27;
            v28 = *(v27 + 16);
            v29 = *(v27 + 32);
            v30 = *(v27 + 48);
            v37 = *(v27 + 64);
            v36[2] = v29;
            v36[3] = v30;
            v36[1] = v28;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            *v27 = v38;
            v32 = v40;
            v31 = v41;
            v33 = v39;
            *(v27 + 64) = v42;
            *(v27 + 32) = v32;
            *(v27 + 48) = v31;
            *(v27 + 16) = v33;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[10 * v7 + 4];
            v36 = *v12;
            v13 = v12[1];
            v14 = v12[2];
            v15 = v12[4];
            v39 = v12[3];
            v40 = v15;
            v37 = v13;
            v38 = v14;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v16 = &v3[10 * v9 + 4];
            v41 = *v16;
            v17 = v16[1];
            v18 = v16[2];
            v19 = v16[4];
            v44 = v16[3];
            v45 = v19;
            v42 = v17;
            v43 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v20 = &v3[10 * v7 + 4];
            v34[0] = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            v34[3] = v20[3];
            v34[4] = v23;
            v34[1] = v21;
            v34[2] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            v25 = v42;
            v24 = v43;
            v26 = v44;
            v20[4] = v45;
            *v20 = v41;
            v20[1] = v25;
            v20[2] = v24;
            v20[3] = v26;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v27 = &v3[10 * v9 + 4];
            v35[0] = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            v35[3] = v27[3];
            v35[4] = v30;
            v35[1] = v28;
            v35[2] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>.Fork);
            *v27 = v36;
            v31 = v40;
            v33 = v37;
            v32 = v38;
            v27[3] = v39;
            v27[4] = v31;
            v27[1] = v33;
            v27[2] = v32;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[10 * v7 + 4];
            v36 = *v12;
            v13 = v12[1];
            v14 = v12[2];
            v15 = v12[4];
            v39 = v12[3];
            v40 = v15;
            v37 = v13;
            v38 = v14;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v16 = &v3[10 * v9 + 4];
            v41 = *v16;
            v17 = v16[1];
            v18 = v16[2];
            v19 = v16[4];
            v44 = v16[3];
            v45 = v19;
            v42 = v17;
            v43 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v20 = &v3[10 * v7 + 4];
            v34[0] = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            v34[3] = v20[3];
            v34[4] = v23;
            v34[1] = v21;
            v34[2] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            v25 = v42;
            v24 = v43;
            v26 = v44;
            v20[4] = v45;
            *v20 = v41;
            v20[1] = v25;
            v20[2] = v24;
            v20[3] = v26;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v27 = &v3[10 * v9 + 4];
            v35[0] = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            v35[3] = v27[3];
            v35[4] = v30;
            v35[1] = v28;
            v35[2] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>.Fork);
            *v27 = v36;
            v31 = v40;
            v33 = v37;
            v32 = v38;
            v27[3] = v39;
            v27[4] = v31;
            v27[1] = v33;
            v27[2] = v32;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[12 * v7 + 4];
            v13 = v12[1];
            v42 = *v12;
            v43 = v13;
            v14 = v12[2];
            v15 = v12[3];
            v16 = v12[5];
            v46 = v12[4];
            v47 = v16;
            v44 = v14;
            v45 = v15;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v17 = &v3[12 * v9 + 4];
            v18 = v17[1];
            v48 = *v17;
            v49 = v18;
            v19 = v17[2];
            v20 = v17[3];
            v21 = v17[5];
            v52 = v17[4];
            v53 = v21;
            v50 = v19;
            v51 = v20;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v48, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v22 = &v3[12 * v7 + 4];
            v23 = v22[1];
            v40[0] = *v22;
            v40[1] = v23;
            v24 = v22[2];
            v25 = v22[3];
            v26 = v22[5];
            v40[4] = v22[4];
            v40[5] = v26;
            v40[2] = v24;
            v40[3] = v25;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v40, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            v28 = v50;
            v27 = v51;
            v29 = v52;
            v22[5] = v53;
            v30 = v49;
            *v22 = v48;
            v22[1] = v30;
            v22[3] = v27;
            v22[4] = v29;
            v22[2] = v28;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v31 = &v3[12 * v9 + 4];
            v32 = v31[1];
            v41[0] = *v31;
            v41[1] = v32;
            v33 = v31[2];
            v34 = v31[3];
            v35 = v31[5];
            v41[4] = v31[4];
            v41[5] = v35;
            v41[2] = v33;
            v41[3] = v34;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>.Fork);
            v36 = v43;
            *v31 = v42;
            v31[1] = v36;
            v37 = v47;
            v39 = v44;
            v38 = v45;
            v31[4] = v46;
            v31[5] = v37;
            v31[2] = v39;
            v31[3] = v38;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[12 * v7 + 4];
            v13 = v12[1];
            v42 = *v12;
            v43 = v13;
            v14 = v12[2];
            v15 = v12[3];
            v16 = v12[5];
            v46 = v12[4];
            v47 = v16;
            v44 = v14;
            v45 = v15;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v17 = &v3[12 * v9 + 4];
            v18 = v17[1];
            v48 = *v17;
            v49 = v18;
            v19 = v17[2];
            v20 = v17[3];
            v21 = v17[5];
            v52 = v17[4];
            v53 = v21;
            v50 = v19;
            v51 = v20;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v48, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v22 = &v3[12 * v7 + 4];
            v23 = v22[1];
            v40[0] = *v22;
            v40[1] = v23;
            v24 = v22[2];
            v25 = v22[3];
            v26 = v22[5];
            v40[4] = v22[4];
            v40[5] = v26;
            v40[2] = v24;
            v40[3] = v25;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v40, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v28 = v50;
            v27 = v51;
            v29 = v52;
            v22[5] = v53;
            v30 = v49;
            *v22 = v48;
            v22[1] = v30;
            v22[3] = v27;
            v22[4] = v29;
            v22[2] = v28;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v31 = &v3[12 * v9 + 4];
            v32 = v31[1];
            v41[0] = *v31;
            v41[1] = v32;
            v33 = v31[2];
            v34 = v31[3];
            v35 = v31[5];
            v41[4] = v31[4];
            v41[5] = v35;
            v41[2] = v33;
            v41[3] = v34;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>.Fork);
            v36 = v43;
            *v31 = v42;
            v31[1] = v36;
            v37 = v47;
            v39 = v44;
            v38 = v45;
            v31[4] = v46;
            v31[5] = v37;
            v31[2] = v39;
            v31[3] = v38;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[12 * v7 + 4];
            v13 = v12[1];
            v42 = *v12;
            v43 = v13;
            v14 = v12[2];
            v15 = v12[3];
            v16 = v12[5];
            v46 = v12[4];
            v47 = v16;
            v44 = v14;
            v45 = v15;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v17 = &v3[12 * v9 + 4];
            v18 = v17[1];
            v48 = *v17;
            v49 = v18;
            v19 = v17[2];
            v20 = v17[3];
            v21 = v17[5];
            v52 = v17[4];
            v53 = v21;
            v50 = v19;
            v51 = v20;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v48, v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v22 = &v3[12 * v7 + 4];
            v23 = v22[1];
            v40[0] = *v22;
            v40[1] = v23;
            v24 = v22[2];
            v25 = v22[3];
            v26 = v22[5];
            v40[4] = v22[4];
            v40[5] = v26;
            v40[2] = v24;
            v40[3] = v25;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v40, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            v28 = v50;
            v27 = v51;
            v29 = v52;
            v22[5] = v53;
            v30 = v49;
            *v22 = v48;
            v22[1] = v30;
            v22[3] = v27;
            v22[4] = v29;
            v22[2] = v28;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v31 = &v3[12 * v9 + 4];
            v32 = v31[1];
            v41[0] = *v31;
            v41[1] = v32;
            v33 = v31[2];
            v34 = v31[3];
            v35 = v31[5];
            v41[4] = v31[4];
            v41[5] = v35;
            v41[2] = v33;
            v41[3] = v34;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>.Fork);
            v36 = v43;
            *v31 = v42;
            v31[1] = v36;
            v37 = v47;
            v39 = v44;
            v38 = v45;
            v31[4] = v46;
            v31[5] = v37;
            v31[2] = v39;
            v31[3] = v38;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v10 = &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>.Fork;
      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v3[2];
            if (v7 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v3[8 * v7 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v40 = v13[2];
            v41 = v16;
            v38 = v14;
            v39 = v15;
            if (v9 >= v12)
            {
              goto LABEL_28;
            }

            v46 = 0;
            v17 = &v3[8 * v9 + 4];
            v18 = *v17;
            v19 = v17[1];
            v20 = v17[3];
            v44 = v17[2];
            v45 = v20;
            v42 = v18;
            v43 = v19;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v38, v37, v10, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector);
            v21 = v10;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v42, v37, v10, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v22 = &v3[8 * v7 + 4];
            v23 = *v22;
            v24 = v22[1];
            v25 = v22[3];
            v36[2] = v22[2];
            v36[3] = v25;
            v36[0] = v23;
            v36[1] = v24;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v36, v21, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector);
            v27 = v42;
            v26 = v43;
            v28 = v45;
            v22[2] = v44;
            v22[3] = v28;
            *v22 = v27;
            v22[1] = v26;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v29 = &v3[8 * v9 + 4];
            v30 = *v29;
            v31 = v29[1];
            v32 = v29[3];
            v37[2] = v29[2];
            v37[3] = v32;
            v37[0] = v30;
            v37[1] = v31;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v37, v21, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector);
            v33 = v41;
            v35 = v38;
            v34 = v39;
            v29[2] = v40;
            v29[3] = v33;
            *v29 = v35;
            v29[1] = v34;
            *a1 = v3;
            v2 = v46;
            v10 = v21;
          }

          v11 = __OFADD__(v7++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[18 * v7 + 4];
            v54 = *v12;
            v13 = v12[1];
            v14 = v12[2];
            v15 = v12[4];
            v57 = v12[3];
            v58 = v15;
            v55 = v13;
            v56 = v14;
            v16 = v12[5];
            v17 = v12[6];
            v18 = v12[8];
            v61 = v12[7];
            v62 = v18;
            v59 = v16;
            v60 = v17;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v19 = &v3[18 * v9 + 4];
            v63 = *v19;
            v20 = v19[1];
            v21 = v19[2];
            v22 = v19[4];
            v66 = v19[3];
            v67 = v22;
            v64 = v20;
            v65 = v21;
            v23 = v19[5];
            v24 = v19[6];
            v25 = v19[8];
            v70 = v19[7];
            v71 = v25;
            v68 = v23;
            v69 = v24;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v54, v53, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v63, v53, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v26 = &v3[18 * v7 + 4];
            v52[0] = *v26;
            v27 = v26[1];
            v28 = v26[2];
            v29 = v26[4];
            v52[3] = v26[3];
            v52[4] = v29;
            v52[1] = v27;
            v52[2] = v28;
            v30 = v26[5];
            v31 = v26[6];
            v32 = v26[8];
            v52[7] = v26[7];
            v52[8] = v32;
            v52[5] = v30;
            v52[6] = v31;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v52, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            *v26 = v63;
            v33 = v67;
            v35 = v64;
            v34 = v65;
            v26[3] = v66;
            v26[4] = v33;
            v26[1] = v35;
            v26[2] = v34;
            v36 = v71;
            v38 = v68;
            v37 = v69;
            v26[7] = v70;
            v26[8] = v36;
            v26[5] = v38;
            v26[6] = v37;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v39 = &v3[18 * v9 + 4];
            v53[0] = *v39;
            v40 = v39[1];
            v41 = v39[2];
            v42 = v39[4];
            v53[3] = v39[3];
            v53[4] = v42;
            v53[1] = v40;
            v53[2] = v41;
            v43 = v39[5];
            v44 = v39[6];
            v45 = v39[8];
            v53[7] = v39[7];
            v53[8] = v45;
            v53[5] = v43;
            v53[6] = v44;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v53, type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Fork);
            *v39 = v54;
            v46 = v58;
            v48 = v55;
            v47 = v56;
            v39[3] = v57;
            v39[4] = v46;
            v39[1] = v48;
            v39[2] = v47;
            v49 = v62;
            v51 = v59;
            v50 = v60;
            v39[7] = v61;
            v39[8] = v49;
            v39[5] = v51;
            v39[6] = v50;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v10 = &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>.Fork;
      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v12 = v3[2];
            if (v7 >= v12)
            {
              goto LABEL_27;
            }

            v13 = &v3[16 * v7 + 4];
            v14 = *v13;
            v15 = v13[1];
            v16 = v13[3];
            v58 = v13[2];
            v59 = v16;
            v56 = v14;
            v57 = v15;
            v17 = v13[4];
            v18 = v13[5];
            v19 = v13[7];
            v62 = v13[6];
            v63 = v19;
            v60 = v17;
            v61 = v18;
            if (v9 >= v12)
            {
              goto LABEL_28;
            }

            v72 = 0;
            v20 = &v3[16 * v9 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v66 = v20[2];
            v67 = v23;
            v64 = v21;
            v65 = v22;
            v24 = v20[4];
            v25 = v20[5];
            v26 = v20[7];
            v70 = v20[6];
            v71 = v26;
            v68 = v24;
            v69 = v25;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v56, v55, v10, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
            v27 = v10;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v64, v55, v10, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v28 = &v3[16 * v7 + 4];
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v54[2] = v28[2];
            v54[3] = v31;
            v54[0] = v29;
            v54[1] = v30;
            v32 = v28[4];
            v33 = v28[5];
            v34 = v28[7];
            v54[6] = v28[6];
            v54[7] = v34;
            v54[4] = v32;
            v54[5] = v33;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v54, v27, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
            v36 = v68;
            v35 = v69;
            v37 = v70;
            v28[7] = v71;
            v38 = v67;
            v40 = v64;
            v39 = v65;
            v28[2] = v66;
            v28[3] = v38;
            *v28 = v40;
            v28[1] = v39;
            v28[5] = v35;
            v28[6] = v37;
            v28[4] = v36;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v41 = &v3[16 * v9 + 4];
            v42 = *v41;
            v43 = v41[1];
            v44 = v41[3];
            v55[2] = v41[2];
            v55[3] = v44;
            v55[0] = v42;
            v55[1] = v43;
            v45 = v41[4];
            v46 = v41[5];
            v47 = v41[7];
            v55[6] = v41[6];
            v55[7] = v47;
            v55[4] = v45;
            v55[5] = v46;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v55, v27, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData);
            v48 = v59;
            v50 = v56;
            v49 = v57;
            v41[2] = v58;
            v41[3] = v48;
            *v41 = v50;
            v41[1] = v49;
            v51 = v63;
            v53 = v60;
            v52 = v61;
            v41[6] = v62;
            v41[7] = v51;
            v41[4] = v53;
            v41[5] = v52;
            *a1 = v3;
            v2 = v72;
            v10 = v27;
          }

          v11 = __OFADD__(v7++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[11 * v7 + 4];
            v13 = *(v12 + 16);
            v44 = *v12;
            v45 = v13;
            v14 = *(v12 + 32);
            v15 = *(v12 + 48);
            v16 = *(v12 + 64);
            v49 = *(v12 + 80);
            v47 = v15;
            v48 = v16;
            v46 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v56 = 0;
            v17 = &v3[11 * v9 + 4];
            v18 = *(v17 + 16);
            v50 = *v17;
            v51 = v18;
            v19 = *(v17 + 32);
            v20 = *(v17 + 48);
            v21 = *(v17 + 64);
            v55 = *(v17 + 80);
            v53 = v20;
            v54 = v21;
            v52 = v19;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v44, v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v50, v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v22 = &v3[11 * v7 + 4];
            v23 = *(v22 + 16);
            v40[0] = *v22;
            v40[1] = v23;
            v24 = *(v22 + 32);
            v25 = *(v22 + 48);
            v26 = *(v22 + 64);
            v41 = *(v22 + 80);
            v40[3] = v25;
            v40[4] = v26;
            v40[2] = v24;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v40, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            v28 = v52;
            v27 = v53;
            v29 = v54;
            *(v22 + 80) = v55;
            *(v22 + 64) = v29;
            v30 = v51;
            *v22 = v50;
            *(v22 + 16) = v30;
            *(v22 + 32) = v28;
            *(v22 + 48) = v27;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v31 = &v3[11 * v9 + 4];
            v32 = *(v31 + 16);
            v42[0] = *v31;
            v42[1] = v32;
            v33 = *(v31 + 32);
            v34 = *(v31 + 48);
            v35 = *(v31 + 64);
            v43 = *(v31 + 80);
            v42[3] = v34;
            v42[4] = v35;
            v42[2] = v33;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v42, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>.Fork, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData);
            v36 = v45;
            *v31 = v44;
            *(v31 + 16) = v36;
            v38 = v47;
            v37 = v48;
            v39 = v46;
            *(v31 + 80) = v49;
            *(v31 + 48) = v38;
            *(v31 + 64) = v37;
            *(v31 + 32) = v39;
            *a1 = v3;
            v2 = v56;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[12 * v7 + 4];
            v13 = v12[1];
            v42 = *v12;
            v43 = v13;
            v14 = v12[2];
            v15 = v12[3];
            v16 = v12[5];
            v46 = v12[4];
            v47 = v16;
            v44 = v14;
            v45 = v15;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v17 = &v3[12 * v9 + 4];
            v18 = v17[1];
            v48 = *v17;
            v49 = v18;
            v19 = v17[2];
            v20 = v17[3];
            v21 = v17[5];
            v52 = v17[4];
            v53 = v21;
            v50 = v19;
            v51 = v20;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v41, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v48, v41, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v22 = &v3[12 * v7 + 4];
            v23 = v22[1];
            v40[0] = *v22;
            v40[1] = v23;
            v24 = v22[2];
            v25 = v22[3];
            v26 = v22[5];
            v40[4] = v22[4];
            v40[5] = v26;
            v40[2] = v24;
            v40[3] = v25;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v40, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            v28 = v50;
            v27 = v51;
            v29 = v52;
            v22[5] = v53;
            v30 = v49;
            *v22 = v48;
            v22[1] = v30;
            v22[3] = v27;
            v22[4] = v29;
            v22[2] = v28;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v31 = &v3[12 * v9 + 4];
            v32 = v31[1];
            v41[0] = *v31;
            v41[1] = v32;
            v33 = v31[2];
            v34 = v31[3];
            v35 = v31[5];
            v41[4] = v31[4];
            v41[5] = v35;
            v41[2] = v33;
            v41[3] = v34;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v41, type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>.Fork);
            v36 = v43;
            *v31 = v42;
            v31[1] = v36;
            v37 = v47;
            v39 = v44;
            v38 = v45;
            v31[4] = v46;
            v31[5] = v37;
            v31[2] = v39;
            v31[3] = v38;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v17 = 0;
            result = memcpy(__dst, &v3[37 * v7 + 4], sizeof(__dst));
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            memcpy(__src, &v3[37 * v9 + 4], 0x128uLL);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(__dst, v14, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(__src, v14, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v12 = v3 + 4;
            memcpy(v13, &v3[37 * v7 + 4], sizeof(v13));
            outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v13, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
            result = memcpy(&v3[37 * v7 + 4], __src, 0x128uLL);
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            memcpy(v14, &v12[37 * v9], sizeof(v14));
            outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v14, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>.Fork, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData);
            result = memcpy(&v12[37 * v9], __dst, 0x128uLL);
            *a1 = v3;
            v2 = v17;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[7 * v7 + 4];
            v13 = *v12;
            v14 = *(v12 + 16);
            v15 = *(v12 + 32);
            v41 = *(v12 + 48);
            v39 = v14;
            v40 = v15;
            v38 = v13;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v16 = &v3[7 * v9 + 4];
            v17 = *v16;
            v18 = *(v16 + 16);
            v19 = *(v16 + 32);
            v45 = *(v16 + 48);
            v43 = v18;
            v44 = v19;
            v42 = v17;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v38, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v42, v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v20 = &v3[7 * v7 + 4];
            v21 = *v20;
            v22 = *(v20 + 16);
            v23 = *(v20 + 32);
            v35 = *(v20 + 48);
            v34[1] = v22;
            v34[2] = v23;
            v34[0] = v21;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v25 = v42;
            v24 = v43;
            v26 = v44;
            *(v20 + 48) = v45;
            *(v20 + 16) = v24;
            *(v20 + 32) = v26;
            *v20 = v25;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v27 = &v3[7 * v9 + 4];
            v28 = *v27;
            v29 = *(v27 + 16);
            v30 = *(v27 + 32);
            v37 = *(v27 + 48);
            v36[1] = v29;
            v36[2] = v30;
            v36[0] = v28;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v36, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v32 = v39;
            v31 = v40;
            v33 = v38;
            *(v27 + 48) = v41;
            *(v27 + 16) = v32;
            *(v27 + 32) = v31;
            *v27 = v33;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[10 * v7 + 4];
            v36 = *v12;
            v13 = v12[1];
            v14 = v12[2];
            v15 = v12[4];
            v39 = v12[3];
            v40 = v15;
            v37 = v13;
            v38 = v14;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v16 = &v3[10 * v9 + 4];
            v41 = *v16;
            v17 = v16[1];
            v18 = v16[2];
            v19 = v16[4];
            v44 = v16[3];
            v45 = v19;
            v42 = v17;
            v43 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v41, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v20 = &v3[10 * v7 + 4];
            v34[0] = *v20;
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[4];
            v34[3] = v20[3];
            v34[4] = v23;
            v34[1] = v21;
            v34[2] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            v25 = v42;
            v24 = v43;
            v26 = v44;
            v20[4] = v45;
            *v20 = v41;
            v20[1] = v25;
            v20[2] = v24;
            v20[3] = v26;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v27 = &v3[10 * v9 + 4];
            v35[0] = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[4];
            v35[3] = v27[3];
            v35[4] = v30;
            v35[1] = v28;
            v35[2] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>.Fork);
            *v27 = v36;
            v31 = v40;
            v33 = v37;
            v32 = v38;
            v27[3] = v39;
            v27[4] = v31;
            v27[1] = v33;
            v27[2] = v32;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[17 * v7 + 4];
            v56 = *v12;
            v13 = *(v12 + 16);
            v14 = *(v12 + 32);
            v15 = *(v12 + 64);
            v59 = *(v12 + 48);
            v60 = v15;
            v57 = v13;
            v58 = v14;
            v16 = *(v12 + 80);
            v17 = *(v12 + 96);
            v18 = *(v12 + 112);
            v64 = *(v12 + 128);
            v62 = v17;
            v63 = v18;
            v61 = v16;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v19 = &v3[17 * v9 + 4];
            v65 = *v19;
            v20 = *(v19 + 16);
            v21 = *(v19 + 32);
            v22 = *(v19 + 64);
            v68 = *(v19 + 48);
            v69 = v22;
            v66 = v20;
            v67 = v21;
            v23 = *(v19 + 80);
            v24 = *(v19 + 96);
            v25 = *(v19 + 112);
            v73 = *(v19 + 128);
            v71 = v24;
            v72 = v25;
            v70 = v23;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v56, v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v65, v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v26 = &v3[17 * v7 + 4];
            v52[0] = *v26;
            v27 = *(v26 + 16);
            v28 = *(v26 + 32);
            v29 = *(v26 + 64);
            v52[3] = *(v26 + 48);
            v52[4] = v29;
            v52[1] = v27;
            v52[2] = v28;
            v30 = *(v26 + 80);
            v31 = *(v26 + 96);
            v32 = *(v26 + 112);
            v53 = *(v26 + 128);
            v52[6] = v31;
            v52[7] = v32;
            v52[5] = v30;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v52, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            *v26 = v65;
            v33 = v69;
            v35 = v66;
            v34 = v67;
            *(v26 + 48) = v68;
            *(v26 + 64) = v33;
            *(v26 + 16) = v35;
            *(v26 + 32) = v34;
            v37 = v71;
            v36 = v72;
            v38 = v70;
            *(v26 + 128) = v73;
            *(v26 + 96) = v37;
            *(v26 + 112) = v36;
            *(v26 + 80) = v38;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v39 = &v3[17 * v9 + 4];
            v54[0] = *v39;
            v40 = *(v39 + 16);
            v41 = *(v39 + 32);
            v42 = *(v39 + 64);
            v54[3] = *(v39 + 48);
            v54[4] = v42;
            v54[1] = v40;
            v54[2] = v41;
            v43 = *(v39 + 80);
            v44 = *(v39 + 96);
            v45 = *(v39 + 112);
            v55 = *(v39 + 128);
            v54[6] = v44;
            v54[7] = v45;
            v54[5] = v43;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v54, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>.Fork);
            *v39 = v56;
            v46 = v60;
            v48 = v57;
            v47 = v58;
            *(v39 + 48) = v59;
            *(v39 + 64) = v46;
            *(v39 + 16) = v48;
            *(v39 + 32) = v47;
            v50 = v62;
            v49 = v63;
            v51 = v61;
            *(v39 + 128) = v64;
            *(v39 + 96) = v50;
            *(v39 + 112) = v49;
            *(v39 + 80) = v51;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_30:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_26;
            }

            v12 = &v3[18 * v7 + 4];
            v54 = *v12;
            v13 = v12[1];
            v14 = v12[2];
            v15 = v12[4];
            v57 = v12[3];
            v58 = v15;
            v55 = v13;
            v56 = v14;
            v16 = v12[5];
            v17 = v12[6];
            v18 = v12[8];
            v61 = v12[7];
            v62 = v18;
            v59 = v16;
            v60 = v17;
            if (v9 >= v11)
            {
              goto LABEL_27;
            }

            v19 = &v3[18 * v9 + 4];
            v63 = *v19;
            v20 = v19[1];
            v21 = v19[2];
            v22 = v19[4];
            v66 = v19[3];
            v67 = v22;
            v64 = v20;
            v65 = v21;
            v23 = v19[5];
            v24 = v19[6];
            v25 = v19[8];
            v70 = v19[7];
            v71 = v25;
            v68 = v23;
            v69 = v24;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v54, v53, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v63, v53, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_28;
            }

            v26 = &v3[18 * v7 + 4];
            v52[0] = *v26;
            v27 = v26[1];
            v28 = v26[2];
            v29 = v26[4];
            v52[3] = v26[3];
            v52[4] = v29;
            v52[1] = v27;
            v52[2] = v28;
            v30 = v26[5];
            v31 = v26[6];
            v32 = v26[8];
            v52[7] = v26[7];
            v52[8] = v32;
            v52[5] = v30;
            v52[6] = v31;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v52, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            *v26 = v63;
            v33 = v67;
            v35 = v64;
            v34 = v65;
            v26[3] = v66;
            v26[4] = v33;
            v26[1] = v35;
            v26[2] = v34;
            v36 = v71;
            v38 = v68;
            v37 = v69;
            v26[7] = v70;
            v26[8] = v36;
            v26[5] = v38;
            v26[6] = v37;
            if (v9 >= v3[2])
            {
              goto LABEL_29;
            }

            v39 = &v3[18 * v9 + 4];
            v53[0] = *v39;
            v40 = v39[1];
            v41 = v39[2];
            v42 = v39[4];
            v53[3] = v39[3];
            v53[4] = v42;
            v53[1] = v40;
            v53[2] = v41;
            v43 = v39[5];
            v44 = v39[6];
            v45 = v39[8];
            v53[7] = v39[7];
            v53[8] = v45;
            v53[5] = v43;
            v53[6] = v44;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v53, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Fork);
            *v39 = v54;
            v46 = v58;
            v48 = v55;
            v47 = v56;
            v39[3] = v57;
            v39[4] = v46;
            v39[1] = v48;
            v39[2] = v47;
            v49 = v62;
            v51 = v59;
            v50 = v60;
            v39[7] = v61;
            v39[8] = v49;
            v39[5] = v51;
            v39[6] = v50;
            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_24;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[21 * v7 + 4];
            v13 = *v12;
            v14 = *(v12 + 32);
            v69 = *(v12 + 16);
            v70 = v14;
            v68 = v13;
            v15 = *(v12 + 48);
            v16 = *(v12 + 64);
            v17 = *(v12 + 96);
            v73 = *(v12 + 80);
            v74 = v17;
            v71 = v15;
            v72 = v16;
            v18 = *(v12 + 112);
            v19 = *(v12 + 128);
            v20 = *(v12 + 144);
            v78 = *(v12 + 160);
            v76 = v19;
            v77 = v20;
            v75 = v18;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v90 = 0;
            v21 = &v3[21 * v9 + 4];
            v22 = *v21;
            v23 = *(v21 + 32);
            v80 = *(v21 + 16);
            v81 = v23;
            v79 = v22;
            v24 = *(v21 + 48);
            v25 = *(v21 + 64);
            v26 = *(v21 + 96);
            v84 = *(v21 + 80);
            v85 = v26;
            v82 = v24;
            v83 = v25;
            v27 = *(v21 + 112);
            v28 = *(v21 + 128);
            v29 = *(v21 + 144);
            v89 = *(v21 + 160);
            v87 = v28;
            v88 = v29;
            v86 = v27;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v68, v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v79, v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v30 = &v3[21 * v7 + 4];
            v31 = *v30;
            v32 = *(v30 + 32);
            v64[1] = *(v30 + 16);
            v64[2] = v32;
            v64[0] = v31;
            v33 = *(v30 + 48);
            v34 = *(v30 + 64);
            v35 = *(v30 + 96);
            v64[5] = *(v30 + 80);
            v64[6] = v35;
            v64[3] = v33;
            v64[4] = v34;
            v36 = *(v30 + 112);
            v37 = *(v30 + 128);
            v38 = *(v30 + 144);
            v65 = *(v30 + 160);
            v64[8] = v37;
            v64[9] = v38;
            v64[7] = v36;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v64, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
            v40 = v80;
            v39 = v81;
            *v30 = v79;
            *(v30 + 16) = v40;
            *(v30 + 32) = v39;
            v41 = v85;
            v43 = v82;
            v42 = v83;
            *(v30 + 80) = v84;
            *(v30 + 96) = v41;
            *(v30 + 48) = v43;
            *(v30 + 64) = v42;
            v45 = v87;
            v44 = v88;
            v46 = v86;
            *(v30 + 160) = v89;
            *(v30 + 128) = v45;
            *(v30 + 144) = v44;
            *(v30 + 112) = v46;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v47 = &v3[21 * v9 + 4];
            v48 = *v47;
            v49 = *(v47 + 32);
            v66[1] = *(v47 + 16);
            v66[2] = v49;
            v66[0] = v48;
            v50 = *(v47 + 48);
            v51 = *(v47 + 64);
            v52 = *(v47 + 96);
            v66[5] = *(v47 + 80);
            v66[6] = v52;
            v66[3] = v50;
            v66[4] = v51;
            v53 = *(v47 + 112);
            v54 = *(v47 + 128);
            v55 = *(v47 + 144);
            v67 = *(v47 + 160);
            v66[8] = v54;
            v66[9] = v55;
            v66[7] = v53;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v66, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>.Fork, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData);
            v57 = v69;
            v56 = v70;
            *v47 = v68;
            *(v47 + 16) = v57;
            *(v47 + 32) = v56;
            v58 = v74;
            v60 = v71;
            v59 = v72;
            *(v47 + 80) = v73;
            *(v47 + 96) = v58;
            *(v47 + 48) = v60;
            *(v47 + 64) = v59;
            v62 = v76;
            v61 = v77;
            v63 = v75;
            *(v47 + 160) = v78;
            *(v47 + 128) = v62;
            *(v47 + 144) = v61;
            *(v47 + 112) = v63;
            *a1 = v3;
            v2 = v90;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if (v2)
        {
          break;
        }

        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[9 * v7 + 4];
            v38 = *v12;
            v13 = *(v12 + 16);
            v14 = *(v12 + 32);
            v15 = *(v12 + 48);
            v42 = *(v12 + 64);
            v40 = v14;
            v41 = v15;
            v39 = v13;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v48 = 0;
            v16 = &v3[9 * v9 + 4];
            v43 = *v16;
            v17 = *(v16 + 16);
            v18 = *(v16 + 32);
            v19 = *(v16 + 48);
            v47 = *(v16 + 64);
            v45 = v18;
            v46 = v19;
            v44 = v17;
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v38, v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
            outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(&v43, v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[9 * v7 + 4];
            v34[0] = *v20;
            v21 = *(v20 + 16);
            v22 = *(v20 + 32);
            v23 = *(v20 + 48);
            v35 = *(v20 + 64);
            v34[2] = v22;
            v34[3] = v23;
            v34[1] = v21;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v34, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
            v25 = v44;
            v24 = v45;
            v26 = v46;
            *(v20 + 64) = v47;
            *(v20 + 48) = v26;
            *v20 = v43;
            *(v20 + 16) = v25;
            *(v20 + 32) = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[9 * v9 + 4];
            v36[0] = *v27;
            v28 = *(v27 + 16);
            v29 = *(v27 + 32);
            v30 = *(v27 + 48);
            v37 = *(v27 + 64);
            v36[2] = v29;
            v36[3] = v30;
            v36[1] = v28;
            result = outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(v36, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>.Fork, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData);
            *v27 = v38;
            v32 = v40;
            v31 = v41;
            v33 = v39;
            *(v27 + 64) = v42;
            *(v27 + 32) = v32;
            *(v27 + 48) = v31;
            *(v27 + 16) = v33;
            *a1 = v3;
            v2 = v48;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    return v3[2];
  }

  v7 = 0;
  while (1)
  {
    result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v7, a2);
    if (v2)
    {
      return v7;
    }

    if (result)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }

      while (v9 != v3[2])
      {
        result = closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(v9, a2);
        if ((result & 1) == 0)
        {
          if (v7 != v9)
          {
            if ((v7 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v11 = v3[2];
            if (v7 >= v11)
            {
              goto LABEL_27;
            }

            v12 = &v3[8 * v7 + 4];
            v13 = *v12;
            v14 = v12[1];
            v15 = v12[3];
            v38 = v12[2];
            v39 = v15;
            v36 = v13;
            v37 = v14;
            if (v9 >= v11)
            {
              goto LABEL_28;
            }

            v16 = &v3[8 * v9 + 4];
            v17 = *v16;
            v18 = v16[1];
            v19 = v16[3];
            v42 = v16[2];
            v43 = v19;
            v40 = v17;
            v41 = v18;
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v36, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(&v40, v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v3 = result;
            }

            if (v7 >= v3[2])
            {
              goto LABEL_29;
            }

            v20 = &v3[8 * v7 + 4];
            v21 = *v20;
            v22 = v20[1];
            v23 = v20[3];
            v34[2] = v20[2];
            v34[3] = v23;
            v34[0] = v21;
            v34[1] = v22;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v34, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v25 = v40;
            v24 = v41;
            v26 = v43;
            v20[2] = v42;
            v20[3] = v26;
            *v20 = v25;
            v20[1] = v24;
            if (v9 >= v3[2])
            {
              goto LABEL_30;
            }

            v27 = &v3[8 * v9 + 4];
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[3];
            v35[2] = v27[2];
            v35[3] = v30;
            v35[0] = v28;
            v35[1] = v29;
            result = _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v35, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Fork);
            v31 = v39;
            v33 = v36;
            v32 = v37;
            v27[2] = v38;
            v27[3] = v31;
            *v27 = v33;
            v27[1] = v32;
            *a1 = v3;
          }

LABEL_10:
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_25;
          }
        }

        v10 = __OFADD__(v9++, 1);
        if (v10)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      return v7;
    }

    if (v4 == ++v7)
    {
      return v3[2];
    }
  }
}

uint64_t RangeReplaceableCollection._remove(atOffsets:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a3;
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v64 - v8;
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v72 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v82 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v64 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = type metadata accessor for Range();
  v71 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v64 - v13;
  v14 = v9;
  v73 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v88 = type metadata accessor for IndexSet.RangeView();
  v77 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v76 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet.RangeView>();
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a2;
  v68 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for IndexSet();
  v25 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v74 = &v64 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  result = IndexSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    result = dispatch thunk of Collection.count.getter();
    if (__OFSUB__(result, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    if (result - 1 < 0)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v95[0] = 0;
    v95[1] = result - 1;
    type metadata accessor for ClosedRange<Int>(0, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>();
    IndexSet.init<A>(integersIn:)();
    v92 = v7;
    v37 = *(v25 + 16);
    v38 = v35;
    v67 = v35;
    v39 = v25;
    v40 = v69;
    v37(v30, v38, v69);
    v37(v27, a1, v40);
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v41 = v74;
    dispatch thunk of SetAlgebra.symmetricDifference(_:)();
    dispatch thunk of SetAlgebra.formIntersection(_:)();
    v42 = *(v39 + 8);
    v66 = v39 + 8;
    v65 = v42;
    v42(v41, v40);
    dispatch thunk of RangeReplaceableCollection.init()();
    IndexSet.count.getter();
    dispatch thunk of RangeReplaceableCollection.reserveCapacity(_:)();
    v43 = v76;
    IndexSet.rangeView.getter();
    v44 = v87;
    IndexSet.RangeView.makeIterator()();
    (v77[1])(v43, v88);
    v45 = (v44 + *(v75 + 9));
    v46 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x1E6969B30]);
    dispatch thunk of Collection.endIndex.getter();
    if (*v45 != v95[0])
    {
      v76 = (v73 + 2);
      v75 = v72 + 2;
      v74 = (v73 + 4);
      ++v73;
      v72 += 4;
      ++v71;
      v78 = v19;
      v77 = v45;
      v70 = v46;
      v91 = v4;
      while (1)
      {
        v47 = dispatch thunk of Collection.subscript.read();
        v47(v95, 0);
        dispatch thunk of Collection.formIndex(after:)();
        Collection.index(atOffset:)();
        Collection.index(atOffset:)();
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        if ((result & 1) == 0)
        {
          break;
        }

        v48 = *v76;
        v49 = v81;
        (*v76)(v81, v19, v14);
        v50 = TupleTypeMetadata2;
        v48(&v49[*(TupleTypeMetadata2 + 48)], v94, v14);
        v51 = v14;
        v52 = v82;
        (*v75)(v82, v49, v50);
        v53 = *(v50 + 48);
        v54 = *v74;
        v55 = v79;
        (*v74)(v79, v52, v51);
        v56 = *v73;
        (*v73)(&v52[v53], v51);
        (*v72)(v52, v49, v50);
        v57 = v80;
        v54(&v55[*(v80 + 36)], &v52[*(v50 + 48)], v51);
        v58 = v52;
        v59 = v78;
        v56(v58, v51);
        dispatch thunk of Collection.subscript.getter();
        (*v71)(v55, v57);
        v60 = v77;
        swift_getAssociatedConformanceWitness();
        v44 = v87;
        dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
        v56(v94, v51);
        v19 = v59;
        v61 = v59;
        v14 = v51;
        v56(v61, v51);
        dispatch thunk of Collection.endIndex.getter();
        v4 = v91;
        if (*v60 == v95[0])
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_8:
    v62 = v68;
    v63 = v93;
    (*(v68 + 8))(v4, v93);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v44, type metadata accessor for IndexingIterator<IndexSet.RangeView>);
    v65(v67, v69);
    return (*(v62 + 32))(v4, v90, v63);
  }

  return result;
}

void type metadata accessor for IndexingIterator<IndexSet.RangeView>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet.RangeView>)
  {
    type metadata accessor for IndexSet.RangeView();
    _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView, MEMORY[0x1E6969B30]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<IndexSet.RangeView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance ClosedRange<A>);
  }

  return result;
}

uint64_t MutableCollection.move(fromOffsets:toOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v60 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = type metadata accessor for Range();
  v81 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v60 - v13;
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v60 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v60 - v21;
  type metadata accessor for Slice<IndexSet>();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v72 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.subscript.getter(v72);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  v25 = *(v86 + 1);
  v73 = v19;
  v83 = v86 + 8;
  v71 = v25;
  v25(v19, AssociatedTypeWitness);
  v69 = v7;
  v70 = v4;
  v78 = a3;
  dispatch thunk of Collection.startIndex.getter();
  v82 = v16;
  v85 = v22;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v68 = a2;
    v27 = v84;
    v28 = v86;
    v30 = v86 + 32;
    v29 = *(v86 + 4);
    v31 = v74;
    v29(v74, v82, AssociatedTypeWitness);
    v32 = TupleTypeMetadata2;
    v33 = *(v28 + 2);
    v34 = &v31[*(TupleTypeMetadata2 + 48)];
    v86 = (v28 + 16);
    v61 = v33;
    v33(v34, v85, AssociatedTypeWitness);
    v35 = *(v27 + 16);
    v64 = v27 + 16;
    v63 = v35;
    v35(v10, v31, v32);
    v36 = *(v32 + 48);
    v37 = v31;
    v38 = v75;
    v29(v75, v10, AssociatedTypeWitness);
    v39 = v71;
    v71(&v10[v36], AssociatedTypeWitness);
    v40 = *(v27 + 32);
    v84 = v27 + 32;
    v62 = v40;
    v40(v10, v37, v32);
    v41 = v76;
    v42 = v38 + *(v76 + 36);
    v43 = &v10[*(v32 + 48)];
    v66 = v30;
    v65 = v29;
    v29(v42, v43, AssociatedTypeWitness);
    v67 = v10;
    v44 = v39(v10, AssociatedTypeWitness);
    MEMORY[0x1EEE9AC00](v44);
    v45 = v73;
    v60[-2] = v72;
    MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)(v38, 0, partial apply for closure #1 in MutableCollection.move(fromOffsets:toOffset:), &v60[-4], v78, v79, v45);
    v60[1] = 0;
    v46 = v81 + 8;
    v47 = *(v81 + 8);
    v47(v38, v41);
    v39(v45, AssociatedTypeWitness);
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v48 = v74;
      v61(v74, v85, AssociatedTypeWitness);
      v49 = TupleTypeMetadata2;
      v50 = &v48[*(TupleTypeMetadata2 + 48)];
      v86 = v47;
      v51 = v65;
      v65(v50, v82, AssociatedTypeWitness);
      v52 = v67;
      v63(v67, v48, v49);
      v81 = v46;
      v53 = *(v49 + 48);
      v54 = v75;
      v51(v75, v52, AssociatedTypeWitness);
      v55 = v71;
      v71(&v52[v53], AssociatedTypeWitness);
      v62(v52, v48, v49);
      v56 = v76;
      v51((v54 + *(v76 + 36)), &v52[*(v49 + 48)], AssociatedTypeWitness);
      v57 = v55(v52, AssociatedTypeWitness);
      MEMORY[0x1EEE9AC00](v57);
      v59 = v72;
      v58 = v73;
      v60[-2] = v72;
      MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)(v54, v68, partial apply for closure #2 in MutableCollection.move(fromOffsets:toOffset:), &v60[-4], v78, v79, v58);
      v86(v54, v56);
      v55(v58, AssociatedTypeWitness);
      v55(v85, AssociatedTypeWitness);
      return _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v59, type metadata accessor for Slice<IndexSet>);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RangeReplaceableCollection<>.remove(atOffsets:)(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v62 - v6;
  type metadata accessor for Range<IndexSet.Index>();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet.Index();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  type metadata accessor for Slice<IndexSet>();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v62 - v22;
  v65 = a2;
  v23 = a2;
  v24 = v9;
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v23, v20, type metadata accessor for Slice<IndexSet>);
  v66 = v10;
  v78 = *(v10 + 16);
  v79 = v10 + 16;
  v78(v14, v20, v9);
  v74 = v16;
  v25 = *(v16 + 36);
  v26 = v14;
  v72 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v81 = v20;
  if ((v27 & 1) == 0)
  {
    v67 = (v66 + 8);
    v68 = (v66 + 32);
    v69 = v25;
    v70 = v14;
    do
    {
      v28 = v75;
      v29 = v24;
      v30 = v78;
      v78(v75, v20, v24);
      v31 = v77;
      v30(v28 + *(v77 + 48), &v20[v25], v24);
      v32 = v76;
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v28, v76, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v80 = *(v31 + 48);
      v33 = *v68;
      v34 = v83;
      (*v68)(v83, v32, v29);
      v35 = *v67;
      (*v67)(v80 + v32, v29);
      v36 = v28;
      v26 = v70;
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v36, v32);
      v33(&v34[*(v73 + 36)], v32 + *(v31 + 48), v29);
      v37 = v32;
      v24 = v29;
      v35(v37, v29);
      type metadata accessor for IndexSet();
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      v38 = v83;
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v20 = v81;
      v25 = v69;
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v38, type metadata accessor for Range<IndexSet.Index>);
      v39 = dispatch thunk of Collection.subscript.read();
      v41 = *v40;
      v39(v82, 0);
      if (v41 >= v71)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v43 = v66;
    v44 = v25;
    v45 = v24;
    v46 = *(v66 + 32);
    v47 = v75;
    v46(v75, v26, v24);
    v48 = v46;
    v80 = v46;
    v49 = v77;
    v78((v47 + *(v77 + 48)), &v20[v44], v24);
    v50 = v76;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v47, v76, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
    v51 = *(v49 + 48);
    v52 = v83;
    v48(v83, v50, v24);
    v53 = *(v43 + 8);
    v53(v50 + v51, v24);
    outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v47, v50);
    v80(v52 + *(v73 + 36), v50 + *(v49 + 48), v24);
    v53(v50, v24);
    v54 = v62;
    v55 = v81;
    specialized Slice.subscript.getter(v52, v62);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v52, type metadata accessor for Range<IndexSet.Index>);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v55, type metadata accessor for Slice<IndexSet>);
    v56 = v54;
    v57 = v65;
    outlined assign with take of Slice<IndexSet>(v56, v65);
    v58 = v63;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v57, v63, type metadata accessor for Slice<IndexSet>);
    v59 = v64;
    v78(v64, v58, v45);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v60 = 0;
    }

    else
    {
      v61 = specialized Slice.subscript.getter(v59);
      v60 = v61 == v71;
    }

    v53(v59, v45);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v58, type metadata accessor for Slice<IndexSet>);
    return v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableCollection.stablePartitionByOffset(in:startOffset:isSuffixElementAtOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  dispatch thunk of Collection.distance(from:to:)();
  return MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t closure #2 in MutableCollection.move(fromOffsets:toOffset:)(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v60 - v6;
  type metadata accessor for Range<IndexSet.Index>();
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IndexSet.Index();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  type metadata accessor for Slice<IndexSet>();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v60 - v22;
  v63 = a2;
  v23 = a2;
  v24 = v9;
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v23, v20, type metadata accessor for Slice<IndexSet>);
  v64 = v10;
  v76 = *(v10 + 16);
  v77 = v10 + 16;
  v76(v14, v20, v9);
  v72 = v16;
  v25 = *(v16 + 36);
  v26 = v14;
  v70 = _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v79 = v20;
  if ((v27 & 1) == 0)
  {
    v65 = (v64 + 8);
    v66 = (v64 + 32);
    v67 = v25;
    v68 = v14;
    do
    {
      v28 = v73;
      v29 = v24;
      v30 = v76;
      v76(v73, v20, v24);
      v31 = v75;
      v30(v28 + *(v75 + 48), &v20[v25], v24);
      v32 = v74;
      outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v28, v74, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
      v78 = *(v31 + 48);
      v33 = *v66;
      v34 = v81;
      (*v66)(v81, v32, v29);
      v35 = *v65;
      (*v65)(v78 + v32, v29);
      v36 = v28;
      v26 = v68;
      outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v36, v32);
      v33(&v34[*(v71 + 36)], v32 + *(v31 + 48), v29);
      v37 = v32;
      v24 = v29;
      v35(v37, v29);
      type metadata accessor for IndexSet();
      _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      v38 = v81;
      dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
      v20 = v79;
      v25 = v67;
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v38, type metadata accessor for Range<IndexSet.Index>);
      v39 = dispatch thunk of Collection.subscript.read();
      v41 = *v40;
      v39(v80, 0);
      if (v41 >= v69)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v43 = v64;
    v44 = v25;
    v45 = v24;
    v46 = *(v64 + 32);
    v47 = v73;
    v46(v73, v26, v24);
    v78 = v46;
    v48 = v75;
    v76((v47 + *(v75 + 48)), &v20[v44], v24);
    v49 = v74;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v47, v74, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
    v50 = *(v48 + 48);
    v51 = v81;
    v46(v81, v49, v24);
    v52 = *(v43 + 8);
    v52(v49 + v50, v24);
    outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v47, v49);
    v78(v51 + *(v71 + 36), v49 + *(v48 + 48), v24);
    v52(v49, v24);
    v53 = v60;
    v54 = v79;
    specialized Slice.subscript.getter(v51, v60);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v51, type metadata accessor for Range<IndexSet.Index>);
    _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v54, type metadata accessor for Slice<IndexSet>);
    v55 = v53;
    v56 = v63;
    outlined assign with take of Slice<IndexSet>(v55, v63);
    v57 = v61;
    outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v56, v61, type metadata accessor for Slice<IndexSet>);
    v58 = v62;
    v76(v62, v57, v45);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v52(v58, v45);
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v57, type metadata accessor for Slice<IndexSet>);
      return 1;
    }

    else
    {
      v59 = specialized Slice.subscript.getter(v58);
      v52(v58, v45);
      _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v57, type metadata accessor for Slice<IndexSet>);
      return v59 != v69;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, double)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v109 = a1;
  v105 = a4;
  v106 = a3;
  v107 = a2;
  v102 = a6;
  v103 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v78 - v13;
  v108 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for Range();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v35 = MEMORY[0x1EEE9AC00](v28);
  if (v33 != 1)
  {
    if (!v33)
    {
      return (*(v23 + 16))(v103, v109, AssociatedTypeWitness, v35);
    }

    v91 = v30;
    v92 = v11;
    v98 = v14;
    v86 = v26;
    v97 = v34;
    v99 = v32;
    v101 = v29;
    v83 = v33;
    v39 = (&v78 - v31);
    v95 = v33 / 2;
    v40 = v109;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v100 = v39;
    v87 = AssociatedConformanceWitness;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v82 = v18;
      v41 = *(v23 + 16);
      v42 = v98;
      v41(v98, v40, AssociatedTypeWitness);
      v43 = &v42[*(TupleTypeMetadata2 + 48)];
      v90 = v23 + 16;
      v89 = v41;
      v41(v43, v100, AssociatedTypeWitness);
      v44 = v104;
      v45 = *(v104 + 16);
      v46 = v92;
      v88 = v104 + 16;
      v84 = v45;
      v45(v92, v42, TupleTypeMetadata2);
      v94 = *(TupleTypeMetadata2 + 48);
      v96 = *(v23 + 32);
      v96(v22, v46, AssociatedTypeWitness);
      v47 = *(v23 + 8);
      v47(v94 + v46, AssociatedTypeWitness);
      v49 = *(v44 + 32);
      v48 = v44 + 32;
      v50 = v42;
      v51 = v49;
      v49(v46, v50, TupleTypeMetadata2);
      v85 = TupleTypeMetadata2;
      v96(&v22[*(v101 + 36)], &v46[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
      v93 = v23 + 8;
      v94 = v47;
      v47(v46, AssociatedTypeWitness);
      v52 = v110;
      MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(v22, v107, v95, v106, v105, v108, v102);
      if (v52)
      {
        (*(v99 + 8))(v22, v101);
        return (v94)(v100, AssociatedTypeWitness);
      }

      v80 = v51;
      v81 = v23 + 32;
      v104 = v48;
      v110 = 0;
      v53 = *(v99 + 8);
      v54 = v101;
      v99 += 8;
      v79 = v53;
      v53(v22, v101);
      v55 = *(v54 + 36);
      v56 = v109;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        v57 = v98;
        v58 = v89;
        v89(v98, v100, AssociatedTypeWitness);
        v59 = v85;
        v58(&v57[*(v85 + 48)], v56 + v55, AssociatedTypeWitness);
        v84(v46, v57, v59);
        v60 = *(v59 + 48);
        v61 = v91;
        v62 = v96;
        v96(v91, v46, AssociatedTypeWitness);
        v63 = v94;
        v94(&v46[v60], AssociatedTypeWitness);
        v80(v46, v57, v59);
        v62(&v61[*(v101 + 36)], &v46[*(v59 + 48)], AssociatedTypeWitness);
        result = v63(v46, AssociatedTypeWitness);
        if (!__OFADD__(v107, v95))
        {
          if (!__OFSUB__(v83, v95))
          {
            v64 = v86;
            v65 = v91;
            v66 = v110;
            MutableCollection.stablePartitionByOffset(in:startOffset:count:isSuffixElementAtOffset:)(v91, v107 + v95, v83 - v95, v106, v105, v108, v102);
            v67 = v89;
            if (v66)
            {
              v79(v65, v101);
              v63(v97, AssociatedTypeWitness);
              return v63(v100, AssociatedTypeWitness);
            }

            v110 = 0;
            v79(v65, v101);
            v68 = v97;
            result = dispatch thunk of static Comparable.<= infix(_:_:)();
            if (result)
            {
              v69 = v98;
              v67(v98, v68, AssociatedTypeWitness);
              v70 = v85;
              v67(&v69[*(v85 + 48)], v64, AssociatedTypeWitness);
              v84(v46, v69, v70);
              v71 = *(v70 + 48);
              v72 = v82;
              v73 = v96;
              v96(v82, v46, AssociatedTypeWitness);
              v74 = v94;
              v94(&v46[v71], AssociatedTypeWitness);
              v80(v46, v69, v70);
              v75 = *(v70 + 48);
              v76 = v101;
              v73(v72 + *(v101 + 36), &v46[v75], AssociatedTypeWitness);
              v74(v46, AssociatedTypeWitness);
              v77 = v100;
              MutableCollection.rotate(in:shiftingToStart:)(v72, v100, v108, v102, v103);
              v79(v72, v76);
              v74(v86, AssociatedTypeWitness);
              v74(v97, AssociatedTypeWitness);
              return (v74)(v77, AssociatedTypeWitness);
            }

LABEL_24:
            __break(1u);
            return result;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v37 = v29;
  v38 = v110;
  result = v106(v107, v35);
  if (!v38)
  {
    if (result)
    {
      return (*(v23 + 16))(v103, v109, AssociatedTypeWitness);
    }

    else
    {
      return (*(v23 + 16))(v103, v109 + *(v37 + 36), AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t MutableCollection.rotate(in:shiftingToStart:)@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a2;
  v80 = a5;
  v89 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v103 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v79 - v10;
  v88 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v96 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v79 - v15;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v79 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v79 - v31;
  v33 = *(v16 + 16);
  v33(&v79 - v31, v104, AssociatedTypeWitness, v30);
  (v33)(v28, a1, AssociatedTypeWitness);
  v101 = v12;
  v34 = a1 + *(v12 + 36);
  v105 = v33;
  v106 = v16 + 16;
  (v33)(v25, v34, AssociatedTypeWitness);
  v35 = *(AssociatedConformanceWitness + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v36 = v16;
    v37 = *(v16 + 8);
    v37(v28, AssociatedTypeWitness);
    v37(v32, AssociatedTypeWitness);
    return (*(v36 + 32))(v80, v25, AssociatedTypeWitness);
  }

  else
  {
    v39 = v80;
    v90 = v28;
    v85 = v35;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v40 = v16;
      v41 = *(v16 + 8);
      v41(v25, AssociatedTypeWitness);
      v41(v32, AssociatedTypeWitness);
      return (*(v40 + 32))(v39, v90, AssociatedTypeWitness);
    }

    else
    {
      v84 = v25;
      v105(v81, v25, AssociatedTypeWitness);
      v42 = v90;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      v43 = v93;
      if (result)
      {
        v44 = v32;
        v45 = v42;
        v46 = v16;
        v47 = (v103 + 16);
        v104 = (v46 + 8);
        v99 = (v103 + 32);
        v100 = (v46 + 32);
        v82 = (v96 + 8);
        v98 = AssociatedConformanceWitness;
        v83 = v44;
        v97 = (v103 + 16);
        while (1)
        {
          v48 = v105;
          v105(v43, v45, AssociatedTypeWitness);
          v49 = TupleTypeMetadata2;
          v48(&v43[*(TupleTypeMetadata2 + 48)], v44, AssociatedTypeWitness);
          v50 = v91;
          v96 = *v47;
          v96(v91, v43, v49);
          v103 = *(v49 + 48);
          v51 = *v100;
          v52 = v102;
          (*v100)(v102, v50, AssociatedTypeWitness);
          v53 = v44;
          v54 = *v104;
          (*v104)(&v103[v50], AssociatedTypeWitness);
          v95 = *v99;
          v95(v50, v43, v49);
          v51(v52 + *(v101 + 36), &v50[*(v49 + 48)], AssociatedTypeWitness);
          v103 = v54;
          (v54)(v50, AssociatedTypeWitness);
          v55 = v53;
          v56 = v84;
          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          if ((result & 1) == 0)
          {
            break;
          }

          v57 = v93;
          v58 = v105;
          v105(v93, v55, AssociatedTypeWitness);
          v58(&v57[*(v49 + 48)], v56, AssociatedTypeWitness);
          v96(v50, v57, v49);
          v59 = *(v49 + 48);
          v60 = v87;
          v51(v87, v50, AssociatedTypeWitness);
          v61 = &v50[v59];
          v62 = v103;
          (v103)(v61, AssociatedTypeWitness);
          v95(v50, v57, v49);
          v63 = *(v49 + 48);
          v64 = v101;
          v65 = v60 + *(v101 + 36);
          v96 = v51;
          v51(v65, &v50[v63], AssociatedTypeWitness);
          v62(v50, AssociatedTypeWitness);
          v66 = v94;
          v67 = v86;
          v68 = v102;
          MutableCollection._swapNonemptySubrangePrefixes(_:_:)(v94, v86, v102, v60, v88, v89);
          v69 = *v82;
          (*v82)(v60, v64);
          v69(v68, v64);
          v70 = dispatch thunk of static Equatable.== infix(_:_:)();
          v43 = v57;
          v71 = v105;
          if (v70)
          {
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              v72 = v81;
              (v103)(v81, AssociatedTypeWitness);
              v73 = v72;
              v66 = v94;
              v71(v73, v94, AssociatedTypeWitness);
            }

            v44 = v83;
            v74 = dispatch thunk of static Equatable.== infix(_:_:)();
            v45 = v90;
            v75 = v103;
            (v103)(v90, AssociatedTypeWitness);
            if (v74)
            {
              v75(v67, AssociatedTypeWitness);
              v75(v66, AssociatedTypeWitness);
              v75(v84, AssociatedTypeWitness);
              v75(v44, AssociatedTypeWitness);
              return (v96)(v80, v81, AssociatedTypeWitness);
            }
          }

          else
          {
            v45 = v90;
            v75 = v103;
            (v103)(v90, AssociatedTypeWitness);
            v44 = v83;
          }

          v105(v45, v66, AssociatedTypeWitness);
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          v75(v66, AssociatedTypeWitness);
          v77 = v75;
          v78 = v96;
          if (v76)
          {
            v77(v44, AssociatedTypeWitness);
            v78(v44, v67, AssociatedTypeWitness);
          }

          else
          {
            v77(v67, AssociatedTypeWitness);
          }

          result = dispatch thunk of static Comparable.<= infix(_:_:)();
          v47 = v97;
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t MutableCollection._swapNonemptySubrangePrefixes(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a1;
  v21 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  v16 = v10;
  v14 = *(v10 + 16);
  v20 = a3;
  v14(&v16 - v12, a3, AssociatedTypeWitness, v11);
  v18 = a4;
  (v14)(a2, a4, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Range();
  do
  {
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.formIndex(after:)();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0 && (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return (*(v16 + 32))(v17, v13, AssociatedTypeWitness);
}

uint64_t specialized Slice.subscript.getter(uint64_t a1)
{
  v27 = a1;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  type metadata accessor for Range<IndexSet.Index>();
  v26 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<IndexSet>();
  v25[1] = v12;
  v13 = *(v12 + 36);
  v14 = type metadata accessor for IndexSet.Index();
  v15 = *(v14 - 8);
  v16 = v15[2];
  v25[0] = v1;
  v16(v8, v1, v14);
  v16(&v8[*(v3 + 56)], v1 + v13, v14);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v8, v5, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
  v17 = *(v3 + 56);
  v18 = v15[4];
  v19 = v11;
  v18(v11, v5, v14);
  v20 = v15[1];
  v20(&v5[v17], v14);
  outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v8, v5);
  v18((v19 + *(v26 + 44)), &v5[*(v3 + 56)], v14);
  v20(v5, v14);
  type metadata accessor for IndexSet();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v19, type metadata accessor for Range<IndexSet.Index>);
  v21 = dispatch thunk of Collection.subscript.read();
  v23 = *v22;
  v21(v28, 0);
  return v23;
}

uint64_t outlined init with copy of AnimatorState<ResolvedGradientVector>.Fork(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AnimatorState<_AnyAnimatableData>.Fork(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnimatorState<ResolvedGradientVector>.Fork(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for ClosedRange<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA18_AnyAnimatableDataV_GMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for AnimatorState.Fork();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized Slice.subscript.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 8))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    if (*v5 > result)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }
  }

  if (*(v5 + 24))
  {
LABEL_7:
    *(a5 + 32) = *(v5 + 32);
    *a5 = result;
    *(a5 + 8) = a2 & 1;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4 & 1;
    return outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v5, v6, type metadata accessor for Slice<SizeFittingTextCache<ResolvedTextHelper, StickyTextSizeFittingLogic>.Variants>);
  }

  if ((a4 & 1) == 0)
  {
    if (*(v5 + 16) >= a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized Slice.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a1;
  v36 = a2;
  type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index)();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  type metadata accessor for Range<IndexSet.Index>();
  v34 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Slice<IndexSet>();
  v33 = v13;
  v14 = *(v13 + 36);
  v15 = type metadata accessor for IndexSet.Index();
  v16 = *(v15 - 8);
  v17 = v16[2];
  v31 = v2;
  v17(v9, v2, v15);
  v17(&v9[*(v4 + 56)], v2 + v14, v15);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v9, v6, type metadata accessor for (lower: IndexSet.Index, upper: IndexSet.Index));
  v18 = *(v4 + 56);
  v19 = v16[4];
  v19(v12, v6, v15);
  v32 = v19;
  v20 = v16[1];
  v20(&v6[v18], v15);
  outlined init with take of (lower: IndexSet.Index, upper: IndexSet.Index)(v9, v6);
  v21 = *(v4 + 56);
  v22 = v34;
  v19(&v12[*(v34 + 44)], &v6[v21], v15);
  v20(v6, v15);
  v23 = v33;
  v24 = *(v33 + 40);
  v25 = type metadata accessor for IndexSet();
  _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  v26 = v31;
  v27 = v35;
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  _ss5SliceVy10Foundation8IndexSetVGWOhTm_0(v12, type metadata accessor for Range<IndexSet.Index>);
  v28 = v36;
  (*(*(v25 - 8) + 16))(&v36[*(v23 + 40)], v26 + v24, v25);
  outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(v27, v12, type metadata accessor for Range<IndexSet.Index>);
  v29 = v32;
  v32(v28, v12, v15);
  return v29(&v28[*(v23 + 36)], &v12[*(v22 + 44)], v15);
}

uint64_t outlined assign with take of Slice<IndexSet>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<IndexSet>();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Fork(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _GraphInputs.needsAccessibility.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t (*_GraphInputs.needsAccessibility.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x1000) != 0;
  return _GraphInputs.needsAccessibility.modify;
}

uint64_t _ViewInputs.needsAccessibility.setter(uint64_t result)
{
  if (result)
  {
    v2 = 4096;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFEFFF | v2;
  return result;
}

uint64_t (*_ViewInputs.needsAccessibility.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x1000) != 0;
  return _ViewInputs.needsAccessibility.modify;
}

uint64_t _ViewInputs.needsAccessibility.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 4096;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFEFFF;
  return result;
}

Swift::Int AccessibilityLayoutRole.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Locale.bcp47LanguageCode.getter()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  v10 = *(v1 + 8);
  v10(v6, v0);
  v11 = type metadata accessor for Locale.LanguageCode();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    outlined destroy of Locale.LanguageCode?(v9, &lazy cache variable for type metadata for Locale.LanguageCode?, MEMORY[0x1E6969610]);
  }

  else
  {
    v13 = MEMORY[0x193ABDA90]();
    v15 = v14;
    (*(v12 + 8))(v9, v11);

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      Locale.language.getter();
      v17 = Locale.Language.maximalIdentifier.getter();
      v10(v3, v0);
      return v17;
    }
  }

  return 0;
}

uint64_t AccessibilityTextLayoutProperties.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v4 = *(v1 + 80);
  v32 = *(v1 + 96);
  v33 = v3;
  v5 = *(v1 + 112);
  v34 = *(v1 + 128);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v28 = *(v1 + 32);
  v29 = v6;
  v8 = *(v1 + 48);
  v9 = *(v1 + 80);
  v30 = *(v1 + 64);
  v31 = v9;
  v10 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v10;
  v42 = v32;
  v43 = v5;
  v44 = *(v1 + 128);
  v38 = v28;
  v39 = v8;
  v40 = v30;
  v41 = v4;
  v35 = *(v1 + 144);
  v45 = *(v1 + 144);
  v36 = v27[0];
  v37 = v7;
  if (getEnumTag for AccessibilityTextLayoutProperties(&v36) == 1)
  {
    _s7SwiftUI20TextLayoutPropertiesVSgWOi0_(&v17);
  }

  else
  {
    v23 = v42;
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v19 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v41;
    v17 = v36;
    v18 = v37;
    _ViewInputs.base.modify(&v17, v11);
  }

  v12 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v26;
  v13 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v13;
  v14 = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v14;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  return outlined init with copy of AccessibilityTextLayoutProperties(v27, &v17);
}

uint64_t specialized static AccessibilityCore.description(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v32 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v14 = *(a3 + 8);
  v16 = MEMORY[0x193ABEC20](a1, a2, v11);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v13);
  }

  else
  {
    v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v17)
    {
      (*(v10 + 16))(v13, &v17[*(*v17 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v13, v18, v9);
    }
  }

  v19 = Locale.identifier.getter();
  v21 = v20;
  (*(v10 + 8))(v13, v9);
  v22 = MEMORY[0x193ABEC20](v19, v21);

  v23 = AXSwiftUIDescriptionForSymbolName(v16, v22);

  if (!v23)
  {
    return 0;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    return 0;
  }

  v32[0] = v24;
  v32[1] = v26;
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v8);
  }

  else
  {
    v29 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v29)
    {
      (*(v10 + 16))(v8, &v29[*(*v29 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v8, v30, v9);
    }
  }

  (*(v10 + 56))(v8, 0, 1, v9);
  lazy protocol witness table accessor for type String and conformance String();
  v31 = StringProtocol.capitalized(with:)();
  outlined destroy of Locale.LanguageCode?(v8, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);

  return v31;
}

double _s7SwiftUI20TextLayoutPropertiesVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole()
{
  result = lazy protocol witness table cache variable for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole;
  if (!lazy protocol witness table cache variable for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLayoutRole and conformance AccessibilityLayoutRole);
  }

  return result;
}

double destructiveInjectEnumTag for AccessibilityTextLayoutProperties(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 112) = (a2 - 1);
  }

  return result;
}

uint64_t outlined destroy of Locale.LanguageCode?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s10Foundation6LocaleV12LanguageCodeVSgMaTm_0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = swift_allocObject();
  v11[2] = a7;
  v11[3] = a1;
  v11[4] = a2;
  thunk for @callee_guaranteed () -> (@out A, @error @owned Error)partial apply();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
    v14 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v14);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_5;
    }

    return static MainActor.assumeIsolated<A>(_:file:line:)(a4, a5, a6, a7, a8, a9, a10);
  }

  if (static Semantics.forced >= a1)
  {
    return static MainActor.assumeIsolated<A>(_:file:line:)(a4, a5, a6, a7, a8, a9, a10);
  }

LABEL_5:
  if (a3)
  {
    v28[0] = a2;
    v28[1] = a3;

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    v17 = a2;
    v16 = a3;
    if (pthread_main_np())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0xE000000000000000;
    if (pthread_main_np())
    {
      goto LABEL_14;
    }
  }

  LOBYTE(a7) = static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v19 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, a7))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v28);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_18D018000, v19, a7, "%s This warning will become a runtime crash in a future version of SwiftUI.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x193AC4820](v21, -1, -1);
      MEMORY[0x193AC4820](v20, -1, -1);
    }

    else
    {
LABEL_14:
    }

    v16 = swift_allocObject();
    v16[2] = a10;
    v16[3] = a4;
    v16[4] = a5;
    v23 = v28[6];
    partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
    if (!v23)
    {
      break;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v25 = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void ColorCacheKey.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *(v0 + 3);
  MEMORY[0x193AC11A0](*v0);
  MEMORY[0x193AC11A0](v1);
  MEMORY[0x193AC11A0](v2);
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    v4 = v3;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColorCacheKey()
{
  Hasher.init(_seed:)();
  ColorCacheKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorCacheKey()
{
  Hasher.init(_seed:)();
  ColorCacheKey.hash(into:)();
  return Hasher._finalize()();
}

void *Color.init(_:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ColorBox<Color.NamedColor>();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void CUINamedColor.effectiveCGColor(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (![v1 substituteWithSystemColor])
  {
    goto LABEL_12;
  }

  v31 = v4;
  *v32 = v3;
  if (EnvironmentValues.cuiNamedColorProvider.getter())
  {
    v31 = v4;
    *v32 = v3;
    (*(v5 + 8))(v1, &v31);
    return;
  }

  if (one-time initialization token for namedTypes != -1)
  {
    swift_once();
  }

  v6 = static SystemColorType.namedTypes;
  v7 = [v2 systemColorName];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_12:
    v19 = [v2 cgColor];
    return;
  }

  v15 = *(*(v6 + 56) + v12);
  if (v3)
  {

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v18 = v17;
  }

  else
  {
    v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(v4);
    if (v20)
    {
      v16 = v20[9];
      v18 = v20[10];
    }

    else
    {
      v18 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v16 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v30 = v15;
  v29[0] = v4;
  v29[1] = v3;
  (v18[1])(&v31, &v30, v29, v16, v18);
  v22 = *(&v31 + 1);
  v21 = *&v31;
  v24 = v32[1];
  v23 = v32[0];
  if (one-time initialization token for cache != -1)
  {
    v27 = v32[0];
    v28 = *&v31;
    v25 = v32[1];
    v26 = *(&v31 + 1);
    swift_once();
    v24 = v25;
    v22 = v26;
    v23 = v27;
    v21 = v28;
  }

  specialized ObjectCache.subscript.getter(v21, v22, v23, v24);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.NamedColor()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Color.NamedColor()
{
  v1 = *(v0 + 16);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.NamedColor()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void *initializeBufferWithCopyOfBuffer for Color.NamedColor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;

  v5 = v4;
  return a1;
}

void *assignWithCopy for Color.NamedColor(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for Color.NamedColor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t specialized static ColorCacheKey.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    if (v4 = *(a1 + 3), v5 = *(a2 + 3), *(a1 + 1) == *(a2 + 1)) && *(a1 + 2) == *(a2 + 2) || (v6 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v6))
    {
      if (v4)
      {
        if (v5)
        {
          type metadata accessor for NSBundle();
          v7 = v5;
          v8 = v4;
          v9 = static NSObject.== infix(_:_:)();

          if (v9)
          {
            return 1;
          }
        }
      }

      else if (!v5)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized static Color.NamedColor.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v8 & 1) != 0))
  {
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSBundle();
        v10 = a6;
        v11 = a3;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void destroy for ColorCacheKey(uint64_t a1)
{

  v2 = *(a1 + 24);
}

uint64_t initializeWithCopy for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  return a1;
}

uint64_t assignWithTake for ColorCacheKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t ResolvableStringResolutionContext.init(environment:maximumWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v13, v11);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v13);
    if (v15)
    {
      v16 = MEMORY[0x1E6969530];
      v17 = v15 + *(*v15 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v9, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v16 = MEMORY[0x1E6969530];
    }

    _s10Foundation4DateVSgWOcTm_0(v17, v11, &lazy cache variable for type metadata for Date?, v16);
  }

  v18 = type metadata accessor for ResolvableStringResolutionContext(0);
  v19 = a4 + *(v18 + 24);
  result = outlined assign with take of Date?(v11, a4);
  v21 = (a4 + *(v18 + 20));
  *v21 = v13;
  v21[1] = v12;
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  return result;
}

uint64_t static ResolvableStringAttributeRepresentation.attribute.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t ResolvableStringResolutionContext.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  _s10Foundation4DateVSgWOcTm_0(v1, &v14 - v8, &lazy cache variable for type metadata for Date?, v3);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v9, v10);
  }

  v14 = *(v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));
  EnvironmentValues.stringResolutionDate.getter(v6);
  if (v12(v6, 1, v10) == 1)
  {
    static Date.now.getter();
    if (v12(v6, 1, v10) != 1)
    {
      _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v11 + 32))(a1, v6, v10);
  }

  result = (v12)(v9, 1, v10);
  if (result != 1)
  {
    return _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  }

  return result;
}

uint64_t specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v25 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 16);
  v18(v12, v2, v6, v15);
  type metadata accessor for ClosedRange<Date>();
  (v18)(v9, v2 + *(v19 + 36), v6);
  DateInterval.init(start:end:)();
  LOBYTE(v7) = *(v2 + *(type metadata accessor for ResolvableProgress() + 20));
  v20 = *(v14 + 56);
  v21 = type metadata accessor for DateInterval();
  (*(*(v21 - 8) + 32))(v5, v17, v21);
  v5[v20] = v7;
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  swift_storeEnumTagMultiPayload();
  v22 = v24;
  _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v5, v24, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
  return (*(v3 + 56))(v22, 0, 1, v25);
}

{
  v2 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = ResolvableCurrentDate.provider.getter();
  if (v12)
  {
    v13 = v12;
    BaseDateProvider.updateConfiguration.getter(v8);

    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v8, v11, type metadata accessor for ResolvableAttributeConfiguration);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 32))(v5, v11, v20);
      goto LABEL_14;
    }

    if ((v11[8] & 1) == 0)
    {
      *v5 = *v11;
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)();
      v17 = *(v16 + 48);
      v18 = v11[v17];
      v19 = type metadata accessor for DateInterval();
      (*(*(v19 - 8) + 32))(v5, v11, v19);
      *(v5 + v17) = v18;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v5 = *v11;
LABEL_14:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v5, a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v15 = 0;
      return (*(v3 + 56))(a1, v15, 1, v2);
    }
  }

  v15 = 1;
  return (*(v3 + 56))(a1, v15, 1, v2);
}

{
  v3 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ResolvableAttributeConfiguration(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*v1 updateFrequency];
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 0x3FF0000000000000;
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_11;
      }

      v12 = 0x3FA1111111111111;
    }

    goto LABEL_10;
  }

  if (!v11)
  {
    v12 = 0x7FEFFFFFFFFFFFFFLL;
LABEL_10:
    *v10 = v12;
    v10[8] = 0;
    goto LABEL_11;
  }

  if (v11 == 1)
  {
    *v10 = 64;
  }

LABEL_11:
  swift_storeEnumTagMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 32))(v6, v10, v19);
      goto LABEL_21;
    }

    if ((v10[8] & 1) == 0)
    {
      *v6 = *v10;
      goto LABEL_21;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      type metadata accessor for (interval: DateInterval, countdown: Bool)();
      v16 = *(v15 + 48);
      v17 = v10[v16];
      v18 = type metadata accessor for DateInterval();
      (*(*(v18 - 8) + 32))(v6, v10, v18);
      *(v6 + v16) = v17;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 3)
    {
      *v6 = *v10;
LABEL_21:
      type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, a1, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
      v14 = 0;
      return (*(v4 + 56))(a1, v14, 1, v3);
    }
  }

  v14 = 1;
  return (*(v4 + 56))(a1, v14, 1, v3);
}

void ResolvableStringAttribute.requiredFeatures.getter(_WORD *a1@<X8>)
{
  *a1 = 0;
}

{
  ResolvableStringAttribute.requiredFeatures.getter(a1);
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableCLKTextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = v3 == 0;
  v11 = v4;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v6, v7);
  outlined copy of ResolvableCLKTextProvider.FontStorage(v8, v9);
  return v10;
}

BOOL ResolvableStringAttribute.sizeVariant(_:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  (*(*(a3 - 8) + 16))(a1, v3);
  return v4 == 0;
}

id protocol witness for ResolvableStringAttributeRepresentation.representation(for:) in conformance ResolvableCLKTextProvider@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  a3[3] = a1;
  a3[4] = a2;
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
  v12 = v5;
  outlined copy of ResolvableCLKTextProvider.FontStorage(v7, v8);

  return outlined copy of ResolvableCLKTextProvider.FontStorage(v9, v10);
}

uint64_t ResolvableStringAttributeRepresentation.representation(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1, v3, a1);
}

void protocol witness for static ResolvableStringAttributeFamily.decode(from:) in conformance ResolvableCLKTextProvider(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v7);
  a3[3] = a2;
  a3[4] = lazy protocol witness table accessor for type ResolvableCLKTextProvider and conformance ResolvableCLKTextProvider();
  v6 = swift_allocObject();
  *a3 = v6;
  ResolvableCLKTextProvider.init(from:)(v7, (v6 + 16));
  if (v3)
  {
    __swift_deallocate_boxed_opaque_existential_1(a3);
  }
}

uint64_t static ResolvableStringAttribute<>.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v9);
  a4[3] = a2;
  a4[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  result = dispatch thunk of Decodable.init(from:)();
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a4);
  }

  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableCLKTextProvider@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t specialized ResolvableStringAttribute.entries(from:mode:)(uint64_t a1, char a2)
{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    type metadata accessor for _SequenceBox<[Date]>();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    v15 = a2 & 1;
    v12 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, &v15);
    type metadata accessor for _SequenceBox<AnySequence<Date>>();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    return v13;
  }

  return result;
}

{
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5];
  v7 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  specialized ConfigurationBasedResolvableStringAttributeRepresentation.schedule.getter(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for ResolvableAttributeConfiguration.Schedule?, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    type metadata accessor for _SequenceBox<[Date]>();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(v6, v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    v15 = a2 & 1;
    v12 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(a1, &v15);
    type metadata accessor for _SequenceBox<AnySequence<Date>>();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v10, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
    return v13;
  }

  return result;
}

{
  v3 = v2;
  v28 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for (interval: DateInterval, countdown: Bool)();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ResolvableAttributeConfiguration.Schedule(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 16);
  v20(v11, v3, v5, v17);
  type metadata accessor for ClosedRange<Date>();
  (v20)(v8, v3 + *(v21 + 36), v5);
  DateInterval.init(start:end:)();
  v22 = *(v3 + *(type metadata accessor for ResolvableProgress() + 20));
  v23 = *(v13 + 56);
  v24 = type metadata accessor for DateInterval();
  (*(*(v24 - 8) + 32))(v19, v15, v24);
  v19[v23] = v22;
  type metadata accessor for ResolvableAttributeConfiguration.Schedule.Alignment(0);
  swift_storeEnumTagMultiPayload();
  v29 = a2 & 1;
  v25 = ResolvableAttributeConfiguration.Schedule.entries(from:mode:)(v28, &v29);
  type metadata accessor for _SequenceBox<AnySequence<Date>>();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(v19, type metadata accessor for ResolvableAttributeConfiguration.Schedule);
  return v26;
}

uint64_t ResolvableStringAttribute.entries(from:mode:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v21 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  v18 = *a2;
  (*(a4 + 48))(a3, a4, v15);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v12, v9);
    type metadata accessor for _SequenceBox<[Date]>();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v17, v12, AssociatedTypeWitness);
    v25 = v18;
    (*(AssociatedConformanceWitness + 24))(v24, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
    type metadata accessor for Date();
    swift_getAssociatedConformanceWitness();
    v20 = AnySequence.init<A>(_:)();
    (*(v13 + 8))(v17, AssociatedTypeWitness);
    return v20;
  }

  return result;
}

uint64_t ResolvableStringResolutionContext.init(referenceDate:environment:maximumWidth:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(a5, 1, 1, v11);
  v12 = type metadata accessor for ResolvableStringResolutionContext(0);
  v13 = a5 + *(v12 + 24);
  result = outlined assign with take of Date?(a1, a5);
  v15 = (a5 + *(v12 + 20));
  *v15 = v9;
  v15[1] = v10;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  return result;
}

uint64_t EnvironmentValues.resolvableStringReferenceDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  _s10Foundation4DateVSgWOcTm_0(a1, &v14[-v9], &lazy cache variable for type metadata for Date?, v4);
  v11 = *v2;
  _s10Foundation4DateVSgWOcTm_0(v10, v7, &lazy cache variable for type metadata for Date?, v4);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v2, v7);

  _s10Foundation4DateVSgWOhTm_2(v7, &lazy cache variable for type metadata for Date?, v4);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v11, *v2);
  }

  v12 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgWOhTm_2(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  return _s10Foundation4DateVSgWOhTm_2(v10, &lazy cache variable for type metadata for Date?, v12);
}

uint64_t EnvironmentValues.setLazyStringResolutionDate(_:)(void *a1)
{
  v2 = v1;
  v14[3] = *MEMORY[0x1E69E9840];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v14 - v8);
  v10 = a1[1];
  *v9 = *a1;
  v9[1] = v10;
  v11 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = *v2;
  _s10Foundation4DateVSgWOcTm_0(v9, v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v2, v6);

  _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(v12, *v2);
  }

  return _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

uint64_t EnvironmentValues.stringResolutionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v3);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - v9);
  v11 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v11, v10);
  }

  else
  {
    v12 = v8;
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v11);
    if (v13)
    {
      v14 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v12, static EnvironmentValues.StringResolutionDate.defaultValue);
    }

    _s10Foundation4DateVSgWOcTm_0(v14, v10, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  }

  v15 = type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    v16 = type metadata accessor for Date();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    (*(v19 + 32))(a1, v10, v18);
    return (*(v19 + 56))(a1, 0, 1, v18);
  }

  else
  {
    v20 = *v10;
    _s10Foundation4DateVSgWOcTm_0(v20, v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v21 = type metadata accessor for Date();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      v23 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      static Date.now.getter();
      _s10Foundation4DateVSgWOhTm_2(v20, &lazy cache variable for type metadata for Date?, v23);
      (*(v22 + 16))(v20, a1, v21);
      v24 = *(v22 + 56);
      v24(v20, 0, 1, v21);
      return (v24)(a1, 0, 1, v21);
    }

    else
    {
      (*(v22 + 32))(a1, v6, v21);
      return (*(v22 + 56))(a1, 0, 1, v21);
    }
  }
}

uint64_t ResolvableStringResolutionContext.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t ResolvableStringResolutionContext.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t ResolvableStringResolutionContext.maximumWidth.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ResolvableStringResolutionContext(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t EnvironmentValues.resolvableStringReferenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*v1);
    if (v5)
    {
      v6 = MEMORY[0x1E6969530];
      v7 = v5 + *(*v5 + 248);
      v8 = a1;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v7 = __swift_project_value_buffer(v10, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v8 = a1;
      v6 = v9;
    }

    return _s10Foundation4DateVSgWOcTm_0(v7, v8, &lazy cache variable for type metadata for Date?, v6);
  }
}

BOOL ResolvableStringAttribute.isDynamic.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(a2 + 48))(a1, a2, v7);
  v10 = (*(*(AssociatedTypeWitness - 8) + 48))(v9, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t key path getter for EnvironmentValues.resolvableStringReferenceDate : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v3, a2);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(*a1);
    if (v5)
    {
      v6 = MEMORY[0x1E6969530];
      v7 = v5 + *(*v5 + 248);
      v8 = a2;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = MEMORY[0x1E6969530];
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      v7 = __swift_project_value_buffer(v10, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v8 = a2;
      v6 = v9;
    }

    return _s10Foundation4DateVSgWOcTm_0(v7, v8, &lazy cache variable for type metadata for Date?, v6);
  }
}

uint64_t key path setter for EnvironmentValues.resolvableStringReferenceDate : EnvironmentValues(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  _s10Foundation4DateVSgWOcTm_0(a1, &v10 - v7, &lazy cache variable for type metadata for Date?, v2);
  _s10Foundation4DateVSgWOcTm_0(v8, v5, &lazy cache variable for type metadata for Date?, v2);
  _s7SwiftUI17EnvironmentValuesV4_set33_0CBA6217BE011883F496E97230B6CF8FLL_3fory5ValueQz_xmtAA0C3KeyRzlFAcAE029ResolvableStringReferenceDateN033_6237733B8EBAC19656F21E79CFCF2D67LLV_Tt0g5(v5);
  _s10Foundation4DateVSgWOhTm_2(v5, &lazy cache variable for type metadata for Date?, v2);
  return _s10Foundation4DateVSgWOhTm_2(v8, &lazy cache variable for type metadata for Date?, v2);
}

void (*EnvironmentValues.resolvableStringReferenceDate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(v8);
    v5[4] = malloc(v8);
    v5[5] = malloc(v8);
    v5[6] = malloc(v8);
    v5[7] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[8] = v9;
  v11 = *v1;
  v5[9] = *v1;
  v12 = *(v1 + 8);
  v5[10] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5(v11, v10);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(v11);
    if (v13)
    {
      v14 = MEMORY[0x1E6969530];
      v15 = v13 + *(*v13 + 248);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v7, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
      v14 = MEMORY[0x1E6969530];
    }

    _s10Foundation4DateVSgWOcTm_0(v15, v10, &lazy cache variable for type metadata for Date?, v14);
  }

  return EnvironmentValues.resolvableStringReferenceDate.modify;
}

void EnvironmentValues.resolvableStringReferenceDate.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 80);
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(v2 + 64), v4, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOcTm_0(v4, v5, &lazy cache variable for type metadata for Date?, v8);
    _s10Foundation4DateVSgWOcTm_0(v5, v6, &lazy cache variable for type metadata for Date?, v8);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v7, v6);

    _s10Foundation4DateVSgWOhTm_2(v6, &lazy cache variable for type metadata for Date?, v8);
    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(*(v2 + 72), **(v2 + 16));
    }

    v10 = *(v2 + 56);
    v9 = *(v2 + 64);
    v12 = *(v2 + 40);
    v11 = *(v2 + 48);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);

    _s10Foundation4DateVSgWOhTm_2(v13, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    v15 = v12;
  }

  else
  {
    v16 = *(v2 + 80);
    v17 = *(v2 + 56);
    v18 = *(v2 + 48);
    v19 = *(v2 + 16);
    v20 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(v2 + 64), v17, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    _s10Foundation4DateVSgWOcTm_0(v17, v18, &lazy cache variable for type metadata for Date?, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE029ResolvableStringReferenceDateF033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt2g5(v19, v18);

    _s10Foundation4DateVSgWOhTm_2(v18, &lazy cache variable for type metadata for Date?, v20);
    if (v16)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE029ResolvableStringReferenceDateK033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5(*(v2 + 72), **(v2 + 16));
    }

    v12 = *(v2 + 56);
    v9 = *(v2 + 64);
    v15 = *(v2 + 40);
    v11 = *(v2 + 48);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);

    v10 = v12;
  }

  v21 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgWOhTm_2(v12, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  _s10Foundation4DateVSgWOhTm_2(v9, &lazy cache variable for type metadata for Date?, v21);
  free(v9);
  free(v10);
  free(v11);
  free(v15);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1)
{
  return one-time initialization function for defaultValue(a1, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue, MEMORY[0x1E6969530]);
}

{
  return one-time initialization function for defaultValue(a1, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, static EnvironmentValues.StringResolutionDate.defaultValue, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

{
  return one-time initialization function for defaultValue(a1, MEMORY[0x1E6969AE8], static CalendarKey.defaultValue, MEMORY[0x1E69699E0]);
}

{
  return one-time initialization function for defaultValue(a1, MEMORY[0x1E6969BC0], static TimeZoneKey.defaultValue, MEMORY[0x1E6969BB0]);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ResolvableStringReferenceDateKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = __swift_project_value_buffer(v3, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
  return _s10Foundation4DateVSgWOcTm_0(v4, a1, &lazy cache variable for type metadata for Date?, v2);
}

uint64_t key path setter for EnvironmentValues.stringResolutionDate : EnvironmentValues(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  _s10Foundation4DateVSgWOcTm_0(a1, &v7 - v4, &lazy cache variable for type metadata for Date?, v2);
  return EnvironmentValues.stringResolutionDate.setter(v5);
}

void (*EnvironmentValues.stringResolutionDate.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  a1[2] = v5;
  EnvironmentValues.stringResolutionDate.getter(v5);
  return EnvironmentValues.stringResolutionDate.modify;
}

void EnvironmentValues.stringResolutionDate.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = MEMORY[0x1E6969530];
    _s10Foundation4DateVSgWOcTm_0(*(a1 + 16), v2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
    EnvironmentValues.stringResolutionDate.setter(v2);
    _s10Foundation4DateVSgWOhTm_2(v3, &lazy cache variable for type metadata for Date?, v4);
  }

  else
  {
    EnvironmentValues.stringResolutionDate.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t (*a5)(void))
{
  _s10Foundation4DateVSgMaTm_3(0, a2, a3, MEMORY[0x1E69E6720]);
  v8 = v7;
  __swift_allocate_value_buffer(v7, a4);
  v9 = __swift_project_value_buffer(v8, a4);
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(v9, 1, 1, v10);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.StringResolutionDate@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  v3 = __swift_project_value_buffer(v2, static EnvironmentValues.StringResolutionDate.defaultValue);
  return _s10Foundation4DateVSgWOcTm_0(v3, a1, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
}

uint64_t protocol witness for ResolvableStringAttributeRepresentation.representation(for:) in conformance ResolvableAbsoluteDate@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  return outlined init with copy of ResolvableCurrentDate(v4, boxed_opaque_existential_1, a3);
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableProgress(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableProgress);
  return v3 == 0;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableProgress@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableDateInterval(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableDateInterval);
  return v3 == 0;
}

uint64_t protocol witness for static ResolvableStringAttributeFamily.decode(from:) in conformance ResolvableProgress@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t (*a5)(_BYTE *)@<X6>, uint64_t *a6@<X8>)
{
  outlined init with copy of AnyTrackedValue(a1, v13);
  a6[3] = a2;
  a6[4] = lazy protocol witness table accessor for type ResolvableCurrentDate and conformance ResolvableCurrentDate(a3, a4);
  __swift_allocate_boxed_opaque_existential_1(a6);
  result = a5(v13);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  return result;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableDateInterval@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _SequenceBox<[Date]>();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *a1 = result;
  return result;
}

BOOL protocol witness for ResolvableStringAttribute.sizeVariant(_:) in conformance ResolvableCurrentDate(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  outlined init with copy of ResolvableCurrentDate(v2, a1, type metadata accessor for ResolvableCurrentDate);
  return v3 == 0;
}

uint64_t protocol witness for TimelineSchedule.entries(from:mode:) in conformance ResolvableCurrentDate@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized ResolvableStringAttribute.entries(from:mode:)(a1, *a2);
  *a3 = result;
  return result;
}

void type metadata accessor for _SequenceBox<[Date]>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<[Date]>)
  {
    v0 = MEMORY[0x1E69E62F8];
    _s10Foundation4DateVSgMaTm_3(255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Date] and conformance [A](&lazy protocol witness table cache variable for type [Date] and conformance [A], &lazy cache variable for type metadata for [Date], v0);
    v1 = type metadata accessor for _SequenceBox();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SequenceBox<[Date]>);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for ResolvableStringResolutionContext(char *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(v4, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(v4, a2, v7);
      (*(v8 + 56))(v4, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = *(a3 + 24);
    v13 = &v4[v11];
    v14 = (a2 + v11);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = &v4[v12];
    v17 = a2 + v12;
    v16[8] = v17[8];
    *v16 = *v17;
  }

  return v4;
}

char *initializeWithCopy for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = *(a3 + 24);
  v11 = &a1[v9];
  v12 = &a2[v9];
  v13 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 1) = v13;
  v14 = &a1[v10];
  v15 = &a2[v10];
  v14[8] = v15[8];
  *v14 = *v15;

  return a1;
}

char *assignWithCopy for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  v18 = *v17;
  v16[8] = v17[8];
  *v16 = v18;
  return a1;
}

char *initializeWithTake for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  v10[8] = v11[8];
  return a1;
}

char *assignWithTake for ResolvableStringResolutionContext(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *&a1[v12] = *&a2[v12];

  *(v13 + 1) = *(v14 + 1);

  v15 = *(a3 + 24);
  v16 = &a1[v15];
  v17 = &a2[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithCopy for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(a1, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *initializeWithTake for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for EnvironmentValues.StringResolutionDate.ResolvableDate(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(a1, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t lazy protocol witness table accessor for type [Date] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    _s10Foundation4DateVSgMaTm_3(255, a2, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI32ResolvableAttributeConfigurationO8ScheduleVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ResolvableCurrentDate and conformance ResolvableCurrentDate(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ResolvableCurrentDate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized _GestureOutputs.overrideDefaultValues(_:)(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = HIDWORD(a1);
  v8 = HIDWORD(a4);
  type metadata accessor for DefaultRule<GesturePhase<()>>();
  result = AGGraphMutateAttribute();
  if (*MEMORY[0x1E698D3F8] != v8 && *MEMORY[0x1E698D3F8] != v7)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for DefaultRule<GestureDebug.Data>();
    MEMORY[0x1EEE9AC00](v11);
    result = AGGraphMutateAttribute();
  }

  v12 = *(a5 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(a2 + 16);
    v15 = a5 + 32;
    v16 = (a2 + 32);
    v17 = v14 + 1;
    do
    {
      v18 = (v15 + 24 * v13);
      v19 = *v18;
      result = *(v18 + 4);
      ++v13;
      v20 = v17;
      v21 = v16;
      while (--v20)
      {
        v22 = *v21;
        v21 += 3;
        if (v22 == v19)
        {
          result = AGGraphSetIndirectAttribute();
          break;
        }
      }
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t key path getter for LayoutGestureModifier.transform : <A>LayoutGestureModifier<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed MultiViewResponder) -> (@out A);
  a4[1] = v8;
}

uint64_t key path setter for LayoutGestureModifier.transform : <A>LayoutGestureModifier<A>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MultiViewResponder) -> (@out A);
  a2[1] = v8;
  return result;
}

uint64_t LayoutGestureModifier.transform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LayoutGestureModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LayoutGestureModifier.init(transform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static LayoutGestureModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, double *a4@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v31 = a2[2];
  v32 = v5;
  v7 = a2[3];
  v33 = a2[4];
  v8 = a2[1];
  v29 = *a2;
  v30 = v8;
  v25 = v31;
  v26 = v7;
  v27 = a2[4];
  v9 = *a1;
  v34 = *(a2 + 20);
  v28 = *(a2 + 20);
  v23 = v29;
  v24 = v6;
  a3(&v20);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v32))
  {
    v10 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v20);
    v11 = v10;
    if ((v10 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v11 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v12, 0);
    }

    type metadata accessor for LayoutGestureResponder();
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v23 = v29;
    v24 = v30;
    outlined init with copy of _ViewInputs(&v29, v22);
    swift_allocObject();
    v13 = LayoutGestureResponder.init(modifier:inputs:)(v9, &v23);
    LODWORD(v23) = v11;
    *(&v23 + 1) = v13;
    MEMORY[0x1EEE9AC00](v13);
    v18 = type metadata accessor for LayoutResponderFilter();
    WitnessTable = swift_getWitnessTable();
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v17, v18, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

    LOBYTE(v23) = 0;
    PreferencesOutputs.subscript.setter(v22[0], &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
  }

  *a4 = v20;
  result = v21;
  a4[1] = v21;
  return result;
}

uint64_t View.layoutGesture<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v4 = type metadata accessor for LayoutGestureModifier();
  View.modifier<A>(_:)(v6, a3, v4);
}

uint64_t LayoutResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter(v3);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18DDAB4D0;
    *(v5 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

id LayoutGestureResponder.init(modifier:inputs:)(int a1, uint64_t a2)
{
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 88) = a1;
  v3 = *(a2 + 48);
  *(v2 + 128) = *(a2 + 32);
  *(v2 + 144) = v3;
  *(v2 + 160) = *(a2 + 64);
  *(v2 + 176) = *(a2 + 80);
  v4 = *(a2 + 16);
  *(v2 + 96) = *a2;
  *(v2 + 112) = v4;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 184) = result;
    *(v2 + 40) = v6;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v6;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v7 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v8 = *(v7 + 208);

    swift_beginAccess();
    *(v2 + 24) = v8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LayoutGestureResponder.makeGesture(inputs:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  *v36 = a1[6];
  *&v36[12] = *(a1 + 108);
  v6 = a1[1];
  v35[0] = *a1;
  v35[1] = v6;
  v7 = a1[3];
  v35[2] = a1[2];
  v35[3] = v7;
  specialized _GestureInputs.makeDefaultOutputs<A>()(v32);
  v8 = v32[0];
  v9 = v32[1];
  v10 = v33;
  v11 = v34;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_9;
  }

  v31 = v11;
  v30 = v8;
  v12 = AGSubgraphGetCurrent();
  if (!v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = v10;
  v15 = v36[24];
  v16 = v9;
  v17 = AGSubgraphGetGraph();
  v18 = AGSubgraphCreate();

  v19 = *(v3 + 192);
  *(v3 + 192) = v18;
  v20 = v18;

  AGSubgraphAddChild2();
  if (!*(v3 + 192))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  AGSubgraphAddChild();
  v9 = v16;
  v10 = v14;
  v11 = v31;
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v21 = AGSubgraphGetGraph();
  v22 = AGSubgraphCreate();

  v23 = *(v3 + 200);
  *(v3 + 200) = v22;
  v24 = v22;

  v25 = *(v3 + 192);
  if (v25)
  {
    v26 = v25;
    AGSubgraphAddChild2();

LABEL_7:
    v27 = *(v3 + 192);
    if (v27)
    {
      v28 = v27;
      AGGraphClearUpdate();
      v29 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LODWORD(v8) = v30;
      closure #1 in LayoutGestureResponder.makeGesture(inputs:)(v3, v35, v30 | (v9 << 32), v10);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
LABEL_9:
      *a2 = v8;
      *(a2 + 4) = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = v11;
      return;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t closure #1 in LayoutGestureResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = *(*a1 + 344);
  v7 = *(*a1 + 352);
  LODWORD(v57) = *(a1 + 88);
  *(&v57 + 1) = a1;
  v54 = v6;
  v55 = type metadata accessor for LayoutGestureChild();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, partial apply for closure #1 in Attribute.init<A>(_:), v53, v55, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);

  v10 = v74;
  v11 = AGGraphGetAttributeGraph();
  if (!AGGraphGetContext())
  {
    __break(1u);
  }

  v12 = AGCreateWeakAttribute();
  v13 = v12;
  v14 = HIDWORD(v12);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = v7;
  *(v16 + 32) = v15;
  *(v16 + 40) = v13;
  *(v16 + 44) = v14;
  v17 = *(a1 + 208);
  *(a1 + 208) = partial apply for closure #1 in closure #1 in LayoutGestureResponder.makeGesture(inputs:);
  *(a1 + 216) = v16;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v17);

  v19 = *(a2 + 16);
  v20 = *(a2 + 40);
  v70 = *(a2 + 24);
  v71 = v20;
  v21 = *(a2 + 72);
  *v72 = *(a2 + 56);
  *&v72[16] = v21;
  v52[0] = *(a2 + 96);
  *(v52 + 12) = *(a2 + 108);
  v22 = *(a1 + 112);
  v74 = *(a1 + 96);
  *v75 = v22;
  v23 = *(a1 + 128);
  v24 = *(a1 + 144);
  v25 = *(a1 + 160);
  *&v75[64] = *(a1 + 176);
  *&v75[32] = v24;
  *&v75[48] = v25;
  *&v75[16] = v23;
  v26 = *(a1 + 200);
  if (v26)
  {
    v46 = *(a1 + 200);
  }

  else
  {
    v27 = *(a1 + 192);
    if (!v27)
    {
      __break(1u);
      return result;
    }

    v46 = v27;
    v26 = 0;
  }

  v28 = *(a2 + 88);
  v60 = *a2;
  v61 = v19;
  v62 = *(a2 + 24);
  v63 = *(a2 + 40);
  v64[0] = *(a2 + 56);
  *(v64 + 12) = *(a2 + 68);
  outlined init with copy of _GestureInputs(a2, &v57);
  outlined init with copy of _ViewInputs(&v74, &v57);
  v29 = v26;
  outlined destroy of _ViewInputs(&v60);
  v30 = *v75;
  v73 = v74;
  v70 = *&v75[8];
  v71 = *&v75[24];
  *v72 = *&v75[40];
  *&v72[12] = *&v75[52];
  swift_beginAccess();
  v31 = v30[3];
  v66 = v30[2];
  v67 = v31;
  v32 = v30[5];
  v68 = v30[4];
  v69 = v32;
  v65 = v30[1];
  outlined init with copy of CachedEnvironment(&v65, &v57);

  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  inited = swift_initStackObject();
  v35 = v68;
  v34 = v69;
  inited[3] = v67;
  inited[4] = v35;
  inited[5] = v34;
  v36 = v66;
  inited[1] = v65;
  inited[2] = v36;
  _GraphValue.init(_:)(v10, &v49);
  v37 = *(a2 + 80);
  *&v58[48] = *(a2 + 64);
  *&v58[64] = v37;
  v59[0] = *(a2 + 96);
  *(v59 + 12) = *(a2 + 108);
  v38 = *(a2 + 16);
  v57 = *a2;
  *v58 = v38;
  v39 = *(a2 + 48);
  *&v58[16] = *(a2 + 32);
  *&v58[32] = v39;
  (*(v7 + 32))(v50, &v49, &v57, v6, v7);
  if ((*(a2 + 120) & 8) != 0 && (!swift_conformsToProtocol2() || !v6))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    LOBYTE(v49) = v40;
    v41 = *(a2 + 80);
    *&v58[48] = *(a2 + 64);
    *&v58[64] = v41;
    v59[0] = *(a2 + 96);
    *(v59 + 12) = *(a2 + 108);
    v42 = *(a2 + 16);
    v57 = *a2;
    *v58 = v42;
    v43 = *(a2 + 48);
    *&v58[16] = *(a2 + 32);
    *&v58[32] = v43;
    v44 = HIDWORD(v50[0]) == *MEMORY[0x1E698D3F8];
    if (HIDWORD(v50[0]) == *MEMORY[0x1E698D3F8])
    {
      v45 = 0;
    }

    else
    {
      v45 = HIDWORD(v50[0]);
    }

    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _GestureOutputs<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for _GestureOutputs);
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v6, &v49, 0x100000000, &v57, v45 | (v44 << 32), 0x100000000);
  }

  specialized _GestureOutputs.overrideDefaultValues(_:)(v50[0], v50[1], v51, a3, a4);

  v57 = v73;
  *&v58[8] = v70;
  *&v58[24] = v71;
  *&v58[40] = *v72;
  *&v58[56] = *&v72[16];
  *v58 = inited;
  *&v58[72] = v46;
  v59[0] = v52[0];
  *(v59 + 12) = *(v52 + 12);
  return outlined destroy of _GestureInputs(&v57);
}

uint64_t closure #1 in closure #1 in LayoutGestureResponder.makeGesture(inputs:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(&v6);
    default argument 3 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(&v5);
    v4 = v5;
    GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)(0, &v6, a2, &v4, 1);
  }

  return result;
}

uint64_t LayoutGestureResponder.childrenDidChange()()
{
  v1 = *(v0 + 208);
  if (v1)
  {

    v1(v2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  }

  swift_beginAccess();
  v3 = *(v0 + 80);
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      outlined init with copy of ContentPathObservers.Observer(v5, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = v10;
        ObjectType = swift_getObjectType();
        (*(v6 + 8))(v0, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      outlined destroy of ContentPathObservers.Observer(v9);
      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return swift_endAccess();
}

uint64_t LayoutGestureResponder.resetGesture()()
{
  v1 = v0[26];
  v0[26] = 0;
  v0[27] = 0;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1);
  v2 = v0[24];
  v0[24] = 0;

  v3 = v0[25];
  v0[25] = 0;

  result = swift_beginAccess();
  v5 = v0[5];
  if (v5 >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AC03C0](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      (*(*v8 + 120))();
    }
  }

  return result;
}

uint64_t LayoutGestureResponder.__ivar_destroyer()
{
  v1 = *(v0 + 144);
  v4[2] = *(v0 + 128);
  v4[3] = v1;
  v4[4] = *(v0 + 160);
  v5 = *(v0 + 176);
  v2 = *(v0 + 112);
  v4[0] = *(v0 + 96);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 208));
}

uint64_t LayoutGestureResponder.deinit()
{
  outlined destroy of weak ViewGraphDelegate?(v0 + 16);
  swift_weakDestroy();

  v1 = *(v0 + 144);
  v4[2] = *(v0 + 128);
  v4[3] = v1;
  v4[4] = *(v0 + 160);
  v5 = *(v0 + 176);
  v2 = *(v0 + 112);
  v4[0] = *(v0 + 96);
  v4[1] = v2;
  outlined destroy of _ViewInputs(v4);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v0 + 208));
  return v0;
}

uint64_t LayoutGestureResponder.__deallocating_deinit()
{
  LayoutGestureResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t LayoutGestureChild.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for LayoutGestureModifier();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t LayoutGestureChild.value.getter(uint64_t a1, uint64_t a2)
{
  LayoutGestureChild.modifier.getter(&v4);
  v4(a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MultiViewResponder) -> (@out A)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t BaseDateProvider.updateConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 updateType];
  if (v3 <= 1)
  {
    if (!v3)
    {
      v15 = [v1 updateInterval];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
        v18 = MEMORY[0x193ABF490]();
      }

      else
      {
        v18 = 0.0;
      }

      *a1 = v18;
      *(a1 + 8) = v16 == 0;
      type metadata accessor for ResolvableAttributeConfiguration(0);
      goto LABEL_27;
    }

    if (v3 != 1)
    {
      goto LABEL_15;
    }

    v8 = [v1 updateWallClockAlignment];
    if (!v8)
    {
      static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v40 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_18DDAF080;
      v21 = MEMORY[0x1E69E6158];
      *(v41 + 56) = MEMORY[0x1E69E6158];
      v42 = lazy protocol witness table accessor for type String and conformance String();
      *(v41 + 64) = v42;
      *(v41 + 32) = 0xD000000000000020;
      *(v41 + 40) = 0x800000018DD7FB40;
      v43 = v40;
      v44 = StaticString.description.getter();
      *(v41 + 96) = v21;
      *(v41 + 104) = v42;
      *(v41 + 72) = v44;
      *(v41 + 80) = v45;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v41 + 136) = v21;
      *(v41 + 144) = v42;
      *(v41 + 112) = v46;
      *(v41 + 120) = v47;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v29 = 0x800000018DD7FB70;
      v30 = 0xD000000000000023;
      goto LABEL_33;
    }

    *a1 = v8;
    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v11 = [v1 timerInterval];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for (interval: DateInterval, countdown: Bool)();
          v14 = *(v13 + 48);
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          *(a1 + v14) = 1;
          goto LABEL_15;
        }
      }

      else
      {
        if (v3 != 4)
        {
          goto LABEL_15;
        }

        v4 = [v1 timerInterval];
        if (v4)
        {
          v5 = v4;
          type metadata accessor for (interval: DateInterval, countdown: Bool)();
          v7 = *(v6 + 48);
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          *(a1 + v7) = 0;
LABEL_15:
          type metadata accessor for ResolvableAttributeConfiguration(0);
          goto LABEL_27;
        }
      }

      static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_18DDAF080;
      v21 = MEMORY[0x1E69E6158];
      *(v20 + 56) = MEMORY[0x1E69E6158];
      v22 = lazy protocol witness table accessor for type String and conformance String();
      *(v20 + 64) = v22;
      *(v20 + 32) = 0xD00000000000001ALL;
      *(v20 + 40) = 0x800000018DD7FAC0;
      v23 = v19;
      v24 = StaticString.description.getter();
      *(v20 + 96) = v21;
      *(v20 + 104) = v22;
      *(v20 + 72) = v24;
      *(v20 + 80) = v25;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v20 + 136) = v21;
      *(v20 + 144) = v22;
      *(v20 + 112) = v26;
      *(v20 + 120) = v27;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v29 = 0x800000018DD7FAE0;
      v30 = 0xD00000000000001DLL;
LABEL_33:
      v50 = v30;
      v51 = v29;
      v48 = StaticString.description.getter();
      MEMORY[0x193ABEDD0](v48);

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v49);

      MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
      *(v28 + 56) = v21;
      *(v28 + 32) = v50;
      *(v28 + 40) = v51;
      print(_:separator:terminator:)();

      type metadata accessor for ResolvableAttributeConfiguration(0);
      return swift_storeEnumTagMultiPayload();
    }

    v9 = [v1 timerEndDate];
    if (!v9)
    {
      static os_log_type_t.fault.getter();
      if (one-time initialization token for internalErrorsLog != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v31 = static Log.internalErrorsLog;
      _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_18DDAF080;
      v21 = MEMORY[0x1E69E6158];
      *(v32 + 56) = MEMORY[0x1E69E6158];
      v33 = lazy protocol witness table accessor for type String and conformance String();
      *(v32 + 64) = v33;
      *(v32 + 32) = 0xD000000000000015;
      *(v32 + 40) = 0x800000018DD7FB00;
      v34 = v31;
      v35 = StaticString.description.getter();
      *(v32 + 96) = v21;
      *(v32 + 104) = v33;
      *(v32 + 72) = v35;
      *(v32 + 80) = v36;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      *(v32 + 136) = v21;
      *(v32 + 144) = v33;
      *(v32 + 112) = v37;
      *(v32 + 120) = v38;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for _ContiguousArrayStorage<Any>();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_18DDA6EB0;
      _StringGuts.grow(_:)(38);

      v29 = 0x800000018DD7FB20;
      v30 = 0xD000000000000018;
      goto LABEL_33;
    }

    v10 = v9;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ResolvableAttributeConfiguration(0);
  }

LABEL_27:

  return swift_storeEnumTagMultiPayload();
}

id DateFormattingContext.init(_:)(uint64_t a1)
{
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  outlined init with copy of Date?(a1, &v14 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v8 = a1 + *(type metadata accessor for ResolvableStringResolutionContext(0) + 20);
  v9 = *v8;
  if (*(v8 + 8))
  {

    v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(v9);
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(*v8);
    if (v11)
    {
      v10 = *(v11 + 72);
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithReferenceDate:isa isLuminanceReduced:v10 & 1];

  outlined destroy of ResolvableStringResolutionContext(a1);
  return v12;
}

uint64_t protocol witness for ConfigurationBasedResolvableStringAttributeRepresentation.invalidationConfiguration.getter in conformance ResolvableCurrentDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = ResolvableCurrentDate.provider.getter();
  if (v5)
  {
    v6 = v5;
    BaseDateProvider.updateConfiguration.getter(v4);

    return outlined init with take of ResolvableAttributeConfiguration(v4, a1);
  }

  else
  {

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t outlined init with take of ResolvableAttributeConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableAttributeConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ResolvableStringResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for ResolvableStringResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_10Foundation16AttributedStringV16WritingDirectionOSgs5NeverOTg5066_s7SwiftUI4TextV18ResolvedPropertiesV9ParagraphVAAE29languageBasedg61Direction030_7AFAB46D18FA6D189589CFA78D8B2Q1ELL10Foundation16eF19V0iJ0OSgyFAOSSXEfU_Tf1cn_n(uint64_t a1)
{
  v37 = type metadata accessor for Locale.Language();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Locale();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v28 = v1;
    v40 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v39 = v40;
    v9 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v32 = (v5 + 8);
    v33 = (v3 + 8);
    v29 = a1 + 64;
    v30 = v7;
    v31 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      v38 = *(a1 + 36);
      swift_bridgeObjectRetain_n();
      v14 = v34;
      Locale.init(identifier:)();
      v15 = v36;
      Locale.language.getter();
      v16 = Locale.Language.characterDirection.getter();
      (*v33)(v15, v37);
      (*v32)(v14, v35);

      if (v16 >= 5)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0x100010002uLL >> (8 * v16);
      }

      v18 = v39;
      v40 = v39;
      v20 = *(v39 + 16);
      v19 = *(v39 + 24);
      if (v20 >= v19 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + v20 + 32) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_26;
      }

      v9 = v31;
      v21 = *(v31 + 8 * v13);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      v39 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v13 << 6;
        v24 = v13 + 1;
        v25 = (v29 + 8 * v13);
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v10, v38, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v30)
      {
        return v39;
      }
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
  }

  return result;
}

uint64_t Text.ResolvedProperties.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = v2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_18DD85510;

  v4 = MEMORY[0x1E69E7CD0];
  *(a1 + 112) = v2;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = v4;
  *(a1 + 152) = 3;
  return result;
}

uint64_t Text.Resolved.init()@<X0>(uint64_t a1@<X8>)
{
  Text.Style.init()(a1);
  v2 = type metadata accessor for Text.Resolved(0);
  *(a1 + v2[5]) = 0;
  *(a1 + v2[6]) = 1;
  v3 = (a1 + v2[7]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[8];
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v5;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0;
  *(v4 + 96) = xmmword_18DD85510;
  *(v4 + 112) = v5;

  v7 = MEMORY[0x1E69E7CD0];
  *(v4 + 112) = v5;
  *(v4 + 120) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 128) = v7;
  *(v4 + 152) = 3;
  return result;
}

void *Text.Resolved.finalized(in:)(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Text.Resolved(0) + 20));
  if (v3)
  {
    v5 = *a1;
    v4 = a1[1];
    v6 = v3;
    v7 = [v6 length];

    v9[0] = v5;
    v9[1] = v4;
    Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(v7, v6, v9);
  }

  return v3;
}

Swift::Void __swiftcall Text.ResolvedProperties.registerCustomAttachment(at:)(Swift::Int at)
{
  v3 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
    *(v1 + 112) = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  *&v3[8 * v6 + 32] = at;
  *(v1 + 112) = v3;
}

float *Text.ResolvedProperties.addColor(_:)(float *result)
{
  v2 = *(v1 + 32);
  if ((v2 & 1) == 0 && *result == -1.0 && result[1] == -1.0)
  {
    *(v1 + 32) = v2 | 1;
  }

  return result;
}

__int128 *Text.Style.LineStyle.resolve(in:fallbackStyle:)@<X0>(__int128 *result@<X0>, void *(*a2)(__int128 *__return_ptr)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[1];
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  v6 = *result;
  v7 = *v3;
  v8 = *v3;
  v9 = v3[1];
  if (v5 == 1)
  {
    v14 = *result;
    result = a2(&v17);
    v9 = *(&v17 + 1);
    if (*(&v17 + 1) == 1)
    {
LABEL_4:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 21) = 0;
      *(a3 + 16) = 0;
      *(a3 + 29) = 1;
      return result;
    }

    v8 = v17;
    v6 = v14;
  }

  if (v9)
  {
    v16 = v6;
    v10 = *(*v9 + 120);
    outlined copy of Text.Style.LineStyle(v7, v5);

    v10(&v17, &v16);
    v15 = v17;
    v11 = v18;

    v12 = v15;
    v13 = 0;
  }

  else
  {
    result = outlined copy of Text.Style.LineStyle(v7, v5);
    v11 = 0;
    v12 = 0uLL;
    v13 = 0x100000000;
  }

  *a3 = v8;
  *(a3 + 8) = v12;
  *(a3 + 28) = BYTE4(v13);
  *(a3 + 24) = v13 | v11;
  *(a3 + 29) = 0;
  return result;
}

id Text.ResolvedProperties.Paragraph.style(environment:alignment:writingDirection:lineHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4[2];
  if (!v12)
  {
    v15 = *a1;
    v14 = *(a1 + 8);
    v25 = v15;
    v26 = v14;

    ParagraphStyleResolutionContext.init(_:)(&v25, v11);
    LOBYTE(v25) = 0;
    v24 = 1;
    v16 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v11, a2, &v25, a3, &v24, a4);
    outlined destroy of ParagraphStyleResolutionContext(v11, type metadata accessor for ParagraphStyleResolutionContext);
    [v16 setCompositionLanguage_];
    if (v14)
    {

      ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v15);

      if ((ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v25 = v15;
      v26 = 0;

      v18 = specialized static ShouldRedactContentKey.value(in:)(&v25);

      if (!v18)
      {
LABEL_15:
        v4[2] = v16;
        v13 = v16;
        goto LABEL_16;
      }
    }

    [v16 setFullyJustified_];
    if ([v16 baseWritingDirection] == -1)
    {
      if (v14)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v15, &v25);

        v19 = v25;
      }

      else
      {
        v20 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v15);
        if (v20)
        {
          v19 = *(v20 + 72);
        }

        else
        {
          v19 = 0;
        }
      }

      [v16 setBaseWritingDirection_];
    }

    [v16 setLineBreakMode_];
    goto LABEL_15;
  }

  v13 = v4[2];
LABEL_16:
  v21 = v12;
  return v13;
}

uint64_t Text.ResolvedProperties.CustomAttachments.init(characterIndices:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t Text.ResolvedProperties.Transition.init(transition:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  v4 = *(result + 14);
  *a2 = *result;
  *(a2 + 12) = v3;
  *(a2 + 8) = v2;
  *(a2 + 14) = v4;
  return result;
}

uint64_t Text.Style.addFontModifier<A>(type:)(uint64_t a1)
{
  type metadata accessor for AnyFontModifier();
  static AnyFontModifier.static<A>(_:)(a1);
  MEMORY[0x193ABF170]();
  if (*((*(v1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

Swift::Void __swiftcall Text.ResolvedProperties.addSensitive()()
{
  v1 = *(v0 + 32);
  if ((v1 & 4) == 0)
  {
    *(v0 + 32) = v1 | 4;
  }
}

uint64_t SwiftUITextAttachment.draw(in:at:)(uint64_t *a1, double a2, double a3)
{
  v4 = v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage;
  v5 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_graphicsImage + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v8 = *(v4 + 32);
    if (*(v4 + 40) > 3u)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = *(v4 + 32);
      v8 = *(v4 + 24);
    }

    v10 = 1.0 / v5;
    v6 = v10 * v8;
    v7 = v10 * v9;
  }

  v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin) + a2;
  v12 = *(v3 + OBJC_IVAR____TtC7SwiftUI21SwiftUITextAttachment_alignmentOrigin + 8) + a3;
  v13 = *(v4 + 48);
  v14 = *(v4 + 80);
  v34 = *(v4 + 64);
  v35[0] = v14;
  *(v35 + 12) = *(v4 + 92);
  v15 = *(v4 + 16);
  v31[0] = *v4;
  v31[1] = v15;
  v16 = *(v4 + 48);
  v18 = *v4;
  v17 = *(v4 + 16);
  v32 = *(v4 + 32);
  v33 = v16;
  v19 = *(v4 + 80);
  v29 = v34;
  v30[0] = v19;
  *(v30 + 12) = *(v4 + 92);
  v25 = v18;
  v26 = v17;
  v20 = *a1;
  v27 = v32;
  v28 = v13;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24 = -1;
  outlined init with copy of GraphicsImage(v31, v36);
  GraphicsContext.draw(_:in:style:shading:)(&v25, v11, v12, v6, v7, 256, v22, v20);
  v36[4] = v29;
  v37[0] = v30[0];
  *(v37 + 12) = *(v30 + 12);
  v36[0] = v25;
  v36[1] = v26;
  v36[2] = v27;
  v36[3] = v28;
  return outlined destroy of GraphicsImage(v36);
}

uint64_t Text.Resolved.includeDefaultAttributes.setter(char a1)
{
  result = type metadata accessor for Text.Resolved(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

__n128 Text.Resolved.idiom.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for Text.Resolved(0) + 28));
  *a1 = result;
  return result;
}

uint64_t Text.Resolved.idiom.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for Text.Resolved(0);
  v5 = (v1 + *(result + 28));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t Text.Resolved.properties.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Text.Resolved(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  *(a1 + 137) = *(v3 + 137);
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v5;
  *a1 = v14;
  a1[1] = v9;
  return outlined init with copy of Text.ResolvedProperties(v17, &v16);
}

__n128 Text.Resolved.properties.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Text.Resolved(0) + 32));
  v4 = v3[7];
  v13[6] = v3[6];
  v13[7] = v4;
  v14[0] = v3[8];
  *(v14 + 9) = *(v3 + 137);
  v5 = v3[3];
  v13[2] = v3[2];
  v13[3] = v5;
  v6 = v3[5];
  v13[4] = v3[4];
  v13[5] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  outlined destroy of Text.ResolvedProperties(v13);
  v8 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v8;
  v3[8] = *(a1 + 128);
  *(v3 + 137) = *(a1 + 137);
  v9 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v9;
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  return result;
}

void Text.ResolvedProperties.markParagraphBoundary(at:in:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(v3 + 144);
  v15[0] = *a3;
  v15[1] = v5;
  v8 = Text.ResolvedProperties.Paragraph.markParagraphBoundary(at:in:environment:)(a1, a2, v15);
  if (v8)
  {
    if (v7 && *(v3 + 152) == 3)
    {
    }

    else
    {
      v13 = v8;
      if (v5)
      {

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v6, v15);

        v9 = v15[0];
      }

      else
      {
        v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v6);
        if (v10)
        {
          v9 = *(v10 + 72);
        }

        else
        {
          v9 = 0;
        }
      }

      v14 = v9;
      v11.value = NSParagraphStyle.textAlignment(for:)(&v14).value;

      if (v11.value != SwiftUI_TextAlignment_unknownDefault)
      {
        v12 = *(v4 + 152);
        if (v12 == 3 || v12 == v11.value)
        {
          *(v4 + 152) = v11;
        }

        else
        {
          *(v4 + 152) = 3;
        }
      }
    }
  }
}

id Text.Resolved.nsAttributes(content:in:with:properties:)(uint64_t (*a1)(void), uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v13 = *a3;
  v10 = *(v5 + *(type metadata accessor for Text.Resolved(0) + 24));
  v12 = v9;
  return Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(a1, a2, &v13, v10, &v12, a5);
}

Swift::Void __swiftcall Text.ResolvedProperties.addAttachment()()
{
  v1 = *(v0 + 32);
  if ((v1 & 2) == 0)
  {
    *(v0 + 32) = v1 | 2;
  }
}

uint64_t Text.Resolved.append(_:in:with:)(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *a3;
  if ((*a3 & 4) != 0)
  {
    v5 = result;
    v6 = *a2;
    v7 = a2[1];
    v8 = static String._uncheckedFromUTF8(_:)();
    v10 = v9;
    *&v24 = v6;
    *(&v24 + 1) = v7;
    v11 = type metadata accessor for Text.Resolved(0);
    v12 = *(v3 + *(v11 + 24));
    *&v28[0] = v4;
    v13 = v3 + *(v11 + 32);
    v14 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, &v24, v12, v28, v13);
    if (v7)
    {

      ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA019ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5(v6);

      if (ShouldRedactContentJ0027_18671928047E57F039DC339288P4FAFBLLVG_Tt1g5)
      {
LABEL_11:
        *&v24 = v6;
        *(&v24 + 1) = v7;
        Text.Resolved.append(_:with:in:)(v8, v10, v14, &v24);

        v23 = *(v13 + 32);
        if ((v23 & 2) == 0)
        {
          *(v13 + 32) = v23 | 2;
        }

        return result;
      }
    }

    else
    {
      v24 = v6;

      v16 = specialized static ShouldRedactContentKey.value(in:)(&v24);

      if (v16)
      {
        goto LABEL_11;
      }
    }

    v17 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    *&v28[0] = v6;
    *(&v28[0] + 1) = v7;
    if (EnvironmentValues.resolvedTextProvider.getter())
    {
      v19 = v5[1];
      v24 = *v5;
      v25 = v19;
      v26 = v5[2];
      (*(v18 + 16))(v17, &v24);
    }

    if (one-time initialization token for kitAttachment != -1)
    {
      swift_once();
    }

    v20 = static NSAttributedStringKey.kitAttachment;
    *(&v25 + 1) = type metadata accessor for NSTextAttachment();
    *&v24 = v17;
    outlined init with take of Any(&v24, v28);
    v21 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v20, isUniquelyReferenced_nonNull_native);

    v14 = v27;
    goto LABEL_11;
  }

  return result;
}

uint64_t Text.Resolved.append<A>(resolvable:in:with:transition:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, char **a6)
{
  v7 = v6;
  v14 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v17 = *(a2 + 8);
  v19 = *a3;
  v20 = *a4;
  v21 = *(a4 + 8) | ((*(a4 + 12) | (*(a4 + 14) << 16)) << 32);
  outlined init with copy of Text.Style(v7, v16, type metadata accessor for Text.Style);
  if (*(v16 + 39))
  {
    v22 = 1;
  }

  else
  {
    v22 = (v21 & 0xFF000000000000) == 0x2000000000000;
  }

  if (!v22)
  {
    v36 = v19;
    type metadata accessor for TextTransitionModifier();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 28) = BYTE4(v21);
    *(v23 + 24) = v21;
    *(v23 + 29) = BYTE5(v21);
    *(v23 + 30) = 1;
    *(v16 + 39) = v23;
    v19 = v36;
    outlined copy of ContentTransition.Storage(v20, v21, SBYTE5(v21));
  }

  if (v17)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5(v18, &v38);

    if (v38)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(v18);
    if (v24 && (v24[9] & 1) != 0)
    {
LABEL_16:
      v38 = v18;
      v39 = v17;
      v25 = type metadata accessor for Text.Resolved(0);
      v34 = *(v7 + v25[6]);
      v37 = v19;
      v27 = static ResolvableTextSegmentAttribute.buildStaticTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, v16, &v38, v34, &v37, v7 + v25[8], a5, a6);
      if (!v27)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  v38 = v18;
  v39 = v17;
  v25 = type metadata accessor for Text.Resolved(0);
  v26 = *(v7 + v25[6]);
  v37 = v19;
  v27 = static ResolvableTextSegmentAttribute.buildDynamicTextSegment<A>(for:style:environment:includeDefaultAttributes:options:properties:)(a1, v16, &v38, v26, &v37, v7 + v25[8], a5, a6);
  if (!v27)
  {
LABEL_17:
    MEMORY[0x1EEE9AC00](v27);
    *(&v36 - 4) = a5;
    *(&v36 - 3) = a6;
    *(&v36 - 2) = a1;
    specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in Text.Resolved.append<A>(resolvable:in:with:transition:));
    return outlined destroy of ParagraphStyleResolutionContext(v16, type metadata accessor for Text.Style);
  }

LABEL_12:
  v28 = v27;
  type metadata accessor for Text.Resolved(0);
  v29 = v25[5];
  v30 = *(v7 + v29);
  if (v30)
  {
    v31 = v28;
    v32 = v30;
    [v32 appendAttributedString_];
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

    *(v7 + v29) = v33;
  }

  return outlined destroy of ParagraphStyleResolutionContext(v16, type metadata accessor for Text.Style);
}

uint64_t protocol witness for ResolvedTextContainer.properties.getter in conformance Text.Resolved@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[7];
  v5 = v3[5];
  v22 = v3[6];
  v23 = v4;
  v6 = v3[7];
  v24[0] = v3[8];
  *(v24 + 9) = *(v3 + 137);
  v7 = v3[3];
  v9 = v3[1];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a2[6] = v22;
  a2[7] = v6;
  a2[8] = v3[8];
  *(a2 + 137) = *(v3 + 137);
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v5;
  *a2 = v14;
  a2[1] = v9;
  return outlined init with copy of Text.ResolvedProperties(v17, &v16);
}

__n128 protocol witness for ResolvedTextContainer.properties.setter in conformance Text.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 32));
  v5 = v4[7];
  v14[6] = v4[6];
  v14[7] = v5;
  v15[0] = v4[8];
  *(v15 + 9) = *(v4 + 137);
  v6 = v4[3];
  v14[2] = v4[2];
  v14[3] = v6;
  v7 = v4[5];
  v14[4] = v4[4];
  v14[5] = v7;
  v8 = v4[1];
  v14[0] = *v4;
  v14[1] = v8;
  outlined destroy of Text.ResolvedProperties(v14);
  v9 = *(a1 + 112);
  v4[6] = *(a1 + 96);
  v4[7] = v9;
  v4[8] = *(a1 + 128);
  *(v4 + 137) = *(a1 + 137);
  v10 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v10;
  v11 = *(a1 + 80);
  v4[4] = *(a1 + 64);
  v4[5] = v11;
  result = *a1;
  v13 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v13;
  return result;
}

uint64_t Text.ResolvedString.append<A>(resolvable:in:with:transition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v48 = a6;
  v49 = a1;
  v46 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AttributedString();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v42 - v14;
  _s10Foundation16AttributedStringV8CoreTextE18AdaptiveImageGlyphVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for ResolvableStringResolutionContext(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  v23 = *(a2 + 8);
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v25(v17, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v26 = v11;
  v27 = v47;
  v28 = &v21[*(v19 + 32)];

  outlined assign with take of Date?(v17, v21);
  v29 = *(v19 + 28);
  v31 = v48;
  v30 = v49;
  v32 = &v21[v29];
  *v32 = v22;
  *(v32 + 1) = v23;
  *v28 = 0;
  v28[8] = 1;
  v33 = v50;
  (*(v31 + 40))(v21, v50, v31);
  if ((*(v27 + 48))(v10, 1, v26) == 1)
  {
    v34 = outlined destroy of AttributedString?(v10);
    MEMORY[0x1EEE9AC00](v34);
    *(&v42 - 4) = v33;
    *(&v42 - 3) = v31;
    *(&v42 - 2) = v30;
    specialized static Log.internalWarning(_:)(partial apply for implicit closure #1 in Text.ResolvedString.append<A>(resolvable:in:with:transition:));
  }

  else
  {
    v35 = v44;
    (*(v27 + 32))(v44, v10, v26);
    *(v51 + *(type metadata accessor for Text.ResolvedString(0) + 28)) = 1;
    v36 = v43;
    (*(v27 + 16))(v43, v35, v26);
    AttributedString.characters.getter();
    _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_1(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v37 = String.init<A>(_:)();
    v39 = v38;
    v40 = *(v27 + 8);
    v40(v36, v26);
    specialized ResolvedTextContainer.append<A>(_:in:with:)(v37, v39, v22, v23);

    v40(v35, v26);
  }

  return outlined destroy of ParagraphStyleResolutionContext(v21, type metadata accessor for ResolvableStringResolutionContext);
}