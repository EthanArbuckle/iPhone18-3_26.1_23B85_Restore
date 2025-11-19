uint64_t (*GridLayout.Cache.subscript.modify())(void, void, void, void)
{
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

{
  return destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
}

uint64_t outlined destroy of SymbolEffectOptions.RepeatOption?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

float _SymbolEffect.ReplaceConfiguration.init(_:options:allowMagic:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for ReplaceSymbolEffect.ReplaceStyle();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28[-v16];
  v18 = ScaleSymbolEffect.isLayered.getter();
  v29 = (v18 == 2) | v18 & 1;
  SymbolEffectOptions.speed.getter();
  v20 = v19;
  BreatheSymbolEffect.style.getter();
  v21 = type metadata accessor for SymbolEffectOptions();
  (*(*(v21 - 8) + 8))(a2, v21);
  v22 = type metadata accessor for ReplaceSymbolEffect();
  (*(*(v22 - 8) + 8))(a1, v22);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of SymbolEffectOptions.RepeatOption?(v10, &lazy cache variable for type metadata for ReplaceSymbolEffect.ReplaceStyle?, MEMORY[0x1E6982168]);
LABEL_3:
    v23 = 0;
    goto LABEL_10;
  }

  v24 = *(v12 + 32);
  v24(v17, v10, v11);
  v24(v14, v17, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == *MEMORY[0x1E6982160])
  {
    v23 = 2;
  }

  else if (v25 == *MEMORY[0x1E6982150])
  {
    v23 = 3;
  }

  else
  {
    if (v25 != *MEMORY[0x1E6982158])
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_3;
    }

    v23 = 4;
  }

LABEL_10:
  if ((a3 & 1) == 0)
  {
    v23 |= 0xE0u;
  }

  v26 = v29;
  *a4 = v23;
  result = v20;
  *(a4 + 4) = v26;
  *(a4 + 8) = result;
  return result;
}

uint64_t GridLayout.Cache.reassignAvailability(in:at:)(uint64_t result, unint64_t *a2)
{
  v9 = a2;
  v10 = v2 + 104;
  if (result)
  {
    v10 = v2 + 112;
  }

  v11 = *v10;
  v12 = *(*v10 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v14 = (v11 + 92);
    v15 = v12;
    v16 = 0;
    do
    {
      v17 = *v14;
      v14 += 16;
      v18 = v17 != 0;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      --v15;
    }

    while (v15);
    if (v16 > 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        goto LABEL_66;
      }

      v6 = a2;
      if (v12 <= a2)
      {
        goto LABEL_67;
      }

      v20 = v13 + (a2 << 6);
      v7 = *(v20 + 48);
      v8 = *(v20 + 32);
      v48 = result & 1;
      v3 = GridLayout.Cache.subscript.modify();
      v5 = v21;
      v4 = *v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v4;
      if ((result & 1) == 0)
      {
        goto LABEL_68;
      }

      while (*(v4 + 16) > v6)
      {
        v42 = v16;
        v7 = v7 - v8;
        *(v4 + (v6 << 6) + 80) = *(v4 + (v6 << 6) + 80) - v7;
        (v3)(v49, 0);
        v22 = (v2 + 120);
        v23 = v48;
        if (v48)
        {
          v22 = (v2 + 128);
        }

        result = *v22;
        v16 = *(*v22 + 16);
        if (v16)
        {
          v5 = result + 32;

          v25 = 0;
          v45 = v24;
          v46 = v9;
          v43 = v5;
          v44 = v16;
          while (v25 < *(v24 + 16))
          {
            v26 = (v5 + 24 * v25);
            v3 = *v26;
            v4 = *(v26 + 1);
            if (v3 <= v9 && v4 > v9)
            {
              v47 = v25;
              v16 = v3;
              v28 = v4;
              if (v7 > v26[1])
              {
                v8 = v7;
              }

              else
              {
                v8 = v26[1];
              }

              v5 = v48;
              v29 = specialized Sequence.reduce<A>(_:_:)(0, v3 | (v4 << 32), v2, v48);
              if (v3 != v4)
              {
                v30 = v48;
                v31 = v8 / v29;
                v32 = v3 << 6;
                v3 = (v4 - v3);
                while (v16 < v28)
                {
                  if (v6 != v16)
                  {
                    v33 = (v2 + 104);
                    if (v30)
                    {
                      v33 = (v2 + 112);
                    }

                    if (v16 < 0)
                    {
                      goto LABEL_59;
                    }

                    v34 = *v33;
                    if (*(v34 + 16) <= v16)
                    {
                      goto LABEL_60;
                    }

                    if (*(v34 + v32 + 92))
                    {
                      v9 = v6;
                      v4 = GridLayout.Cache.subscript.modify();
                      v6 = v35;
                      v5 = *v35;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *v6 = v5;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                        *v6 = v5;
                      }

                      if (*(v5 + 16) <= v16)
                      {
                        goto LABEL_62;
                      }

                      v6 = v9;
                      *(v5 + v32 + 80) = v31 + *(v5 + v32 + 80);
                      (v4)(v49, 0);
                      v30 = v48;
                    }
                  }

                  v32 += 64;
                  ++v16;
                  v3 = (v3 - 1);
                  if (!v3)
                  {
                    goto LABEL_16;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

LABEL_16:
              v7 = v7 - v8;
              v24 = v45;
              v9 = v46;
              v5 = v43;
              v16 = v44;
              v25 = v47;
            }

            if (++v25 == v16)
            {

              v23 = v48;
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          if (v23)
          {
            v9 = *(*(v2 + 112) + 16);
            if (!v9)
            {
              return result;
            }
          }

          else
          {
            v9 = *(*(v2 + 104) + 16);
            if (!v9)
            {
              return result;
            }
          }

          v4 = 0;
          v5 = 0;
          v7 = v7 / v42;
          v6 = v49;
          while (1)
          {
            v37 = (v2 + 104);
            if (v23)
            {
              v37 = (v2 + 112);
            }

            v38 = *v37;
            if (v5 >= *(v38 + 16))
            {
              break;
            }

            if (*(v38 + v4 + 92))
            {
              v39 = GridLayout.Cache.subscript.modify();
              v3 = v40;
              v16 = *v40;
              v41 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v16;
              if ((v41 & 1) == 0)
              {
                v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
                *v3 = v16;
              }

              if (v5 >= *(v16 + 16))
              {
                goto LABEL_65;
              }

              *(v16 + v4 + 80) = v7 + *(v16 + v4 + 80);
              result = v39(v49, 0);
              v23 = v48;
            }

            ++v5;
            v4 += 64;
            if (v9 == v5)
            {
              return result;
            }
          }

LABEL_63:
          __break(1u);
        }

        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
        *v5 = result;
      }

      __break(1u);
    }
  }

  return result;
}

void GridLayout.Cache.finalizeSizes()()
{
  finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()((v0 + 15), v0 + 13);
  finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()((v0 + 16), v0 + 14);
  v1 = v0[17];
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_64:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v3 = 0;
    v4 = v0[13];
    v5 = v0[14];
    do
    {
      if (v3 == v2)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
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
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
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
        goto LABEL_64;
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_46;
      }

      v6 = &v1[104 * v3 + 32];
      v7 = *v6;
      v8 = *(v6 + 2);
      if (v8 < v7)
      {
        goto LABEL_47;
      }

      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_48;
      }

      v9 = *(v4 + 16);
      if (v9 <= v7)
      {
        goto LABEL_49;
      }

      v10 = *(v6 + 1);
      v11 = *(v6 + 3);
      v12 = *(v4 + 32 + (v7 << 6) + 32);
      if (v8 != v7)
      {
        if (v7 == 0x7FFFFFFF)
        {
          goto LABEL_55;
        }

        if (v8 < v7 + 1)
        {
          goto LABEL_56;
        }

        if (v8 <= v7)
        {
          goto LABEL_53;
        }

        if (v7 + 1 != v8)
        {
          v13 = v9 + ~v7;
          v14 = v8 - v7 - 2;
          if (v13 >= v14)
          {
            v15 = v8 - v7 - 2;
          }

          else
          {
            v15 = v13;
          }

          if (v15 >= (v8 + ~v7))
          {
            goto LABEL_60;
          }

          if (v13 <= v14)
          {
            goto LABEL_61;
          }

          v16 = (v4 + 128 + (v7 << 6));
          v17 = ~v7 + v8;
          do
          {
            v18 = *(v16 - 4);
            v19 = *v16;
            v16 += 8;
            v12 = v12 + v18 + v19;
            --v17;
          }

          while (v17);
        }
      }

      if (v11 < v10)
      {
        goto LABEL_50;
      }

      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_51;
      }

      v20 = *(v5 + 16);
      if (v20 <= v10)
      {
        goto LABEL_52;
      }

      v21 = *(v5 + 32 + (v10 << 6) + 32);
      if (v11 != v10)
      {
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_57;
        }

        if (v11 < v10 + 1)
        {
          goto LABEL_58;
        }

        if (v11 <= v10)
        {
          goto LABEL_54;
        }

        if (v10 + 1 != v11)
        {
          v22 = v20 + ~v10;
          v23 = v11 - v10 - 2;
          if (v22 >= v23)
          {
            v24 = v11 - v10 - 2;
          }

          else
          {
            v24 = v22;
          }

          if (v24 >= (v11 + ~v10))
          {
            goto LABEL_62;
          }

          if (v22 <= v23)
          {
            goto LABEL_63;
          }

          v25 = (v5 + 128 + (v10 << 6));
          v26 = ~v10 + v11;
          do
          {
            v27 = *(v25 - 4);
            v28 = *v25;
            v25 += 8;
            v21 = v21 + v27 + v28;
            --v26;
          }

          while (v26);
        }
      }

      v31 = *(v6 + 2);
      v32 = *(v6 + 3);
      if (MEMORY[0x18D00B390]() != v12 || v29 != v21)
      {
        LayoutSubviews.subscript.getter();
        LOBYTE(v31) = 0;
        LayoutSubview.dimensions(in:)();
        if (v3 >= *(v1 + 2))
        {
          goto LABEL_59;
        }

        *(v6 + 1) = v31;
        *(v6 + 2) = v32;
        *(v6 + 3) = v33;
      }

      ++v3;
    }

    while (v3 != v2);
    v0[17] = v1;
  }
}

uint64_t finalize #1 (_:rowsOrColumns:) in GridLayout.Cache.finalizeSizes()(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *result;
  v21 = *(*result + 16);
  if (v21)
  {
    v5 = 0;
    v20 = result;
    while (v5 < *(v3 + 16))
    {
      v6 = (v3 + 32 + 24 * v5);
      v7 = *v6;
      v8 = *(v6 + 1);
      v9 = v6[1];
      result = specialized Sequence.reduce<A>(_:_:)(0, v7 | (v8 << 32), a2);
      v10 = result;
      if (!result)
      {
        result = specialized Collection.count.getter(v7 | (v8 << 32));
      }

      v11 = v7;
      if (v8 != v7)
      {
        if (v8 < v7)
        {
          goto LABEL_34;
        }

        v12 = v9 / result;
        v13 = (v7 << 6) + 64;
        v14 = v8 - v7;
        while (v11 < v8)
        {
          v15 = *a2;
          if (!v10)
          {
            goto LABEL_16;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (*(v15 + 16) <= v11)
          {
            goto LABEL_32;
          }

          if (*(v15 + v13) == 0.0)
          {
LABEL_16:
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
              v15 = result;
              if ((v11 & 0x8000000000000000) != 0)
              {
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }
            }

            if (*(v15 + 16) <= v11)
            {
              goto LABEL_30;
            }

            *(v15 + v13) = v12 + *(v15 + v13);
            *a2 = v15;
          }

          v13 += 64;
          ++v11;
          if (!--v14)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

LABEL_3:
      if (++v5 == v21)
      {
LABEL_22:
        v2 = v20;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      return specialized Array.replaceSubrange<A>(_:with:)(0, *(v17 + 16));
    }

    else
    {
      if (*(v17 + 24) >= 2uLL)
      {
        type metadata accessor for VerticalAlignment?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GridLayout.Cache.Earmark>, &type metadata for GridLayout.Cache.Earmark, MEMORY[0x1E69E6F90]);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size_1(v18);
        v18[2] = 0;
        v18[3] = 2 * ((v19 - 32) / 24);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
      }

      *v2 = v18;
    }
  }

  return result;
}

uint64_t GridLayout.Cache.applyAlignment(in:)(uint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  if (result)
  {
    v4 = *(v3 + 16);
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      return result;
    }
  }

  v5 = result & 1;
  v6 = *(v68 + 136);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_147:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
  }

  v7 = 0;
  v66 = 0;
  *(v68 + 136) = v6;
  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v2;
  }

  v65 = v8;
  v63 = v4;
  v64 = v8 + 32;
  v69 = v6 + 32;
  v70 = v6;
  v9 = 96;
  if (!v5)
  {
    v9 = 88;
  }

  v67 = v9;
  v61 = v3;
  v62 = v2;
  do
  {
    if (v7 == v4)
    {
      goto LABEL_130;
    }

    if (v7 >= *(v65 + 16))
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (*(v64 + (v7 << 6) + 16) == 1)
    {
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else if ((v5 & 1) == 0)
    {
LABEL_20:
      v4 = *(v3 + 16);
      if (!v4)
      {
        goto LABEL_57;
      }

      goto LABEL_21;
    }

    v4 = *(v2 + 16);
    if (!v4)
    {
LABEL_57:
      v4 = v63;
      goto LABEL_13;
    }

LABEL_21:
    v6 = 0;
    v10 = *(v68 + 144);
    v11 = INFINITY;
    v12 = -INFINITY;
    do
    {
      if (v5)
      {
        v3 = v7;
      }

      else
      {
        v3 = v6;
      }

      if (v5)
      {
        v2 = v6;
      }

      else
      {
        v2 = v7;
      }

      if (*(v10 + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v2 | (v3 << 32));
        if (v18)
        {
          v19 = *(*(v10 + 56) + 8 * result);
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v19 >= *(v70 + 16))
          {
            goto LABEL_128;
          }

          v20 = (v69 + 104 * v19);
          if (*v20 == v2 && v20[1] == v3)
          {
            LayoutSubviews.subscript.getter();
            v2 = 0x7FF0000000000000;
            if (v19 >= *(v70 + 16))
            {
              goto LABEL_129;
            }

            result = UnitPoint.subscript.getter();
            if ((v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              ViewDimensions.subscript.getter();
              v14 = INFINITY;
              if ((*&v13 & 0xFFFFFFFFFFFFFLL) == 0)
              {
                v14 = v13;
              }

              if ((~*&v13 & 0x7FF0000000000000) != 0)
              {
                v15 = v13;
              }

              else
              {
                v15 = v14;
              }

              if (v11 > -v15)
              {
                v11 = -v15;
              }

              result = ViewSize.subscript.getter();
              v17 = v16 - v15;
              if (v12 < v17)
              {
                v12 = v17;
              }

              *(v20 + v67) = -v15;
            }

            else
            {
              v66 = 1;
            }
          }
        }
      }

      ++v6;
    }

    while (v4 != v6);
    v6 = v70;
    v4 = v63;
    if (v11 > v12)
    {
LABEL_12:
      v3 = v61;
      v2 = v62;
      goto LABEL_13;
    }

    if (v7 >= *(v65 + 16))
    {
      goto LABEL_134;
    }

    v23 = *(v64 + (v7 << 6) + 32);
    result = AlignmentKey.fraction.getter();
    v3 = v61;
    v2 = v62;
    if (v24 == 0.0)
    {
      v25 = 0.0 - v11;
      if (v25 == 0.0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = AlignmentKey.fraction.getter();
      v25 = (v23 - (v12 - v11)) * v26 - v11;
      if (v25 == 0.0)
      {
        goto LABEL_13;
      }
    }

    if (v5)
    {
      v27 = *(v62 + 16);
      if (v27)
      {
LABEL_63:
        v28 = 0;
        v29 = *(v68 + 144);
        while (1)
        {
          if (v5)
          {
            v30 = v7;
          }

          else
          {
            v30 = v28;
          }

          if (v5)
          {
            v3 = v28;
          }

          else
          {
            v3 = v7;
          }

          if (*(v29 + 16))
          {
            result = specialized __RawDictionaryStorage.find<A>(_:)(v3 | (v30 << 32));
            if (v31)
            {
              v32 = *(*(v29 + 56) + 8 * result);
              if ((v32 & 0x8000000000000000) != 0)
              {
                goto LABEL_132;
              }

              if (v32 >= *(v70 + 16))
              {
                goto LABEL_133;
              }

              v2 = v69 + 104 * v32;
              if (*v2 == v3 && *(v2 + 4) == v30)
              {
                result = UnitPoint.subscript.getter();
                if ((v34 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                {
                  *(v2 + v67) = v25 + *(v2 + v67);
                }
              }
            }
          }

          if (v27 == ++v28)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      v27 = *(v61 + 16);
      if (v27)
      {
        goto LABEL_63;
      }
    }

LABEL_13:
    ++v7;
  }

  while (v7 != v4);
  *(v68 + 136) = v6;
  if (v66)
  {
    v35 = *(v6 + 16);
    if (v35)
    {
      v36 = 0;
      if (v5)
      {
        v37 = 96;
      }

      else
      {
        v37 = 88;
      }

      v4 = 104;
      while (v36 < *(v6 + 16))
      {
        v6 = v69 + 104 * v36;
        result = UnitPoint.subscript.getter();
        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v39 = *(v70 + 16);
          if (v36 >= v39)
          {
            goto LABEL_136;
          }

          if (v5)
          {
            v40 = *(v6 + 12);
            v41 = *(v6 + 4);
            if (v40 < v41)
            {
              goto LABEL_142;
            }

            v42 = v3;
          }

          else
          {
            v40 = *(v6 + 8);
            v41 = *v6;
            if (v40 < *v6)
            {
              goto LABEL_141;
            }

            v42 = v2;
          }

          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_137;
          }

          v43 = *(v42 + 16);
          if (v43 <= v41)
          {
            goto LABEL_138;
          }

          v44 = *(v42 + (v41 << 6) + 64);
          if ((v40 & 0x80000000) != 0 || v40 != v41)
          {
            if (v41 == 0x7FFFFFFF)
            {
              goto LABEL_143;
            }

            if (v40 <= v41)
            {
              goto LABEL_144;
            }

            ++v41;
          }

          if (v40 < v41)
          {
            goto LABEL_139;
          }

          if (v41 != v40)
          {
            v45 = v41;
            v46 = v40;
            v47 = v40 >= v41;
            v48 = v40 - v41;
            if (v47)
            {
              v49 = v48;
            }

            else
            {
              v49 = 0;
            }

            v50 = ~v41 + v46;
            v51 = v43 - v41;
            if (v43 < v45)
            {
              v51 = 0;
            }

            if (v50 >= v51)
            {
              v52 = v51;
            }

            else
            {
              v52 = ~v45 + v46;
            }

            if (v52 >= v49)
            {
              goto LABEL_145;
            }

            if (v51 <= v50)
            {
              goto LABEL_146;
            }

            v53 = (v42 + (v45 << 6) + 64);
            v54 = v46 - v45;
            do
            {
              v55 = *(v53 - 4);
              v56 = *v53;
              v53 += 8;
              v44 = v44 + v55 + v56;
              --v54;
            }

            while (v54);
          }

          if (v38 == 0.0)
          {
            v57 = 0.0;
            if (v36 >= v39)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v58 = v38;
            result = MEMORY[0x18D00B390](result);
            if (v5)
            {
              v59 = v60;
            }

            v57 = v58 * (v44 - v59);
            if (v36 >= *(v70 + 16))
            {
              goto LABEL_140;
            }
          }

          *(v6 + v37) = v57;
        }

        ++v36;
        v6 = v70;
        if (v36 == v35)
        {
          *(v68 + 136) = v70;
          return result;
        }
      }

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
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }
  }

  return result;
}

uint64_t assignPositions #1 (to:) in GridLayout.Cache.assignPositions()(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    if (v2 > *(v1 + 16))
    {
      __break(1u);
    }

    else
    {
      v4 = (v1 + 64);
      v5 = 0.0;
      do
      {
        v6 = v5 + *(v4 - 4);
        *(v4 - 1) = v6;
        v7 = *v4;
        v4 += 8;
        v5 = v6 + v7;
        --v2;
      }

      while (v2);
      *v3 = v1;
    }
  }

  return result;
}

CGSize __swiftcall GridLayout.Cache.size()()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v2 + 16);
  v4 = 0.0;
  v5 = 0.0;
  if (v3)
  {
    v6 = (v2 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *v6;
      v6 += 8;
      v5 = v5 + v7 + v8;
      --v3;
    }

    while (v3);
  }

  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = (v1 + 64);
    v4 = 0.0;
    do
    {
      v11 = *(v10 - 4);
      v12 = *v10;
      v10 += 8;
      v4 = v4 + v11 + v12;
      --v9;
    }

    while (v9);
  }

  result.height = v4;
  result.width = v5;
  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [GridLayout.Cache.Cell] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A])
  {
    type metadata accessor for VerticalAlignment?(255, &lazy cache variable for type metadata for [GridLayout.Cache.Cell], &type metadata for GridLayout.Cache.Cell, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GridLayout.Cache.Cell] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance GridLayout(uint64_t a1, int *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 65) = v11;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

void type metadata accessor for _DictionaryStorage<GridIndex, Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, void, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type GridIndex and conformance GridIndex();
    v7 = a3(a1, &type metadata for GridIndex, MEMORY[0x1E69E6530], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id _UIHostingView.backgroundColor.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIHostingView();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

id @objc _UIHostingView.backgroundColor.getter(void *a1)
{
  v1 = a1;
  v2 = _UIHostingView.backgroundColor.getter();

  return v2;
}

uint64_t specialized static CommandsList.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    v18 = *(a2 + 16);
    if (!v18)
    {
      return 1;
    }

    v12 = 0;
    v16 = *(v8 + 72);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    goto LABEL_11;
  }

  v25 = a2;
  v12 = 0;
  v13 = *(v4 + 20);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = a1 + v14;
  v16 = *(v8 + 72);
  do
  {
    _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v15, v10, type metadata accessor for CommandsList.Item);
    v17 = *&v10[v13];
    _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v10, type metadata accessor for CommandsList.Item);
    if (v17 > v12)
    {
      v12 = v17;
    }

    v15 += v16;
    --v11;
  }

  while (v11);
  a2 = v25;
  v18 = *(v25 + 16);
  if (v18)
  {
LABEL_11:
    v19 = 0;
    v20 = *(v4 + 20);
    v21 = a2 + v14;
    do
    {
      _s7SwiftUI12CommandsListV4ItemVWOcTm_0(v21, v6, type metadata accessor for CommandsList.Item);
      v22 = *&v6[v20];
      _s7SwiftUI12CommandsListV4ItemVWOhTm_0(v6, type metadata accessor for CommandsList.Item);
      if (v22 > v19)
      {
        v19 = v22;
      }

      v21 += v16;
      --v18;
    }

    while (v18);
    return v12 == v19;
  }

  return !v12;
}

uint64_t outlined init with copy of CommandsList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI12CommandsListV4ItemVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CommandsList.Item(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI12CommandsListV4ItemVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for CommandsList.Item(uint64_t a1)
{
  type metadata accessor for CommandsList.Item.Value(0);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v3 = type metadata accessor for CommandOperation();
    v4 = a1 + *(v3 + 20);
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

    v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v6 = type metadata accessor for UUID();
    result = (*(*(v6 - 8) + 8))(v4 + v5, v6);
    if (*(a1 + *(v3 + 24)))
    {
    }
  }

  return result;
}

uint64_t project #1 <A>(type:) in SceneStorageValues.Entry.encode(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  if (*(v13 + 48) == v14 && (v18 = a2[7], swift_unknownObjectRetain(), v18))
  {
    StoredLocationBase.get()();

    (*(v7 + 32))(v12, v9, a4);
    v19 = a2[8];
    v28 = a4;
    v20 = __swift_allocate_boxed_opaque_existential_1(&v26);
    (*(v7 + 16))(v20, v12, a4);
    v21 = a2[5];
    v23 = a2[2];
    v22 = a2[3];
    if (v21)
    {
      v24 = a2[4];
      v25 = v21;
      swift_bridgeObjectRetain_n();

      MEMORY[0x18D00C9B0](47, 0xE100000000000000);

      MEMORY[0x18D00C9B0](v23, v22);

      v23 = v24;
      v22 = v25;
    }

    else
    {
    }

    (*(*v19 + 96))(&v26, a3, v23, v22);

    (*(v7 + 8))(v12, a4);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v26 = 0xD00000000000001BLL;
    v27 = 0x800000018CD47800;
    v15 = a2[2];
    v16 = a2[3];

    MEMORY[0x18D00C9B0](v15, v16);

    MEMORY[0x18D00C9B0](46, 0xE100000000000000);
    MEMORY[0x18D009810](v26, v27);
  }
}

uint64_t TransformBox.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 112);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - v12;
  (*(v11 + 16))(&v15 - v12, v4 + *(v9 + 128), v10);
  (*(*(v9 + 120) + 24))(a1, a2, a3, a4, v10);
  return (*(v11 + 8))(v13, v10);
}

uint64_t specialized JSONCodableTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26[1] = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, v31);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, a5);
    (*(v13 + 32))(v16, v12, a5);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v22 = v21;
    v27 = a3;
    v28 = a4;

    AnyHashable.init<A>(_:)();
    if (v22 >> 60 == 15)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v29 = 0;
    }

    else
    {
      v25 = MEMORY[0x1E6969080];
      v23 = v20;
      v24 = v22;
    }

    v27 = v23;
    v28 = v24;
    v30 = v25;
    outlined copy of Data?(v20, v22);
    specialized Dictionary.subscript.setter(&v27, v31);

    outlined consume of Data?(v20, v22);
    return (*(v13 + 8))(v16, a5);
  }

  else
  {
    v18(v12, 1, 1, a5);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t NavigationSplitViewVisibility.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v14 = 0;
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.copy()(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 232);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v7, v2);
  return AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(v5);
}

uint64_t TransformBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));

  return swift_deallocClassInstance();
}

BOOL specialized static NavigationTitleStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (!*(a1 + 24))
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v6, *(a2 + 16) & 1);

  v8 = static Text.== infix(_:_:)();
  outlined consume of Text.Storage(v5, v6, v7 & 1);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v10 = v4 != 5 && v2 == v4;
  if (v2 == 5)
  {
    return v4 == 5;
  }

  else
  {
    return v10;
  }
}

void *assignWithCopy for ResolvedList(void *a1, void *a2, uint64_t a3)
{
  v56 = *(a3 + 16);
  v3 = *(v56 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = ~(v6 | 7);
  v9 = (v6 + 23) & v8;
  v10 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  if (*v10 < 0xFFFFFFFFuLL)
  {
    if (v12 < 0xFFFFFFFF)
    {
      if (v4)
      {
        v42 = *(*(v56 - 8) + 64);
      }

      else
      {
        v42 = v5 + 1;
      }

      if (v42 <= v5)
      {
        v42 = *(*(v56 - 8) + 64);
      }

      if (v42 <= 8)
      {
        v42 = 8;
      }

      v43 = v42 + v9 + 1;
      goto LABEL_93;
    }

    v55 = a1;
    *a1 = *a2;
    *v10 = *v11;
    v25 = ((v10 + v7 + 8) & v8);
    v26 = ((v11 + v7 + 8) & v8);
    if (v4)
    {
      v27 = v5;
    }

    else
    {
      v27 = v5 + 1;
    }

    if (v27 <= v5)
    {
      v28 = v5;
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v28;
    }

    v30 = v26[v29];

    if (v30 >= 3)
    {
      if (v29 <= 3)
      {
        v31 = v29;
      }

      else
      {
        v31 = 4;
      }

      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_74;
        }

        v32 = *v26;
      }

      else if (v31 == 2)
      {
        v32 = *v26;
      }

      else if (v31 == 3)
      {
        v32 = *v26 | (v26[2] << 16);
      }

      else
      {
        v32 = *v26;
      }

      v44 = (v32 | ((v30 - 3) << (8 * v29))) + 3;
      v45 = v32 + 3;
      if (v29 >= 4)
      {
        v30 = v45;
      }

      else
      {
        v30 = v44;
      }
    }

LABEL_74:
    if (v30 == 2)
    {
      (*(v3 + 16))(v25, v26, v56);
      *(v25 + v29) = 2;
    }

    else if (v30 == 1)
    {
      if ((*(v3 + 48))(v26, 1, v56))
      {
        memcpy(v25, v26, v27);
      }

      else
      {
        (*(v3 + 16))(v25, v26, v56);
        (*(v3 + 56))(v25, 0, 1, v56);
      }

      *(v25 + v29) = 1;
    }

    else
    {
      *v25 = *v26;
      *(v25 + v29) = 0;
    }

    return v55;
  }

  if (v12 >= 0xFFFFFFFF)
  {
    v55 = a1;
    *a1 = *a2;

    *v10 = *v11;

    v13 = v10 + v7 + 8;
    v14 = (v13 & v8);
    v15 = v11 + v7 + 8;
    v16 = (v15 & v8);
    if ((v13 & v8) == (v15 & v8))
    {
      return v55;
    }

    if (v4)
    {
      v17 = v5;
    }

    else
    {
      v17 = v5 + 1;
    }

    if (v17 <= v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = v17;
    }

    if (v18 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v18;
    }

    v20 = v14[v19];
    v21 = v20 - 3;
    if (v20 < 3)
    {
      v23 = v56;
      goto LABEL_102;
    }

    if (v19 <= 3)
    {
      v22 = v19;
    }

    else
    {
      v22 = 4;
    }

    v23 = v56;
    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_102;
      }

      v24 = *v14;
    }

    else if (v22 == 2)
    {
      v24 = *v14;
    }

    else if (v22 == 3)
    {
      v24 = *v14 | (v14[2] << 16);
    }

    else
    {
      v24 = *v14;
    }

    v48 = (v24 | (v21 << (8 * v19))) + 3;
    v20 = v24 + 3;
    if (v19 < 4)
    {
      v20 = v48;
    }

LABEL_102:
    if (v20 != 2)
    {
      if (v20 != 1)
      {

LABEL_107:
        v49 = *(v16 + v19);
        v50 = v49 - 3;
        if (v49 >= 3)
        {
          if (v19 <= 3)
          {
            v51 = v19;
          }

          else
          {
            v51 = 4;
          }

          if (v51 > 1)
          {
            if (v51 == 2)
            {
              v52 = *v16;
            }

            else if (v51 == 3)
            {
              v52 = *v16 | (*(v16 + 2) << 16);
            }

            else
            {
              v52 = *v16;
            }

LABEL_119:
            v53 = (v52 | (v50 << (8 * v19))) + 3;
            v49 = v52 + 3;
            if (v19 < 4)
            {
              v49 = v53;
            }

            goto LABEL_121;
          }

          if (v51)
          {
            v52 = *v16;
            goto LABEL_119;
          }
        }

LABEL_121:
        if (v49 == 2)
        {
          (*(v3 + 16))(v14, v16, v23);
          v54 = 2;
LABEL_129:
          v14[v19] = v54;
          return v55;
        }

        if (v49 == 1)
        {
          if ((*(v3 + 48))(v16, 1, v23))
          {
            memcpy(v14, v16, v17);
          }

          else
          {
            (*(v3 + 16))(v14, v16, v23);
            (*(v3 + 56))(v14, 0, 1, v23);
          }

          v54 = 1;
          goto LABEL_129;
        }

        *v14 = *v16;
        v14[v19] = 0;

        return v55;
      }

      if ((*(v3 + 48))(v14, 1, v23))
      {
        goto LABEL_107;
      }
    }

    (*(v3 + 8))(v14, v23);
    goto LABEL_107;
  }

  v33 = a1;
  v34 = a2;

  v35 = ((v10 + v7 + 8) & v8);
  if (v4)
  {
    v36 = v5;
  }

  else
  {
    v36 = v5 + 1;
  }

  if (v36 <= v5)
  {
    v36 = v5;
  }

  if (v36 <= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v35 + v37);
  v39 = v38 - 3;
  if (v38 < 3)
  {
    goto LABEL_85;
  }

  if (v37 <= 3)
  {
    v40 = v37;
  }

  else
  {
    v40 = 4;
  }

  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v41 = *v35;
    }

    else if (v40 == 3)
    {
      v41 = *((v10 + v7 + 8) & v8) | (*(((v10 + v7 + 8) & v8) + 2) << 16);
    }

    else
    {
      v41 = *v35;
    }

LABEL_83:
    v46 = (v41 | (v39 << (8 * v37))) + 3;
    v38 = v41 + 3;
    if (v37 < 4)
    {
      v38 = v46;
    }

    goto LABEL_85;
  }

  if (v40)
  {
    v41 = *v35;
    goto LABEL_83;
  }

LABEL_85:
  if (v38 == 2)
  {
    (*(v3 + 8))(v35, v56);
  }

  else if (v38 == 1)
  {
    if (!(*(v3 + 48))(v35, 1, v56))
    {
      (*(v3 + 8))(v35, v56);
    }
  }

  else
  {
  }

  v43 = v37 + v9 + 1;
  a1 = v33;
  a2 = v34;
LABEL_93:

  return memcpy(a1, a2, v43);
}

uint64_t *assignWithCopy for ListPresentationSizingModifier(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 17);
  v6 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v4, v6, v5);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 17);
  *a1 = v3;
  a1[1] = v4;
  v10 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v5;
  outlined consume of Environment<CGSize?>.Content(v7, v8, v10, v9);
  return a1;
}

void *assignWithCopy for NavigableListModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v49 = *(a3 + 16);
  v4 = *(v49 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80) & 0xF8;
  v7 = v6 + 15;
  v8 = ~v6 & 0xFFFFFFFFFFFFFFF8;
  v9 = ((a1 + v6 + 15) & v8);
  v10 = ((a2 + v6 + 15) & v8);
  v11 = *(v4 + 64);
  v51 = (v6 + 23) & v8;
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
    v50 = a1;
    if (v14 >= 0xFFFFFFFF)
    {
      *v9 = *v10;

      *v12 = *v13;

      v15 = ((v12 + v7) & v8);
      v16 = ((v13 + v7) & v8);
      if (v5)
      {
        v17 = v11;
      }

      else
      {
        v17 = v11 + 1;
      }

      if (v17 <= v11)
      {
        v18 = v11;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == v16)
      {
        goto LABEL_127;
      }

      v20 = v15[v19];
      v21 = v20 - 3;
      if (v20 < 3)
      {
        v23 = v49;
        goto LABEL_97;
      }

      if (v19 <= 3)
      {
        v22 = v19;
      }

      else
      {
        v22 = 4;
      }

      v23 = v49;
      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_97;
        }

        v24 = *v15;
      }

      else if (v22 == 2)
      {
        v24 = *v15;
      }

      else if (v22 == 3)
      {
        v24 = *v15 | (v15[2] << 16);
      }

      else
      {
        v24 = *v15;
      }

      v41 = (v24 | (v21 << (8 * v19))) + 3;
      v20 = v24 + 3;
      if (v19 < 4)
      {
        v20 = v41;
      }

LABEL_97:
      if (v20 != 2)
      {
        if (v20 != 1)
        {

LABEL_102:
          v42 = v16[v19];
          v43 = v42 - 3;
          if (v42 >= 3)
          {
            if (v19 <= 3)
            {
              v44 = v19;
            }

            else
            {
              v44 = 4;
            }

            if (v44 > 1)
            {
              if (v44 == 2)
              {
                v45 = *v16;
              }

              else if (v44 == 3)
              {
                v45 = *v16 | (v16[2] << 16);
              }

              else
              {
                v45 = *v16;
              }

LABEL_114:
              v46 = (v45 | (v43 << (8 * v19))) + 3;
              v42 = v45 + 3;
              if (v19 < 4)
              {
                v42 = v46;
              }

              goto LABEL_116;
            }

            if (v44)
            {
              v45 = *v16;
              goto LABEL_114;
            }
          }

LABEL_116:
          if (v42 != 2)
          {
            if (v42 == 1)
            {
              v39 = (*(v4 + 48))(v16, 1, v23);
              goto LABEL_119;
            }

            goto LABEL_121;
          }

          (*(v4 + 16))(v15, v16, v23);
          goto LABEL_125;
        }

        if ((*(v4 + 48))(v15, 1, v23))
        {
          goto LABEL_102;
        }
      }

      (*(v4 + 8))(v15, v23);
      goto LABEL_102;
    }

    v29 = ((v12 + v7) & v8);
    if (v5)
    {
      v30 = v11;
    }

    else
    {
      v30 = v11 + 1;
    }

    if (v30 <= v11)
    {
      v30 = v11;
    }

    if (v30 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v30;
    }

    v31 = *(v29 + v19);
    v32 = v31 - 3;
    if (v31 < 3)
    {
      v34 = v51;
    }

    else
    {
      if (v19 <= 3)
      {
        v33 = v19;
      }

      else
      {
        v33 = 4;
      }

      v34 = v51;
      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v35 = *v29;
        }

        else if (v33 == 3)
        {
          v35 = *v29 | (*(((v12 + v7) & v8) + 2) << 16);
        }

        else
        {
          v35 = *v29;
        }

LABEL_81:
        v40 = (v35 | (v32 << (8 * v19))) + 3;
        v31 = v35 + 3;
        if (v19 < 4)
        {
          v31 = v40;
        }

        goto LABEL_83;
      }

      if (v33)
      {
        v35 = *v29;
        goto LABEL_81;
      }
    }

LABEL_83:
    if (v31 == 2)
    {
      (*(v4 + 8))((v12 + v7) & v8, v49);
    }

    else if (v31 == 1)
    {
      if (!(*(v4 + 48))((v12 + v7) & v8, 1, v49))
      {
        (*(v4 + 8))(v29, v49);
      }
    }

    else
    {
    }

    memcpy(v9, v10, v19 + v34 + 1);
    v3 = v50;
    goto LABEL_128;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    v50 = a1;
    *v9 = *v10;
    *v12 = *v13;
    v15 = ((v12 + v7) & v8);
    v16 = ((v13 + v7) & v8);
    if (v5)
    {
      v17 = v11;
    }

    else
    {
      v17 = v11 + 1;
    }

    if (v17 <= v11)
    {
      v25 = v11;
    }

    else
    {
      v25 = v17;
    }

    if (v25 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v25;
    }

    v26 = v16[v19];

    if (v26 < 3)
    {
      goto LABEL_76;
    }

    if (v19 <= 3)
    {
      v27 = v19;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
LABEL_76:
        if (v26 != 2)
        {
          if (v26 == 1)
          {
            v23 = v49;
            v39 = (*(v4 + 48))(v16, 1, v49);
LABEL_119:
            if (v39)
            {
              memcpy(v15, v16, v17);
            }

            else
            {
              (*(v4 + 16))(v15, v16, v23);
              (*(v4 + 56))(v15, 0, 1, v23);
            }

            v47 = 1;
            goto LABEL_126;
          }

LABEL_121:
          *v15 = *v16;
          v15[v19] = 0;

LABEL_127:
          v3 = v50;
          v34 = v51;
          goto LABEL_128;
        }

        (*(v4 + 16))(v15, v16, v49);
LABEL_125:
        v47 = 2;
LABEL_126:
        v15[v19] = v47;
        goto LABEL_127;
      }

      v28 = *v16;
    }

    else if (v27 == 2)
    {
      v28 = *v16;
    }

    else if (v27 == 3)
    {
      v28 = *v16 | (v16[2] << 16);
    }

    else
    {
      v28 = *v16;
    }

    v37 = (v28 | ((v26 - 3) << (8 * v19))) + 3;
    v38 = v28 + 3;
    if (v19 >= 4)
    {
      v26 = v38;
    }

    else
    {
      v26 = v37;
    }

    goto LABEL_76;
  }

  if (v5)
  {
    v36 = *(*(v49 - 8) + 64);
  }

  else
  {
    v36 = v11 + 1;
  }

  if (v36 <= v11)
  {
    v36 = *(*(v49 - 8) + 64);
  }

  if (v36 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v36;
  }

  v34 = (v6 + 23) & v8;
  memcpy(v9, v10, v19 + v51 + 1);
LABEL_128:
  *((v9 + v19 + v34 + 8) & 0xFFFFFFFFFFFFFFF8) = *((v10 + v19 + v34 + 8) & 0xFFFFFFFFFFFFFFF8);

  return v3;
}

uint64_t assignWithCopy for PrimitiveSelectionContainerModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      __swift_assign_boxed_opaque_existential_1((a1 + 16), a2 + 2);
    }

    else
    {
      outlined destroy of Binding<Selection>(a1);
      v8 = a2[1];
      v7 = a2[2];
      v9 = *a2;
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *a1 = v9;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v5 = *(a2 + 5);
    *(a1 + 40) = v5;
    *(a1 + 48) = *(a2 + 6);
    v6 = **(v5 - 8);

    v6(a1 + 16, (a2 + 1), v5);
  }

  else
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *a1 = v10;
  }

  return a1;
}

uint64_t ListCoreBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2, int *a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v11 = (v5 + a3[15]);
  v12 = type metadata accessor for ListBatchUpdates();
  ListBatchUpdates.formUpdates<A>(from:to:)(a1, a2, v12, a4, a5);
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  v17 = v11[4];
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;

  ListCoreBatchUpdates.formResult<A>(_:)(v19, a3);
}

uint64_t ListBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v36 = a5;
  v33 = a4;
  v45 = a2;
  v6 = *(a3 + 16);
  v43 = a3;
  v7 = *(v6 - 8);
  v41 = a1;
  v42 = v7;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for CountingIndexListDataSource();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v38 = (&v31 - v9);
  v35 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CountingIndexListDataSource();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v32 = (&v31 - v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for CountingIndex();
  v14 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v16 = v15;
  WitnessTable = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v14);
  v47 = v13;
  v48 = v16;
  v49 = WitnessTable;
  v50 = v18;
  type metadata accessor for ListUpdate();
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(1);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(1);
  v20 = v34;
  v19 = v35;
  v21 = v33;
  (*(v35 + 16))(v34, v41, v33);
  v22 = v32;
  v23 = v20;
  v24 = v21;
  (*(v19 + 32))(v32, v23, v21);
  v25 = v42;
  v26 = v40;
  (*(v42 + 16))(v40, v45, v6);
  v27 = v38;
  (*(v25 + 32))(v38, v26, v6);
  v28 = v43;
  v29 = v36;
  ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(v22, v27, v43, v24, v36);
  ListBatchUpdates.computeMoves<A>(from:to:)(v22, v27, v28, v24, v29);
  (*(v44 + 8))(v27, v46);
  return (*(v37 + 8))(v22, v39);
}

uint64_t ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(void (**a1)(char *, uint64_t), void (**a2)(char *, uint64_t, uint64_t), uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v238 = a2;
  v232 = a1;
  v9 = *(a3 + 16);
  v227 = *(a3 + 24);
  v234 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v240 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = swift_getAssociatedTypeWitness();
  v224 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v225 = &v158 - v12;
  v237 = AssociatedTypeWitness;
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v233 = v14;
  v231 = AssociatedConformanceWitness;
  v16 = type metadata accessor for CountingIndex();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v216 = &v158 - v18;
  v228 = a5;
  v226 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v194 = type metadata accessor for CountingIndexCollection();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for DefaultIndices();
  v197 = type metadata accessor for CountingIndexCollection();
  v192 = swift_getWitnessTable();
  v20 = type metadata accessor for DefaultIndices();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v243 = v19;
  v244 = v20;
  v245 = v21;
  v246 = v22;
  v170 = type metadata accessor for Zip2Sequence();
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v158 - v23;
  v243 = v19;
  v244 = v20;
  v172 = v21;
  v245 = v21;
  v246 = v22;
  v171 = v22;
  v219 = type metadata accessor for Zip2Sequence.Iterator();
  v223 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v158 - v24;
  v220 = v20;
  v222 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v190 = &v158 - v28;
  swift_getWitnessTable();
  v189 = type metadata accessor for IndexingIterator();
  v215 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v168 = &v158 - v29;
  v30 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v32 = v31;
  v33 = swift_getWitnessTable();
  v34 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v30);
  v243 = v16;
  v244 = v32;
  v245 = v33;
  v246 = v34;
  v236 = type metadata accessor for ListUpdate();
  MEMORY[0x1EEE9AC00](v236);
  v221 = &v158 - v35;
  v214 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v229 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v158 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v167 = &v158 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v188 = &v158 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v166 = &v158 - v46;
  v205 = v19;
  v213 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v187 = &v158 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v186 = &v158 - v50;
  swift_getWitnessTable();
  v185 = type metadata accessor for IndexingIterator();
  v206 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v165 = &v158 - v51;
  v208 = type metadata accessor for Range();
  v202 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v184 = &v158 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v183 = &v158 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v182 = &v158 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v181 = &v158 - v58;
  v243 = v16;
  v244 = v16;
  v59 = v16;
  v245 = v33;
  v246 = v33;
  v204 = type metadata accessor for CollectionChanges.Element();
  v212 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v207 = &v158 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v158 - v62;
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v158 - v65;
  v67 = v194;
  v195 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v158 - v69;
  v178 = type metadata accessor for CountingIndexListDataSource();
  CountingIndexListDataSource.sectionIDs.getter(v178, v70);
  v177 = type metadata accessor for CountingIndexListDataSource();
  CountingIndexListDataSource.sectionIDs.getter(v177, v66);
  v243 = v59;
  v244 = v59;
  v239 = v59;
  v245 = v33;
  v246 = v33;
  v71 = type metadata accessor for CollectionChanges();
  v72 = v67;
  v235 = swift_getWitnessTable();
  v73 = v197;
  v230 = swift_getWitnessTable();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  CollectionChanges.formChanges<A, B>(from:to:)();
  v74 = *(v196 + 8);
  v180 = v66;
  v196 += 8;
  v176 = v74;
  v74(v66, v73);
  v75 = *(v195 + 8);
  v179 = v70;
  v76 = v70;
  v77 = v205;
  v195 += 8;
  v175 = v75;
  v75(v76, v72);
  v243 = *(v6 + 8);
  v244 = 0;

  if (!CollectionChanges.endIndex.getter())
  {
  }

  v78 = 0;
  v200 = (v212 + 32);
  v203 = v243;
  v199 = (v202 + 32);
  v174 = (v213 + 8);
  v173 = (v222 + 8);
  v164 = TupleTypeMetadata2 - 8;
  v230 = (v214 + 4);
  v212 = v228 + 64;
  ++v224;
  v211 = v227 + 8;
  v210 = v228 + 72;
  v209 = v227 + 9;
  v79 = v214 + 1;
  v163 = (v223 + 8);
  v198 = (v202 + 8);
  v162 = (v222 + 16);
  v161 = (v215 + 8);
  v160 = (v213 + 16);
  v159 = (v206 + 8);
  v237 = v40;
  v202 = v63;
  v241 = v6;
  v201 = v71;
  v235 = v214 + 2;
  v240 = (v214 + 1);
  while (1)
  {
    v242 = v203;
    result = CollectionChanges.subscript.getter();
    v82 = __OFADD__(v78, 1);
    v83 = v78 + 1;
    if (v82)
    {
      break;
    }

    v244 = v83;
    (*v200)(v207, v63, v204);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v206 = v83;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*v199)(v182, v207, v208);
        v85 = v180;
        CountingIndexListDataSource.sectionIDs.getter(v177, v180);
        v86 = v190;
        v87 = v197;
        Collection<>.indices.getter();
        v176(v85, v87);
        v88 = v191;
        v89 = v220;
        DefaultIndices.subscript.getter();
        v90 = *v173;
        (*v173)(v86, v89);
        v91 = v168;
        (*v162)(v168, v88, v89);
        v92 = *(v189 + 36);
        DefaultIndices.startIndex.getter();
        v90(v88, v89);
        v93 = v188;
        DefaultIndices.endIndex.getter();
        v94 = static CountingIndex.== infix(_:_:)();
        v95 = *v240;
        (*v240)(v93, v239);
        v96 = v221;
        v97 = v167;
        if ((v94 & 1) == 0)
        {
          v223 = *v235;
          do
          {
            v98 = v239;
            (v223)(v97, &v91[v92], v239);
            DefaultIndices.formIndex(after:)();
            (*v230)(v96, v97, v98);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for Array();
            Array.append(_:)();
            DefaultIndices.endIndex.getter();
            v99 = static CountingIndex.== infix(_:_:)();
            v95(v93, v98);
          }

          while ((v99 & 1) == 0);
        }

        (*v161)(v91, v189);
        (*v198)(v182, v208);
        v40 = v237;
      }

      else
      {
        v116 = v208;
        v117 = *(swift_getTupleTypeMetadata2() + 48);
        v118 = *v199;
        v119 = v77;
        v120 = v207;
        (*v199)(v183, v207, v116);
        v118(v184, &v120[v117], v116);
        v121 = v179;
        CountingIndexListDataSource.sectionIDs.getter(v178, v179);
        v122 = v186;
        v123 = v194;
        Collection<>.indices.getter();
        v175(v121, v123);
        v124 = v187;
        DefaultIndices.subscript.getter();
        v223 = *v174;
        (v223)(v122, v77);
        v125 = v180;
        CountingIndexListDataSource.sectionIDs.getter(v177, v180);
        v126 = v190;
        v127 = v197;
        Collection<>.indices.getter();
        v176(v125, v127);
        v128 = v191;
        v129 = v220;
        DefaultIndices.subscript.getter();
        v130 = *v173;
        (*v173)(v126, v129);
        zip<A, B>(_:_:)();
        v130(v128, v129);
        (v223)(v124, v119);
        Zip2Sequence.makeIterator()();
        v131 = v216;
        Zip2Sequence.Iterator.next()();
        v132 = TupleTypeMetadata2;
        v133 = *(TupleTypeMetadata2 - 8);
        v215 = *(v133 + 48);
        v214 = (v133 + 48);
        v134 = (v215)(v131, 1, TupleTypeMetadata2);
        v135 = v229;
        v136 = v239;
        if (v134 != 1)
        {
          v213 = *v230;
          do
          {
            v140 = *(v132 + 48);
            v141 = v213;
            v213(v40, v131, v136);
            v141(v135, &v131[v140], v136);
            v142 = v40;
            v143 = v226;
            v144 = v227;
            v145 = v228;
            v242 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v232, v142, v238, v135, v234, v226, v227, v228);
            v146 = type metadata accessor for Array();
            swift_getWitnessTable();
            v223 = v146;
            Array.append<A>(contentsOf:)();
            v147 = *(v239 + 16);
            v148 = *(*(v147 - 8) + 16);
            v149 = v225;
            v148(v225, v237, v147);
            LOBYTE(v222) = (*(v145 + 64))(v149, v143, v145) & 1;
            LODWORD(v222) = v222;
            v150 = *v224;
            v151 = v233;
            (*v224)(v149, v233);
            v148(v149, v135, v147);
            v152 = v239;
            LODWORD(v146) = (v144[8])(v149, v234, v144) & 1;
            v150(v149, v151);
            v153 = v237;
            if (v222 != v146)
            {
              (*v235)(v221, v237, v152);
              swift_storeEnumTagMultiPayload();
              Array.append(_:)();
            }

            v154 = v225;
            v148(v225, v153, v147);
            v155 = (*(v228 + 72))(v154, v226) & 1;
            v136 = v152;
            v150(v154, v151);
            v148(v154, v229, v147);
            v156 = (v227[9])(v154, v234) & 1;
            v150(v154, v151);
            v157 = v155 == v156;
            v40 = v237;
            if (!v157)
            {
              (*v235)(v221, v237, v152);
              swift_storeEnumTagMultiPayload();
              Array.append(_:)();
            }

            v139 = *v240;
            v135 = v229;
            (*v240)(v229, v136);
            v139(v40, v136);
            v131 = v216;
            Zip2Sequence.Iterator.next()();
            v132 = TupleTypeMetadata2;
          }

          while ((v215)(v131, 1, TupleTypeMetadata2) != 1);
        }

        (*v163)(v218, v219);
        v137 = *v198;
        v138 = v208;
        (*v198)(v184, v208);
        v137(v183, v138);
      }
    }

    else
    {
      (*v199)(v181, v207, v208);
      v100 = v179;
      CountingIndexListDataSource.sectionIDs.getter(v178, v179);
      v101 = v77;
      v102 = v186;
      v103 = v194;
      Collection<>.indices.getter();
      v175(v100, v103);
      v104 = v187;
      DefaultIndices.subscript.getter();
      v105 = *v174;
      (*v174)(v102, v101);
      v106 = v165;
      (*v160)(v165, v104, v101);
      v107 = *(v185 + 36);
      DefaultIndices.startIndex.getter();
      (v105)(v104, v101);
      v108 = v166;
      v109 = v188;
      DefaultIndices.endIndex.getter();
      v110 = static CountingIndex.== infix(_:_:)();
      v111 = *v79;
      v112 = v239;
      v223 = v111;
      (v111)(v109, v239);
      v113 = v221;
      v114 = v230;
      if ((v110 & 1) == 0)
      {
        v222 = *v235;
        do
        {
          (v222)(v108, &v106[v107], v112);
          DefaultIndices.formIndex(after:)();
          (*v114)(v113, v108, v112);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for Array();
          Array.append(_:)();
          DefaultIndices.endIndex.getter();
          v115 = static CountingIndex.== infix(_:_:)();
          (v223)(v109, v112);
        }

        while ((v115 & 1) == 0);
      }

      (*v159)(v106, v185);
      (*v198)(v181, v208);
      v40 = v237;
    }

    v63 = v202;
    v78 = v206;
    v79 = v240;
    v80 = CollectionChanges.endIndex.getter();
    v77 = v205;
    if (v78 == v80)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t CountingIndexListDataSource.sectionIDs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v3 + 56))(v4, v3, v7);
  return (*(v6 + 32))(a2, v9, AssociatedTypeWitness);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ShadowSectionCollection<A>(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ShadowSectionCollection.subscript.read(v6, a2, a3);
  return protocol witness for Collection.subscript.read in conformance ShadowSectionCollection<A>;
}

uint64_t (*ShadowSectionCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  ShadowSectionCollection.subscript.getter(a2, a3, v8);
  return ShadowSectionCollection.subscript.read;
}

uint64_t ShadowSectionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &AssociatedTypeWitness - v7;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &AssociatedTypeWitness - v12;
  (*(v4 + 56))(v5, v4, v11);
  updated = type metadata accessor for ShadowListUpdateRecorder();
  ShadowListUpdateRecorder.initialIndex(_:)(a1, updated, v8);
  v15 = dispatch thunk of Collection.subscript.read();
  v17 = v16;
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 16))(v21, v17, v18);
  v15(v22, 0);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v10 + 8))(v13, v9);
}

void protocol witness for Collection.subscript.read in conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void CoalescingAdjacentDuplicates<>.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(void (**a1)(char *, uint64_t), uint64_t a2, void (**a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), void (**a7)(char *, uint64_t), uint64_t a8)
{
  v203 = a8;
  v195 = a6;
  v200 = a4;
  v205 = a3;
  v202 = a2;
  v167 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CountingIndexCollection();
  v206 = MEMORY[0x1E69801A8];
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DefaultIndices();
  v199 = MEMORY[0x1E69E5EB8];
  v12 = swift_getWitnessTable();
  v183 = type metadata accessor for LazySequence();
  v156 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v151 - v13;
  v155 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v181 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v151 - v17;
  swift_getAssociatedTypeWitness();
  i = a7;
  v194 = a5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for CountingIndex();
  v19 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v21 = v20;
  v22 = swift_getWitnessTable();
  v23 = v202;
  v24 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v19);
  v210 = v18;
  v211 = v21;
  v204 = v21;
  *&v212 = v22;
  *(&v212 + 1) = v24;
  v25 = type metadata accessor for ListUpdate();
  v185 = v11;
  v184 = v12;
  v179 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v151 - v26;
  v193 = *(v18 - 8);
  v192 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v151 - v28;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for CountingIndexCollection();
  v177 = swift_getWitnessTable();
  v30 = type metadata accessor for DefaultIndices();
  v31 = swift_getWitnessTable();
  v174 = type metadata accessor for LazySequence();
  v154 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v151 - v32;
  v153 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v172 = &v151 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v171 = &v151 - v36;
  v176 = v30;
  v175 = v31;
  v170 = type metadata accessor for LazyMapSequence();
  MEMORY[0x1EEE9AC00](v170);
  v169 = &v151 - v37;
  v190 = v10;
  v164 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v151 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v188 = &v151 - v42;
  v189 = v29;
  v163 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v159 = &v151 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v187 = &v151 - v46;
  v206 = v25;
  MEMORY[0x1EEE9AC00](v47);
  v196 = &v151 - v48;
  v199 = type metadata accessor for IndexSet.Index();
  v157 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v50 = &v151 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  v162 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v151 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v151 - v55;
  v166 = type metadata accessor for IndexSet();
  v168 = *(v166 - 1);
  MEMORY[0x1EEE9AC00](v166);
  v165 = (&v151 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for DiffResult();
  MEMORY[0x1EEE9AC00](v158);
  v59 = &v151 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for CountingIndexListDataSource();
  CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(v23, v60);
  v61 = v200;
  if (v215)
  {
    v152 = v53;
    v197 = v50;
    v210 = v215;
    v211 = v216;
    v212 = v217;
    v62 = type metadata accessor for CountingIndexListDataSource();
    CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(v61, v62);
    if (v208[0])
    {
      v215 = v208[0];
      v216 = v208[1];
      v217 = v209;
      v207 = Array.init()();
      HeterogeneousViewIDs.difference(to:)();

      v63 = v165;
      DiffResult.removes.getter();
      v64 = IndexSet.count.getter();
      v65 = v168 + 8;
      v66 = *(v168 + 8);
      v67 = v166;
      result = (v66)(v63, v166);
      v69 = *(*&v59[*(v158 + 20)] + 16);
      v70 = v64 + v69;
      if (__OFADD__(v64, v69))
      {
        goto LABEL_28;
      }

      v191 = *&v59[*(v158 + 20)];
      DiffResult.inserts.getter();
      v71 = IndexSet.count.getter();
      result = (v66)(v63, v67);
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_29;
      }

      v201 = v18;
      v203 = type metadata accessor for Array();
      Array.reserveCapacity(_:)(v73);
      v192 = v59;
      DiffResult.removes.getter();
      IndexSet.makeIterator()();
      v168 = v65;
      v190 = v66;
      v66(v63, v67);
      v74 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
      v75 = (v157 + 8);
      v205 = (v193 + 16);
      for (i = (v157 + 8); ; v75 = i)
      {
        v76 = v197;
        dispatch thunk of Collection.endIndex.getter();
        v77 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
        v78 = v199;
        v79 = dispatch thunk of static Equatable.== infix(_:_:)();
        v80 = *v75;
        (*v75)(v76, v78);
        if (v79)
        {
          break;
        }

        v81 = dispatch thunk of Collection.subscript.read();
        v83 = *v82;
        v81(v208, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v84 = v201;
        v85 = &v196[*(swift_getTupleTypeMetadata2() + 48)];
        (*v205)(v196, v202, v84);
        *v85 = v83;
        *(v85 + 1) = v83;
        v85[16] = 0;
        swift_storeEnumTagMultiPayload();
        Array.append(_:)();
      }

      v189 = v80;
      v194 = v77;
      v193 = v74;
      outlined destroy of IndexingIterator<IndexSet>(v56, type metadata accessor for IndexingIterator<IndexSet>);
      v86 = *(v191 + 2);
      v87 = v201;
      v88 = v196;
      if (v86)
      {
        v195 = *v205;
        v89 = (v191 + 40);
        v90 = v195;
        do
        {
          v91 = *(v89 - 1);
          v92 = *v89;
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v94 = &v88[*(swift_getTupleTypeMetadata2() + 48)];
          v95 = &v88[*(TupleTypeMetadata2 + 48)];
          v90(v88, v202, v87);
          *v95 = v91;
          *(v95 + 1) = v91;
          v95[16] = 0;
          v96 = &v94[*(TupleTypeMetadata2 + 48)];
          v90(v94, v200, v87);
          *v96 = v92;
          *(v96 + 1) = v92;
          v96[16] = 0;
          swift_storeEnumTagMultiPayload();
          Array.append(_:)();
          v89 += 2;
          --v86;
        }

        while (v86);
      }

      v97 = v165;
      DiffResult.inserts.getter();
      v98 = v152;
      IndexSet.makeIterator()();
      v190(v97, v166);
      v99 = v87;
      v100 = v197;
      dispatch thunk of Collection.endIndex.getter();
      v101 = v199;
      v102 = dispatch thunk of static Equatable.== infix(_:_:)();
      v103 = v100;
      v104 = v101;
      v105 = v189;
      while (1)
      {
        v105(v103, v104);
        if (v102)
        {
          break;
        }

        v106 = dispatch thunk of Collection.subscript.read();
        v108 = *v107;
        v106(v208, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v109 = &v88[*(swift_getTupleTypeMetadata2() + 48)];
        (*v205)(v88, v200, v99);
        *v109 = v108;
        *(v109 + 1) = v108;
        v110 = v199;
        v109[16] = 0;
        swift_storeEnumTagMultiPayload();
        Array.append(_:)();
        dispatch thunk of Collection.endIndex.getter();
        v102 = dispatch thunk of static Equatable.== infix(_:_:)();
        v103 = v100;
        v104 = v110;
      }

      outlined destroy of IndexingIterator<IndexSet>(v98, type metadata accessor for IndexingIterator<IndexSet>);
      outlined destroy of IndexingIterator<IndexSet>(v192, MEMORY[0x1E697DA50]);
      return v207;
    }

    v199 = v40;

    v111 = v163;
  }

  else
  {
    v199 = v40;
    v111 = v163;
  }

  v215 = Array.init()();
  v112 = v187;
  CountingIndexListDataSource.rowIDs(forSectionAt:)(v23, v60, v187);
  v113 = type metadata accessor for CountingIndexListDataSource();
  v114 = v188;
  CountingIndexListDataSource.rowIDs(forSectionAt:)(v200, v113, v188);
  (*(v111 + 16))(v159, v112, v189);
  (*(v164 + 16))(v199, v114, v190);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = CollectionChanges.init<A, B>(from:to:)();
  v115 = v210;
  v204 = *(v210 + 2);
  if (!v204)
  {
LABEL_26:
    (*(v164 + 8))(v188, v190);
    (*(v163 + 8))(v187, v189);

    return v215;
  }

  v116 = 0;
  v168 = v155 + 8;
  v199 = v193 + 16;
  v197 = (v193 + 32);
  v167 = (v156 + 8);
  v166 = (v153 + 8);
  v165 = (v154 + 8);
  v117 = v210 + 64;
  v201 = v18;
  v196 = v210;
  while (v116 < *(v115 + 2))
  {
    v133 = *(v117 - 4);
    v132 = *(v117 - 3);
    v135 = *(v117 - 1);
    v134 = *v117;
    v136 = v117[8];
    v137 = *(v117 - 16);
    if (v117[57])
    {
      if (v117[57] != 1)
      {
        goto LABEL_21;
      }

      v138 = v180;
      v205 = v116;
      Collection<>.indices.getter();
      v210 = v133;
      v211 = v132;
      LOBYTE(v212) = v137 & 1;
      *(&v212 + 1) = v135;
      v213 = v134;
      v214 = v136 & 1;
      v139 = v181;
      v140 = v185;
      DefaultIndices.subscript.getter();
      v141 = *v168;
      (*v168)(v138, v140);
      v142 = v182;
      MEMORY[0x18D00CB50](v140, v184);
      v141(v139, v140);
      v143 = v193;
      v144 = v191;
      v145 = v201;
      (*(v193 + 16))(v191, v200, v201);
      v146 = (*(v143 + 80) + 48) & ~*(v143 + 80);
      v147 = swift_allocObject();
      v148 = v195;
      *(v147 + 2) = v194;
      *(v147 + 3) = v148;
      v149 = v203;
      *(v147 + 4) = i;
      *(v147 + 5) = v149;
      (*(v143 + 32))(&v147[v146], v144, v145);
      v150 = v183;
      swift_getWitnessTable();
      LazySequenceProtocol.map<A>(_:)();

      (*v167)(v142, v150);
      type metadata accessor for Array();
      swift_getWitnessTable();
    }

    else
    {
      v118 = v171;
      v205 = v116;
      Collection<>.indices.getter();
      v210 = v133;
      v211 = v132;
      LOBYTE(v212) = v137 & 1;
      *(&v212 + 1) = v135;
      v213 = v134;
      v214 = v136 & 1;
      v119 = v172;
      v120 = v176;
      DefaultIndices.subscript.getter();
      v121 = *v166;
      v122 = v118;
      v115 = v196;
      (*v166)(v122, v120);
      v123 = v173;
      MEMORY[0x18D00CB50](v120, v175);
      v121(v119, v120);
      v124 = v193;
      v125 = v191;
      v126 = v201;
      (*(v193 + 16))(v191, v202, v201);
      v127 = (*(v124 + 80) + 48) & ~*(v124 + 80);
      v128 = swift_allocObject();
      v129 = v195;
      *(v128 + 2) = v194;
      *(v128 + 3) = v129;
      v130 = v203;
      *(v128 + 4) = i;
      *(v128 + 5) = v130;
      (*(v124 + 32))(&v128[v127], v125, v126);
      v131 = v174;
      swift_getWitnessTable();
      LazySequenceProtocol.map<A>(_:)();

      (*v165)(v123, v131);
      type metadata accessor for Array();
      swift_getWitnessTable();
    }

    result = Array.append<A>(contentsOf:)();
    v116 = v205;
LABEL_21:
    v116 = (v116 + 1);
    v117 += 96;
    if (v204 == v116)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void type metadata accessor for IndexingIterator<IndexSet>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexSet>)
  {
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<IndexSet>);
    }
  }
}

uint64_t CountingIndexListDataSource.viewIDsIfAvailable(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for CountingIndex();
  (*(*(*(v9 + 16) - 8) + 16))(v8, a1);
  (*(v3 + 88))(v8, v4, v3);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t ShadowListDataSource.viewIDsIfAvailable(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 + 24) + 8);
  type metadata accessor for ShadowListUpdateRecorder();
  result = ShadowListUpdateRecorder.hasUpdates.getter();
  if (result)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    (*(v7 + 16))(v9, v3, v6);
    (*(v11 + 88))(a1, v6, v11);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

BOOL ShadowListUpdateRecorder.hasUpdates.getter()
{
  ShadowListUpdateRecorder.updates.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ListUpdate();
  type metadata accessor for Array();
  swift_getWitnessTable();
  type metadata accessor for ConcatenatedCollection();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

unint64_t CollectionViewListDataSource.viewIDsIfAvailable(forSectionAt:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v1 + 64) + 16) > result)
  {
    return SectionAccumulator.RowIDs.heterogeneous.getter();
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation8IndexSetVACSlAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of IndexingIterator<IndexSet>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ListBatchUpdates.computeMoves<A>(from:to:)(void (**a1)(char *, uint64_t), void (**a2)(char *, uint64_t, uint64_t), uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v6 = v5;
  v333 = a2;
  v332 = a1;
  v9 = *(a3 + 16);
  v354 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v307 = type metadata accessor for CountingIndexCollection();
  v353 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v306 = &v279 - v10;
  swift_getAssociatedTypeWitness();
  v352 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v360 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for CountingIndex();
  v361 = v11;
  v363 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v362 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v357 = TupleTypeMetadata2;
  v308 = swift_getTupleTypeMetadata2();
  v290 = type metadata accessor for Optional();
  v351 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v289 = (&v279 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v295 = &v279 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v288 = (&v279 - v18);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v305 = type metadata accessor for CountingIndexCollection();
  v318 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v304 = &v279 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v321 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v311 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v279 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v310 = &v279 - v24;
  v317 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v282 = &v279 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v329 = &v279 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v286 = &v279 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v331 = &v279 - v32;
  v328 = type metadata accessor for CountingIndexCollection();
  v348 = *(v328 - 8);
  MEMORY[0x1EEE9AC00](v328);
  v327 = &v279 - v33;
  AssociatedConformanceWitness = swift_getTupleTypeMetadata2();
  v339 = type metadata accessor for Optional();
  v337 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339 - 8);
  v302 = &v279 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v301 = &v279 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v300 = (&v279 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v313 = (&v279 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v279 - v42);
  swift_getAssociatedTypeWitness();
  v335 = a5;
  v334 = a4;
  swift_getAssociatedConformanceWitness();
  v326 = type metadata accessor for CountingIndexCollection();
  v309 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v325 = &v279 - v44;
  v356 = swift_getAssociatedTypeWitness();
  v360 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v316 = &v279 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v315 = &v279 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v319 = &v279 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v312 = &v279 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v320 = &v279 - v53;
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v324 = &v279 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v342 = &v279 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v293 = &v279 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v314 = &v279 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v294 = &v279 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v279 - v66;
  WitnessTable = swift_getWitnessTable();
  v69 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v363);
  v366 = v11;
  v367 = v362;
  v368 = WitnessTable;
  v369 = v69;
  v70 = type metadata accessor for ListUpdate();
  v346 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v279 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v279 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v279 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v287 = &v279 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v362 = &v279 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v343 = &v279 - v84;
  v85 = Array.init()();
  v364 = *v5;
  v365 = v85;
  v86 = type metadata accessor for Array();
  swift_getWitnessTable();
  v349 = v86;
  v87 = v72;
  RandomAccessCollection<>.indices.getter();
  v363 = 0;
  v89 = v366;
  v88 = v367;
  if (v366 == v367)
  {
LABEL_2:
    v366 = v363;
    v90 = MEMORY[0x1E69E6D08];
    type metadata accessor for Range<Int>(0, &lazy cache variable for type metadata for PartialRangeFrom<Int>, MEMORY[0x1E69E6D08]);
    swift_getWitnessTable();
    lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>, &lazy cache variable for type metadata for PartialRangeFrom<Int>, v90);
    RangeReplaceableCollection.removeSubrange<A>(_:)();
    v366 = v365;
    swift_getWitnessTable();
    return Array.append<A>(contentsOf:)();
  }

  if (v367 < v366)
  {
    goto LABEL_64;
  }

  v363 = 0;
  v341 = v346 + 40;
  v330 = (v346 + 8);
  v338 = (v317 + 8);
  v340 = (v54 + 16);
  v323 = (v348 + 1);
  v298 = (v353 + 8);
  v345 = AssociatedConformanceWitness - 8;
  v322 = (v321 + 1);
  v344 = (v360 + 8);
  v348 = (v54 + 8);
  v92 = (v54 + 32);
  ++v337;
  v297 = v308 - 8;
  v284 = (v317 + 32);
  v292 = (v321 + 2);
  v291 = (v317 + 16);
  v283 = (v351 + 8);
  v321 = (v309 + 1);
  v296 = (v318 + 8);
  v309 = (v360 + 16);
  v359 = v5;
  v299 = v43;
  v347 = v67;
  v351 = v70;
  v281 = v87;
  v280 = v75;
  v285 = v78;
  v350 = v92;
  v355 = v367;
  while (v89 < v88)
  {
    v95 = v363;
    if (v89 != v363)
    {
      v96 = v343;
      Array.subscript.getter();
      Array._makeMutableAndUnique()();
      v97 = *v6;
      Array._checkSubscript_mutating(_:)(v95);
      (*(v346 + 40))(&v97[((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v95], v96, v70);
    }

    v98 = *v6;
    Array.subscript.getter();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v353 = v98;
        v360 = v89;
        v157 = v357;
        v158 = &v362[*(v357 + 48)];
        v160 = *(v158 + 1);
        v317 = *v158;
        v159 = v317;
        v318 = v160;
        v161 = v158[16];
        v162 = v324;
        (*v92)(v324);
        v163 = &v329[*(v157 + 48)];
        (*v340)();
        *v163 = v159;
        *(v163 + 1) = v160;
        v163[16] = v161;
        v164 = type metadata accessor for CountingIndexListDataSource();
        v165 = v327;
        CountingIndexListDataSource.sectionIDs.getter(v164, v327);
        v166 = v316;
        v167 = v328;
        CountingIndexCollection.subscript.getter();
        v168 = v165;
        v169 = AssociatedConformanceWitness;
        v170 = v356;
        (*v323)(v168, v167);
        v171 = v306;
        v172 = v311;
        CountingIndexListDataSource.rowIDs(forSectionAt:)(v162, v164, v306);
        v173 = v359;
        v366 = v317;
        v367 = v318;
        LOBYTE(v368) = v161;
        v174 = v307;
        CountingIndexCollection.subscript.getter();
        (*v298)(v171, v174);
        v175 = v173[3];
        v176 = swift_getAssociatedConformanceWitness();
        v177 = v302;
        MEMORY[0x18D00C560](v166, v175, v170, v169, v176);
        if ((*(*(v169 - 8) + 48))(v177, 1, v169) != 1)
        {
          (*v322)(v172, AssociatedTypeWitness);
          (*v344)(v166, v170);
          (*v338)(v329, v357);
          (*v348)(v324, v361);
          (*v337)(v177, v339);
          v67 = v347;
          v70 = v351;
          v6 = v173;
          goto LABEL_32;
        }

        (*v337)(v177, v339);
        v6 = v173;
        v178 = v173[4];
        v179 = AssociatedTypeWitness;
        v180 = swift_getAssociatedConformanceWitness();
        v181 = v289;
        v182 = v308;
        MEMORY[0x18D00C560](v172, v178, v179, v308, v180);
        v183 = *(v182 - 8);
        if ((*(v183 + 48))(v181, 1, v182) == 1)
        {
          (*v283)(v181, v290);
          (*v292)(v303, v172, v179);
          v184 = *(v182 + 48);
          v185 = v295;
          v95 = v363;
          *v295 = v363;
          v186 = v329;
          v187 = v357;
          (*v291)(&v185[v184], v329, v357);
          (*(v183 + 56))(v185, 0, 1, v182);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          (*v322)(v172, v179);
          (*v344)(v316, v356);
          (*v338)(v186, v187);
          (*v348)(v324, v361);
          v67 = v347;
          v70 = v351;
          goto LABEL_53;
        }

        v224 = *v181;
        v225 = v181 + *(v182 + 48);
        v226 = v282;
        v227 = v357;
        (*v284)(v282, v225, v357);
        v228 = v281;
        v229 = v351;
        Array.subscript.getter();
        v230 = swift_getEnumCaseMultiPayload();
        v67 = v347;
        if (v230 != 3)
        {
          v276 = *v338;
          v277 = v361;
          (*v338)(v226, v227);
          (*v322)(v311, AssociatedTypeWitness);
          (*v344)(v316, v356);
          v276(v329, v227);
          v6 = v359;
          (*v348)(v324, v277);
          (*v330)(v228, v229);
          v70 = v229;
LABEL_32:
          v89 = v360;
          v88 = v355;
          v95 = v363;
LABEL_54:
          v92 = v350;
          v93 = __OFADD__(v95, 1);
          v94 = (v95 + 1);
          if (v93)
          {
            goto LABEL_61;
          }

          goto LABEL_7;
        }

        v353 = *v348;
        v353(v228, v361);
        v231 = *v292;
        v318 = v224;
        v232 = v226;
        v233 = AssociatedTypeWitness;
        v231(v303, v311, AssociatedTypeWitness);
        (*(v183 + 56))(v295, 1, 1, v182);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v234 = v6;
        v235 = *(swift_getTupleTypeMetadata2() + 48);
        v236 = *v291;
        v237 = v343;
        v238 = v232;
        (*v291)(v343, v232, v357);
        v239 = v329;
        v236(&v237[v235], v329, v357);
        v240 = v357;
        swift_storeEnumTagMultiPayload();
        Array._makeMutableAndUnique()();
        v241 = *v234;
        v242 = v318;
        Array._checkSubscript_mutating(_:)(v318);
        v243 = *v338;
        (*v338)(v238, v240);
        (*v322)(v311, v233);
        (*v344)(v316, v356);
        v243(v239, v240);
        v353(v324, v361);
        (*(v346 + 40))(v241 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v242, v237, v229);
        v154 = v363 - 1;
        if (__OFSUB__(v363, 1))
        {
          goto LABEL_66;
        }

        v70 = v229;
LABEL_46:
        v6 = v359;
LABEL_47:
        v89 = v360;
        v88 = v355;
        goto LABEL_59;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v119 = v67;
        v120 = v357;
        v121 = swift_getTupleTypeMetadata2();
        v122 = *v338;
        v123 = v362;
        (*v338)(&v362[*(v121 + 48)], v120);
        v124 = v120;
        v67 = v119;
        v122(v123, v124);
        v6 = v359;
      }

      else
      {
        (*v330)(v362, v70);
      }

      v88 = v355;
      v93 = __OFADD__(v95, 1);
      v94 = (v95 + 1);
      if (v93)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v360 = v89;
      v353 = v98;
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_68;
        }

        v125 = v357;
        v126 = &v362[*(v357 + 48)];
        v127 = *v126;
        v128 = *(v126 + 1);
        v129 = v126[16];
        (*v92)(v342);
        v130 = &v331[*(v125 + 48)];
        (*v340)();
        *v130 = v127;
        *(v130 + 1) = v128;
        v130[16] = v129;
        v131 = type metadata accessor for CountingIndexListDataSource();
        v132 = v325;
        CountingIndexListDataSource.sectionIDs.getter(v131, v325);
        v133 = v315;
        v134 = v326;
        CountingIndexCollection.subscript.getter();
        v135 = v342;
        (*v321)(v132, v134);
        v136 = v304;
        CountingIndexListDataSource.rowIDs(forSectionAt:)(v135, v131, v304);
        v366 = v127;
        v367 = v128;
        LOBYTE(v368) = v129;
        v137 = v310;
        v138 = v305;
        CountingIndexCollection.subscript.getter();
        (*v296)(v136, v138);
        v6 = v359;
        v139 = v359[3];
        v140 = v356;
        v141 = swift_getAssociatedConformanceWitness();
        v142 = v301;
        v143 = v139;
        v144 = AssociatedConformanceWitness;
        MEMORY[0x18D00C560](v133, v143, v140, AssociatedConformanceWitness, v141);
        if ((*(*(v144 - 8) + 48))(v142, 1, v144) != 1)
        {
          (*v322)(v137, AssociatedTypeWitness);
          (*v344)(v133, v140);
          (*v338)(v331, v357);
          (*v348)(v135, v361);
          (*v337)(v142, v339);
          v67 = v347;
          v70 = v351;
          goto LABEL_32;
        }

        (*v337)(v142, v339);
        v145 = v6[4];
        v146 = AssociatedTypeWitness;
        v147 = swift_getAssociatedConformanceWitness();
        v148 = v288;
        v149 = v308;
        MEMORY[0x18D00C560](v137, v145, v146, v308, v147);
        v150 = *(v149 - 8);
        if ((*(v150 + 48))(v148, 1, v149) == 1)
        {
          (*v283)(v148, v290);
          v151 = v140;
          (*v292)(v303, v137, v146);
          v152 = *(v149 + 48);
          v153 = v295;
          v154 = v363;
          *v295 = v363;
          v155 = v357;
          (*v291)(&v153[v152], v331, v357);
          (*(v150 + 56))(v153, 0, 1, v149);
          type metadata accessor for Dictionary();
          Dictionary.subscript.setter();
          (*v322)(v137, v146);
          v156 = v151;
          v6 = v359;
          (*v344)(v315, v156);
          (*v338)(v331, v155);
          (*v348)(v342, v361);
          v70 = v351;
          goto LABEL_47;
        }

        v244 = *v148;
        v245 = v148 + *(v149 + 48);
        v246 = v286;
        v247 = v357;
        (*v284)(v286, v245, v357);
        v248 = v280;
        v249 = v351;
        Array.subscript.getter();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v353 = *v348;
          v353(v248, v361);
          v250 = *v292;
          v318 = v244;
          v251 = v310;
          v252 = AssociatedTypeWitness;
          v250(v303, v310, AssociatedTypeWitness);
          (*(v150 + 56))(v295, 1, 1, v149);
          type metadata accessor for Dictionary();
          v253 = v286;
          Dictionary.subscript.setter();
          v254 = v6;
          v255 = *(swift_getTupleTypeMetadata2() + 48);
          v256 = *v291;
          v257 = v343;
          v258 = v331;
          (*v291)(v343, v331, v357);
          v256(&v257[v255], v253, v357);
          swift_storeEnumTagMultiPayload();
          Array._makeMutableAndUnique()();
          v259 = *v254;
          v260 = v318;
          Array._checkSubscript_mutating(_:)(v318);
          v261 = *v338;
          v262 = v253;
          v263 = v357;
          (*v338)(v262, v357);
          (*v322)(v251, v252);
          (*v344)(v315, v356);
          v261(v258, v263);
          v353(v342, v361);
          (*(v346 + 40))(v259 + ((*(v346 + 80) + 32) & ~*(v346 + 80)) + *(v346 + 72) * v260, v257, v249);
          v154 = v363 - 1;
          if (__OFSUB__(v363, 1))
          {
            goto LABEL_67;
          }

          v70 = v249;
          goto LABEL_46;
        }

        v278 = *v338;
        (*v338)(v246, v247);
        (*v322)(v310, AssociatedTypeWitness);
        (*v344)(v315, v140);
        v278(v331, v247);
        v6 = v359;
        (*v348)(v342, v361);
        (*v330)(v248, v249);
        v70 = v249;
        v89 = v360;
        v88 = v355;
        v154 = v363;
LABEL_59:
        v92 = v350;
        v67 = v347;
        v93 = __OFADD__(v154, 1);
        v94 = v154 + 1;
        if (v93)
        {
          goto LABEL_61;
        }

        goto LABEL_7;
      }

      if (EnumCaseMultiPayload)
      {
        v188 = *v92;
        v189 = v314;
        v190 = v361;
        (*v92)(v314, v362, v361);
        v191 = type metadata accessor for CountingIndexListDataSource();
        v192 = v327;
        CountingIndexListDataSource.sectionIDs.getter(v191, v327);
        v193 = v319;
        v194 = v328;
        CountingIndexCollection.subscript.getter();
        (*v323)(v192, v194);
        v195 = v359[3];
        v196 = v193;
        v197 = v356;
        v198 = swift_getAssociatedConformanceWitness();
        v199 = v300;
        v200 = v193;
        v201 = AssociatedConformanceWitness;
        MEMORY[0x18D00C560](v200, v195, v197, AssociatedConformanceWitness, v198);
        v202 = *(v201 - 8);
        if ((*(v202 + 48))(v199, 1, v201) == 1)
        {
          (*v337)(v199, v339);
          (*v309)(v312, v196, v197);
          v203 = AssociatedConformanceWitness;
          v204 = *(AssociatedConformanceWitness + 48);
          v205 = v313;
          v206 = v363;
          *v313 = v363;
          (*v340)(v205 + v204, v189, v190);
          (*(v202 + 56))(v205, 0, 1, v203);
          type metadata accessor for Dictionary();
          v207 = v359;
          Dictionary.subscript.setter();
          (*v344)(v196, v197);
          (*v348)(v189, v190);
          v67 = v347;
          v92 = v350;
          v70 = v351;
          v89 = v360;
          v88 = v355;
          v6 = v207;
          v94 = v206 + 1;
          if (__OFADD__(v206, 1))
          {
            goto LABEL_61;
          }

          goto LABEL_7;
        }

        v220 = *v199;
        v221 = v293;
        v92 = v350;
        (v188)(v293, v199 + *(AssociatedConformanceWitness + 48), v190);
        v222 = v285;
        v70 = v351;
        Array.subscript.getter();
        if (swift_getEnumCaseMultiPayload())
        {
          v223 = *v348;
          (*v348)(v221, v190);
          (*v344)(v319, v356);
          v223(v314, v190);
          (*v330)(v222, v70);
          v67 = v347;
          goto LABEL_49;
        }

        v267 = v346;
        (*(v346 + 8))(v222, v70);
        v268 = v190;
        (*v309)(v312, v319, v356);
        (*(v202 + 56))(v313, 1, 1, AssociatedConformanceWitness);
        type metadata accessor for Dictionary();
        v6 = v359;
        Dictionary.subscript.setter();
        v269 = *(swift_getTupleTypeMetadata2() + 48);
        v270 = *v340;
        v271 = v343;
        v272 = v293;
        (*v340)(v343, v293, v268);
        v273 = v314;
        (v270)(&v271[v269], v314, v268);
        v70 = v351;
        swift_storeEnumTagMultiPayload();
        Array._makeMutableAndUnique()();
        v274 = *v6;
        Array._checkSubscript_mutating(_:)(v220);
        (*(v267 + 40))(&v274[((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v220], v271, v70);
        v366 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v332, v272, v333, v273, v352, v334, v354, v335);
        swift_getWitnessTable();
        Array.append<A>(contentsOf:)();
        v275 = *v348;
        (*v348)(v272, v268);
        (*v344)(v319, v356);
        v275(v273, v268);
        v95 = (v363 - 1);
        v67 = v347;
        if (__OFSUB__(v363, 1))
        {
          goto LABEL_65;
        }

LABEL_53:
        v89 = v360;
        v88 = v355;
        goto LABEL_54;
      }

      v100 = *v92;
      (*v92)(v67, v362, v361);
      v101 = type metadata accessor for CountingIndexListDataSource();
      v102 = v325;
      CountingIndexListDataSource.sectionIDs.getter(v101, v325);
      v103 = v320;
      v104 = v326;
      CountingIndexCollection.subscript.getter();
      (*v321)(v102, v104);
      v6 = v359;
      v105 = v359[3];
      v106 = v356;
      v107 = swift_getAssociatedConformanceWitness();
      v108 = v299;
      v109 = v105;
      v110 = v103;
      v111 = v67;
      v112 = AssociatedConformanceWitness;
      MEMORY[0x18D00C560](v103, v109, v106, AssociatedConformanceWitness, v107);
      v113 = *(v112 - 8);
      if ((*(v113 + 48))(v108, 1, v112) == 1)
      {
        (*v337)(v108, v339);
        (*v309)(v312, v110, v106);
        v114 = AssociatedConformanceWitness;
        v115 = *(AssociatedConformanceWitness + 48);
        v116 = v313;
        *v313 = v95;
        v117 = v111;
        v118 = v361;
        (*v340)(v116 + v115, v117, v361);
        (*(v113 + 56))(v116, 0, 1, v114);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        (*v344)(v110, v106);
        v67 = v347;
        (*v348)(v347, v118);
        v70 = v351;
        goto LABEL_53;
      }

      v208 = *v108;
      v209 = v294;
      v92 = v350;
      (v100)(v294, v108 + *(AssociatedConformanceWitness + 48), v361);
      v210 = v287;
      v70 = v351;
      Array.subscript.getter();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v264 = *v348;
        v265 = v209;
        v266 = v361;
        (*v348)(v265, v361);
        (*v344)(v320, v356);
        v67 = v347;
        v264(v347, v266);
        (*v330)(v210, v70);
LABEL_49:
        v6 = v359;
        v89 = v360;
        v88 = v355;
        v94 = v363 + 1;
        if (__OFADD__(v363, 1))
        {
          goto LABEL_61;
        }

        goto LABEL_7;
      }

      v211 = v346;
      (*(v346 + 8))(v210, v70);
      (*v309)(v312, v320, v356);
      (*(v113 + 56))(v313, 1, 1, AssociatedConformanceWitness);
      type metadata accessor for Dictionary();
      v6 = v359;
      Dictionary.subscript.setter();
      v212 = v361;
      v213 = *(swift_getTupleTypeMetadata2() + 48);
      v214 = *v340;
      v215 = v343;
      v216 = v347;
      (*v340)(v343, v347, v212);
      v217 = v294;
      (v214)(&v215[v213], v294, v212);
      v70 = v351;
      swift_storeEnumTagMultiPayload();
      Array._makeMutableAndUnique()();
      v218 = *v6;
      Array._checkSubscript_mutating(_:)(v208);
      (*(v211 + 40))(&v218[((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v208], v215, v70);
      v366 = specialized ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:)(v332, v216, v333, v217, v352, v334, v354, v335);
      swift_getWitnessTable();
      Array.append<A>(contentsOf:)();
      v219 = *v348;
      (*v348)(v217, v212);
      (*v344)(v320, v356);
      v219(v216, v212);
      if (__OFSUB__(v363, 1))
      {
        goto LABEL_63;
      }

      v89 = v360;
      v88 = v355;
      v92 = v350;
      v67 = v216;
      v94 = v363;
      if (__OFADD__(v363 - 1, 1))
      {
LABEL_61:
        __break(1u);
        break;
      }
    }

LABEL_7:
    v363 = v94;
    if (v88 == ++v89)
    {
      goto LABEL_2;
    }
  }

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
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ListCoreBatchUpdates.formResult<A>(_:)(uint64_t *a1, int *a2)
{
  v3 = v2;
  type metadata accessor for (source: IndexPath, destination: IndexPath)();
  v55 = v6;
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for IndexPath();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v53 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = v49 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v59 = v49 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v58 = v49 - v15;
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[4];
  v66 = a2;
  v21 = v18;
  ListCoreBatchUpdates.resetAll()();
  v72 = v16;
  v73 = v17;
  v74 = v21;
  v75 = v19;
  v76 = v20;
  v77 = 0;
  v22 = type metadata accessor for ListBatchUpdates();

  if (!ListBatchUpdates.endIndex.getter())
  {
LABEL_36:
  }

  v23 = 0;
  v57 = v8;
  v61 = (v8 + 32);
  v64 = v17;
  v65 = v16;
  v63 = v21;
  v51 = v19;
  v50 = v20;
  v49[1] = v22;
  while (1)
  {
    v67 = v16;
    v68 = v17;
    v69 = v21;
    v70 = v19;
    v71 = v20;
    result = ListBatchUpdates.subscript.getter(v23, &v78);
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v81 <= 2u)
    {
      if (!v81)
      {
        v42 = v78;
LABEL_35:
        IndexSet.insert(_:)(v42);
        goto LABEL_5;
      }

      if (v81 == 1)
      {
        goto LABEL_34;
      }

      v56 = v78;
      v26 = v66[10];
      v27 = *(v3 + v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
      }

      v44 = *(v27 + 16);
      v43 = *(v27 + 24);
      v45 = v56;
      if (v44 >= v43 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v27);
        v45 = v56;
        v27 = v48;
      }

      *(v27 + 16) = v44 + 1;
      *(v27 + 16 * v44 + 32) = v45;
    }

    else if (v81 > 4u)
    {
      if (v81 != 5)
      {
LABEL_34:
        v42 = v78;
        goto LABEL_35;
      }

      v31 = v79;
      v30 = v80;
      v32 = v3;
      v33 = v52;
      MEMORY[0x18D000680](*(&v78 + 1), v78);
      v34 = v53;
      MEMORY[0x18D000680](v30, v31);
      v35 = *(v55 + 48);
      v36 = *v61;
      v37 = v60;
      v38 = v33;
      v3 = v32;
      v39 = v62;
      (*v61)(v60, v38, v62);
      v36(v37 + v35, v34, v39);
      v26 = v66[13];
      v27 = *(v32 + v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
      }

      v41 = *(v27 + 16);
      v40 = *(v27 + 24);
      v19 = v51;
      v20 = v50;
      if (v41 >= v40 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1, v27);
      }

      *(v27 + 16) = v41 + 1;
      outlined init with take of (source: IndexPath, destination: IndexPath)?(v60, v27 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, type metadata accessor for (source: IndexPath, destination: IndexPath));
    }

    else if (v81 == 3)
    {
      MEMORY[0x18D000680](*(&v78 + 1), v78);
      v26 = v66[11];
      v27 = *(v3 + v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v27);
      }

      *(v27 + 16) = v29 + 1;
      (*(v57 + 32))(v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v29, v58, v62);
    }

    else
    {
      MEMORY[0x18D000680](*(&v78 + 1), v78);
      v26 = v66[12];
      v27 = *(v3 + v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1, v27);
      }

      v47 = *(v27 + 16);
      v46 = *(v27 + 24);
      if (v47 >= v46 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v27);
      }

      *(v27 + 16) = v47 + 1;
      (*(v57 + 32))(v27 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47, v59, v62);
    }

    *(v3 + v26) = v27;
    v17 = v64;
    v16 = v65;
    v21 = v63;
LABEL_5:
    ++v23;
    if (v25 == ListBatchUpdates.endIndex.getter())
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for (source: IndexPath, destination: IndexPath)()
{
  if (!lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath))
  {
    type metadata accessor for IndexPath();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath));
    }
  }
}

uint64_t ListBatchUpdates.endIndex.getter()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CountingIndex();
  v2 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v2);
  v3 = type metadata accessor for ListUpdate();
  return MEMORY[0x18D00CDE0](v1, v3);
}

uint64_t assignWithCopy for NavigationDestinationModifier.SeededResolver(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t static ViewDecoders.registerStandard()()
{
  type metadata accessor for ArchivableFactory<ArchivableLinkModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableLinkModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableLinkModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableLinkModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableLinkModifier>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableButtonAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableButtonAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableToggleAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableToggleAppIntentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivablePlaybackButtonViewModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivablePlaybackButtonViewModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityActionModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<ArchivableAccessibilityActionModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>);
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory();
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
  type metadata accessor for ArchivableFactory<InvalidatableContentModifier>();
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<InvalidatableContentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<InvalidatableContentModifier>);
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableFactory<InvalidatableContentModifier> and conformance ArchivableFactory<A>, type metadata accessor for ArchivableFactory<InvalidatableContentModifier>);

  return static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)();
}

void type metadata accessor for ArchivableFactory<ArchivableLinkModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableLinkModifier>)
  {
    type metadata accessor for ArchivableLinkModifier(255);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivableLinkModifier and conformance ArchivableLinkModifier, type metadata accessor for ArchivableLinkModifier);
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<ArchivableLinkModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
    lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView>);
    }
  }
}

uint64_t _ArchivedViewStates.init(contentsOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    type metadata accessor for FileArchiveReader();
    (*(v6 + 16))(v8, a1, v5);
    v9 = FileArchiveReader.__allocating_init(url:)();
    if (!v2)
    {
      _ArchivedViewStates.init(reader:delegate:)(v9, 0, a2);
    }

    return (*(v6 + 8))(a1, v5);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _ArchivedViewStates.init(reader:delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for ArchivedViewCore.Metadata();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ArchivedViewStates(0);
  v32 = v10[6];
  *(a3 + v32) = 0;
  v11 = v10[7];
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], MEMORY[0x1E697DAC0]);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC8];
  v31[1] = v12;
  *(a3 + v11) = v12;
  v13 = v10[8];
  static ViewDecoders.registerStandard()();
  *a3 = a1;
  v31[2] = a2;
  *(a3 + v13) = a2;
  type metadata accessor for JSONDecoder();
  swift_allocObject();

  JSONDecoder.init()();
  v14 = ArchiveReader.endIndex.getter();
  result = ArchiveReader.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = ArchiveReader.endIndex.getter();
  if (v14 < 0 || result < v14)
  {
    goto LABEL_19;
  }

  v33 = a3;
  v16 = ArchiveReader.subscript.getter();
  v18 = v17;
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivedViewCore.Metadata and conformance ArchivedViewCore.Metadata, MEMORY[0x1E697E930]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    outlined consume of Data._Representation(v16, v18);

LABEL_11:
  }

  outlined consume of Data._Representation(v16, v18);

  v19 = v33;
  v20 = v33 + v10[5];
  outlined init with take of _ArchivedView(v9, v20, MEMORY[0x1E697E930]);
  if (*v20 != 13)
  {

    type metadata accessor for _ArchivedViewStates.Error(0);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates.Error and conformance _ArchivedViewStates.Error, type metadata accessor for _ArchivedViewStates.Error);
    swift_allocError();
    v22 = v21;
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v22, 1, 2, v23);
    goto LABEL_10;
  }

  if (*(v20 + 24) == 1)
  {
  }

  v24 = *(v20 + 16);
  result = ArchiveReader.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if ((v24 & 0x8000000000000000) == 0 && v24 < result)
    {
      ArchiveReader.subscript.getter();

      ProtobufDecoder.init(_:)();
      _DisplayList_StableIdentityMap.init(from:)();
      v25 = v34;

      v29 = v35;
      v30 = v32;

      *(v19 + v30) = v29;
      return result;
    }

    type metadata accessor for _ArchivedViewStates.Error(0);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type _ArchivedViewStates.Error and conformance _ArchivedViewStates.Error, type metadata accessor for _ArchivedViewStates.Error);
    swift_allocError();
    v27 = v26;
    v28 = type metadata accessor for UUID();
    (*(*(v28 - 8) + 56))(v27, 2, 2, v28);
LABEL_10:
    swift_willThrow();

    outlined destroy of _ArchivedView(v20, MEMORY[0x1E697E930]);
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing);
    lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing);
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<CircularPercentageGaugeRing>.ArchivableTimelineProgressView>);
    }
  }
}

void type metadata accessor for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>)
  {
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>);
    }
  }
}

void type metadata accessor for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, &lazy cache variable for type metadata for TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base);
    lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(&lazy protocol witness table cache variable for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView, &lazy cache variable for type metadata for TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView, lazy protocol witness table accessor for type ResolvedCircularPlaybackProgressView.Base and conformance ResolvedCircularPlaybackProgressView.Base);
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivableButtonAppIntentModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableButtonAppIntentModifier>)
  {
    lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    lazy protocol witness table accessor for type ArchivableButtonAppIntentModifier and conformance ArchivableButtonAppIntentModifier();
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<ArchivableButtonAppIntentModifier>);
    }
  }
}

uint64_t outlined init with take of _ArchivedView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _ArchivedViewStates.auxiliaryData.getter()
{
  if (*v0)
  {
    if (*(v0 + *(type metadata accessor for _ArchivedViewStates(0) + 20) + 40))
    {
      return 0;
    }

    else
    {

      v2 = ArchiveReader.subscript.getter();

      return v2;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

char *sub_18C063418(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
    return result;
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  type metadata accessor for URL?();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[10]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_18C063598(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[6];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[8];
    goto LABEL_11;
  }

  type metadata accessor for URL?();
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = &a1[a3[10]];

  return v17(v18, a2, v16);
}

void *initializeWithCopy for _ArchivedViewStates(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v7[24] = *(a2 + v6 + 24);
  *(v7 + 2) = *(a2 + v6 + 16);
  v7[40] = *(a2 + v6 + 40);
  *(v7 + 4) = *(a2 + v6 + 32);
  *(v7 + 6) = *(a2 + v6 + 48);
  v10 = type metadata accessor for ArchivedViewCore.Metadata();
  v11 = v10[9];
  v12 = type metadata accessor for UUID();
  v19 = *(*(v12 - 8) + 16);

  v19(&v7[v11], &v8[v11], v12);
  v7[v10[10]] = v8[v10[10]];
  v13 = v10[11];
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  v7[v10[12]] = v8[v10[12]];
  v17 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v17) = *(a2 + v17);
  *(a1 + a3[8]) = *(a2 + a3[8]);

  return a1;
}

void type metadata accessor for ArchivableFactory<ArchivableToggleAppIntentModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableToggleAppIntentModifier>)
  {
    lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<ArchivableToggleAppIntentModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivablePlaybackButtonViewModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivablePlaybackButtonViewModifier>)
  {
    type metadata accessor for ArchivablePlaybackButtonViewModifier(255);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<ArchivablePlaybackButtonViewModifier>);
    }
  }
}

void type metadata accessor for ArchivableFactory<ArchivableAccessibilityActionModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<ArchivableAccessibilityActionModifier>)
  {
    lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    lazy protocol witness table accessor for type ArchivableAccessibilityActionModifier and conformance ArchivableAccessibilityActionModifier();
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<ArchivableAccessibilityActionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory()
{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory;
  if (!lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAccessibilityViewModifier.Factory and conformance ArchivableAccessibilityViewModifier.Factory);
  }

  return result;
}

void type metadata accessor for ArchivableFactory<InvalidatableContentModifier>()
{
  if (!lazy cache variable for type metadata for ArchivableFactory<InvalidatableContentModifier>)
  {
    lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    v0 = type metadata accessor for ArchivableFactory();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ArchivableFactory<InvalidatableContentModifier>);
    }
  }
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSbSg_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for UserDefaultLocation<Bool?>(0, &lazy cache variable for type metadata for UserDefaultLocation<Bool?>, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 3;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

void *_UIHostingView.__allocating_init(rootView:)(uint64_t a1)
{
  v3 = specialized _UIHostingView.__allocating_init(rootView:)(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

uint64_t destroy for _ArchivedViewStates(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 20);

  v5 = *(type metadata accessor for ArchivedViewCore.Metadata() + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _ArchivedViewStates(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(*(v3 + *(a3 + 20) + 8) + 16);
  if (*result <= v5 && v4 <= v5)
  {
    return (v4 - *result);
  }

  __break(1u);
  return result;
}

uint64_t makeUserInfo #1 (_:) in _ArchivedViewStates.state(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = type metadata accessor for ArchiveReader();
  static ArchiveReader.readerKey.getter();
  v27 = v11;
  v26[0] = a2;

  specialized Dictionary.subscript.setter(v26, v10);
  static ArchiveReader.cacheKey.getter();
  v12 = type metadata accessor for _ArchivedViewStates(0);
  v13 = *(a3 + *(v12 + 28));
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], MEMORY[0x1E697DAC0]);
  v27 = v14;
  v26[0] = v13;

  specialized Dictionary.subscript.setter(v26, v10);
  static ArchiveReader.namedImagesKey.getter();
  v15 = type metadata accessor for NamedImage.Cache();
  swift_allocObject();

  v16 = NamedImage.Cache.init(archiveDelegate:)();
  v27 = v15;
  v26[0] = v16;
  specialized Dictionary.subscript.setter(v26, v10);
  static ArchivedViewCore.preferredBundleLanguageKey.getter();
  v17 = a3 + *(v12 + 20);
  v18 = type metadata accessor for ArchivedViewCore.Metadata();
  v19 = (v17 + *(v18 + 44));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = MEMORY[0x1E69E6158];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v26[2] = 0;
  }

  v26[0] = v21;
  v26[1] = v20;
  v27 = v22;

  specialized Dictionary.subscript.setter(v26, v7);
  static ArchivedViewCore.preferredCompositionLanguage.getter();
  v23 = *(v17 + *(v18 + 48));
  type metadata accessor for CTCompositionLanguage(0);
  v27 = v24;
  LOBYTE(v26[0]) = v23;
  return specialized Dictionary.subscript.setter(v26, v10);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(unint64_t, char *, uint64_t, uint64_t))
{
  v32 = a6;
  v33 = a7;
  v30 = a4;
  v31 = a5;
  v8 = v7;
  v12 = type metadata accessor for CodingUserInfoKey();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v30();
      goto LABEL_7;
    }

    v31();
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v8;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v15, a2, v12);
      return v33(v18, v15, a1, v24);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v8;
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v25 = *(v24 + 56) + 32 * v18;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v26 = v32;

  return v26(a1, v25);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, void (*a3)(void, __n128), void (*a4)(unint64_t, _BYTE *))
{
  v44 = a4;
  v6 = v4;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  a3(0, v10);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v46 = v12;
    v47 = v8;
    v38 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v39 = (v9 + 16);
    v40 = v9;
    v43 = (v9 + 32);
    v22 = result + 64;
    v41 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v45 = *(v9 + 72);
      v29 = v28 + v45 * v27;
      if (v42)
      {
        (*v43)(v46, v29, v47);
        v44(*(v13 + 56) + 32 * v27, v48);
      }

      else
      {
        (*v39)(v46, v29, v47);
        outlined init with copy of Any(*(v13 + 56) + 32 * v27, v48);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v9 = v40;
        v13 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v9 = v40;
      v13 = v41;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v43)((*(v15 + 48) + v45 * v23), v46, v47);
      result = (v44)(v48, *(v15 + 56) + 32 * v23);
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v6 = v15;
  return result;
}

void type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Any>)
  {
    type metadata accessor for CodingUserInfoKey();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Any>);
    }
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for CodingUserInfoKey();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = a5(a3, a4[7] + 32 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t ProtobufDecoder.decodeVarint()()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = v2 + 1;
  if (v1 < (v2 + 1))
  {
LABEL_2:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = *v2;
  result = v5 & 0x7F;
  if (v5 < 0)
  {
    v7 = 7;
    while (1)
    {
      v6 = v3 + 1;
      if (v1 < (v3 + 1))
      {
        break;
      }

      v8 = *v3;
      v9 = (*v3 & 0x7F) << v7;
      if (v7 > 0x3F)
      {
        v9 = 0;
      }

      result |= v9;
      v7 += 7;
      v3 = v6;
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_10;
      }
    }

    *(v0 + 8) = v3;
    goto LABEL_2;
  }

  v6 = v3;
LABEL_10:
  *(v0 + 8) = v6;
  return result;
}

id outlined copy of PlatformDrawableContent.Storage(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  switch(a6)
  {
    case 2u:

    case 3u:
      return swift_unknownObjectRetain();
    case 4u:
      return result;
  }

  return result;
}

void outlined consume of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:

        break;
    }
  }
}

uint64_t specialized closure #1 in _UIHostingView._rendererConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = specialized _UIHostingView.base.getter();
  v3 = UIHostingViewBase.viewGraph.getter();

  v4 = *(v3 + 96);

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

uint64_t specialized closure #1 in _UIHostingView._rendererConfiguration.setter()
{
  v0 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  DisplayList.ViewRenderer.configuration.setter();
}

uint64_t partial apply for specialized closure #1 in _UIHostingView._rendererConfiguration.setter()
{
  return specialized closure #1 in _UIHostingView._rendererConfiguration.setter();
}

{
  return partial apply for specialized closure #1 in _UIHostingView._rendererConfiguration.setter();
}

uint64_t (*protocol witness for _UIHostingViewable._rendererConfiguration.modify in conformance <> UIHostingController<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = specialized UIHostingController._rendererConfiguration.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

void (*specialized UIHostingController._rendererConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for UIHostingController.host;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v6;
  static Update.locked<A>(_:)();
  *(v4 + 48) = 0;

  return UIHostingController._rendererConfiguration.modifyspecialized ;
}

void UIHostingController._rendererConfiguration.modifyspecialized (uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 32) + *(*a1 + 40));
  if (a2)
  {

    v4 = v3;
    static Update.locked<A>(_:)();
  }

  else
  {
    v5 = v3;
    static Update.locked<A>(_:)();
  }

  free(v2);
}

uint64_t protocol witness for _UIHostingViewable._rendererObject.getter in conformance <> UIHostingController<A>()
{
  v3 = *(v0 + direct field offset for UIHostingController.host);
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Swift.AnyObject?);
  v1 = v3;
  static Update.locked<A>(_:)();

  return v4;
}

uint64_t specialized closure #1 in _UIHostingView._rendererObject.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  v3 = DisplayList.ViewRenderer.exportedObject(rootView:)();

  *a1 = v3;
  return result;
}

uint64_t initializeWithCopy for RBDrawingView.State(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of PlatformDrawableContent.Storage(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t destroy for RBDrawingView.State(uint64_t a1)
{
  outlined consume of PlatformDrawableContent.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
}

id static UIViewPlatformViewDefinition.getRBLayer(drawingView:)()
{
  type metadata accessor for RBDrawingView();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = [v0 layer];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

char *static UIViewPlatformViewDefinition.makeDrawingView(options:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[2];
  v5 = *(a1 + 12);
  if ((v4 & 1) != 0 && [objc_opt_self() isSupported])
  {
    v6 = type metadata accessor for RBDrawingView();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state;
    PlatformDrawableContent.init()();
    LOBYTE(v43) = 3;
    v44 = 0;
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    AtomicBox.init(wrappedValue:)();
    *&v7[v8] = v39;
    v9 = &v7[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options];
    *v9 = v1;
    v9[4] = v2;
    v9[5] = v3;
    *(v9 + 2) = v4;
    v9[12] = v5;
    v34.receiver = v7;
    v34.super_class = v6;
    v10 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v11 = &v10[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options];
    v12 = (*&v10[OBJC_IVAR____TtC7SwiftUI13RBDrawingView_options + 8] >> 1) & 1;
    v13 = v10;
    [v13 setOpaque_];
    v14 = *(v11 + 2);
    v15 = *(v11 + 2);
    v16 = v11[12];
    LODWORD(v35) = *v11;
    WORD2(v35) = v14;
    DWORD2(v35) = v15;
    BYTE12(v35) = v16;
    v17 = [v13 layer];
    PlatformDrawableOptions.update(rbLayer:)();

    v13[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = (v11[8] & 0x10) != 0;
    v18 = &lazy protocol witness table cache variable for type RBDrawingView and conformance RBDrawingView;
    v19 = type metadata accessor for RBDrawingView;
  }

  else
  {
    v20 = type metadata accessor for CGDrawingView();
    v21 = objc_allocWithZone(v20);
    v22 = &v21[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options];
    *v22 = v1;
    v22[4] = v2;
    v22[5] = v3;
    *(v22 + 2) = v4;
    v22[12] = v5;
    v45.receiver = v21;
    v45.super_class = v20;
    v23 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v24 = &v23[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options];
    v25 = (*&v23[OBJC_IVAR____TtC7SwiftUI13CGDrawingView_options + 8] >> 1) & 1;
    v13 = v23;
    [v13 setOpaque_];
    v26 = [v13 layer];
    v27 = *(v24 + 2);
    v28 = *(v24 + 2);
    v29 = v24[12];
    LODWORD(v35) = *v24;
    WORD2(v35) = v27;
    DWORD2(v35) = v28;
    BYTE12(v35) = v29;
    v30 = PlatformDrawableOptions.caLayerContentsFormat.getter();
    [v26 setContentsFormat_];

    v18 = &lazy protocol witness table cache variable for type CGDrawingView and conformance CGDrawingView;
    v19 = type metadata accessor for CGDrawingView;
  }

  lazy protocol witness table accessor for type CGDrawingView and conformance CGDrawingView(v18, v19);
  v31 = v13;
  [v31 setContentMode_];
  [v31 setAutoresizesSubviews_];
  [v31 _setFocusInteractionEnabled_];
  v32 = [v31 layer];
  [v32 setAnchorPoint_];

  return v31;
}

id RenderBoxView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7SwiftUI13RenderBoxView_rendersFirstFrameAsynchronously] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for RenderBoxView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setDelegate_];
  [v10 setOpaque_];

  return v9;
}

uint64_t _ArchivedViewStates.state(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*v2)
  {
    goto LABEL_34;
  }

  v5 = v2;
  v8 = type metadata accessor for _ArchivedViewStates(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v33 = v2 + *(v8 + 20);
  if (*(*(v33 + 1) + 16) <= a1)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v31 = v8;

  v9 = ArchiveReader.subscript.getter();
  v11 = v10;
  outlined copy of Data._Representation(v9, v10);
  ProtobufDecoder.init(_:)();
  makeUserInfo #1 (_:) in _ArchivedViewStates.state(at:)(&v43, v4, v2);
  v34 = 0;
  DisplayList.init()();
  v12 = 0;
  v13 = v35;
  v14 = v36;
  v32 = v37;
  v15 = v39;
  if (v39 >= v40)
  {
    v17 = v35;
    goto LABEL_28;
  }

  while (2)
  {
    v29 = v13;
    while (1)
    {
      v16 = v41;
      if (v41)
      {
        if (v15 < v42)
        {
          goto LABEL_12;
        }

        if (v42 < v15)
        {
          goto LABEL_25;
        }

        v41 = 0;
      }

      v16 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_24;
      }

      if (v16 < 8)
      {
LABEL_25:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();

        outlined consume of Data._Representation(v9, v11);
      }

LABEL_12:
      if (v16 >> 3 == 2)
      {
        break;
      }

      if (v16 >> 3 == 1)
      {
        v44 = v16;
        type metadata accessor for CGSize(0);
        ProtobufDecoder.messageField<A>(_:)();
        if (v3)
        {
          goto LABEL_24;
        }

        v12 = v34;
        v15 = v39;
        if (v39 >= v40)
        {
LABEL_27:
          v17 = v29;
          goto LABEL_28;
        }
      }

      else
      {
        v34 = v16;
        ProtobufDecoder.skipField(_:)();
        if (v3)
        {
          goto LABEL_24;
        }

        v15 = v39;
        if (v39 >= v40)
        {
          goto LABEL_27;
        }
      }
    }

    v44 = v16;
    ProtobufDecoder.messageField<A>(_:)();
    if (v3)
    {
LABEL_24:

      outlined consume of Data._Representation(v9, v11);
    }

    v17 = v34;
    v14 = 0;
    v32 = 0;

    v15 = v39;
    v13 = v34;
    v3 = 0;
    if (v39 < v40)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v28 = v17;
  v30 = v14;
  v19 = v9;
  v20 = v11;
  if (*(*(v33 + 6) + 16) <= a1)
  {
    v27 = 0;
    v22 = 0xF000000000000000;
  }

  else
  {
    v27 = ArchiveReader.subscript.getter();
    v22 = v21;
  }

  v23 = type metadata accessor for _ArchivedView(0);
  ArchivedViewCore.Metadata.archiveID.getter();

  outlined consume of Data._Representation(v19, v20);

  v24 = *(v5 + *(v31 + 24));
  v25 = v23[7];
  *(a2 + v25) = 0;
  *(a2 + v23[8]) = 0x40000000;
  v26 = a2 + v23[9];
  *v26 = xmmword_18CD77CA0;
  *a2 = v12;
  *(a2 + 8) = 0;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 28) = v32;
  *(a2 + 32) = a1;

  *(a2 + v25) = v24;
  result = outlined consume of Data?(*v26, *(v26 + 8));
  *v26 = v27;
  *(v26 + 8) = v22;
  return result;
}

uint64_t protocol witness for _UIHostingViewable._rendererConfiguration.setter in conformance <> UIHostingController<A>()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  static Update.locked<A>(_:)();
}

void protocol witness for _UIHostingViewable._rendererConfiguration.getter in conformance <> UIHostingController<A>()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  static Update.locked<A>(_:)();
}

uint64_t lazy protocol witness table accessor for type CGDrawingView and conformance CGDrawingView(unint64_t *a1, void (*a2)(uint64_t))
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

void destroy for WidgetAuxiliaryViewMetadata.Graphic(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {

    v3 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v4 = *(v3 + 20);
    type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(a1 + v4, v5);
    }

    v6 = a1 + *(v3 + 48);
    v7 = *v6;
    v8 = *(v6 + 2) | (v6[12] << 32);
    v9 = v6[13];

    outlined consume of ContentTransition.Storage(v7, v8, v9);
  }
}

uint64_t outlined consume of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *initializeWithCopy for WidgetAuxiliaryViewMetadata.Graphic(char *a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    v8 = v7[5];
    v9 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);

    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v8], (a2 + v8), *(*(v9 - 8) + 64));
    }

    else
    {
      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 16))(&a1[v8], a2 + v8, v10);
      swift_storeEnumTagMultiPayload();
    }

    v11 = v7[6];
    v12 = &a1[v11];
    v13 = a2 + v11;
    *v12 = *v13;
    v12[4] = *(v13 + 4);
    a1[v7[7]] = *(a2 + v7[7]);
    *&a1[v7[8]] = *(a2 + v7[8]);
    v14 = v7[9];
    v15 = &a1[v14];
    v16 = a2 + v14;
    *v15 = *v16;
    v15[16] = *(v16 + 16);
    a1[v7[10]] = *(a2 + v7[10]);
    *&a1[v7[11]] = *(a2 + v7[11]);
    v17 = v7[12];
    v18 = &a1[v17];
    v19 = a2 + v17;
    v20 = *(a2 + v17);
    v21 = *(v19 + 12);
    v22 = *(v19 + 8);
    v23 = *(v19 + 13);

    outlined copy of ContentTransition.Storage(v20, v22 | (v21 << 32), v23);
    *v18 = v20;
    v18[12] = v21;
    *(v18 + 2) = v22;
    v18[13] = v23;
    v18[14] = *(v19 + 14);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v23 - v11);
  type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic, WidgetAuxiliaryViewMetadata.Graphic)(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a2, &v15[v17], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *&v15[v17];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v20 = static NSObject.== infix(_:_:)();

LABEL_9:
      v21 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic;
      goto LABEL_10;
    }
  }

  else
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(&v15[v17], v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      v20 = specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.== infix(_:_:)(v12, v6);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v6, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
      goto LABEL_9;
    }

    outlined destroy of ResolvableTextSegmentAttribute.Value?(v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named);
  }

  v20 = 0;
  v21 = type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic, WidgetAuxiliaryViewMetadata.Graphic);
LABEL_10:
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, v21);
  return v20 & 1;
}

void type metadata accessor for (WidgetAuxiliaryViewMetadata?, WidgetAuxiliaryViewMetadata?)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of WidgetAuxiliaryViewMetadata.Graphic.Named(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named(0);
    if (specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.Location.== infix(_:_:)(a1 + v5[5], a2 + v5[5]))
    {
      v6 = v5[6];
      v7 = (a1 + v6);
      v8 = *(a1 + v6 + 4);
      v9 = (a2 + v6);
      v10 = *(a2 + v6 + 4);
      if (v8)
      {
        if (!v10)
        {
          return v10 & 1;
        }
      }

      else
      {
        if (*v7 != *v9)
        {
          LOBYTE(v10) = 1;
        }

        if (v10)
        {
          goto LABEL_14;
        }
      }

      if (*(a1 + v5[7]) == *(a2 + v5[7]))
      {
        v12 = v5[8];
        v13 = *(a1 + v12);
        v14 = *(a2 + v12);
        if (v13)
        {
          if (!v14 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV8ResolvedV_Tt1g5(v13, v14) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else if (v14)
        {
          goto LABEL_14;
        }

        v15 = v5[9];
        v16 = (a1 + v15);
        v17 = *(a1 + v15 + 16);
        v18 = a2 + v15;
        if (v17)
        {
          if ((v18[16] & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v18[16])
          {
            goto LABEL_14;
          }

          v20 = *v18;
          v19 = *(v18 + 1);
          v21 = v16[1];
          v22 = COERCE_FLOAT(*v16) == *&v20 && COERCE_FLOAT(HIDWORD(*v16)) == *(&v20 + 1);
          v23 = v22 && *&v21 == *&v19;
          if (!v23 || *(&v21 + 1) != *(&v19 + 1))
          {
            goto LABEL_14;
          }
        }

        v25 = v5[10];
        v26 = *(a1 + v25);
        v27 = *(a2 + v25);
        if (v26 == 8)
        {
          if (v27 != 8)
          {
            goto LABEL_14;
          }
        }

        else if (v26 != v27)
        {
          goto LABEL_14;
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV_Tt1g5(*(a1 + v5[11]), *(a2 + v5[11])))
        {
          v28 = v5[12];
          v29 = a1 + v28;
          v30 = *(a1 + v28);
          v31 = *(a1 + v28 + 12);
          v32 = *(a1 + v28 + 8);
          v33 = *(a1 + v28 + 14);
          v34 = a2 + v28;
          v35 = *v34;
          v36 = v34[12];
          v37 = *(v34 + 2);
          v38 = v37 | (v36 << 32);
          v39 = v34[14];
          v40 = v29[13];
          v41 = v34[13];
          v46 = v30;
          v48 = v31;
          v47 = v32;
          v49 = v40;
          v42 = v35;
          v44 = v36;
          v43 = v37;
          v45 = v41;
          outlined copy of ContentTransition.Storage(v30, v32 | (v31 << 32), v40);
          outlined copy of ContentTransition.Storage(v35, v38, v41);
          LOBYTE(v35) = specialized static ContentTransition.Storage.== infix(_:_:)(&v46, &v42);
          outlined consume of ContentTransition.Storage(v42, v43 | (v44 << 32), v45);
          outlined consume of ContentTransition.Storage(v46, v47 | (v48 << 32), v49);
          LOBYTE(v10) = v35 & (v33 ^ v39 ^ 1);
          return v10 & 1;
        }
      }
    }
  }

LABEL_14:
  LOBYTE(v10) = 0;
  return v10 & 1;
}

uint64_t specialized static WidgetAuxiliaryViewMetadata.Graphic.Named.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for URL();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic.Named.Location, WidgetAuxiliaryViewMetadata.Graphic.Named.Location)(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 56);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a1, v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(a2, &v15[v17], type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v12, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v24;
      (*(v4 + 32))(v6, &v15[v17], v24);
      v19 = static URL.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v6, v20);
      v21(v12, v20);
      outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
      return v19 & 1;
    }

    (*(v4 + 8))(v12, v24);
    goto LABEL_6;
  }

  outlined init with copy of WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(v15, v9, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for (WidgetAuxiliaryViewMetadata.Graphic.Named.Location, WidgetAuxiliaryViewMetadata.Graphic.Named.Location));
    v19 = 0;
    return v19 & 1;
  }

  v18 = *v9 ^ v15[v17];
  outlined destroy of ResolvableTextSegmentAttribute.Value?(v15, type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location);
  v19 = v18 ^ 1;
  return v19 & 1;
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v23 = v2;
  v24 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v19 = *v5;
    *v20 = v8;
    *&v20[13] = *(v5 + 29);
    v9 = v6[1];
    v21 = *v6;
    v22[0] = v9;
    *(v22 + 13) = *(v6 + 29);
    v16 = v19;
    v17 = *v20;
    v18 = *&v20[8];
    v13 = v21;
    v14 = v9;
    v15 = WORD4(v9);
    outlined init with copy of _SymbolEffect(&v19, v12);
    outlined init with copy of _SymbolEffect(&v21, v12);
    outlined init with copy of _SymbolEffect(&v19, v12);
    outlined init with copy of _SymbolEffect(&v21, v12);
    v10 = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v16, &v13);
    outlined consume of _SymbolEffect.Storage(v13, *(&v13 + 1), v14, v15);
    outlined consume of _SymbolEffect.Storage(v16, *(&v16 + 1), v17, v18);
    outlined destroy of _SymbolEffect(&v21);
    outlined destroy of _SymbolEffect(&v19);
    if ((v10 & 1) == 0 || *&v20[12] != *(v22 + 3))
    {
      return 0;
    }

    if (v20[20])
    {
      if ((BYTE4(v22[1]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE4(v22[1]) & 1) != 0 || *&v20[16] != *&v22[1])
    {
      return 0;
    }

    if (v20[28])
    {
      if ((BYTE12(v22[1]) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((BYTE12(v22[1]) & 1) != 0 || *&v20[24] != *(&v22[1] + 2))
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 3;
    v5 += 3;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI5ColorV8ResolvedV_Tt1g5(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t specialized static ContentTransition.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) | (*(a1 + 12) << 32);
  v4 = *(a1 + 13);
  v5 = *a2;
  v6 = *(a2 + 8) | (*(a2 + 12) << 32);
  v7 = *(a2 + 13);
  if (!*(a1 + 13))
  {
    if (!*(a2 + 13))
    {
      v9 = HIBYTE(*(a1 + 8));
      outlined consume of ContentTransition.Storage(*a1, v3, 0);
      outlined consume of ContentTransition.Storage(v5, v6, 0);
      v14 = v2;
      BYTE2(v15) = BYTE2(v3);
      LOWORD(v15) = v3;
      HIBYTE(v15) = v9;
      v16 = BYTE4(v3);
      v11 = v5;
      BYTE2(v12) = BYTE2(v6);
      LOWORD(v12) = v6;
      HIBYTE(v12) = BYTE3(v6);
      v13 = BYTE4(v6);
      v8 = specialized static ContentTransition.NamedTransition.== infix(_:_:)(&v14, &v11);
      return v8 & 1;
    }

    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v14 = *a1;
      v15 = v3;
      v16 = BYTE4(v3);
      v11 = v5;
      v12 = v6;
      v13 = BYTE4(v6);
      v8 = specialized static ContentTransition.CustomTransition.== infix(_:_:)(&v14, &v11);
      outlined copy of ContentTransition.Storage(v2, v3, 1);
      outlined copy of ContentTransition.Storage(v5, v6, 1);
      outlined consume of ContentTransition.Storage(v2, v3, 1);
      outlined consume of ContentTransition.Storage(v5, v6, 1);
      return v8 & 1;
    }

LABEL_12:
    outlined copy of ContentTransition.Storage(v5, v6, v7);
    outlined consume of ContentTransition.Storage(v2, v3, v4);
    outlined consume of ContentTransition.Storage(v5, v6, v7);
    v8 = 0;
    return v8 & 1;
  }

  if (v7 != 2)
  {
    goto LABEL_12;
  }

  outlined consume of ContentTransition.Storage(*a1, v3, 2);
  outlined consume of ContentTransition.Storage(v5, v6, 2);
  if (*&v3 == *&v6)
  {
    v8 = (v2 == v5) & (BYTE4(v2) ^ ((v5 & 0x100000000) == 0));
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Graphic.Named(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  v6 = a1 + *(a2 + 48);
  v7 = *v6;
  v8 = *(v6 + 8) | (*(v6 + 12) << 32);
  v9 = *(v6 + 13);

  return outlined consume of ContentTransition.Storage(v7, v8, v9);
}

void *initializeWithCopy for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

uint64_t destroy for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v3 = type metadata accessor for URL();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void UIHostingController._rendererConfiguration.getter()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  _UIHostingView._rendererConfiguration.getter();
}

void (*UIHostingController._rendererConfiguration.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  UIHostingController._rendererConfiguration.getter();
  return UIHostingController._rendererConfiguration.modify;
}

uint64_t closure #1 in _UIHostingView._rendererConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = _UIHostingView.base.getter();
  v3 = UIHostingViewBase.viewGraph.getter();

  v4 = *(v3 + 96);

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  return result;
}

void UIHostingController._rendererConfiguration.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    UIHostingController._rendererConfiguration.setter();
  }

  else
  {
    UIHostingController._rendererConfiguration.setter();
  }

  free(v2);
}

void UIHostingController._rendererConfiguration.setter()
{
  v1 = *(v0 + direct field offset for UIHostingController.host);
  _UIHostingView._rendererConfiguration.setter();
}

uint64_t closure #1 in _UIHostingView._rendererConfiguration.setter()
{
  v0 = _UIHostingView.base.getter();
  UIHostingViewBase.viewGraph.getter();

  DisplayList.ViewRenderer.configuration.setter();
}

uint64_t outlined copy of ContentTransition.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void type metadata completion function for DisplayList.HostedViewState.Key()
{
  _s10Foundation4UUIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t BorderlessButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder()
{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder;
  if (!lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivablePlaceholder and conformance ArchivablePlaceholder);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ArchivablePlaceholder()
{
  lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder();
  static RendererLeafView.makeLeafView(view:inputs:)();
  lazy protocol witness table accessor for type ArchivablePlaceholder and conformance ArchivablePlaceholder();
  return static LeafViewLayout.makeLeafLayout(_:view:inputs:)();
}

uint64_t initializeWithCopy for DisplayList.HostedViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v6;
  *(a1 + 120) = *(a2 + 120);
  v7 = v3;

  return a1;
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void _s10Foundation4UUIDVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4UUIDVSgMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2)
{
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v245 = a3;
  v248 = a2;
  v8 = type metadata accessor for DisplayList.ArchiveIDs();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720]);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v221 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v214 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v230 = &v214 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v229 = &v214 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v222 = &v214 - v23;
  _s10Foundation4UUIDVSgMaTm_0(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], v12);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v224 = &v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v214 - v27;
  v225 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  MEMORY[0x1EEE9AC00](v225);
  MEMORY[0x1EEE9AC00](v29);
  v223 = (&v214 - v31);
  v32 = *(a1 + 4);
  v33 = *a1;
  v238 = *a1;
  if ((v32 & 2) == 0)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      if (v34 == 1)
      {
        v244 = 0;
        v35 = 0;
      }

      else
      {
        v202 = 0;
        v203 = 0;
        v35 = v34 & 0x7FFFFFFFFFFFFFFELL;
        v204 = (v238 + 144);
        v205 = v34 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v206 = *(v204 - 10);
          v208 = *v204;
          v204 += 20;
          v207 = v208;
          if (v206 > v202)
          {
            v202 = v206;
          }

          if (v207 > v203)
          {
            v203 = v207;
          }

          v205 -= 2;
        }

        while (v205);
        if (v202 <= v203)
        {
          v202 = v203;
        }

        v244 = v202;
        if (v34 == v35)
        {
          goto LABEL_135;
        }
      }

      v209 = v34 - v35;
      v210 = (v238 + 80 * v35 + 64);
      do
      {
        v212 = *v210;
        v210 += 10;
        v211 = v212;
        v213 = v244;
        if (v212 > v244)
        {
          v213 = v211;
        }

        v244 = v213;
        --v209;
      }

      while (v209);
    }

    else
    {
      v244 = 0;
    }

LABEL_135:
    *a5 = v244;
    return;
  }

  v247 = a4;
  v36 = v9;
  v219 = v28;
  v220 = v30;

  DisplayList.init()();
  v37 = v249;
  v38 = WORD4(v249);
  v239 = a1;
  v39 = HIDWORD(v249);

  *v239 = v37;
  *(v239 + 4) = v38;
  *(v239 + 3) = v39;
  v236 = *(v33 + 16);
  if (!v236)
  {

    v244 = 0;
    goto LABEL_135;
  }

  v216 = a5;
  v217 = v14;
  v215 = v11;
  v244 = 0;
  v40 = 0;
  v235 = v33 + 32;
  v226 = (v36 + 48);
  v227 = v8;
  v218 = (v36 + 56);
  while (1)
  {
    v41 = (v235 + 80 * v40);
    v272[0] = *v41;
    v42 = v41[1];
    v43 = v41[2];
    v44 = v41[3];
    *&v274[12] = *(v41 + 60);
    v273 = v43;
    *v274 = v44;
    v272[1] = v42;
    v45 = v41[1];
    v270 = *v41;
    v271 = v45;
    v46 = *(&v273 + 1);
    v47 = v273;
    v49 = *(&v44 + 1);
    v48 = v44;
    v50 = *&v274[16];
    v51 = *&v274[24];
    LODWORD(v266) = *&v274[24];
    outlined init with copy of DisplayList.Item(v272, &v249);
    outlined init with copy of DisplayList.Item(v272, &v249);
    DisplayList.Index.enter(identity:)();
    v52 = v249;
    v53 = v50 >> 30;
    v240 = v250;
    v241 = v51;
    if (v50 >> 30 > 1)
    {
      break;
    }

    v242 = v48;
    if (v53)
    {
      v69 = HIDWORD(v48);
      *&v262 = v49;
      WORD4(v262) = v50;
      HIDWORD(v262) = HIDWORD(v50);
      v70 = v49;
      v71 = v234;
      _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v245, v234, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
      outlined copy of DisplayList.Item.Value(v46, v242, v70, v50);

      outlined copy of DisplayList.Effect(v46, v242, SBYTE4(v48));

      v233 = v70;
      v243 = v50;
      v72 = v242;
      outlined consume of DisplayList.Item.Value(v46, v242, v70, v50);
      v237 = v40;
      switch(BYTE4(v72))
      {
        case 1u:
          v135 = swift_projectBox();
          outlined assign with copy of DisplayList.ArchiveIDs?(v135, v71);
          v68 = v46;
          v111 = v72;
          v231 = v72;
          v232 = 1;
          break;
        case 7u:
          v108 = *(v46 + 16);
          v109 = *(v46 + 24);
          v110 = *(v46 + 28);
          v111 = v72;
          LODWORD(v232) = *(v46 + 32);
          *&v249 = v108;
          WORD4(v249) = v109;
          HIDWORD(v249) = v110;
          v112 = MEMORY[0x1E697DC50];
          v113 = v230;
          _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v71, v230, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);

          v114 = v247;
          DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v266, &v249, v248, v113, v247);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v113, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v112, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          v115 = v266;
          v68 = swift_allocObject();
          v116 = WORD4(v249);
          v117 = HIDWORD(v249);
          *(v68 + 16) = v249;
          *(v68 + 24) = v116;
          v118 = v232;
          *(v68 + 28) = v117;
          *(v68 + 32) = v118;
          outlined consume of DisplayList.Effect(v46, v111, 7);
          if (v115 > v47)
          {
            v47 = v115;
          }

          v231 = 0;
          v232 = 7;
          v119 = v71;
          v120 = v114;
          v121 = v46;
          goto LABEL_75;
        case 0xDu:
          outlined init with copy of _Benchmark(v46 + 16, &v266);
          v73 = *v248;
          v74 = *v226;
          v75 = 1;
          if (!(*v226)(v71, 1, v227))
          {
            DisplayList.ArchiveIDs.uuid.getter();
            v75 = 0;
          }

          v76 = type metadata accessor for UUID();
          v77 = *(*(v76 - 8) + 56);
          v78 = v224;
          v77(v224, v75, 1, v76);
          v79 = *(v225 + 24);
          v80 = v76;
          v81 = v220;
          v77(v220 + v79, 1, 1, v80);
          *v81 = v73;
          outlined assign with take of UUID?(v78, v81 + v79);
          v82 = *(v246 + 104);
          v83 = *(v82 + 16);
          v228 = v46;
          if (v83 && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(v81), (v85 & 1) != 0))
          {
            outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v82 + 56) + 184 * v84, &v249);
            if (*(&v251 + 1) && v258)
            {
              *&v260 = v258;
              DWORD2(v260) = DWORD2(v258);
              v86 = PreferencesOutputs.subscript.getter();
              outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v249, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
              if ((v86 & 0x100000000) == 0)
              {
                v87 = *(&v267 + 1);
                v88 = v247;
                v89 = v268;
                __swift_project_boxed_opaque_existential_1(&v266, *(&v267 + 1));
                (*(v89 + 24))(&v260, v87, v89);
                v90 = v260;
                v214 = v262;
                LODWORD(v231) = WORD4(v262);
                LODWORD(v232) = HIDWORD(v262);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v249 = v88;
                v92 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
                v94 = v88[2];
                v95 = (v93 & 1) == 0;
                v96 = __OFADD__(v94, v95);
                v97 = v94 + v95;
                if (v96)
                {
                  goto LABEL_138;
                }

                v98 = v93;
                if (v88[3] >= v97)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_94;
                  }

                  v194 = v92;
                  specialized _NativeDictionary.copy()();
                  v92 = v194;
                  v120 = v249;
                  if ((v98 & 1) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_95:
                  v181 = v120[7] + 16 * v92;
                  *v181 = v214;
                  *(v181 + 8) = v231;
                  *(v181 + 12) = v232;
                }

                else
                {
                  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v97, isUniquelyReferenced_nonNull_native);
                  v92 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
                  if ((v98 & 1) != (v99 & 1))
                  {
                    goto LABEL_140;
                  }

LABEL_94:
                  v120 = v249;
                  if (v98)
                  {
                    goto LABEL_95;
                  }

LABEL_116:
                  v120[(v92 >> 6) + 8] |= 1 << v92;
                  *(v120[6] + 4 * v92) = v90;
                  v195 = v120[7] + 16 * v92;
                  *v195 = v214;
                  *(v195 + 8) = v231;
                  *(v195 + 12) = v232;
                  v196 = v120[2];
                  v96 = __OFADD__(v196, 1);
                  v197 = v196 + 1;
                  if (v96)
                  {
                    goto LABEL_139;
                  }

                  v120[2] = v197;
                }

                Value = AGGraphGetValue();
                v199 = *Value;
                v200 = *(Value + 8);
                v201 = *(Value + 12);

                _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v220, type metadata accessor for DisplayList.HostedViewState.Key);
                *&v262 = v199;
                WORD4(v262) = v200;
                HIDWORD(v262) = v201;
LABEL_60:
                v136 = MEMORY[0x1E697DC50];
                v137 = v221;
                _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v234, v221, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
                v138 = v227;
                v139 = v74(v137, 1, v227);
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v137, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v136, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
                if (v139 == 1)
                {
                  v68 = 0;
                  v140 = 20;
                }

                else
                {
                  v68 = swift_allocBox();
                  (*v218)(v157, 1, 1, v138);
                  v140 = 1;
                }

                v121 = v228;
                v232 = v140;
                __swift_destroy_boxed_opaque_existential_1(&v266);
                v111 = v242;
                outlined consume of DisplayList.Effect(v121, v242, 13);
                v231 = 0;
                v119 = v234;
LABEL_75:
                v158 = MEMORY[0x1E697DC50];
                v159 = v230;
                _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v119, v230, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
                DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v249, &v262, v248, v159, v120);

                outlined consume of DisplayList.Item.Value(v121, v111, v233, v243);
                v160 = MEMORY[0x1E69E6720];
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v159, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v158, MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
                v161 = v249;
                v162 = v262;
                v48 = v231 | (v232 << 32);
                v163 = WORD4(v262) | (HIDWORD(v262) << 32) | 0x40000000;
                outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
                if (v161 > v47)
                {
                  v47 = v161;
                }

                v50 = v163;
                v49 = v162;
                outlined destroy of DisplayList.HostedViewState.ViewInfo?(v234, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, v158, v160, _s10Foundation4UUIDVSgMaTm_0);
                goto LABEL_78;
              }

LABEL_59:
              DisplayList.init()();
              _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v81, type metadata accessor for DisplayList.HostedViewState.Key);
              *&v262 = v249;
              WORD4(v262) = WORD4(v249);
              HIDWORD(v262) = HIDWORD(v249);
              v120 = v247;
              goto LABEL_60;
            }
          }

          else
          {
            v259 = 0;
            v257 = 0u;
            v258 = 0u;
            v255 = 0u;
            v256 = 0u;
            v253 = 0u;
            v254 = 0u;
            memset(v252, 0, sizeof(v252));
            v250 = 0u;
            v251 = 0u;
            v249 = 0u;
          }

          outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v249, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
          goto LABEL_59;
        default:
          v68 = v46;
          v231 = v72;
          v232 = v69;
          v111 = v72;
          break;
      }

      v119 = v71;
      v120 = v247;
      v121 = v46;
      goto LABEL_75;
    }

    v54 = v46 >> 60;
    v55 = v229;
    if (v46 >> 60 == 11)
    {
      v122 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v123 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v124 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      v125 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v126 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v237 = v40;
      v127 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v128 = v49;
      v129 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      LODWORD(v243) = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v130 = *((v46 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      *&v249 = v122;
      WORD4(v249) = v123;
      HIDWORD(v249) = v124;
      v48 = v242;
      outlined copy of DisplayList.Item.Value(v46, v242, v128, v50);
      outlined copy of DisplayList.Item.Value(v46, v48, v128, v50);
      outlined copy of DisplayList.Content.Value(v46);

      outlined consume of DisplayList.Item.Value(v46, v48, v128, v50);
      outlined consume of DisplayList.Content.Value(v46);
      DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v266, &v249, v248, v245, v247);
      outlined consume of DisplayList.Item.Value(v46, v48, v128, v50);
      v131 = v266;
      v132 = swift_allocObject();
      v133 = WORD4(v249);
      v134 = HIDWORD(v249);
      *(v132 + 16) = v249;
      *(v132 + 24) = v133;
      *(v132 + 28) = v134;
      *(v132 + 32) = v125;
      *(v132 + 40) = v126;
      *(v132 + 48) = v127;
      v40 = v237;
      *(v132 + 52) = v129;
      *(v132 + 56) = v243;
      v68 = v132 | 0xB000000000000000;
      *(v132 + 60) = v130;
      outlined consume of DisplayList.Content.Value(0xE000000000000000);
      v48 = v48;
      outlined copy of DisplayList.Content.Value(v68);
      outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
      if (v131 > v47)
      {
        v47 = v131;
      }

      outlined consume of DisplayList.Content.Value(v68);
      outlined consume of DisplayList.Content.Value(v46);
      v49 = 0;
      v50 = 0;
      goto LABEL_79;
    }

    if (v54 == 13)
    {
      v237 = v40;
      v102 = *v248;
      v103 = v222;
      _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v245, v222, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
      v104 = *v226;
      v105 = (*v226)(v103, 1, v227);
      v106 = v242;
      outlined copy of DisplayList.Item.Value(v46, v242, v49, v50);
      outlined copy of DisplayList.Item.Value(v46, v106, v49, v50);
      outlined copy of DisplayList.Content.Value(v46);
      v233 = v49;
      v228 = v46;
      if (v105 == 1)
      {
        outlined destroy of DisplayList.HostedViewState.ViewInfo?(v103, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
        v107 = v219;
      }

      else
      {
        v107 = v219;
        DisplayList.ArchiveIDs.uuid.getter();
        _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v103, MEMORY[0x1E697DC50]);
        v105 = 0;
      }

      v141 = type metadata accessor for UUID();
      v142 = *(*(v141 - 8) + 56);
      v142(v107, v105, 1, v141);
      v143 = *(v225 + 24);
      v144 = v223;
      v142(v223 + v143, 1, 1, v141);
      *v144 = v102;
      outlined assign with take of UUID?(v107, v144 + v143);
      v145 = *(v246 + 104);
      if (*(v145 + 16) && (v146 = specialized __RawDictionaryStorage.find<A>(_:)(v144), (v147 & 1) != 0))
      {
        outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v145 + 56) + 184 * v146, &v249);
        v148 = v233;
        v149 = v228;
        if (*(&v251 + 1) && v258)
        {
          *&v266 = v258;
          DWORD2(v266) = DWORD2(v258);
          v150 = PreferencesOutputs.subscript.getter();
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v249, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
          if ((v150 & 0x100000000) == 0)
          {
            v151 = AGGraphGetValue();
            v152 = *v151;
            v153 = *(v151 + 8);
            v154 = *(v151 + 12);
            v155 = v227;
            if (v104(v245, 1, v227) == 1)
            {
              v68 = 0;
              v48 = 0x1400000000;
            }

            else
            {
              v68 = swift_allocBox();
              (*v218)(v177, 1, 1, v155);
              v48 = 0x100000000;
            }

            swift_bridgeObjectRetain_n();
            outlined consume of DisplayList.Item.Value(v228, v242, v233, v50);
            v178 = *(v152 + 16);
            if (v178)
            {
              if (v178 == 1)
              {
                v179 = 0;
                v180 = 0;
                goto LABEL_107;
              }

              v182 = 0;
              v183 = 0;
              v180 = v178 & 0x7FFFFFFFFFFFFFFELL;
              v184 = (v152 + 144);
              v185 = v178 & 0x7FFFFFFFFFFFFFFELL;
              do
              {
                v186 = *(v184 - 10);
                v188 = *v184;
                v184 += 20;
                v187 = v188;
                if (v186 > v182)
                {
                  v182 = v186;
                }

                if (v187 > v183)
                {
                  v183 = v187;
                }

                v185 -= 2;
              }

              while (v185);
              if (v182 <= v183)
              {
                v179 = v183;
              }

              else
              {
                v179 = v182;
              }

              if (v178 != v180)
              {
LABEL_107:
                v189 = v178 - v180;
                v190 = (v152 + 80 * v180 + 64);
                do
                {
                  v192 = *v190;
                  v190 += 10;
                  v191 = v192;
                  if (v192 > v179)
                  {
                    v179 = v191;
                  }

                  --v189;
                }

                while (v189);
              }
            }

            else
            {
              v179 = 0;
            }

            v176 = v153 | (v154 << 32) | 0x40000000;
            v193 = v228;
            outlined consume of DisplayList.Item.Value(v228, v242, v233, v50);

            if (v179 > v47)
            {
              v47 = v179;
            }

            _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v223, type metadata accessor for DisplayList.HostedViewState.Key);
            outlined consume of DisplayList.Content.Value(v193);
            outlined consume of DisplayList.Content.Value(v193);
LABEL_114:
            v49 = v152;
            v50 = v176;
LABEL_78:
            v40 = v237;
            goto LABEL_79;
          }

          v156 = v242;
          outlined consume of DisplayList.Item.Value(v149, v242, v148, v50);
LABEL_72:
          outlined consume of DisplayList.Item.Value(v149, v156, v148, v50);
          _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(v144, type metadata accessor for DisplayList.HostedViewState.Key);
          outlined consume of DisplayList.Content.Value(v149);
          outlined consume of DisplayList.Content.Value(v149);
          v68 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 3221225472;
          goto LABEL_78;
        }
      }

      else
      {
        v259 = 0;
        v257 = 0u;
        v258 = 0u;
        v255 = 0u;
        v256 = 0u;
        v253 = 0u;
        v254 = 0u;
        memset(v252, 0, sizeof(v252));
        v250 = 0u;
        v251 = 0u;
        v249 = 0u;
        v148 = v233;
        v149 = v228;
      }

      v156 = v242;
      outlined consume of DisplayList.Item.Value(v149, v242, v148, v50);
      outlined destroy of DisplayList.HostedViewState.ViewInfo?(&v249, &lazy cache variable for type metadata for DisplayList.HostedViewState.ViewInfo?, &type metadata for DisplayList.HostedViewState.ViewInfo, MEMORY[0x1E69E6720], type metadata accessor for DisplayList.HostedViewState.ViewInfo?);
      goto LABEL_72;
    }

    if (v54 == 14)
    {
      v56 = v247;
      if (v247[2] && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v58 & 1) != 0))
      {
        v237 = v40;
        v59 = v56[7] + 16 * v57;
        v60 = *v59;
        v61 = *(v59 + 8);
        LODWORD(v59) = *(v59 + 12);
        *&v249 = v60;
        WORD4(v249) = v61;
        HIDWORD(v249) = v59;
        _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOcTm_0(v245, v55, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50]);
        v62 = v227;
        if ((*v226)(v55, 1, v227) != 1)
        {
          v243 = MEMORY[0x1E697DC50];
          v168 = v55;
          v169 = v215;
          outlined init with take of DisplayList.ArchiveIDs(v168, v215, MEMORY[0x1E697DC50]);
          v170 = v230;
          outlined init with copy of DisplayList.HostedViewState.Key(v169, v230, MEMORY[0x1E697DC50]);
          v232 = *v218;
          (v232)(v170, 0, 1, v62);
          v171 = v242;
          outlined copy of DisplayList.Item.Value(v46, v242, v49, v50);
          v172 = v49;
          outlined copy of DisplayList.Item.Value(v46, v171, v49, v50);

          DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v266, &v249, v248, v170, v56);
          outlined consume of DisplayList.Item.Value(v46, v171, v49, v50);
          outlined destroy of DisplayList.HostedViewState.ViewInfo?(v170, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
          v173 = v266;
          v68 = swift_allocBox();
          v175 = v174;
          outlined init with take of DisplayList.ArchiveIDs(v215, v174, v243);
          (v232)(v175, 0, 1, v227);
          v152 = v249;
          v176 = WORD4(v249) | (HIDWORD(v249) << 32) | 0x40000000;
          outlined consume of DisplayList.Item.Value(v46, v171, v172, v50);
          if (v173 > v47)
          {
            v47 = v173;
          }

          outlined consume of DisplayList.Content.Value(v46);
          v48 = 0x100000000;
          goto LABEL_114;
        }

        v63 = v242;
        outlined copy of DisplayList.Item.Value(v46, v242, v49, v50);
        outlined destroy of DisplayList.HostedViewState.ViewInfo?(v55, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, MEMORY[0x1E697DC50], MEMORY[0x1E69E6720], _s10Foundation4UUIDVSgMaTm_0);
        v40 = v237;
      }

      else
      {
        v63 = v242;
        outlined copy of DisplayList.Item.Value(v46, v242, v49, v50);
      }

      outlined consume of DisplayList.Item.Value(v46, v63, v49, v50);
      outlined consume of DisplayList.Content.Value(v46);
      v68 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 3221225472;
    }

    else
    {
      v48 = v242;
      outlined copy of DisplayList.Item.Value(v46, v242, v49, v50);
      outlined consume of DisplayList.Content.Value(v46);
      v68 = v46;
    }

LABEL_79:
    v243 = v50;
    v164 = v40 + 1;
    *&v268 = v47;
    *(&v268 + 1) = v68;
    *&v269[0] = v48;
    *(&v269[0] + 1) = v49;
    *&v269[1] = v50;
    v165 = v49;
    v166 = v241;
    DWORD2(v269[1]) = v241;
    v264 = v268;
    v265[0] = v269[0];
    *(v265 + 12) = *(v269 + 12);
    v266 = v270;
    v267 = v271;
    v262 = v270;
    v263 = v271;
    outlined init with copy of DisplayList.Item(&v266, &v260);
    DisplayList.append(_:)();
    v251 = v264;
    v252[0] = v265[0];
    *(v252 + 12) = *(v265 + 12);
    v249 = v262;
    v250 = v263;
    outlined destroy of DisplayList.Item(&v249);
    v167 = v244;
    if (v47 > v244)
    {
      v167 = v47;
    }

    v244 = v167;
    v260 = v52;
    v261 = v240;
    DisplayList.Index.leave(index:)();
    outlined destroy of DisplayList.Item(v272);
    v262 = v270;
    v263 = v271;
    *&v264 = v47;
    *(&v264 + 1) = v68;
    *&v265[0] = v48;
    ++v40;
    *(&v265[0] + 1) = v165;
    *&v265[1] = v243;
    DWORD2(v265[1]) = v166;
    outlined destroy of DisplayList.Item(&v262);
    if (v164 == v236)
    {

      a5 = v216;
      goto LABEL_135;
    }

    if (v164 >= *(v238 + 16))
    {
      goto LABEL_137;
    }
  }

  if (v53 != 2)
  {
    v68 = v46;
    goto LABEL_79;
  }

  v242 = v48;
  v64 = *(v46 + 16);
  if (!v64)
  {

    v68 = v46;
    v100 = v242;
LABEL_42:
    outlined consume of DisplayList.Item.Value(v46, v100, v49, v50);
    v48 = 0;
    v49 = 0;
    v50 = 0x80000000;
    goto LABEL_79;
  }

  v237 = v40;
  v65 = v50;
  v50 = v49;
  v243 = v65;
  outlined copy of DisplayList.Item.Value(v46, v242, v49, v65);

  v66 = 0;
  v67 = 56;
  v68 = v46;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = specialized _ArrayBuffer._consumeAndCreateNew()(v68);
    }

    if (v66 >= *(v68 + 16))
    {
      break;
    }

    ++v66;
    DisplayList.HostedViewState.spliceViews(into:index:archive:substitutions:)(&v249, v68 + v67, v248, v245, v247);
    if (v249 > v47)
    {
      v47 = v249;
    }

    v67 += 40;
    if (v64 == v66)
    {
      v100 = v242;
      v49 = v50;
      v101 = v50;
      LODWORD(v50) = v243;
      outlined consume of DisplayList.Item.Value(v46, v242, v101, v243);
      v40 = v237;
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_18C0699B8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0699F0()
{

  return swift_deallocObject();
}

uint64_t outlined copy of DisplayList.Item.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {

      return outlined copy of DisplayList.Content.Value(result);
    }

    outlined copy of DisplayList.Effect(result, a2, SBYTE4(a2));
  }
}

uint64_t outlined copy of DisplayList.Effect(uint64_t result, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      result = outlined copy of GraphicsBlendMode(result, a2 & 1);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined consume of DisplayList.Item.Value(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a4 >> 30;
  if (a4 >> 30 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else
  {
    if (!v5)
    {

      return outlined consume of DisplayList.Content.Value(result);
    }

    outlined consume of DisplayList.Effect(result, a2, SBYTE4(a2));
  }
}

uint64_t outlined consume of DisplayList.Effect(uint64_t result, char a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 3:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:

      break;
    case 5:
      result = outlined consume of GraphicsBlendMode(result, a2 & 1);
      break;
    default:
      return result;
  }

  return result;
}

void type metadata accessor for DisplayList.HostedViewState.ViewInfo?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined destroy of DisplayList.HostedViewState.ViewInfo?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.HostedViewState.ViewInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t outlined init with take of DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t outlined copy of DisplayList.Content.Value(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t outlined consume of DisplayList.Content.Value(unint64_t result)
{
  switch(result >> 60)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined init with copy of DisplayList.HostedViewState.Key(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DisplayList.HostedViewState.Key(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11DisplayListVAAE15HostedViewStateV3KeyVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI31AnyNavigationLinkPresentedValueVSg_ADtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for DisplayList.HostedViewState.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  (**(v4 - 8))(a1 + 16, a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v6 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v6;
  v8 = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 152) = v8;
  *(a1 + 160) = v7;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  v9 = v8;

  return a1;
}

uint64_t destroy for DisplayList.HostedViewState.ViewInfo(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableFactory(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    *((v10 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UUID?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  Hasher._combine(_:)(a1[1]);
  v9 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  outlined init with copy of UUID?(a1 + *(v9 + 24), v8, type metadata accessor for UUID?);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v10 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(_DWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UUID?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UUID?, UUID?)();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  MEMORY[0x1EEE9AC00](v50);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  v44 = v2 + 64;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v49 = v5;
    v19 = ~v17;
    v20 = *a1;
    v21 = *(v14 + 72);
    v39 = (v6 + 32);
    v42 = (v6 + 8);
    v43 = v10;
    v22 = (v6 + 48);
    v23 = v44;
    v46 = ~v17;
    v47 = v2;
    v45 = v20;
    v48 = v21;
    do
    {
      outlined init with copy of UUID?(*(v2 + 48) + v21 * v18, v16, type metadata accessor for DisplayList.HostedViewState.Key);
      if (*v16 == v20 && v16[1] == a1[1])
      {
        v24 = a1;
        v25 = *(v50 + 24);
        v26 = *(v51 + 48);
        v27 = v22;
        outlined init with copy of UUID?(v16 + v25, v13, type metadata accessor for UUID?);
        v28 = v24 + v25;
        a1 = v24;
        outlined init with copy of UUID?(v28, &v13[v26], type metadata accessor for UUID?);
        v29 = *v22;
        v30 = v49;
        if ((*v27)(v13, 1, v49) == 1)
        {
          outlined destroy of DisplayList.HostedViewState.Key(v16, type metadata accessor for DisplayList.HostedViewState.Key);
          v31 = v29(&v13[v26], 1, v30);
          v22 = v27;
          v21 = v48;
          if (v31 == 1)
          {
            outlined destroy of DisplayList.HostedViewState.Key(v13, type metadata accessor for UUID?);
            return v18;
          }

          goto LABEL_12;
        }

        v32 = v43;
        outlined init with copy of UUID?(v13, v43, type metadata accessor for UUID?);
        v33 = v29(&v13[v26], 1, v30);
        v22 = v27;
        if (v33 == 1)
        {
          outlined destroy of DisplayList.HostedViewState.Key(v16, type metadata accessor for DisplayList.HostedViewState.Key);
          (*v42)(v32, v30);
          v23 = v44;
          v21 = v48;
LABEL_12:
          outlined destroy of DisplayList.HostedViewState.Key(v13, type metadata accessor for (UUID?, UUID?));
          v19 = v46;
          v2 = v47;
          v20 = v45;
          goto LABEL_4;
        }

        v34 = v40;
        (*v39)(v40, &v13[v26], v30);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v42;
        v36 = v34;
        v22 = v27;
        (*v42)(v36, v30);
        outlined destroy of DisplayList.HostedViewState.Key(v16, type metadata accessor for DisplayList.HostedViewState.Key);
        v35(v32, v30);
        a1 = v24;
        outlined destroy of DisplayList.HostedViewState.Key(v13, type metadata accessor for UUID?);
        v19 = v46;
        v2 = v47;
        v23 = v44;
        v20 = v45;
        v21 = v48;
        if (v41)
        {
          return v18;
        }
      }

      else
      {
        outlined destroy of DisplayList.HostedViewState.Key(v16, type metadata accessor for DisplayList.HostedViewState.Key);
      }

LABEL_4:
      v18 = (v18 + 1) & v19;
    }

    while (((*(v23 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  return v18;
}

void type metadata accessor for (UUID?, UUID?)()
{
  if (!lazy cache variable for type metadata for (UUID?, UUID?))
  {
    type metadata accessor for UUID?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UUID?, UUID?));
    }
  }
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID?(0, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t destroy for DisplayList.HostedViewState(uint64_t a1)
{
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AppIntentExecutor?>)
  {
    type metadata accessor for AppIntentExecutor?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AppIntentExecutor?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t initializeWithCopy for _ArchivedView(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v6 = a3[6];
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[9];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(v12 + 8);

  if (v13 >> 60 == 15)
  {
    *v11 = *v12;
  }

  else
  {
    v14 = *v12;
    outlined copy of Data._Representation(v14, v13);
    *v11 = v14;
    *(v11 + 8) = v13;
  }

  return a1;
}

uint64_t destroy for _ArchivedView(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v7 = (a1 + *(a2 + 36));
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    v9 = *v7;

    return outlined consume of Data._Representation(v9, v8);
  }

  return result;
}

id outlined copy of PlatformDrawableContent?(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return outlined copy of PlatformDrawableContent.Storage(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void protocol witness for PlatformDrawable.options.getter in conformance CGDrawingView(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v3;
}

void protocol witness for PlatformDrawable.setContentsScale(_:) in conformance CGDrawingView(double a1)
{
  v3 = [v1 layer];
  [v3 setContentsScale_];
}

uint64_t specialized RBDrawingView.update(content:required:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 40);
  if (v3 != 255)
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v7 = *(a1 + 8);
    v6 = *(a1 + 16);
    v8 = *a1;
    v20 = *&v1[OBJC_IVAR____TtC7SwiftUI13RBDrawingView__state];
    outlined copy of PlatformDrawableContent?(v8, v7, v6, v5, v4, v3);
    outlined copy of PlatformDrawableContent?(v8, v7, v6, v5, v4, v3);

    type metadata accessor for AtomicBox<RBDrawingView.State>();
    v9 = AtomicBox.wrappedValue.modify();
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = v6;
    *(v10 + 24) = v5;
    *(v10 + 32) = v4;
    v16 = *(v10 + 40);
    *(v10 + 40) = v3;
    outlined consume of PlatformDrawableContent.Storage(v11, v12, v13, v14, v15, v16);
    v9(v19, 0);
    outlined consume of PlatformDrawableContent?(v8, v7, v6, v5, v4, v3);
  }

  v17 = [v2 layer];
  [v17 setNeedsDisplay];

  return 1;
}

void type metadata accessor for AtomicBox<RBDrawingView.State>()
{
  if (!lazy cache variable for type metadata for AtomicBox<RBDrawingView.State>)
  {
    v0 = type metadata accessor for AtomicBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBox<RBDrawingView.State>);
    }
  }
}

void outlined consume of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }
}

void type metadata accessor for CGFloat?()
{
  if (!lazy cache variable for type metadata for CGFloat?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CGFloat?);
    }
  }
}

void type metadata accessor for AppIntentExecutor?()
{
  if (!lazy cache variable for type metadata for AppIntentExecutor?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppIntentExecutor?);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>)
  {
    type metadata accessor for CGFloat?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ArchivableFactory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = v12;
  *(&v39 + 1) = v13;
  v40 = v14;
  v41 = v15;
  type metadata accessor for ArchivableFactory.CodingKeys();
  swift_getWitnessTable();
  v16 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v36 = a2;
  *&v39 = a2;
  *(&v39 + 1) = a3;
  v32 = a3;
  v40 = a4;
  v41 = a5;
  v19 = type metadata accessor for ArchivableFactory();
  v29 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v18;
  v22 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v21;
  v24 = v31;
  LOBYTE(v39) = 0;
  v25 = v36;
  v26 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v23, v37, v25);
  v42 = 1;
  lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v23[*(v19 + 52)] = v39;
  type metadata accessor for CGSize(0);
  v42 = 2;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v35, v26);
  *&v23[*(v19 + 56)] = v39;
  v27 = v29;
  (*(v29 + 16))(v30, v23, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v27 + 8))(v23, v19);
}

uint64_t type metadata accessor for ArchivableFactory.CodingKeys()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableFactory<A>.CodingKeys()
{
  return ArchivableFactory.CodingKeys.stringValue.getter(*v0);
}

{
  return 2003134838;
}

uint64_t ArchivableFactory.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265696669646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x797469746E656469;
  }

  return 1702521203;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableFactory(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  *((v7 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableFactory(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for ArchivableFactory(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 3) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t ArchivableLinkModifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for LinkDestination.Configuration();
  MEMORY[0x1EEE9AC00](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableLinkModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys, &unk_1EFFCCFB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ArchivableLinkModifier(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys();
  v12 = v20;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v18;
    lazy protocol witness table accessor for type ArchivableLinkModifier and conformance ArchivableLinkModifier(&lazy protocol witness table cache variable for type LinkDestination.Configuration and conformance LinkDestination.Configuration, MEMORY[0x1E697E810]);
    v14 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v6);
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(v14, v11, MEMORY[0x1E697E810]);
    _s7SwiftUI33PrimitiveButtonStyleConfigurationVWObTm_0(v11, v17, type metadata accessor for ArchivableLinkModifier);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinkModifier.CodingKeys and conformance ArchivableLinkModifier.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for ArchivableFactory()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Graphic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ArchivableLinkModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for WidgetAuxiliaryViewMetadata()
{
  type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic?(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL?();
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for WidgetAuxiliaryViewMetadata.Progress?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Graphic.Named()
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WidgetAuxiliaryViewMetadata.Progress()
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for WidgetAuxiliaryViewMetadata.Progress.Kind()
{
  v1[4] = &unk_18CDCB818;
  type metadata accessor for ClosedRange<Date>();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v1[5] = v1;
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t static _ArchivableViewModifier.registerDecoder()()
{
  type metadata accessor for ArchivableFactory();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)();
}

uint64_t type metadata completion function for ArchivableFactory()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static _ArchivableView.registerDecoder()()
{
  type metadata accessor for ArchivableFactory();
  swift_getWitnessTable();
  swift_getWitnessTable();

  return static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)();
}

uint64_t type metadata completion function for _ArchivedViewStates()
{
  result = type metadata accessor for ArchivedViewCore.Metadata();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier()
{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier);
  }

  return result;
}

void type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for TimelineProgressView.ArchivableTimelineProgressView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base()
{
  result = lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base;
  if (!lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base;
  if (!lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ArchivableLinearProgressView.Base(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for TimelineProgressView.ArchivableTimelineProgressView()
{
  type metadata accessor for ClosedRange<Date>();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

{
  type metadata completion function for TimelineProgressView.ArchivableTimelineProgressView();
}

uint64_t lazy protocol witness table accessor for type TimelineProgressView<ResolvedCircularPlaybackProgressView.Base>.ArchivableTimelineProgressView and conformance TimelineProgressView<A>.ArchivableTimelineProgressView(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimelineProgressView<ArchivableLinearProgressView.Base>.ArchivableTimelineProgressView(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}