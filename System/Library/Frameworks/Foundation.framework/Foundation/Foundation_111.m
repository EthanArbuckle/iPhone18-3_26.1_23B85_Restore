void (*specialized String.init<A, B>(_validating:as:)(uint64_t a1, uint64_t a2, char a3))(uint64_t *, void)
{
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v42 = a1;
  v43 = a1 + a2;
  v44 = a3;
  v45 = 0;
  v7 = 1;
  v40 = 0;
  v41 = 0;
LABEL_2:
  v8 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v8 & 0x10000) != 0)
  {
    goto LABEL_51;
  }

  if ((v8 & 0xF800) != 0xD800)
  {
    v9 = v8;
    i = 1;
    goto LABEL_23;
  }

  v9 = v8 & 0xDFFF | (HIWORD(v40) << 16);
  v10 = 16;
LABEL_5:
  v11 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v11 & 0x10000) != 0)
  {
    v12 = v10;
  }

  else
  {
    v9 = ((-65535 << v10) - 1) & v9 | (v11 << v10);
    v12 = v10 + 16;
    if ((v10 + 16) > 0x1Fu)
    {
      goto LABEL_14;
    }

    v13 = specialized UTF16EndianAdaptor.Iterator.next()();
    if ((v13 & 0x10000) == 0)
    {
      v9 = ((-65535 << v12) - 1) & v9 | (v13 << v12);
      v12 = v10 + 32;
      if (v10 >= 0xE0u)
      {
        v14 = specialized UTF16EndianAdaptor.Iterator.next()();
        if ((v14 & 0x10000) == 0)
        {
          v9 = ((-65535 << v10) - 1) & v9 | (v14 << v10);
          v12 = v10 + 48;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

LABEL_14:
      v16 = v9 & 0xFC00FC00;
      if ((v9 & 0xFC00FC00) == 0xDC00D800)
      {
        v17 = 32;
      }

      else
      {
        v17 = 16;
      }

      v41 = v12 - v17;
      v18 = v16 == -603924480;
      if (v16 == -603924480)
      {
        v19 = 32;
      }

      else
      {
        v19 = 16;
      }

      v40 = v9 >> v19;
      if (!v18)
      {

        return 0;
      }

      for (i = 0; ; i = 1)
      {
LABEL_23:
        if (v9 >= 0x80u)
        {
          v28 = (v9 & 0x3F) << 8;
          if (v9 < 0x800u)
          {
            v29 = v28 + (v9 >> 6);
            v30 = 33217;
LABEL_41:
            v20 = v29 + v30;
            goto LABEL_25;
          }

          if ((v9 & 0xF800) != 0xD800)
          {
            v29 = ((v28 | (v9 >> 6) & 0x3F) << 8) | (v9 >> 12);
            v30 = 8487393;
            goto LABEL_41;
          }

          if ((i & 1) == 0)
          {
            v34 = ((v9 & 0x3FF) << 10) | HIWORD(v9) & 0x3FF;
            v29 = ((v34 + 0x10000) >> 4) & 0x3F00 | ((v34 + 0x10000) >> 18) | (((v34 >> 6) & 0x3F | (((v34 + 0x10000) & 0x3F) << 8)) << 16);
            v30 = -2122219023;
            goto LABEL_41;
          }

          v31 = (v9 & 0x3F) << 8;
          v32 = (v9 >> 6) + v31 + 33217;
          v33 = ((v9 >> 12) | ((v31 | (v9 >> 6) & 0x3F) << 8)) + 8487393;
          if (v9 >= 0x800u)
          {
            v32 = v33;
          }

          if (v9 <= 0x7Fu)
          {
            v20 = v9 + 1;
          }

          else
          {
            v20 = v32;
          }
        }

        else
        {
          v20 = (v9 + 1);
          if (v9 == 0xFF)
          {
LABEL_34:
            v25 = v7;
            goto LABEL_35;
          }
        }

LABEL_25:
        v21 = *(v6 + 2);
        do
        {
          v22 = v20;
          while (1)
          {
            v23 = *(v6 + 3);
            if (v21 >= v23 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 1, 1, v6);
            }

            v20 = v22 >> 8;
            *(v6 + 2) = v21 + 1;
            v6[v21 + 32] = v22 - 1;
            if ((v7 & ((v22 - 1) < 0)) == 1)
            {
              break;
            }

            ++v21;
            v24 = v22 >= 0x100;
            v22 >>= 8;
            if (!v24)
            {
              goto LABEL_34;
            }
          }

          v25 = 0;
          v7 = 0;
          ++v21;
        }

        while (v22 >= 0x100);
LABEL_35:
        v10 = v41;
        v7 = v25;
        if (!v41)
        {
          goto LABEL_2;
        }

        v9 = v40;
        if ((v40 & 0xF800) == 0xD800)
        {
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        result = WeekendRange.onsetTime.modify();
        v27 = *(v26 + 4);
        if (!v27)
        {
          __break(1u);
          return result;
        }

        *v26 = *(v26 + 2);
        *(v26 + 4) = v27 - 16;
        result(&v39, 0);
        v9 = v9;
      }
    }
  }

LABEL_13:
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_51:
  v35 = static String._tryFromUTF8(_:)();
  v37 = v36;

  if (v37)
  {
    return v35;
  }

  else
  {
    return 0;
  }
}

{
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v7 = a2 + a1;
  if (!a1)
  {
    v7 = 0;
  }

  v43 = a1;
  v44 = v7;
  v45 = a3;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v8 = 1;
LABEL_4:
  v9 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v9 & 0x10000) != 0)
  {
    goto LABEL_53;
  }

  if ((v9 & 0xF800) != 0xD800)
  {
    v10 = v9;
    i = 1;
    goto LABEL_25;
  }

  v10 = v9 & 0xDFFF | (HIWORD(v41) << 16);
  v11 = 16;
LABEL_7:
  v12 = specialized UTF16EndianAdaptor.Iterator.next()();
  if ((v12 & 0x10000) != 0)
  {
    v13 = v11;
  }

  else
  {
    v10 = ((-65535 << v11) - 1) & v10 | (v12 << v11);
    v13 = v11 + 16;
    if ((v11 + 16) > 0x1Fu)
    {
      goto LABEL_16;
    }

    v14 = specialized UTF16EndianAdaptor.Iterator.next()();
    if ((v14 & 0x10000) == 0)
    {
      v10 = ((-65535 << v13) - 1) & v10 | (v14 << v13);
      v13 = v11 + 32;
      if (v11 >= 0xE0u)
      {
        v15 = specialized UTF16EndianAdaptor.Iterator.next()();
        if ((v15 & 0x10000) == 0)
        {
          v10 = ((-65535 << v11) - 1) & v10 | (v15 << v11);
          v13 = v11 + 48;
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_16:
      v17 = v10 & 0xFC00FC00;
      if ((v10 & 0xFC00FC00) == 0xDC00D800)
      {
        v18 = 32;
      }

      else
      {
        v18 = 16;
      }

      v42 = v13 - v18;
      v19 = v17 == -603924480;
      if (v17 == -603924480)
      {
        v20 = 32;
      }

      else
      {
        v20 = 16;
      }

      v41 = v10 >> v20;
      if (!v19)
      {

        return 0;
      }

      for (i = 0; ; i = 1)
      {
LABEL_25:
        if (v10 >= 0x80u)
        {
          v29 = (v10 & 0x3F) << 8;
          if (v10 < 0x800u)
          {
            v30 = v29 + (v10 >> 6);
            v31 = 33217;
LABEL_43:
            v21 = v30 + v31;
            goto LABEL_27;
          }

          if ((v10 & 0xF800) != 0xD800)
          {
            v30 = ((v29 | (v10 >> 6) & 0x3F) << 8) | (v10 >> 12);
            v31 = 8487393;
            goto LABEL_43;
          }

          if ((i & 1) == 0)
          {
            v35 = ((v10 & 0x3FF) << 10) | HIWORD(v10) & 0x3FF;
            v30 = ((v35 + 0x10000) >> 4) & 0x3F00 | ((v35 + 0x10000) >> 18) | (((v35 >> 6) & 0x3F | (((v35 + 0x10000) & 0x3F) << 8)) << 16);
            v31 = -2122219023;
            goto LABEL_43;
          }

          v32 = (v10 & 0x3F) << 8;
          v33 = (v10 >> 6) + v32 + 33217;
          v34 = ((v10 >> 12) | ((v32 | (v10 >> 6) & 0x3F) << 8)) + 8487393;
          if (v10 >= 0x800u)
          {
            v33 = v34;
          }

          if (v10 <= 0x7Fu)
          {
            v21 = v10 + 1;
          }

          else
          {
            v21 = v33;
          }
        }

        else
        {
          v21 = (v10 + 1);
          if (v10 == 0xFF)
          {
LABEL_36:
            v26 = v8;
            goto LABEL_37;
          }
        }

LABEL_27:
        v22 = *(v6 + 2);
        do
        {
          v23 = v21;
          while (1)
          {
            v24 = *(v6 + 3);
            if (v22 >= v24 >> 1)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v22 + 1, 1, v6);
            }

            v21 = v23 >> 8;
            *(v6 + 2) = v22 + 1;
            v6[v22 + 32] = v23 - 1;
            if ((v8 & ((v23 - 1) < 0)) == 1)
            {
              break;
            }

            ++v22;
            v25 = v23 >= 0x100;
            v23 >>= 8;
            if (!v25)
            {
              goto LABEL_36;
            }
          }

          v26 = 0;
          v8 = 0;
          ++v22;
        }

        while (v23 >= 0x100);
LABEL_37:
        v11 = v42;
        v8 = v26;
        if (!v42)
        {
          goto LABEL_4;
        }

        v10 = v41;
        if ((v41 & 0xF800) == 0xD800)
        {
          goto LABEL_7;
        }

        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        result = WeekendRange.onsetTime.modify();
        v28 = *(v27 + 4);
        if (!v28)
        {
          __break(1u);
          return result;
        }

        *v27 = *(v27 + 2);
        *(v27 + 4) = v28 - 16;
        result(&v40, 0);
        v10 = v10;
      }
    }
  }

LABEL_15:
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_53:
  v36 = static String._tryFromUTF8(_:)();
  v38 = v37;

  if (v38)
  {
    return v36;
  }

  else
  {
    return 0;
  }
}

void (*specialized String.init<A, B>(_validating:as:)(uint64_t a1, uint64_t a2))(unsigned __int16 *, void)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v48 = v4;
  v49 = a1;
  (*(v4 + 16))(v6, a1, a2);
  v50 = a2;
  dispatch thunk of Sequence.makeIterator()();
  v46 = v13;
  v47 = v8;
  (*(v8 + 16))(v10, v13, AssociatedTypeWitness);
  v53 = 0;
  v54 = 0;
  v16 = 1;
LABEL_2:
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v52)
  {
    goto LABEL_54;
  }

  v17 = v51;
  if ((v51 & 0xF800) != 0xD800)
  {
    while (1)
    {
      v24 = 1;
LABEL_28:
      if (v17 >= 0x80u)
      {
        v33 = (v17 & 0x3F) << 8;
        if (v17 < 0x800u)
        {
          v34 = v33 + (v17 >> 6);
          v35 = 33217;
LABEL_44:
          v27 = v34 + v35;
          goto LABEL_30;
        }

        if ((v17 & 0xF800) != 0xD800)
        {
          v34 = ((v33 | (v17 >> 6) & 0x3F) << 8) | (v17 >> 12);
          v35 = 8487393;
          goto LABEL_44;
        }

        if (!v24)
        {
          v39 = ((v17 & 0x3FF) << 10) | HIWORD(v17) & 0x3FF;
          v34 = ((v39 + 0x10000) >> 4) & 0x3F00 | ((v39 + 0x10000) >> 18) | (((v39 >> 6) & 0x3F | (((v39 + 0x10000) & 0x3F) << 8)) << 16);
          v35 = -2122219023;
          goto LABEL_44;
        }

        v36 = (v17 & 0x3F) << 8;
        v37 = (v17 >> 6) + v36 + 33217;
        v38 = ((v17 >> 12) | ((v36 | (v17 >> 6) & 0x3F) << 8)) + 8487393;
        if (v17 >= 0x800u)
        {
          v37 = v38;
        }

        if (v17 <= 0x7Fu)
        {
          v27 = v17 + 1;
        }

        else
        {
          v27 = v37;
        }
      }

      else
      {
        v27 = (v17 + 1);
        if (v17 == 0xFF)
        {
LABEL_39:
          v32 = v16;
          goto LABEL_40;
        }
      }

LABEL_30:
      v28 = *(v15 + 2);
      do
      {
        v29 = v27;
        while (1)
        {
          v30 = *(v15 + 3);
          if (v28 >= v30 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 1, 1, v15);
          }

          v27 = v29 >> 8;
          *(v15 + 2) = v28 + 1;
          v15[v28 + 32] = v29 - 1;
          if ((v16 & ((v29 - 1) < 0)) == 1)
          {
            break;
          }

          ++v28;
          v31 = v29 >= 0x100;
          v29 >>= 8;
          if (!v31)
          {
            goto LABEL_39;
          }
        }

        v32 = 0;
        v16 = 0;
        ++v28;
      }

      while (v29 >= 0x100);
LABEL_40:
      v18 = v54;
      v16 = v32;
      if (!v54)
      {
        goto LABEL_2;
      }

      v17 = v53;
      if ((v53 & 0xF800) == 0xD800)
      {
        swift_getAssociatedConformanceWitness();
        goto LABEL_5;
      }

      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
      result = WeekendRange.onsetTime.modify();
      v26 = *(v25 + 4);
      if (!v26)
      {
        __break(1u);
        return result;
      }

      *v25 = *(v25 + 2);
      *(v25 + 4) = v26 - 16;
      result(&v51, 0);
      v17 = v17;
    }
  }

  v17 = v51 | (HIWORD(v53) << 16);
  v18 = 16;
LABEL_5:
  dispatch thunk of IteratorProtocol.next()();
  if (v52 == 1)
  {
    v19 = v18;
  }

  else
  {
    v17 = (v51 << v18) | ((-65535 << v18) - 1) & v17;
    v19 = v18 + 16;
    if ((v18 + 16) > 0x1Fu)
    {
      goto LABEL_14;
    }

    dispatch thunk of IteratorProtocol.next()();
    if ((v52 & 1) == 0)
    {
      v17 = (v51 << v19) | ((-65535 << v19) - 1) & v17;
      v19 = v18 + 32;
      if (v18 < 0xE0u)
      {
        goto LABEL_14;
      }

      dispatch thunk of IteratorProtocol.next()();
      if ((v52 & 1) == 0)
      {
        v17 = (v51 << v18) | ((-65535 << v18) - 1) & v17;
        v19 = v18 + 48;
        goto LABEL_14;
      }
    }
  }

  if (!v19)
  {
LABEL_54:
    v40 = *(v47 + 8);
    v40(v10, AssociatedTypeWitness);
    v40(v46, AssociatedTypeWitness);
    v41 = static String._tryFromUTF8(_:)();
    v43 = v42;
    (*(v48 + 8))(v49, v50);

    if (v43)
    {
      return v41;
    }

    else
    {
      return 0;
    }
  }

LABEL_14:
  v20 = v17 & 0xFC00FC00;
  if ((v17 & 0xFC00FC00) == 0xDC00D800)
  {
    v21 = 32;
  }

  else
  {
    v21 = 16;
  }

  v54 = v19 - v21;
  v22 = v20 == -603924480;
  if (v20 == -603924480)
  {
    v23 = 32;
  }

  else
  {
    v23 = 16;
  }

  v53 = v17 >> v23;
  if (v22)
  {
    v24 = 0;
    goto LABEL_28;
  }

  v44 = *(v47 + 8);
  v44(v10, AssociatedTypeWitness);
  v44(v46, AssociatedTypeWitness);
  (*(v48 + 8))(v49, v50);

  return 0;
}

uint64_t specialized String.init<A, B>(_validating:as:)(uint64_t a1, unint64_t a2, char a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  v7 = a2;
  v8 = v6;
  HIBYTE(v48) = 0;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 16);
    }
  }

  else if (v9)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  Data.Iterator.init(_:at:)(a1, v7, v10, &v44);
  LOBYTE(v48) = a3;
  v42[2] = v46;
  v42[3] = v47;
  v42[0] = v44;
  v42[1] = v45;
  v43 = v48;
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v37 = v44;
  v38 = v45;
  outlined init with copy of FloatingPointRoundingRule?(v42, &v32, &_s10Foundation18UTF32EndianAdaptorV8IteratorVyAA4DataV_GMd);
  v11 = specialized UTF32EndianAdaptor.Iterator.next()();
  if ((v11 & 0x100000000) != 0)
  {
LABEL_29:
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v27 = v37;
    v28 = v38;
    outlined destroy of TermOfAddress?(&v27, &_s10Foundation18UTF32EndianAdaptorV8IteratorVyAA4DataV_GMd);
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v32 = v44;
    v33 = v45;
    outlined destroy of TermOfAddress?(&v32, &_s10Foundation18UTF32EndianAdaptorV8IteratorVyAA4DataV_GMd);
    v23 = static String._tryFromUTF8(_:)();
    v25 = v24;

    if (v25)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = 1;
    while (WORD1(v11) <= 0x10u && (v11 & 0xFFFFF800) != 0xD800)
    {
      if ((v11 & 0x1FFF80) != 0)
      {
        v19 = (v11 & 0x3F) << 8;
        v20 = (v19 | (v11 >> 6) & 0x3F) << 8;
        v21 = (v11 >> 18) + ((v20 | (v11 >> 12) & 0x3F) << 8) - 2122219023;
        v22 = (v11 >> 12) + v20 + 8487393;
        if (WORD1(v11))
        {
          v22 = v21;
        }

        v13 = (v11 >> 6) + v19 + 33217;
        if (v11 > 0x7FF)
        {
          v13 = v22;
        }
      }

      else
      {
        if (v11 > 0xFF)
        {
          __break(1u);
        }

        v13 = v11 + 1;
      }

      v14 = *(v8 + 2);
      do
      {
        v15 = v13;
        while (1)
        {
          v16 = *(v8 + 3);
          if (v14 >= v16 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v14 + 1, 1, v8);
          }

          v13 = v15 >> 8;
          *(v8 + 2) = v14 + 1;
          v8[v14 + 32] = v15 - 1;
          if ((v12 & ((v15 - 1) < 0)) == 1)
          {
            break;
          }

          ++v14;
          v17 = v15 >= 0x100;
          v15 >>= 8;
          if (!v17)
          {
            v18 = v12;
            goto LABEL_22;
          }
        }

        v18 = 0;
        v12 = 0;
        ++v14;
      }

      while (v15 >= 0x100);
LABEL_22:
      v11 = specialized UTF32EndianAdaptor.Iterator.next()();
      v12 = v18;
      if ((v11 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }
    }

    v29 = v39;
    v30 = v40;
    v31 = v41;
    v27 = v37;
    v28 = v38;
    outlined destroy of TermOfAddress?(&v27, &_s10Foundation18UTF32EndianAdaptorV8IteratorVyAA4DataV_GMd);
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v32 = v44;
    v33 = v45;
    outlined destroy of TermOfAddress?(&v32, &_s10Foundation18UTF32EndianAdaptorV8IteratorVyAA4DataV_GMd);

    return 0;
  }
}

unint64_t specialized String.init<A, B>(_validating:as:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  result = specialized UTF32EndianAdaptor.Iterator.next()();
  if ((result & 0x100000000) == 0)
  {
    v2 = 1;
    do
    {
      if (result >> 11 == 27 || WORD1(result) > 0x10u)
      {

        return 0;
      }

      if ((result & 0x1FFF80) != 0)
      {
        v9 = (result & 0x3F) << 8;
        v10 = (v9 | (result >> 6) & 0x3F) << 8;
        v11 = (result >> 18) + ((v10 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v12 = (result >> 12) + v10 + 8487393;
        if (WORD1(result))
        {
          v3 = v11;
        }

        else
        {
          v3 = v12;
        }

        if (result <= 0x7FF)
        {
          v3 = (result >> 6) + v9 + 33217;
        }
      }

      else
      {
        if (result > 0xFF)
        {
          __break(1u);
          return result;
        }

        v3 = result + 1;
      }

      v4 = *(v0 + 2);
      do
      {
        v5 = v3;
        while (1)
        {
          v6 = *(v0 + 3);
          if (v4 >= v6 >> 1)
          {
            v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v4 + 1, 1, v0);
          }

          v3 = v5 >> 8;
          *(v0 + 2) = v4 + 1;
          v0[v4 + 32] = v5 - 1;
          if ((v2 & ((v5 - 1) < 0)) == 1)
          {
            break;
          }

          ++v4;
          v7 = v5 >= 0x100;
          v5 >>= 8;
          if (!v7)
          {
            v8 = v2;
            goto LABEL_16;
          }
        }

        v8 = 0;
        v2 = 0;
        ++v4;
      }

      while (v5 >= 0x100);
LABEL_16:
      result = specialized UTF32EndianAdaptor.Iterator.next()();
      v2 = v8;
    }

    while ((result & 0x100000000) == 0);
  }

  v13 = static String._tryFromUTF8(_:)();
  v15 = v14;

  if (v15)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, MEMORY[0x1E69E7CC0]);
  result = specialized UTF32EndianAdaptor.Iterator.next()();
  if ((result & 0x100000000) == 0)
  {
    v2 = 1;
    do
    {
      if (result >> 11 == 27 || WORD1(result) > 0x10u)
      {

        return 0;
      }

      if ((result & 0x1FFF80) != 0)
      {
        v9 = (result & 0x3F) << 8;
        v10 = (v9 | (result >> 6) & 0x3F) << 8;
        v11 = (result >> 18) + ((v10 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v12 = (result >> 12) + v10 + 8487393;
        if (WORD1(result))
        {
          v3 = v11;
        }

        else
        {
          v3 = v12;
        }

        if (result <= 0x7FF)
        {
          v3 = (result >> 6) + v9 + 33217;
        }
      }

      else
      {
        if (result > 0xFF)
        {
          __break(1u);
          return result;
        }

        v3 = result + 1;
      }

      v4 = *(v0 + 2);
      do
      {
        v5 = v3;
        while (1)
        {
          v6 = *(v0 + 3);
          if (v4 >= v6 >> 1)
          {
            v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v4 + 1, 1, v0);
          }

          v3 = v5 >> 8;
          *(v0 + 2) = v4 + 1;
          v0[v4 + 32] = v5 - 1;
          if ((v2 & ((v5 - 1) < 0)) == 1)
          {
            break;
          }

          ++v4;
          v7 = v5 >= 0x100;
          v5 >>= 8;
          if (!v7)
          {
            v8 = v2;
            goto LABEL_16;
          }
        }

        v8 = 0;
        v2 = 0;
        ++v4;
      }

      while (v5 >= 0x100);
LABEL_16:
      result = specialized UTF32EndianAdaptor.Iterator.next()();
      v2 = v8;
    }

    while ((result & 0x100000000) == 0);
  }

  v13 = static String._tryFromUTF8(_:)();
  v15 = v14;

  if (v15)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized String.init<A, B>(_validating:as:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = dispatch thunk of Sequence.underestimatedCount.getter();
  v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v16 = *(v4 + 16);
  v44 = a1;
  v16(v6, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  v42 = v8;
  v43 = v13;
  v17 = v10;
  v18 = v10;
  v19 = AssociatedTypeWitness;
  (*(v8 + 16))(v17, v13, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (v46)
  {
    v20 = v44;
LABEL_3:
    v21 = *(v42 + 8);
    v21(v18, v19);
    v21(v43, v19);
    v22 = static String._tryFromUTF8(_:)();
    v24 = v23;
    (*(v4 + 8))(v20, a2);

    if (v24)
    {
      return v22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = 1;
    v27 = v45;
    v20 = v44;
    while (HIWORD(v27) <= 0x10u && (v27 & 0xFFFFF800) != 0xD800)
    {
      v41 = v4;
      if (v27 > 0x7F)
      {
        v34 = (v27 & 0x3F) << 8;
        v35 = (v34 | (v27 >> 6) & 0x3F) << 8;
        v36 = (v27 >> 18) + ((v35 | (v27 >> 12) & 0x3F) << 8) - 2122219023;
        v37 = (v27 >> 12) + v35 + 8487393;
        if (HIWORD(v27))
        {
          v38 = v36;
        }

        else
        {
          v38 = v37;
        }

        if (v27 <= 0x7FF)
        {
          v28 = (v27 >> 6) + v34 + 33217;
        }

        else
        {
          v28 = v38;
        }
      }

      else
      {
        v28 = v27 + 1;
      }

      v29 = *(v15 + 2);
      do
      {
        v30 = v28;
        while (1)
        {
          v31 = *(v15 + 3);
          if (v29 >= v31 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v29 + 1, 1, v15);
          }

          v28 = v30 >> 8;
          *(v15 + 2) = v29 + 1;
          v15[v29 + 32] = v30 - 1;
          if ((v26 & ((v30 - 1) < 0)) == 1)
          {
            break;
          }

          ++v29;
          v32 = v30 >= 0x100;
          v30 >>= 8;
          if (!v32)
          {
            v33 = v26;
            goto LABEL_19;
          }
        }

        v33 = 0;
        v26 = 0;
        ++v29;
      }

      while (v30 >= 0x100);
LABEL_19:
      dispatch thunk of IteratorProtocol.next()();
      v27 = v45;
      v26 = v33;
      v20 = v44;
      v4 = v41;
      if (v46)
      {
        goto LABEL_3;
      }
    }

    v39 = *(v42 + 8);
    v39(v18, v19);
    v39(v43, v19);
    (*(v4 + 8))(v20, a2);

    return 0;
  }
}

id makeNSString #1 <A>(bytes:) in String.init<A>(bytes:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 encoding:a3];
  if (result)
  {
    v4 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v6 = v4;
    v7 = v6;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v10 = v7;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v13 = v11;

        return v13;
      }

      if (![v10 length])
      {

        return 0;
      }

      v18 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        [v7 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v18 = v19;
      }

LABEL_22:

      return v18;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v9;
      }

      goto LABEL_7;
    }

    result = [v7 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v14)
      {
        v15 = result;

        return v15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<UInt8>) -> (@owned String?, @error @owned Error)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t closure #1 in closure #3 in String.init<A>(bytes:encoding:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized UTF32EndianAdaptor.Iterator.next()();
  v5 = 0;
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_18;
  }

LABEL_2:
  if (WORD1(result) > 0x10u || (result & 0xFFFFF800) == 0xD800)
  {
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 0x1FFF80) != 0)
  {
    v9 = (result & 0x3F) << 8;
    if (result > 0x7FF)
    {
      v10 = (v9 | (result >> 6) & 0x3F) << 8;
      v11 = (result >> 18) + ((v10 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v6 = (result >> 12) + v10 + 8487393;
      if (WORD1(result))
      {
        v6 = v11;
      }
    }

    else
    {
      v6 = (result >> 6) + v9 + 33217;
    }

LABEL_7:
    while (1)
    {
      *(a1 + v5) = v6 - 1;
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      ++v5;
      v8 = v6 >= 0x100;
      v6 >>= 8;
      if (!v8)
      {
        v5 = v7;
        result = specialized UTF32EndianAdaptor.Iterator.next()();
        if ((result & 0x100000000) == 0)
        {
          goto LABEL_2;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_18:
          result = static String._tryFromUTF8(_:)();
          *a2 = result;
          a2[1] = v12;
          return result;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (result <= 0xFF)
  {
    v6 = result + 1;
    goto LABEL_7;
  }

LABEL_21:
  __break(1u);
  return result;
}

char *String.init(contentsOfFile:usedEncoding:)(char *a1, unint64_t a2, uint64_t *a3)
{
  v113 = *MEMORY[0x1E69E9840];
  v105 = MEMORY[0x1E69E7CC8];
  v106 = a1;
  v107 = a2;
  v108 = 0;
  result = readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(&v106, 0, 0, 1, 0, &outlined read-only object #0 of String.init(contentsOfFile:usedEncoding:), &v105, &v109);
  if (v3)
  {
    outlined destroy of String(&unk_1EEED39F0);
LABEL_3:

    return v4;
  }

  v7 = v110;
  v8 = v111;
  v9 = v112;
  if (!v110)
  {
    outlined consume of Data.Deallocator?(v111);
    outlined destroy of String(&unk_1EEED39F0);
    v11 = 0;
    v13 = 0xC000000000000000;
    goto LABEL_9;
  }

  v10 = v109;
  if (!v109)
  {
    __break(1u);
    goto LABEL_162;
  }

  if (v111 == 4)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  outlined copy of Data.Deallocator?(v111);
  outlined destroy of String(&unk_1EEED39F0);
  v109 = v8;
  v110 = v9;
  v11 = specialized Data.init(bytesNoCopy:count:deallocator:)(v10, v7, &v109);
  v13 = v12;
  outlined consume of Data.Deallocator?(v8);
LABEL_9:
  v14 = v105;
  if (!*(v105 + 16))
  {
    goto LABEL_13;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000018147D4A0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = (*(v14 + 56) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];
  outlined copy of Data._Representation(*v17, v18);
  encodingFromDataForExtendedAttribute(_:)(v19, v18, &v109);
  if (v110)
  {
    outlined consume of Data._Representation(v19, v18);
LABEL_13:
    outlined copy of Data._Representation(v11, v13);
    v20 = specialized String.init(dataOfUnknownEncoding:usedEncoding:)(v11, v13, a3);
    if (v21)
    {
      v4 = v20;
      outlined consume of Data._Representation(v11, v13);

      return v4;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v23 = @"NSCocoaErrorDomain";
    v24 = v23;
    if (!isTaggedPointer)
    {
LABEL_21:
      LOBYTE(v106) = 0;
      v109 = 0;
      if (!__CFStringIsCF())
      {
        v29 = v24;
        String.init(_nativeStorage:)();
        if (v30 || (v109 = [(__CFString *)v29 length]) == 0)
        {

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (v109)
      {
LABEL_53:
        String.init(_cocoaString:)();
LABEL_54:
        v41 = objc_allocWithZone(NSError);
        v42 = String._bridgeToObjectiveCImpl()();

        v43 = [v41 initWithDomain:v42 code:259 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v44 = [v43 domain];
        if (!v44)
        {
          v4 = 0;
          v51 = 0xE000000000000000;
LABEL_81:
          v58 = v24;
          v59 = v58;
          if (!isTaggedPointer)
          {
            goto LABEL_86;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v58);
          if (!TaggedPointerTag)
          {
            goto LABEL_96;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v63 = v62;

              goto LABEL_102;
            }

LABEL_86:
            LOBYTE(v106) = 0;
            v109 = 0;
            if (__CFStringIsCF())
            {
              if (v109)
              {
LABEL_101:
                v61 = String.init(_cocoaString:)();
                v63 = v69;
LABEL_102:
                if (v4 == v61 && v51 == v63)
                {

LABEL_106:
                  swift_willThrow();
                  outlined consume of Data._Representation(v11, v13);
                  goto LABEL_3;
                }

                v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v70)
                {
                  goto LABEL_106;
                }

                __break(1u);
LABEL_160:
                __break(1u);
              }
            }

            else
            {
              v64 = v59;
              v65 = String.init(_nativeStorage:)();
              if (v66)
              {
                v61 = v65;
                v63 = v66;

                goto LABEL_102;
              }

              v109 = [(__CFString *)v64 length];
              if (v109)
              {
                goto LABEL_101;
              }
            }

            v61 = 0;
            v63 = 0xE000000000000000;
            goto LABEL_102;
          }

          result = [(__CFString *)v59 UTF8String];
          if (result)
          {
            v67 = String.init(utf8String:)(result);
            if (v68)
            {
              goto LABEL_97;
            }

            __break(1u);
LABEL_96:
            _CFIndirectTaggedPointerStringGetContents();
            v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v68)
            {
              [(__CFString *)v59 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v61 = v106;
              v63 = v107;
              goto LABEL_102;
            }

LABEL_97:
            v61 = v67;
            v63 = v68;

            goto LABEL_102;
          }

          goto LABEL_164;
        }

        v104 = isTaggedPointer;
        v45 = v44;
        v46 = _objc_isTaggedPointer(v44);
        v47 = v45;
        v48 = v47;
        if ((v46 & 1) == 0)
        {
          goto LABEL_60;
        }

        v49 = _objc_getTaggedPointerTag(v47);
        if (v49)
        {
          if (v49 != 22)
          {
            if (v49 == 2)
            {
              MEMORY[0x1EEE9AC00](v49);
              v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v51 = v50;

LABEL_80:
              isTaggedPointer = v104;
              goto LABEL_81;
            }

LABEL_60:
            LOBYTE(v106) = 0;
            v109 = 0;
            if (__CFStringIsCF())
            {
              if (v109)
              {
LABEL_78:
                v4 = String.init(_cocoaString:)();
                v51 = v57;
                goto LABEL_79;
              }
            }

            else
            {
              v52 = v48;
              v53 = String.init(_nativeStorage:)();
              if (v54)
              {
                v4 = v53;
                v51 = v54;

                goto LABEL_80;
              }

              v109 = [v52 length];
              if (v109)
              {
                goto LABEL_78;
              }
            }

            v4 = 0;
            v51 = 0xE000000000000000;
            goto LABEL_80;
          }

          result = [v48 UTF8String];
          if (!result)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v55 = String.init(utf8String:)(result);
          if (v56)
          {
            goto LABEL_72;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v55 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v56)
        {
          [v48 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v4 = v106;
          v51 = v107;
          goto LABEL_79;
        }

LABEL_72:
        v4 = v55;
        v51 = v56;

LABEL_79:
        goto LABEL_80;
      }

LABEL_38:

      goto LABEL_54;
    }

    v25 = _objc_getTaggedPointerTag(v23);
    if (!v25)
    {
LABEL_37:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v36)
      {
        [(__CFString *)v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    if (v25 != 22)
    {
      if (v25 == 2)
      {
        MEMORY[0x1EEE9AC00](v25);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_54;
      }

      goto LABEL_21;
    }

    result = [(__CFString *)v24 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v35)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v103 = v18;
  v26 = v109;
  _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v11, v13, v109);
  if (v28)
  {
    v4 = v27;
    outlined consume of Data._Representation(v19, v103);
    outlined consume of Data._Representation(v11, v13);

    *a3 = v26;
    return v4;
  }

  v31 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v32 = @"NSCocoaErrorDomain";
  v33 = v32;
  v102 = v31;
  if (!v31)
  {
    goto LABEL_39;
  }

  v34 = _objc_getTaggedPointerTag(v32);
  switch(v34)
  {
    case 0:
LABEL_51:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v40)
      {
        [(__CFString *)v33 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_111;
      }

      goto LABEL_109;
    case 0x16:
      result = [(__CFString *)v33 UTF8String];
      if (!result)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      String.init(utf8String:)(result);
      if (v39)
      {
        goto LABEL_109;
      }

      __break(1u);
      goto LABEL_51;
    case 2:
      MEMORY[0x1EEE9AC00](v34);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_111;
  }

LABEL_39:
  LOBYTE(v106) = 0;
  v109 = 0;
  if (!__CFStringIsCF())
  {
    v37 = v33;
    String.init(_nativeStorage:)();
    if (v38 || (v109 = [(__CFString *)v37 length]) == 0)
    {

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (!v109)
  {
LABEL_109:

    goto LABEL_111;
  }

LABEL_110:
  String.init(_cocoaString:)();
LABEL_111:
  v71 = objc_allocWithZone(NSError);
  v72 = String._bridgeToObjectiveCImpl()();

  v73 = [v71 initWithDomain:v72 code:259 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v74 = [v73 domain];
  if (!v74)
  {
    goto LABEL_123;
  }

  v75 = v74;
  v76 = _objc_isTaggedPointer(v74);
  v77 = v75;
  v78 = v77;
  if ((v76 & 1) == 0)
  {
LABEL_117:
    LOBYTE(v106) = 0;
    v109 = 0;
    if (__CFStringIsCF())
    {
      if (v109)
      {
LABEL_132:
        v83 = String.init(_cocoaString:)();
        v82 = v89;
        goto LABEL_133;
      }
    }

    else
    {
      v84 = v78;
      v85 = String.init(_nativeStorage:)();
      if (v86)
      {
        v83 = v85;
        v82 = v86;

        goto LABEL_134;
      }

      v109 = [v84 length];
      if (v109)
      {
        goto LABEL_132;
      }
    }

LABEL_123:
    v83 = 0;
    v82 = 0xE000000000000000;
    goto LABEL_134;
  }

  v79 = _objc_getTaggedPointerTag(v77);
  if (!v79)
  {
    goto LABEL_127;
  }

  if (v79 != 22)
  {
    if (v79 == 2)
    {
      MEMORY[0x1EEE9AC00](v79);
      v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v82 = v81;

      v83 = v80;
      goto LABEL_134;
    }

    goto LABEL_117;
  }

  result = [v78 UTF8String];
  if (result)
  {
    v87 = String.init(utf8String:)(result);
    if (v88)
    {
      goto LABEL_128;
    }

    __break(1u);
LABEL_127:
    _CFIndirectTaggedPointerStringGetContents();
    v87 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v88)
    {
      [v78 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v83 = v106;
      v82 = v107;
      goto LABEL_133;
    }

LABEL_128:
    v83 = v87;
    v82 = v88;

LABEL_133:
LABEL_134:
    v90 = v33;
    v91 = v90;
    if (!v102)
    {
      goto LABEL_139;
    }

    v92 = _objc_getTaggedPointerTag(v90);
    if (v92)
    {
      if (v92 != 22)
      {
        if (v92 == 2)
        {
          MEMORY[0x1EEE9AC00](v92);
          v4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v94 = v93;

LABEL_154:
          if (v83 == v4 && v82 == v94)
          {
          }

          else
          {
            v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v101 & 1) == 0)
            {
              goto LABEL_160;
            }
          }

          swift_willThrow();
          outlined consume of Data._Representation(v19, v103);
          outlined consume of Data._Representation(v11, v13);
          goto LABEL_3;
        }

LABEL_139:
        LOBYTE(v106) = 0;
        v109 = 0;
        if (__CFStringIsCF())
        {
          v4 = v109;
          if (!v109)
          {

            v94 = 0xE000000000000000;
            goto LABEL_154;
          }
        }

        else
        {
          v95 = v91;
          v96 = String.init(_nativeStorage:)();
          if (v97)
          {
            v4 = v96;
            v94 = v97;

            goto LABEL_154;
          }

          v109 = [(__CFString *)v95 length];
          if (!v109)
          {

            v4 = 0;
            v94 = 0xE000000000000000;
            goto LABEL_154;
          }
        }

        v4 = String.init(_cocoaString:)();
        v94 = v100;
        goto LABEL_154;
      }

      result = [(__CFString *)v91 UTF8String];
      if (!result)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v98 = String.init(utf8String:)(result);
      if (v99)
      {
LABEL_149:
        v4 = v98;
        v94 = v99;

        goto LABEL_154;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v98 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v99)
    {
      [(__CFString *)v91 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v4 = v106;
      v94 = v107;
      goto LABEL_154;
    }

    goto LABEL_149;
  }

LABEL_168:
  __break(1u);
  return result;
}

char *String.init(contentsOf:usedEncoding:)(__int128 *a1, uint64_t *a2)
{
  v111 = *MEMORY[0x1E69E9840];
  v104 = MEMORY[0x1E69E7CC8];
  v105 = *a1;
  v106 = 1;
  swift_unknownObjectRetain();
  result = readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(&v105, 0, 0, 1, 0, &outlined read-only object #0 of String.init(contentsOf:usedEncoding:), &v104, &v107);
  if (v2)
  {
    outlined destroy of String(&unk_1EEED3A20);
    swift_unknownObjectRelease();
LABEL_3:

    return v3;
  }

  v6 = v108;
  v7 = v109;
  v8 = v110;
  if (!v108)
  {
    swift_unknownObjectRelease();
    outlined consume of Data.Deallocator?(v7);
    outlined destroy of String(&unk_1EEED3A20);
    v10 = 0;
    v12 = 0xC000000000000000;
    goto LABEL_9;
  }

  v9 = v107;
  if (!v107)
  {
    __break(1u);
    goto LABEL_162;
  }

  if (v109 == 4)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  outlined copy of Data.Deallocator?(v109);
  outlined destroy of String(&unk_1EEED3A20);
  v107 = v7;
  v108 = v8;
  v10 = specialized Data.init(bytesNoCopy:count:deallocator:)(v9, v6, &v107);
  v12 = v11;
  swift_unknownObjectRelease();
  outlined consume of Data.Deallocator?(v7);
LABEL_9:
  v13 = v104;
  if (!*(v104 + 16))
  {
    goto LABEL_13;
  }

  v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000018147D4A0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = (*(v13 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];
  outlined copy of Data._Representation(*v16, v17);
  encodingFromDataForExtendedAttribute(_:)(v18, v17, &v107);
  if (v108)
  {
    outlined consume of Data._Representation(v18, v17);
LABEL_13:
    outlined copy of Data._Representation(v10, v12);
    v19 = specialized String.init(dataOfUnknownEncoding:usedEncoding:)(v10, v12, a2);
    if (v20)
    {
      v3 = v19;
      outlined consume of Data._Representation(v10, v12);

      return v3;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v22 = @"NSCocoaErrorDomain";
    v23 = v22;
    if (!isTaggedPointer)
    {
LABEL_21:
      LOBYTE(v105) = 0;
      v107 = 0;
      if (!__CFStringIsCF())
      {
        v28 = v23;
        String.init(_nativeStorage:)();
        if (v29 || (v107 = [(__CFString *)v28 length]) == 0)
        {

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (v107)
      {
LABEL_53:
        String.init(_cocoaString:)();
LABEL_54:
        v40 = objc_allocWithZone(NSError);
        v41 = String._bridgeToObjectiveCImpl()();

        v42 = [v40 initWithDomain:v41 code:259 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v43 = [v42 domain];
        if (!v43)
        {
          v3 = 0;
          v50 = 0xE000000000000000;
LABEL_81:
          v57 = v23;
          v58 = v57;
          if (!isTaggedPointer)
          {
            goto LABEL_86;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v57);
          if (!TaggedPointerTag)
          {
            goto LABEL_96;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v62 = v61;

              goto LABEL_102;
            }

LABEL_86:
            LOBYTE(v105) = 0;
            v107 = 0;
            if (__CFStringIsCF())
            {
              if (v107)
              {
LABEL_101:
                v60 = String.init(_cocoaString:)();
                v62 = v68;
LABEL_102:
                if (v3 == v60 && v50 == v62)
                {

LABEL_106:
                  swift_willThrow();
                  outlined consume of Data._Representation(v10, v12);
                  goto LABEL_3;
                }

                v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v69)
                {
                  goto LABEL_106;
                }

                __break(1u);
LABEL_160:
                __break(1u);
              }
            }

            else
            {
              v63 = v58;
              v64 = String.init(_nativeStorage:)();
              if (v65)
              {
                v60 = v64;
                v62 = v65;

                goto LABEL_102;
              }

              v107 = [(__CFString *)v63 length];
              if (v107)
              {
                goto LABEL_101;
              }
            }

            v60 = 0;
            v62 = 0xE000000000000000;
            goto LABEL_102;
          }

          result = [(__CFString *)v58 UTF8String];
          if (result)
          {
            v66 = String.init(utf8String:)(result);
            if (v67)
            {
              goto LABEL_97;
            }

            __break(1u);
LABEL_96:
            _CFIndirectTaggedPointerStringGetContents();
            v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v67)
            {
              [(__CFString *)v58 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v62 = *(&v105 + 1);
              v60 = v105;
              goto LABEL_102;
            }

LABEL_97:
            v60 = v66;
            v62 = v67;

            goto LABEL_102;
          }

          goto LABEL_164;
        }

        v103 = isTaggedPointer;
        v44 = v43;
        v45 = _objc_isTaggedPointer(v43);
        v46 = v44;
        v47 = v46;
        if ((v45 & 1) == 0)
        {
          goto LABEL_60;
        }

        v48 = _objc_getTaggedPointerTag(v46);
        if (v48)
        {
          if (v48 != 22)
          {
            if (v48 == 2)
            {
              MEMORY[0x1EEE9AC00](v48);
              v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v50 = v49;

LABEL_80:
              isTaggedPointer = v103;
              goto LABEL_81;
            }

LABEL_60:
            LOBYTE(v105) = 0;
            v107 = 0;
            if (__CFStringIsCF())
            {
              if (v107)
              {
LABEL_78:
                v3 = String.init(_cocoaString:)();
                v50 = v56;
                goto LABEL_79;
              }
            }

            else
            {
              v51 = v47;
              v52 = String.init(_nativeStorage:)();
              if (v53)
              {
                v3 = v52;
                v50 = v53;

                goto LABEL_80;
              }

              v107 = [v51 length];
              if (v107)
              {
                goto LABEL_78;
              }
            }

            v3 = 0;
            v50 = 0xE000000000000000;
            goto LABEL_80;
          }

          result = [v47 UTF8String];
          if (!result)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v54 = String.init(utf8String:)(result);
          if (v55)
          {
            goto LABEL_72;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v54 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v55)
        {
          [v47 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v50 = *(&v105 + 1);
          v3 = v105;
          goto LABEL_79;
        }

LABEL_72:
        v3 = v54;
        v50 = v55;

LABEL_79:
        goto LABEL_80;
      }

LABEL_38:

      goto LABEL_54;
    }

    v24 = _objc_getTaggedPointerTag(v22);
    if (!v24)
    {
LABEL_37:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v35)
      {
        [(__CFString *)v23 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_54;
      }

      goto LABEL_38;
    }

    if (v24 != 22)
    {
      if (v24 == 2)
      {
        MEMORY[0x1EEE9AC00](v24);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_54;
      }

      goto LABEL_21;
    }

    result = [(__CFString *)v23 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v34)
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_37;
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v102 = v17;
  v25 = v107;
  _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v10, v12, v107);
  if (v27)
  {
    v3 = v26;
    outlined consume of Data._Representation(v18, v102);
    outlined consume of Data._Representation(v10, v12);

    *a2 = v25;
    return v3;
  }

  v30 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v31 = @"NSCocoaErrorDomain";
  v32 = v31;
  v101 = v30;
  if (!v30)
  {
    goto LABEL_39;
  }

  v33 = _objc_getTaggedPointerTag(v31);
  switch(v33)
  {
    case 0:
LABEL_51:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v39)
      {
        [(__CFString *)v32 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_111;
      }

      goto LABEL_109;
    case 0x16:
      result = [(__CFString *)v32 UTF8String];
      if (!result)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      String.init(utf8String:)(result);
      if (v38)
      {
        goto LABEL_109;
      }

      __break(1u);
      goto LABEL_51;
    case 2:
      MEMORY[0x1EEE9AC00](v33);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_111;
  }

LABEL_39:
  LOBYTE(v105) = 0;
  v107 = 0;
  if (!__CFStringIsCF())
  {
    v36 = v32;
    String.init(_nativeStorage:)();
    if (v37 || (v107 = [(__CFString *)v36 length]) == 0)
    {

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (!v107)
  {
LABEL_109:

    goto LABEL_111;
  }

LABEL_110:
  String.init(_cocoaString:)();
LABEL_111:
  v70 = objc_allocWithZone(NSError);
  v71 = String._bridgeToObjectiveCImpl()();

  v72 = [v70 initWithDomain:v71 code:259 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v73 = [v72 domain];
  if (!v73)
  {
    goto LABEL_123;
  }

  v74 = v73;
  v75 = _objc_isTaggedPointer(v73);
  v76 = v74;
  v77 = v76;
  if ((v75 & 1) == 0)
  {
LABEL_117:
    LOBYTE(v105) = 0;
    v107 = 0;
    if (__CFStringIsCF())
    {
      if (v107)
      {
LABEL_132:
        v82 = String.init(_cocoaString:)();
        v81 = v88;
        goto LABEL_133;
      }
    }

    else
    {
      v83 = v77;
      v84 = String.init(_nativeStorage:)();
      if (v85)
      {
        v82 = v84;
        v81 = v85;

        goto LABEL_134;
      }

      v107 = [v83 length];
      if (v107)
      {
        goto LABEL_132;
      }
    }

LABEL_123:
    v82 = 0;
    v81 = 0xE000000000000000;
    goto LABEL_134;
  }

  v78 = _objc_getTaggedPointerTag(v76);
  if (!v78)
  {
    goto LABEL_127;
  }

  if (v78 != 22)
  {
    if (v78 == 2)
    {
      MEMORY[0x1EEE9AC00](v78);
      v79 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v81 = v80;

      v82 = v79;
      goto LABEL_134;
    }

    goto LABEL_117;
  }

  result = [v77 UTF8String];
  if (result)
  {
    v86 = String.init(utf8String:)(result);
    if (v87)
    {
      goto LABEL_128;
    }

    __break(1u);
LABEL_127:
    _CFIndirectTaggedPointerStringGetContents();
    v86 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v87)
    {
      [v77 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v81 = *(&v105 + 1);
      v82 = v105;
      goto LABEL_133;
    }

LABEL_128:
    v82 = v86;
    v81 = v87;

LABEL_133:
LABEL_134:
    v89 = v32;
    v90 = v89;
    if (!v101)
    {
      goto LABEL_139;
    }

    v91 = _objc_getTaggedPointerTag(v89);
    if (v91)
    {
      if (v91 != 22)
      {
        if (v91 == 2)
        {
          MEMORY[0x1EEE9AC00](v91);
          v3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v93 = v92;

LABEL_154:
          if (v82 == v3 && v81 == v93)
          {
          }

          else
          {
            v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v100 & 1) == 0)
            {
              goto LABEL_160;
            }
          }

          swift_willThrow();
          outlined consume of Data._Representation(v18, v102);
          outlined consume of Data._Representation(v10, v12);
          goto LABEL_3;
        }

LABEL_139:
        LOBYTE(v105) = 0;
        v107 = 0;
        if (__CFStringIsCF())
        {
          v3 = v107;
          if (!v107)
          {

            v93 = 0xE000000000000000;
            goto LABEL_154;
          }
        }

        else
        {
          v94 = v90;
          v95 = String.init(_nativeStorage:)();
          if (v96)
          {
            v3 = v95;
            v93 = v96;

            goto LABEL_154;
          }

          v107 = [(__CFString *)v94 length];
          if (!v107)
          {

            v3 = 0;
            v93 = 0xE000000000000000;
            goto LABEL_154;
          }
        }

        v3 = String.init(_cocoaString:)();
        v93 = v99;
        goto LABEL_154;
      }

      result = [(__CFString *)v90 UTF8String];
      if (!result)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v97 = String.init(utf8String:)(result);
      if (v98)
      {
LABEL_149:
        v3 = v97;
        v93 = v98;

        goto LABEL_154;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v98)
    {
      [(__CFString *)v90 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v93 = *(&v105 + 1);
      v3 = v105;
      goto LABEL_154;
    }

    goto LABEL_149;
  }

LABEL_168:
  __break(1u);
  return result;
}

unint64_t extendedAttributeData(for:)(unint64_t *a1)
{
  v1 = CFStringConvertNSStringEncodingToEncoding(*a1);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = CFStringConvertEncodingToIANACharSetName(v1);
  if (v2)
  {
    v9 = 0xE000000000000000;
    v3 = v2;
    type metadata accessor for CFStringRef(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](59, 0xE100000000000000);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v4);

    v8 = 4;
    v5 = String.data(using:allowLossyConversion:)(&v8, 0, 0, 0xE000000000000000);
  }

  else
  {
    v9 = 0xE100000000000000;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v6);

    v8 = 4;
    v5 = String.data(using:allowLossyConversion:)(&v8, 0, 0x3BuLL, 0xE100000000000000);
  }

  return v5;
}

id StringProtocol.write<A>(toFile:atomically:encoding:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109 = a2;
  v115[4] = *MEMORY[0x1E69E9840];
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v115[0] = *v14;
  v16 = StringProtocol.data(using:allowLossyConversion:)(v115, 0);
  if (v17 >> 60 != 15)
  {
    v22 = v17;
    v106 = a1;
    v107 = v16;
    v108 = v7;
    v115[0] = v15;
    v23 = extendedAttributeData(for:)(v115);
    if (v24 >> 60 == 15)
    {
      v25 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v28 = v23;
      v29 = v24;
      v104[1] = a7;
      v114[0] = 0xD000000000000016;
      v114[1] = 0x800000018147D4A0;
      v114[2] = v23;
      v114[3] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd);
      v25 = static _DictionaryStorage.allocate(capacity:)();
      outlined copy of Data?(v28, v29);

      outlined copy of Data._Representation(v28, v29);
      outlined destroy of TermOfAddress?(v114, &_sSS_10Foundation4DataVtMd);
      v105 = 0x800000018147D4A0;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x800000018147D4A0);
      v32 = v31;

      if (v32)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
      }

      v25[(v30 >> 6) + 8] |= 1 << v30;
      v33 = (v25[6] + 16 * v30);
      *v33 = 0xD000000000000016;
      v33[1] = v105;
      v34 = (v25[7] + 16 * v30);
      *v34 = v28;
      v34[1] = v29;
      outlined consume of Data?(v28, v29);
      v35 = v25[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_123;
      }

      v25[2] = v37;
    }

    v38 = v109 & 1;
    (*(v11 + 16))(v13, v106, a5);
    v39 = String.init<A>(_:)();
    v41 = v40;
    MEMORY[0x1EEE9AC00](v39);
    v104[-6] = v42;
    v104[-5] = v41;
    LOBYTE(v104[-4]) = 0;
    v104[-3] = v38;
    v104[-2] = v25;
    LOBYTE(v104[-1]) = 0;
    v43 = v107;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(_s10Foundation11writeToFile4path4data7options10attributes14reportProgressyAA9PathOrURLO_AA4DataVSo20NSDataWritingOptionsVSDySSAKGSbtKFySWKXEfU_TA_0, &v104[-8], v107, v22);
    outlined consume of Data?(v43, v22);
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v19 = @"NSCocoaErrorDomain";
  v20 = v19;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v19);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_24:
      v112 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v48)
      {
        [(__CFString *)v20 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_42;
      }

      goto LABEL_31;
    case 0x16:
      result = [(__CFString *)v20 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      String.init(utf8String:)(result);
      if (v47)
      {
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_24;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v104[-2] = v20;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_42;
  }

LABEL_9:
  LOBYTE(v110) = 0;
  v115[0] = 0;
  LOBYTE(v112) = 0;
  v113 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v45 = v20;
    String.init(_nativeStorage:)();
    if (v46 || (v115[0] = [(__CFString *)v45 length]) == 0)
    {

      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v27 = v115[0];
  if (!v115[0])
  {
LABEL_31:

    goto LABEL_42;
  }

  if (v113 != 1)
  {
    if (v112)
    {
      if (v110 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v104[-4] = v20;
        v104[-3] = v115;
        LODWORD(v104[-2]) = 1536;
        v104[-1] = v27;
        v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v51 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v51 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v52 = [(__CFString *)v20 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v52);
        v104[-4] = v20;
        v104[-3] = v115;
        LODWORD(v104[-2]) = 134217984;
        v104[-1] = v53;
        v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v56 = HIBYTE(v55) & 0xF;
        if ((v55 & 0x2000000000000000) == 0)
        {
          v56 = v54 & 0xFFFFFFFFFFFFLL;
        }

        if (v56)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_41:
    String.init(_cocoaString:)();
    goto LABEL_42;
  }

  if (v110)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_42:
  v57 = objc_allocWithZone(NSError);
  v58 = String._bridgeToObjectiveCImpl()();

  v59 = [v57 initWithDomain:v58 code:517 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v60 = [v59 domain];
  if (!v60)
  {
    goto LABEL_53;
  }

  v61 = v60;
  v62 = _objc_isTaggedPointer(v60);
  v63 = v61;
  v64 = v63;
  if ((v62 & 1) == 0)
  {
LABEL_48:
    LOBYTE(v110) = 0;
    v115[0] = 0;
    LOBYTE(v112) = 0;
    v113 = 0;
    v69 = __CFStringIsCF();
    if (v69)
    {
      v70 = v115[0];
      if (v115[0])
      {
        if (v113 == 1)
        {
          if (v110)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v78 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_79;
        }

        if (v112)
        {
          if (v110 == 1)
          {
            v109 = v104;
            MEMORY[0x1EEE9AC00](v69);
            v104[-4] = v64;
            v104[-3] = v115;
            LODWORD(v104[-2]) = 1536;
            v104[-1] = v70;
          }

          else
          {
            v80 = [v64 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v80);
            v104[-4] = v64;
            v104[-3] = v115;
            LODWORD(v104[-2]) = 134217984;
            v104[-1] = v81;
          }

          v76 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v68 = v77;
          v82 = HIBYTE(v77) & 0xF;
          if ((v77 & 0x2000000000000000) == 0)
          {
            v82 = v76 & 0xFFFFFFFFFFFFLL;
          }

          if (v82)
          {
            v66 = v76;
            goto LABEL_62;
          }
        }

LABEL_78:
        v78 = String.init(_cocoaString:)();
LABEL_79:
        v66 = v78;
        v68 = v79;
        goto LABEL_80;
      }
    }

    else
    {
      v71 = v64;
      v72 = String.init(_nativeStorage:)();
      if (v73)
      {
        v66 = v72;
        v68 = v73;

        goto LABEL_81;
      }

      v115[0] = [v71 length];
      if (v115[0])
      {
        goto LABEL_78;
      }
    }

LABEL_53:
    v66 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_81;
  }

  v65 = _objc_getTaggedPointerTag(v63);
  if (!v65)
  {
    goto LABEL_60;
  }

  if (v65 != 22)
  {
    if (v65 == 2)
    {
      MEMORY[0x1EEE9AC00](v65);
      v104[-2] = v64;
      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v68 = v67;

LABEL_81:
      v83 = v20;
      v84 = v83;
      if (!isTaggedPointer)
      {
        goto LABEL_86;
      }

      v85 = _objc_getTaggedPointerTag(v83);
      if (!v85)
      {
        goto LABEL_98;
      }

      if (v85 != 22)
      {
        if (v85 == 2)
        {
          MEMORY[0x1EEE9AC00](v85);
          v104[-2] = v84;
          v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v88 = v87;

          goto LABEL_116;
        }

LABEL_86:
        LOBYTE(v110) = 0;
        v115[0] = 0;
        LOBYTE(v112) = 0;
        v113 = 0;
        v89 = __CFStringIsCF();
        if (v89)
        {
          v90 = v115[0];
          if (v115[0])
          {
            if (v113 == 1)
            {
              if (v110)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v96 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_115;
            }

            if (v112)
            {
              if (v110 == 1)
              {
                MEMORY[0x1EEE9AC00](v89);
                v104[-4] = v84;
                v104[-3] = v115;
                LODWORD(v104[-2]) = 1536;
                v104[-1] = v90;
              }

              else
              {
                v98 = [(__CFString *)v84 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v98);
                v104[-4] = v84;
                v104[-3] = v115;
                LODWORD(v104[-2]) = 134217984;
                v104[-1] = v99;
              }

              v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v88 = v101;
              v102 = HIBYTE(v101) & 0xF;
              if ((v101 & 0x2000000000000000) == 0)
              {
                v102 = v100 & 0xFFFFFFFFFFFFLL;
              }

              if (v102)
              {
                v86 = v100;

                goto LABEL_116;
              }
            }

LABEL_114:
            v96 = String.init(_cocoaString:)();
LABEL_115:
            v86 = v96;
            v88 = v97;
LABEL_116:
            if (v66 == v86 && v68 == v88)
            {

              return swift_willThrow();
            }

            v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v103)
            {
              return swift_willThrow();
            }

            goto LABEL_122;
          }
        }

        else
        {
          v91 = v84;
          v92 = String.init(_nativeStorage:)();
          if (v93)
          {
            v86 = v92;
            v88 = v93;

            goto LABEL_116;
          }

          v115[0] = [(__CFString *)v91 length];
          if (v115[0])
          {
            goto LABEL_114;
          }
        }

        v86 = 0;
        v88 = 0xE000000000000000;
        goto LABEL_116;
      }

      result = [(__CFString *)v84 UTF8String];
      if (result)
      {
        v94 = String.init(utf8String:)(result);
        if (v95)
        {
          goto LABEL_99;
        }

        __break(1u);
LABEL_98:
        v112 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v94 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v95)
        {
          [(__CFString *)v84 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v86 = v110;
          v88 = v111;
          goto LABEL_116;
        }

LABEL_99:
        v86 = v94;
        v88 = v95;

        goto LABEL_116;
      }

      goto LABEL_125;
    }

    goto LABEL_48;
  }

  result = [v64 UTF8String];
  if (result)
  {
    v74 = String.init(utf8String:)(result);
    if (v75)
    {
LABEL_61:
      v66 = v74;
      v68 = v75;
LABEL_62:

LABEL_80:
      goto LABEL_81;
    }

    __break(1u);
LABEL_60:
    v112 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v74 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v75)
    {
      [v64 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v66 = v110;
      v68 = v111;
      goto LABEL_80;
    }

    goto LABEL_61;
  }

LABEL_126:
  __break(1u);
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Su_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SuSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Su_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t specialized String.init(dataOfUnknownEncoding:usedEncoding:)(uint64_t result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_23;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v7 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      if (v7 < 4)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (!v6)
  {
    v7 = BYTE6(a2);
    if (BYTE6(a2) >= 4uLL)
    {
      goto LABEL_4;
    }

LABEL_16:
    if (v7 < 2)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v15 = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_31;
  }

  v7 = v15;
  if (v15 < 4)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((Data._Representation.subscript.getter(0, result, a2) != 0xFF || Data._Representation.subscript.getter(1, v5, a2) != 254 || Data._Representation.subscript.getter(2, v5, a2) || Data._Representation.subscript.getter(3, v5, a2)) && (Data._Representation.subscript.getter(0, v5, a2) || Data._Representation.subscript.getter(1, v5, a2) || Data._Representation.subscript.getter(3, v5, a2) != 254 || Data._Representation.subscript.getter(4, v5, a2) != 0xFF))
  {
LABEL_17:
    if ((v7 & 1) == 0 && (Data._Representation.subscript.getter(0, v5, a2) == 254 && Data._Representation.subscript.getter(1, v5, a2) == 0xFF || Data._Representation.subscript.getter(0, v5, a2) == 0xFF && Data._Representation.subscript.getter(1, v5, a2) == 254))
    {
      v8 = 10;
      goto LABEL_24;
    }

LABEL_23:
    v8 = 4;
    goto LABEL_24;
  }

  v8 = 2348810496;
LABEL_24:
  _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v5, a2, v8);
  v12 = v11;
  v14 = v13;
  outlined consume of Data._Representation(v5, a2);
  if (v14)
  {
    *a3 = v8;
  }

  return v12;
}

uint64_t static String.homeDirectoryPath(forUser:)()
{
  if (!issetugid() && getenv("CFFIXED_USER_HOME"))
  {
    result = String.init(cString:)();
    goto LABEL_6;
  }

  result = specialized static Platform.homeDirectory(forUserName:)();
  if (v1)
  {
LABEL_6:
    v2 = String.standardizingPath.getter(result);

    return v2;
  }

  return result;
}

char *closure #1 in static String.temporaryDirectoryPath.getter@<X0>(char *result@<X0>, size_t a2@<X1>, char **a3@<X8>)
{
  if (!result)
  {
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  if (a2)
  {
    bzero(result, a2);
  }

  confstr(65537, v4, a2);
  result = String.init(cString:)();
  *a3 = result;
  a3[1] = v6;
  return result;
}

unint64_t String._expandingTildeInPath.getter(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((specialized Collection.first.getter(a1, a2) & 0x1FF) != 0x7E)
  {
    goto LABEL_23;
  }

  result = specialized Collection<>.firstIndex(of:)(47, v3, a2);
  if ((v5 & 1) == 0)
  {
    v8 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = v3;
  }

  v7 = v6 << 16;
  if ((a2 & 0x1000000000000000) == 0 || (v3 & 0x800000000000000) != 0)
  {
    v8 = v7 | 7;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    result = 65540;
    goto LABEL_16;
  }

  v8 = v7 | 0xB;
LABEL_8:
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  result = String.UTF8View._foreignIndex(after:)();
LABEL_16:
  if (v8 >> 14 == result >> 14)
  {
    v10 = static String.homeDirectoryPath()();
LABEL_27:
    specialized Collection.suffix(from:)(v8, v3, a2);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    return v10;
  }

  if (v8 >> 14 >= result >> 14)
  {
    v11 = String.subscript.getter();
    MEMORY[0x1865CAE80](v11);

    if (!issetugid() && getenv("CFFIXED_USER_HOME"))
    {
      v12 = String.init(cString:)();
      goto LABEL_26;
    }

    v12 = specialized static Platform.homeDirectory(forUserName:)();
    if (v13)
    {
LABEL_26:
      v10 = String.standardizingPath.getter(v12);

      goto LABEL_27;
    }

LABEL_23:

    return v3;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

size_t closure #1 in closure #1 in String._resolvingSymlinksInPath()@<X0>(char *__dst@<X0>, char *__source@<X2>, size_t a3@<X1>, size_t *a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
LABEL_14:
    __break(1u);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a3)
  {
    bzero(__dst, a3);
  }

  v9 = strlcpy(__dst, __source, 0x402uLL);
  if (__OFADD__(v9, 1))
  {
    goto LABEL_13;
  }

  v12 = v9 + 1;
  if (swift_stdlib_isStackAllocationSafe())
  {
    result = closure #1 in closure #1 in closure #1 in String._resolvingSymlinksInPath()(v14, __dst, 0x402uLL, a3, &v12, v13);
    if (!v4)
    {
      *a4 = *v13;
      return result;
    }

    v11 = v4;
    swift_willThrow();

    __break(1u);
    goto LABEL_16;
  }

  __source = swift_slowAlloc();
  closure #1 in closure #1 in closure #1 in String._resolvingSymlinksInPath()(__source, __dst, 0x402uLL, a3, &v12, a4);
  v11 = v4;
  if (v4)
  {
LABEL_16:

    result = MEMORY[0x1865D2690](__source, -1, -1);
    __break(1u);
    return result;
  }

  return MEMORY[0x1865D2690](__source, -1, -1);
}

size_t closure #1 in closure #1 in closure #1 in String._resolvingSymlinksInPath()@<X0>(char *a1@<X0>, char *a2@<X2>, size_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X4>, size_t *a6@<X8>)
{
  v7 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v39 = a2;
  if (a1)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    if (a3)
    {
      bzero(a1, a3);
      a2 = v39;
    }
  }

  if (!a2)
  {
LABEL_58:
    __break(1u);
  }

  v35 = a6;
  v38 = 0;
  v36 = -a2;
  v9 = a2;
  memset(&v41, 0, sizeof(v41));
  while (1)
  {
    while (1)
    {
      v10 = *v9;
      v11 = v9;
      if (v10 == 47)
      {
        v11 = v9;
        do
        {
          v12 = *++v11;
          v10 = v12;
        }

        while (v12 == 47);
      }

      for (i = 0; v10; v10 = (i++)[v11 + 1])
      {
        if (v10 == 47)
        {
          break;
        }
      }

      v14 = &i[v11];
      i[v11] = 0;
      v40 = v41;
      result = lstat(a2, &v40);
      if ((result & 0x80000000) != 0)
      {
LABEL_45:
        *v35 = 0;
        v35[1] = 0;
        return result;
      }

      v16 = v7;
      st_mode = v40.st_mode;
      v18 = S_IFMT.getter() & st_mode;
      if (v18 != S_IFLNK.getter())
      {
        *v14 = v10;
        v7 = v16;
        a2 = v39;
        break;
      }

      result = v39;
      if (v38 >= 33)
      {
        goto LABEL_45;
      }

      v7 = v16;
      if (!v16)
      {
        goto LABEL_57;
      }

      result = readlink(v39, v16, 0x401uLL);
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v19 = result;
      v20 = &v16[result];
      v16[result] = 0;
      *v14 = v10;
      a2 = v39;
      if (!result)
      {
        break;
      }

      if (*v16 == 47)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9 - v39 + 1;
        if (__OFADD__(v9 - v39, 1))
        {
          goto LABEL_55;
        }
      }

      v22 = &v11[v36 + i];
      v23 = *a5;
      v24 = *a5 - v22;
      if (__OFSUB__(*a5, v22))
      {
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
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v25 = a5;
      v26 = v21 + result;
      if (__OFADD__(v21, result))
      {
        goto LABEL_48;
      }

      if (__OFADD__(v26, v24))
      {
        goto LABEL_49;
      }

      if (v26 + v24 >= 1027)
      {
        goto LABEL_45;
      }

      v27 = __OFADD__(v22, v24);
      v28 = &v22[v24];
      if (v27)
      {
        goto LABEL_50;
      }

      if (v23 < v22 || a4 < v26 || v28 < v22)
      {
        goto LABEL_51;
      }

      v29 = v23 + v39 - v11 - i;
      if (a4 - v26 < v29)
      {
        goto LABEL_52;
      }

      if ((v26 + v39 - v11) != i || v26 >= v28)
      {
        v30 = &i[v11];
        v31 = &v16[result];
        memmove(&v39[v26], v30, v29);
        v20 = v31;
        a2 = v39;
      }

      v32 = v26 + v29;
      if (__OFADD__(v26, v29))
      {
        goto LABEL_53;
      }

      if (v26 < v21)
      {
        goto LABEL_54;
      }

      v33 = &a2[v21];
      if (&a2[v21] != v16 || v33 >= v20)
      {
        memmove(v33, v16, v19);
        a2 = v39;
      }

      ++v38;
      a5 = v25;
      *v25 = v32;
      v7 = v16;
      if (*v16 == 47)
      {
        v9 = a2;
      }
    }

    if (!v10)
    {
      break;
    }

    v9 = &i[v11];
  }

  result = String.init(cString:)();
  *v35 = result;
  v35[1] = v34;
  return result;
}

void *closure #1 in StringProtocol.replacing(_:with:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 16);
  if (!v3)
  {
    return v3;
  }

  if (v3 <= a2)
  {
    memcpy(result, (*a3 + 32), *(*a3 + 16));
    return v3;
  }

  __break(1u);
  return result;
}

void *one-time initialization function for lineSeparators()
{
  result = specialized Array.append<A>(contentsOf:)(outlined read-only object #2 of one-time initialization function for lineSeparators);
  static String.lineSeparators = &outlined read-only object #1 of one-time initialization function for paragraphSeparators;
  return result;
}

unint64_t lazy protocol witness table accessor for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions()
{
  result = lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions;
  if (!lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions;
  if (!lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions;
  if (!lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions;
  if (!lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String._BlockSearchingOptions and conformance String._BlockSearchingOptions);
  }

  return result;
}

uint64_t _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    [a1 copy];
    v4 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v5 = specialized _arrayForceCast<A, B>(_:)(v4);

    return v5;
  }

  return result;
}

uint64_t _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZAA12URLQueryItemV_Tt0g5(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v3 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    [a1 copy];
    v4 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v5 = specialized _arrayForceCast<A, B>(_:)(v4);

    return v5;
  }

  return result;
}

unint64_t specialized BidirectionalCollection<>._alignIndex(roundingUp:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  result = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a2, a3);
  if (result >> 14 < a1 >> 14)
  {
    v7 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (result >> 14 < 4 * v7)
    {
      v8 = _StringGuts.validateScalarIndex(_:)(result, a2, a3);
      if ((a3 & 0x1000000000000000) != 0)
      {

        return String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        return ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v8 >> 16) + (v8 >> 16)) << 16) | 5;
      }
    }
  }

  return result;
}

unint64_t specialized BidirectionalCollection<>._boundaryAlignedRange<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(v12, a4, a5);
  result = _StringGuts.validateInclusiveScalarIndex(_:)(v13, a4, a5);
  v10 = result >> 14;
  if (result >> 14 < v13 >> 14 && v10 < a3 >> 14)
  {
    result = Substring.UnicodeScalarView.index(after:)();
    v10 = result >> 14;
  }

  if (v10 >= v8 >> 14)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in String.data(using:allowLossyConversion:)(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v26 = a4;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return result;
  }

  v9 = result;
  v10 = 0;
  v22 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a3 & 0xFFFFFFFFFFFFFFLL;
  while (1)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v13 = result;
      v15 = v14;
      if (result > 0x7F)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      v24 = a2;
      v25 = v23;
      v12 = &v24 + v10;
    }

    else
    {
      result = v22;
      if ((a2 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = (result + v10);
    }

    v13 = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
LABEL_19:
      v15 = 1;
      if (v13 > 0x7F)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    v18 = (__clz(v13 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      break;
    }

    if (v18 == 1)
    {
      goto LABEL_19;
    }

    v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
    v15 = 2;
    if (v13 > 0x7F)
    {
      goto LABEL_15;
    }

LABEL_20:
    v17 = v9[2];
    result = specialized Sequence._copySequenceContents(initializing:)(&v24, (*v9 + v17), v9[1] - v17, v13);
    v4 = v24;
    if (v24 <= 0x7F)
    {
      v5 = v25;
      if (v25 != 1)
      {
        goto LABEL_40;
      }
    }

    else if (v24 >= 0x800)
    {
      v5 = v25;
      if (WORD1(v24))
      {
        if (v25 != 4)
        {
          goto LABEL_40;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v5 = v25;
      if (v25 != 2)
      {
        goto LABEL_40;
      }
    }

    v11 = result + v17;
LABEL_8:
    v9[2] = v11;
    v10 += v15;
    if (v10 >= v6)
    {
      return result;
    }
  }

  if (v18 == 3)
  {
    v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
    v15 = 3;
    if (v13 > 0x7F)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
  v15 = 4;
  if (v13 <= 0x7F)
  {
    goto LABEL_20;
  }

LABEL_15:
  v16 = v9[2];
  if (v16 < v9[1])
  {
    *(*v9 + v16) = v26;
    v11 = v16 + 1;
    goto LABEL_8;
  }

  __break(1u);
LABEL_40:

  result = Unicode.Scalar.UTF8View.subscript.getter();
  v19 = 1;
  v20 = 2;
  v21 = 3;
  if (v4 >= 0x10000)
  {
    v21 = 4;
  }

  if (v4 > 0x7FF)
  {
    v20 = v21;
  }

  if (v4 >= 0x80)
  {
    v19 = v20;
  }

  if (v5 < v19)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t closure #4 in String.data(using:allowLossyConversion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  if (a5 > 2483028223)
  {
LABEL_6:
    v9 = 0;
    if (a5 == 2483028224 || a5 == 2617245952)
    {
      goto LABEL_10;
    }

    if (a5 == 2550137088)
    {
LABEL_9:
      v9 = 1;
LABEL_10:
      specialized Sequence._copySequenceContents(initializing:)(v12, a1, a2, a3, a4, v9);

      outlined destroy of UnicodeScalarToDataAdaptor.Iterator(v12);
      result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSryAEG_Tt0g5(a1, a2);
      *a6 = result;
      a6[1] = v11;
      return result;
    }

    goto LABEL_11;
  }

  if (a5 == 2415919360)
  {
    goto LABEL_9;
  }

  if (a5 == 10 || a5 == 2348810496)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t StringProtocol.lineRange<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = StringProtocol._lineBounds<A>(around:)(a1, a2, a3, a4, a5, a6);
  if (v7 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

unint64_t StringProtocol._lineBounds<A>(around:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v66 = a6;
  v67 = a3;
  v7 = v6;
  v68 = a5;
  v63 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v62 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = v59 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v59 - v17;
  if (a2 == MEMORY[0x1E69E6158])
  {
    v41 = v6[1];
    v75 = *v6;
    v42 = v75;
    v76 = v41;
    lazy protocol witness table accessor for type String.UnicodeScalarView and conformance String.UnicodeScalarView();

    dispatch thunk of RangeExpression.relative<A>(to:)();
    v43 = v70;
    v44 = _StringGuts.validateInclusiveScalarIndex(_:)(v69, v42, v41);
    result = specialized BidirectionalCollection<>._alignIndex(roundingUp:)(v43, v42, v41);
    if (result >> 14 < v44 >> 14)
    {
      goto LABEL_22;
    }

    v45 = result;
    v46 = String.subscript.getter();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    result = specialized BidirectionalCollection<>._getBlock(for:in:)(v66, v44, v45, v46, v48, v50, v52, &v75);
    if (v76)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v77)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v78)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v40 = v75;
LABEL_18:

    return v40;
  }

  if (a2 != MEMORY[0x1E69E67B0])
  {
    v61 = v14;
    v64 = v12;
    dispatch thunk of StringProtocol.unicodeScalars.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v19 = v76;
    v69 = v75;
    dispatch thunk of BidirectionalCollection.index(_:offsetBy:)();
    v20 = v75;
    v21 = BidirectionalCollection<>._alignIndex(roundingUp:)(v19);
    result = (*(v16 + 8))(v18, v15);
    if (v21 >> 14 < v20 >> 14)
    {
      __break(1u);
    }

    else
    {
      v23 = v20;
      v24 = v61;
      v60 = v21;
      dispatch thunk of StringProtocol.utf8.getter();
      v68 = *(*(a4 + 8) + 8);
      dispatch thunk of Collection.startIndex.getter();
      v69 = v75;
      v74 = v20;
      v25 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v59[1] = dispatch thunk of Collection.distance(from:to:)();
      v28 = v64 + 8;
      v27 = *(v64 + 8);
      v27(v24, v25);
      v59[0] = a4;
      dispatch thunk of StringProtocol.utf8.getter();
      v75 = v23;
      v69 = v60;
      v67 = AssociatedConformanceWitness;
      dispatch thunk of Collection.distance(from:to:)();
      v64 = v28;
      v60 = v27;
      v27(v24, v25);
      (*(v63 + 16))(v62, v7, a2);
      v29 = Substring.init<A>(_:)();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = Substring.UTF8View.index(_:offsetBy:)();

      v37 = Substring.UTF8View.index(_:offsetBy:)();

      if (v37 >> 14 >= v36 >> 14)
      {

        result = specialized BidirectionalCollection<>._getBlock(for:in:)(v66, v36, v37, v29, v31, v33, v35, &v75);
        if ((v76 & 1) == 0)
        {
          if ((v77 & 1) == 0)
          {
            if ((v78 & 1) == 0)
            {

              Substring.UTF8View.distance(from:to:)();

              v63 = Substring.UTF8View.distance(from:to:)();

              v66 = Substring.UTF8View.distance(from:to:)();

              dispatch thunk of StringProtocol.utf8.getter();
              dispatch thunk of Collection.startIndex.getter();
              v73 = v74;
              v38 = AssociatedTypeWitness;
              dispatch thunk of Collection.index(_:offsetBy:)();
              v39 = v60;
              (v60)(v24, v38);
              v62 = v69;
              dispatch thunk of StringProtocol.utf8.getter();
              dispatch thunk of Collection.startIndex.getter();
              v72 = v73;
              dispatch thunk of Collection.index(_:offsetBy:)();
              v39(v24, v38);
              v40 = v62;
              dispatch thunk of StringProtocol.utf8.getter();
              dispatch thunk of Collection.startIndex.getter();
              v71 = v72;
              dispatch thunk of Collection.index(_:offsetBy:)();
              v39(v24, v38);
              return v40;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v53 = *v6;
  v54 = v7[1];
  v56 = v7[2];
  v55 = v7[3];

  v57 = specialized BidirectionalCollection<>._boundaryAlignedRange<A>(_:)(a1, v53, v54, v56, v55);
  result = specialized BidirectionalCollection<>._getBlock(for:in:)(v66, v57, v58, v53, v54, v56, v55, &v75);
  if (v76)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v77)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v78 & 1) == 0)
  {
    v40 = v75;
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, _OWORD *a2, uint64_t a3)
{
  type metadata accessor for NSDictionary.Iterator();
  v7 = swift_allocObject();
  v8 = swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)(v8, v43);
  v9 = v43[11];
  v7[11] = v43[10];
  v7[12] = v9;
  v7[13] = v44[0];
  *(v7 + 217) = *(v44 + 9);
  v10 = v43[7];
  v7[7] = v43[6];
  v7[8] = v10;
  v11 = v43[9];
  v7[9] = v43[8];
  v7[10] = v11;
  v12 = v43[3];
  v7[3] = v43[2];
  v7[4] = v12;
  v13 = v43[5];
  v7[5] = v43[4];
  v7[6] = v13;
  v14 = v43[1];
  v7[1] = v43[0];
  v7[2] = v14;

  if (!a2 || !a3)
  {
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    NSFastEnumerationIterator.next()(&v31);
    if (v32)
    {
      v15 = 0;
      v29[2] = a3;
      v16 = a3 - 1;
      do
      {
        outlined init with take of Any(&v31, &v33);
        outlined init with copy of Any(&v33, &v35);
        if (!*(v7 + 2))
        {
          goto LABEL_20;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClassUnconditional();
        v18 = v34;
        v19 = __swift_project_boxed_opaque_existential_1(&v33, v34);
        swift_unknownObjectRetain();
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        if (isClassOrObjCExistentialType)
        {
          if (*(*(v18 - 8) + 64) != 8)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = *v19;
          swift_unknownObjectRetain();
        }

        else
        {
          v29[1] = v29;
          v26 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
          v29[0] = v29 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v28 + 16))(v26);
          v21 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        }

        v22 = [v17 objectForKey_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v22)
        {
          goto LABEL_21;
        }

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v33);
        outlined init with take of Any(&v31, &v37);
        v24 = v37;
        v23 = v38;
        v41 = v37;
        v42 = v38;
        v25 = v36;
        v39 = v35;
        v40 = v36;
        *a2 = v35;
        a2[1] = v25;
        a2[2] = v24;
        a2[3] = v23;
        if (v16 == v15)
        {
          goto LABEL_16;
        }

        a2 += 4;
        NSFastEnumerationIterator.next()(&v31);
        ++v15;
      }

      while (v32);
    }

    outlined destroy of TermOfAddress?(&v31, &_sypSgMd);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    outlined destroy of TermOfAddress?(&v35, &_syp3key_yp5valuetSgMd);
LABEL_16:
    a1 = v30;
LABEL_17:
    *a1 = v7;
    return;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v6 = a6 + a5;
        if (__OFADD__(a6, a5))
        {
LABEL_19:
          __break(1u);
          return result;
        }

        v7 = 0;
        while (1)
        {
          if (a5 == v7)
          {
            a3 = a5;
            goto LABEL_16;
          }

          if (v6 < a6 + v7)
          {
            break;
          }

          *(a2 + v7) = *(a4 + v7);
          if (a3 - 1 == v7)
          {
            v6 = a6 + v7 + 1;
            goto LABEL_16;
          }

          if (__OFADD__(++v7, 1))
          {
            __break(1u);
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
LABEL_12:
    a3 = 0;
  }

  v6 = a6;
LABEL_16:
  *result = a4;
  result[1] = a5;
  result[2] = a6;
  result[3] = v6;
  return a3;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, void *a2, unint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  if (!a3)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_26;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v6 = a4;
  if (a6 >= 2u)
  {
    if (a6 == 3)
    {
LABEL_6:
      v7 = 0;
      v8 = 0;
LABEL_26:
      *result = a4;
      *(result + 8) = a5;
      *(result + 16) = a6;
      *(result + 24) = v7;
      return v8;
    }

    v8 = a4[2];
    if (!v8)
    {
      v7 = 0;
      goto LABEL_26;
    }

    v6 = a4[4];
  }

  *a2 = v6;
  if (a3 == 1)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_26;
  }

  if (!a6)
  {
    v7 = 1;
    v8 = 1;
    goto LABEL_26;
  }

  v9 = a5;
  if (a6 == 1)
  {
    goto LABEL_20;
  }

  v7 = a4[2];
  if (v7 == 1)
  {
LABEL_15:
    v8 = v7;
    goto LABEL_26;
  }

  if (v7)
  {
    v9 = a4[5];
LABEL_20:
    a2[1] = v9;
    if (a3 == 2)
    {
      v7 = 2;
      v8 = 2;
      goto LABEL_26;
    }

    if (a6 != 2)
    {
      v7 = 2;
      v8 = 2;
      goto LABEL_26;
    }

    v8 = a4[2];
    if (v8 == 2)
    {
      v7 = 2;
      goto LABEL_26;
    }

    if (v8 >= 3)
    {
      a2[2] = a4[6];
      if (a3 == 3)
      {
        v7 = 3;
        v8 = 3;
        goto LABEL_26;
      }

      v10 = 0;
      v11 = a2 + 3;
      v7 = 3;
      v12 = 4;
      do
      {
        v13 = v10 + 3;
        if (a6)
        {
          if (a6 != 2)
          {
            goto LABEL_47;
          }

          v14 = a4[2];
          v8 = v7;
          if (v13 == v14)
          {
            goto LABEL_26;
          }

          if (v13 >= v14)
          {
            goto LABEL_45;
          }

          v15 = a4[v10 + 7];
        }

        else
        {
          v15 = a4;
          if (v10 != -3)
          {
            goto LABEL_41;
          }
        }

        v11[v10] = v15;
        if (a3 - 4 == v10)
        {
          v7 = a3;
          v8 = a3;
          goto LABEL_26;
        }

        v16 = v10 + 4;
        ++v10;
        v7 = v12;
        v12 = v16 + 1;
      }

      while (!__OFADD__(v16, 1));
      __break(1u);
LABEL_41:
      if (v13 != 1)
      {
        goto LABEL_46;
      }

      v7 = v10 + 3;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  IndexSet.startIndex.getter(&v28);

  if (!a2)
  {
LABEL_37:
    a3 = 0;
LABEL_38:
    v14 = v28;
    v11 = v29;
    v12 = v30;
    v10 = v31;
    v24 = v32;
LABEL_41:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = v11;
    a1[3] = v12;
    a1[4] = v10;
    a1[5] = v24;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_38;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v31;
    v25 = a3;
    v26 = v32;
    v11 = v29;
    v12 = v30;
    v13 = a3 - 1;
    v14 = v28;
    while (1)
    {
      result = [*(a4 + 16) rangeCount];
      if (__OFSUB__(result, 1))
      {
        break;
      }

      if (result < 1)
      {
        if (!v14)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v15 = *(a4 + 24);
        result = [*(a4 + 16) rangeAtIndex_];
        v17 = result + v16;
        v18 = __OFADD__(result, v16);
        if (v15)
        {
          if (v18)
          {
            goto LABEL_46;
          }

          if (v17 < result)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_45;
          }

          if (v17 < result)
          {
            goto LABEL_47;
          }
        }

        if (v14 == v17)
        {
LABEL_39:
          a3 = v9;
          v24 = v26;
          goto LABEL_41;
        }
      }

      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_43;
      }

      if (v19 == v12)
      {
        v20 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_44;
        }

        v19 = v12;
        if (v20 != v26)
        {
          v21 = *(a4 + 24);
          result = [*(a4 + 16) rangeAtIndex_];
          v11 = result;
          v12 = result + v22;
          v23 = __OFADD__(result, v22);
          if (v21)
          {
            if (v23)
            {
              goto LABEL_50;
            }

            if (v12 < result)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v23)
            {
              goto LABEL_49;
            }

            if (v12 < result)
            {
              goto LABEL_52;
            }
          }

          v10 = v20;
          v19 = result;
        }
      }

      *(a2 + 8 * v9) = v14;
      if (v13 == v9)
      {
        v14 = v19;
        a3 = v25;
        v24 = v26;
        goto LABEL_41;
      }

      ++v9;
      v14 = v19;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_37;
      }
    }

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
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  v10 = a3;
  if (!a3)
  {
    goto LABEL_6;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  if (a4 != a5)
  {
    v12 = (a2 + 8);
    v13 = 1;
    v11 = a4;
    while (1)
    {
      v14 = *(a6 + 24);
      result = [*(a6 + 16) rangeAtIndex_];
      v16 = result + v15;
      v17 = __OFADD__(result, v15);
      if (v14)
      {
        if (v17)
        {
          goto LABEL_29;
        }

        if (v16 < result)
        {
          goto LABEL_31;
        }

        v18 = __OFADD__(v11++, 1);
        if (v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v17)
        {
          goto LABEL_28;
        }

        if (v16 < result)
        {
          goto LABEL_30;
        }

        v18 = __OFADD__(v11++, 1);
        if (v18)
        {
          goto LABEL_33;
        }
      }

      *(v12 - 1) = result;
      *v12 = v16;
      if (v10 == v13)
      {
        goto LABEL_7;
      }

      if (v13 >= v10)
      {
        break;
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_27;
      }

      v12 += 2;
      ++v13;
      if (v11 == a5)
      {
        v10 = v13 - 1;
        v11 = a5;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_5:
  v10 = 0;
LABEL_6:
  v11 = a4;
LABEL_7:
  *v9 = a4;
  v9[1] = a5;
  v9[2] = a6;
  v9[3] = v11;
  return v10;
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, double *a2, uint64_t a3, int8x16_t a4)
{
  a4.i64[0] = *v4;
  v8 = *(v4 + 88);
  v21[4] = *(v4 + 72);
  v21[5] = v8;
  v21[6] = *(v4 + 104);
  v22 = *(v4 + 120);
  v9 = *(v4 + 24);
  v21[0] = *(v4 + 8);
  v21[1] = v9;
  v10 = *(v4 + 56);
  v21[2] = *(v4 + 40);
  v21[3] = v10;
  v19 = *(v4 + 128);
  v20 = *(v4 + 144);
  v23 = a4.i64[0];
  Calendar.DatesByRecurring.Iterator.init(start:matching:range:)(&v23, v21, &v19, __src, a4);
  if (!a2 || !a3)
  {
    goto LABEL_34;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (LOBYTE(__src[73]))
    {
LABEL_34:
      memcpy(a1, __src, 0x268uLL);
      return;
    }

    v11 = LOBYTE(__src[6]);
    v12 = 1;
LABEL_7:
    if (v11 == 1 && *&__src[22] >= *&__src[5])
    {
LABEL_33:
      LOBYTE(__src[73]) = 1;
      goto LABEL_34;
    }

    v13 = __src[76];
    while (1)
    {
      if (*(*&v13 + 16))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = *(*&v13 + 16);
          if (!v14)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v13 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew()(*&v13));
          v14 = *(*&v13 + 16);
          if (!v14)
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }
        }

        v15 = v14 - 1;
        v16 = *(*&v13 + 8 * v15 + 32);
        *(*&v13 + 16) = v15;
        __src[76] = v13;
        if (__OFADD__(*&__src[22], 1))
        {
          goto LABEL_36;
        }

        ++*&__src[22];
        v11 = LOBYTE(__src[6]);
        if (!LOBYTE(__src[6]) && __src[5] < v16)
        {
          goto LABEL_33;
        }

        if (LOBYTE(__src[18]))
        {
          goto LABEL_28;
        }

        if (v16 >= __src[17])
        {
          goto LABEL_33;
        }

        if (v16 >= __src[16])
        {
LABEL_28:
          *a2 = v16;
          if (v12 == a3)
          {
            goto LABEL_34;
          }

          ++a2;
          if (__OFADD__(v12++, 1))
          {
            __break(1u);
            goto LABEL_34;
          }

          goto LABEL_7;
        }
      }

      else
      {
        Calendar.DatesByRecurring.Iterator.nextGroup()();
        v13 = __src[76];
        if (*(*&__src[76] + 16))
        {
          __src[75] = 0.0;
        }

        else
        {
          v17 = *&__src[75] + 1;
          if (__OFADD__(*&__src[75], 1))
          {
            goto LABEL_38;
          }

          ++*&__src[75];
          if (*&__src[74] < v17)
          {
            goto LABEL_33;
          }
        }
      }

      if (LOBYTE(__src[73]))
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memcpy(v120, v1, sizeof(v120));
  Calendar.DatesByMatching.makeIterator()(v119);
  memcpy(v121, v120, 0x14EuLL);
  outlined destroy of Calendar.DatesByMatching(v121);
  if (!v8)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
LABEL_162:
    memcpy(v10, v119, 0x179uLL);
    return v6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_164:
    v6 = v64;
    v10 = __8;
    goto LABEL_162;
  }

  if (BYTE8(v119[23]))
  {
LABEL_5:
    v6 = 0;
    goto LABEL_162;
  }

  v66 = v8;
  v64 = v6;
  __8 = v10;
  v11 = *&v119[0] + 1;
  if (__OFADD__(*&v119[0], 1))
  {
LABEL_157:
    __break(1u);
    outlined destroy of DateComponents(__dst);
    *&v119[0] = v83;
    v92[0] = v6;
    v62 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_167;
    }

    v94[0] = v95[0];
    LOBYTE(v94[1]) = v95[1];
    *v91 = v4;
    *&v93[0] = v2;
    *(&v93[0] + 1) = v3;
    memcpy(v101, &v119[5], 0x11BuLL);
    memcpy(v100, &v119[5], 0x11BuLL);
    LOBYTE(v89[0]) = v82;
    LOBYTE(v88[0]) = v81;
    LOBYTE(v96) = v80;
    swift_unknownObjectRetain();
    outlined init with copy of DateComponents(v101, __src);
    _handleCalendarError(_:date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v94, v91, v93, v100, v89, v88, &v96);
    memcpy(__src, v100, 0x11BuLL);
    outlined destroy of DateComponents(__src);
    swift_unknownObjectRelease();
    BYTE8(v119[23]) = 1;

LABEL_161:
    v6 = v69;
    goto LABEL_162;
  }

  v69 = 0;
  v3 = *(&v119[4] + 1);
  v2 = *&v119[4];
  v86 = v119[5];
  v85 = *(&v119[6] + 1);
  v12 = *&v119[6];
  v84 = BYTE9(v119[22]);
  v13 = BYTE10(v119[22]);
  v14 = 1;
  if (!BYTE13(v119[22]))
  {
    v14 = -1;
  }

  v70 = v14;
  v15 = -1;
  if (!BYTE13(v119[22]))
  {
    v15 = 1;
  }

  _ = v15;
  v80 = BYTE12(v119[22]);
  v81 = BYTE11(v119[22]);
  v82 = BYTE13(v119[22]);
  v71 = BYTE13(v119[22]) ^ 1;
  v4 = *(&v119[3] + 1);
  v16 = *(&v119[1] + 1);
  v17 = *(v119 + 1);
  v72 = v119[1];
  v18 = 1;
  v19 = v119[4];
  v79 = BYTE10(v119[22]);
  while (2)
  {
    v83 = v11;
    v65 = v18;
    v20 = v16;
    while (1)
    {
      v115 = v119[19];
      v116 = v119[20];
      v117[0] = v119[21];
      *(v117 + 9) = *(&v119[21] + 9);
      v111 = v119[15];
      v112 = v119[16];
      v113 = v119[17];
      v114 = v119[18];
      v107 = v119[11];
      v108 = v119[12];
      v109 = v119[13];
      v110 = v119[14];
      v103 = v119[7];
      v104 = v119[8];
      v105 = v119[9];
      v106 = v119[10];
      v101[14] = v119[19];
      v101[15] = v119[20];
      v101[16] = v119[21];
      *(&v101[16] + 9) = *(&v119[21] + 9);
      v101[10] = v119[15];
      v101[11] = v119[16];
      v101[12] = v119[17];
      v101[13] = v119[18];
      v101[6] = v119[11];
      v101[7] = v119[12];
      v101[8] = v119[13];
      v101[9] = v119[14];
      v101[2] = v119[7];
      v101[3] = v119[8];
      *&v100[0] = v2;
      *(&v100[0] + 1) = v3;
      v101[0] = v86;
      *&v101[1] = v12;
      *(&v101[1] + 1) = v85;
      v101[4] = v119[9];
      v101[5] = v119[10];
      BYTE9(v101[17]) = v84;
      BYTE10(v101[17]) = v13;
      *v95 = v20;
      LOBYTE(v94[0]) = v82;
      Calendar._adjustedComponents(_:date:direction:)(v101, v95, v94, __src);
      memcpy(__dst, __src, 0x11BuLL);
      *&v101[0] = v2;
      *(&v101[0] + 1) = v3;
      *v95 = v20;
      memcpy(__src, __dst, 0x11BuLL);
      LOBYTE(v94[0]) = v82;
      LOBYTE(v93[0]) = v81;
      LOBYTE(v92[0]) = v80;
      Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v95, __src, v94, v93, v92, v100);
      if (BYTE8(v100[0]))
      {
LABEL_14:
        outlined destroy of DateComponents(__dst);
        v21 = v83;
        goto LABEL_146;
      }

      v22 = *&v100[0];
      v99 = 1;
      v98 = 0;
      v97 = 0;
      *&v100[0] = v2;
      *(&v100[0] + 1) = v3;
      *v94 = v4;
      *v93 = v20;
      v92[0] = v22;
      __src[0] = v86;
      *&__src[1] = v12;
      *(&__src[1] + 1) = v85;
      __src[14] = v119[19];
      __src[15] = v119[20];
      __src[16] = v119[21];
      *(&__src[16] + 9) = *(&v119[21] + 9);
      __src[10] = v119[15];
      __src[11] = v119[16];
      __src[12] = v119[17];
      __src[13] = v119[18];
      __src[6] = v119[11];
      __src[7] = v119[12];
      __src[8] = v119[13];
      __src[9] = v119[14];
      __src[2] = v119[7];
      __src[3] = v119[8];
      __src[4] = v119[9];
      __src[5] = v119[10];
      BYTE9(__src[17]) = v84;
      BYTE10(__src[17]) = v13;
      memcpy(v101, __dst, 0x11BuLL);
      LOBYTE(v91[0]) = v82;
      LOBYTE(v89[0]) = v81;
      LOBYTE(v88[0]) = v80;
      Calendar._adjustedDateForMismatches(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isForwardDST:isExactMatch:isLeapDay:)(v94, v93, v92, __src, v101, v91, v89, v88, v95, &v97, &v99, &v98);
      if ((BYTE8(v95[0]) & 1) == 0)
      {
        break;
      }

      __src[0] = v86;
      *&__src[1] = v12;
      *(&__src[1] + 1) = v85;
      __src[14] = v119[19];
      __src[15] = v119[20];
      __src[16] = v119[21];
      *(&__src[16] + 9) = *(&v119[21] + 9);
      __src[10] = v119[15];
      __src[11] = v119[16];
      __src[12] = v119[17];
      __src[13] = v119[18];
      __src[6] = v119[11];
      __src[7] = v119[12];
      __src[8] = v119[13];
      __src[9] = v119[14];
      __src[2] = v119[7];
      __src[3] = v119[8];
      __src[4] = v119[9];
      __src[5] = v119[10];
      BYTE9(__src[17]) = v84;
      BYTE10(__src[17]) = v13;
      DateComponents.highestSetUnit.getter(v101);
      if (LOBYTE(v101[0]) == 19)
      {
        outlined destroy of DateComponents(__dst);
      }

      else
      {
        v36 = 1;
        switch(LOBYTE(v101[0]))
        {
          case 3:
          case 8:
          case 0xA:
          case 0x11:
            v36 = 2;
            break;
          case 4:
            v36 = 3;
            break;
          case 5:
            v36 = 4;
            break;
          case 6:
            v36 = 5;
            break;
          case 7:
            v36 = 10;
            break;
          case 0xB:
          case 0xC:
            v36 = 12;
            break;
          case 0xD:
            v36 = 6;
            break;
          case 0xE:
          case 0xF:
            goto LABEL_14;
          default:
            break;
        }

        LOBYTE(v100[0]) = v36;
        if (one-time initialization token for validCalendarRange != -1)
        {
          swift_once();
        }

        v58 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v20)
        {
          v58 = v20;
        }

        if (*&static Date.validCalendarRange >= v58)
        {
          v59 = *&static Date.validCalendarRange;
        }

        else
        {
          v59 = v58;
        }

        ObjectType = swift_getObjectType();
        *v101 = v59;
        (*(v3 + 160))(__src, v100, v101, ObjectType, v3);
        outlined destroy of DateComponents(__dst);
        if ((__src[1] & 1) == 0)
        {
          v61 = *(__src + 1);
          if (v82)
          {
            v61 = -1.0;
          }

          v16 = *__src + v61;
          goto LABEL_144;
        }
      }

      v16 = v20;
LABEL_144:
      v21 = v83;
LABEL_145:
      v20 = v16;
LABEL_146:
      *(&v119[1] + 1) = v20;
      if (v21 >= *&v119[23])
      {
        *&v119[0] = v21;
        *v94 = v4;
        *&v95[0] = v2;
        *(&v95[0] + 1) = v3;
        memcpy(v101, &v119[5], 0x11BuLL);
        memcpy(v100, &v119[5], 0x11BuLL);
        LOBYTE(v93[0]) = v82;
        LOBYTE(v92[0]) = v81;
        LOBYTE(v91[0]) = v80;
        swift_unknownObjectRetain();
        outlined init with copy of DateComponents(v101, __src);
        _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v94, v95, v100, v93, v92, v91);
        memcpy(__src, v100, 0x11BuLL);
        outlined destroy of DateComponents(__src);
        swift_unknownObjectRelease();
LABEL_160:
        BYTE8(v119[23]) = 1;
        goto LABEL_161;
      }

      v83 = v21 + 1;
    }

    v23 = v2;
    v24 = *v95;
    v101[0] = v86;
    *&v101[1] = v12;
    *(&v101[1] + 1) = v85;
    v101[14] = v119[19];
    v101[15] = v119[20];
    v101[16] = v119[21];
    *(&v101[16] + 9) = *(&v119[21] + 9);
    v101[10] = v119[15];
    v101[11] = v119[16];
    v101[12] = v119[17];
    v101[13] = v119[18];
    v101[6] = v119[11];
    v101[7] = v119[12];
    v101[8] = v119[13];
    v101[9] = v119[14];
    v101[2] = v119[7];
    v101[3] = v119[8];
    v101[4] = v119[9];
    v101[5] = v119[10];
    BYTE9(v101[17]) = v84;
    BYTE10(v101[17]) = v13;
    DateComponents.setUnits.getter(&v96);
    v25 = v96;
    *&v95[0] = v96;
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v74 = v24;
    v26 = v24;
    v27 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v24)
    {
      v27 = v24;
    }

    if (*&static Date.validCalendarRange >= v27)
    {
      v28 = *&static Date.validCalendarRange;
    }

    else
    {
      v28 = v27;
    }

    v29 = swift_getObjectType();
    *v94 = v28;
    v78 = v29;
    v73 = *(*(&v19 + 1) + 192);
    (v73)(v100, v95, v94);
    if ((v25 & 0x4000) != 0)
    {
      *&v100[0] = v23;
      *(&v100[0] + 1) = *(&v19 + 1);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*&v100[1])
      {
        if (v23)
        {
          v95[0] = v100[1];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(v95);
        }
      }
    }

    memcpy(__src, v100, 0x11BuLL);
    if (v86)
    {
      __src[0] = v86;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*&__src[1])
      {
        v95[0] = __src[1];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v95);
      }
    }

    v30 = v85;
    if (v12)
    {
      *&v95[0] = v12;
      *(&v95[0] + 1) = v85;
      swift_unknownObjectRetain();
      DateComponents.timeZone.setter(v95);
    }

    memcpy(v94, __src, 0x11BuLL);
    memcpy(v93, __src, 0x11BuLL);
    v31 = v86;
    *v92 = v86;
    v32 = v12;
    v92[2] = v12;
    v92[3] = v85;
    *&v92[28] = v115;
    *&v92[30] = v116;
    *&v92[32] = v117[0];
    *(&v92[33] + 1) = *(v117 + 9);
    *&v92[20] = v111;
    *&v92[22] = v112;
    *&v92[24] = v113;
    *&v92[26] = v114;
    *&v92[12] = v107;
    *&v92[14] = v108;
    *&v92[16] = v109;
    *&v92[18] = v110;
    *&v92[4] = v103;
    *&v92[6] = v104;
    *&v92[8] = v105;
    *&v92[10] = v106;
    v33 = v84;
    BYTE1(v92[35]) = v84;
    v34 = v79;
    BYTE2(v92[35]) = v79;
    outlined init with copy of DateComponents(v94, v91);
    v35 = specialized static DateComponents.== infix(_:_:)(v93, v92);
    memcpy(v95, v93, 0x11BuLL);
    outlined destroy of DateComponents(v95);
    v75 = v35;
    if (v35)
    {
      memcpy(v93, __src, 0x11BuLL);
      outlined destroy of DateComponents(v93);
      v77 = 0;
      if ((v99 & 1) == 0)
      {
        v99 = 1;
      }

      v37 = *(&v86 + 1);
      v31 = v86;
      v30 = v85;
      v33 = v84;
      v34 = v79;
    }

    else
    {
      memcpy(v92, __src, 0x11BuLL);
      memcpy(v91, __src, 0x11BuLL);
      v89[0] = v86;
      v37 = *(&v86 + 1);
      *&v89[1] = v32;
      *(&v89[1] + 1) = v85;
      v89[14] = v115;
      v89[15] = v116;
      v89[16] = v117[0];
      *(&v89[16] + 9) = *(v117 + 9);
      v89[10] = v111;
      v89[11] = v112;
      v89[12] = v113;
      v89[13] = v114;
      v89[6] = v107;
      v89[7] = v108;
      v89[8] = v109;
      v89[9] = v110;
      v89[2] = v103;
      v89[3] = v104;
      v89[4] = v105;
      v89[5] = v106;
      BYTE9(v89[17]) = v84;
      BYTE10(v89[17]) = v79;
      DateComponents.mismatchedUnits(comparedTo:)(v89, &v90);
      memcpy(v93, v91, 0x11BuLL);
      outlined init with copy of DateComponents(v92, v88);
      outlined destroy of DateComponents(v93);
      v38 = v90;
      if (v84 == 2)
      {
        v38 = v90 & 0xFFFFFFFFFFFEFFFFLL;
      }

      v77 = v38;
      memcpy(v91, __src, 0x11BuLL);
      outlined destroy of DateComponents(v91);
    }

    *&v93[0] = v31;
    *(&v93[0] + 1) = v37;
    *&v93[1] = v32;
    *(&v93[1] + 1) = v30;
    v93[14] = v115;
    v93[15] = v116;
    v93[16] = v117[0];
    *(&v93[16] + 9) = *(v117 + 9);
    v93[10] = v111;
    v93[11] = v112;
    v93[12] = v113;
    v93[13] = v114;
    v93[6] = v107;
    v93[7] = v108;
    v93[8] = v109;
    v93[9] = v110;
    v93[2] = v103;
    v93[3] = v104;
    v93[4] = v105;
    v93[5] = v106;
    BYTE9(v93[17]) = v33;
    BYTE10(v93[17]) = v34;
    DateComponents.highestSetUnit.getter(v92);
    v39 = v92[0];
    v12 = v32;
    if (LOBYTE(v92[0]) < 2u)
    {
      v39 = 1;
      v3 = *(&v19 + 1);
      v2 = v19;
      v13 = v79;
      v6 = 0;
      v40 = v77;
    }

    else
    {
      v3 = *(&v19 + 1);
      v2 = v19;
      v6 = 0;
      v40 = v77;
      if (LOBYTE(v92[0]) == 12)
      {
        v13 = v79;
      }

      else
      {
        v13 = v79;
        if (LOBYTE(v92[0]) == 19 || (LOBYTE(v93[0]) = v92[0], Calendar.Component.nextHigherUnit.getter(v92), v39 = v92[0], LOBYTE(v92[0]) == 19))
        {
LABEL_56:
          v16 = v20;
          goto LABEL_57;
        }
      }
    }

    LOBYTE(v91[0]) = v39;
    v41 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v20)
    {
      v41 = v20;
    }

    if (*&static Date.validCalendarRange >= v41)
    {
      v41 = *&static Date.validCalendarRange;
    }

    v92[0] = *&v41;
    (*(v3 + 160))(v93, v91, v92, v78, v3);
    if (v93[1])
    {
      goto LABEL_56;
    }

    if (v82)
    {
      v16 = *v93 + -1.0;
      if (*v93 + -1.0 > v26)
      {
LABEL_83:
        v49 = -1;
        goto LABEL_91;
      }
    }

    else
    {
      v16 = *(v93 + 1) + *v93;
      if (*(v93 + 1) + *v93 > v26)
      {
        goto LABEL_83;
      }
    }

    v49 = v16 < v26;
LABEL_91:
    if (v49 != v70)
    {
      v93[0] = v86;
      *&v93[1] = v12;
      *(&v93[1] + 1) = v85;
      v93[14] = v115;
      v93[15] = v116;
      v93[16] = v117[0];
      *(&v93[16] + 9) = *(v117 + 9);
      v93[10] = v111;
      v93[11] = v112;
      v93[12] = v113;
      v93[13] = v114;
      v93[6] = v107;
      v93[7] = v108;
      v93[8] = v109;
      v93[9] = v110;
      v93[2] = v103;
      v93[3] = v104;
      v93[4] = v105;
      v93[5] = v106;
      BYTE9(v93[17]) = v84;
      BYTE10(v93[17]) = v13;
      DateComponents.lowestSetUnit.getter(v92);
      if (LOBYTE(v92[0]) == 19)
      {
        goto LABEL_166;
      }

      LOBYTE(v89[0]) = v92[0];
      v50.value = _;
      DateComponents.init(component:value:)(v50, v89, v91);
      memcpy(v92, v91, 0x11BuLL);
      memcpy(v93, v91, 0x11BuLL);
      if (_s10Foundation13URLComponentsV01_B0VSgWOg(v93) == 1)
      {
        goto LABEL_56;
      }

      if (*(&static Date.validCalendarRange + 1) >= v26)
      {
        v51 = v26;
      }

      else
      {
        v51 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v51)
      {
        v52 = *&static Date.validCalendarRange;
      }

      else
      {
        v52 = v51;
      }

      memcpy(v91, v93, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v52)
      {
        v53 = v52;
      }

      else
      {
        v53 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v53)
      {
        v53 = *&static Date.validCalendarRange;
      }

      *v88 = v53;
      (*(v3 + 200))(v89, v91, v88, 0, v78, v3);
      v76 = *v89;
      v54 = BYTE8(v89[0]);
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v55 = static Calendar.compatibility2;
      outlined destroy of TermOfAddress?(v92, &_s10Foundation14DateComponentsVSgMd);
      if (v55)
      {
        if (v54)
        {
          v16 = v26;
        }

        else
        {
          v16 = v76;
        }
      }

      else if (v54)
      {
        v16 = v20;
      }

      else
      {
        v16 = v76;
      }

      v40 = v77;
    }

LABEL_57:
    if (!v75 && (v40 & 0x2200) == 0)
    {
      v99 = 0;
    }

    if (v72)
    {
      v42 = v4;
      if (v4 >= v26)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v42 = v17;
      if (v17 >= v26)
      {
LABEL_61:
        v43 = v82;
        if (v42 > v26)
        {
          v44 = 1;
        }

        else
        {
          v43 = 1;
          v44 = 0;
        }

        if ((v43 & 1) != 0 || (v40 & 0x2000) != 0)
        {
          goto LABEL_70;
        }

        goto LABEL_73;
      }
    }

    if (!(v71 & 1 | (v40 >> 13) & 1))
    {
LABEL_73:
      memcpy(v93, __dst, 0x11BuLL);
      DateComponents.highestSetUnit.getter(v92);
      if (LOBYTE(v92[0]) == 4)
      {
        v88[0] = 16;
        v46 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v26)
        {
          v46 = v26;
        }

        if (*&static Date.validCalendarRange >= v46)
        {
          v46 = *&static Date.validCalendarRange;
        }

        *v91 = v46;
        v73(v93, v88, v91, v78, v3);
        memcpy(v92, v93, 0x11BuLL);
        outlined destroy of DateComponents(v92);
        if (v92[15])
        {
          v47 = 0;
          if ((v82 & 1) == 0)
          {
            goto LABEL_80;
          }

LABEL_112:
          v48 = -3600.0;
        }

        else
        {
          v47 = v92[14];
          if (v82)
          {
            goto LABEL_112;
          }

LABEL_80:
          v48 = 3600.0;
        }

        v56 = v48 + v26;
        v90 = 16;
        v57 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v48 + v26)
        {
          v57 = v48 + v26;
        }

        if (*&static Date.validCalendarRange >= v57)
        {
          v57 = *&static Date.validCalendarRange;
        }

        v87 = v57;
        v73(v91, &v90, &v87, v78, v3);
        memcpy(v89, v91, 0x11BuLL);
        outlined destroy of DateComponents(v89);
        outlined destroy of DateComponents(__dst);
        if (BYTE8(v89[7]))
        {
          if (!v47)
          {
            v16 = v56;
          }
        }

        else if (v47 == *&v89[7])
        {
          v16 = v56;
        }

        goto LABEL_144;
      }

      outlined destroy of DateComponents(__dst);
      goto LABEL_144;
    }

    v44 = 1;
LABEL_70:
    outlined destroy of DateComponents(__dst);
    v45 = v99;
    if (v97)
    {
      if (v81 != 3)
      {
        v45 = 1;
      }
    }

    else
    {
      v45 = v99 | (v81 != 3) & v98;
    }

    v21 = v83;
    if ((v45 & 1) == 0 || !v44)
    {
      goto LABEL_145;
    }

    *(&v119[1] + 1) = v16;
    *&v119[0] = v83;
    if ((v119[3] & 1) == 0 && (*&v119[2] > v26 || *(&v119[2] + 1) <= v26))
    {
      goto LABEL_160;
    }

    *(v119 + 1) = v74;
    LOBYTE(v119[1]) = 0;
    *v66 = v74;
    if (v65 == v64)
    {
      goto LABEL_164;
    }

    v18 = v65 + 1;
    if (!__OFADD__(v65, 1))
    {
      v72 = 0;
      ++v66;
      v17 = v26;
      v69 = v65;
      v11 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_157;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *v3;
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  memcpy(__dst, (v3 + 48), 0x11BuLL);
  v11 = *(v3 + 331);
  outlined init with copy of Calendar(&v34, __src);
  outlined init with copy of DateComponents(__dst, __src);
  outlined destroy of Calendar.DatesByAdding(v3);
  v12 = v34;
  result = memcpy(&v32[7], __dst, 0x11BuLL);
  v24 = a2;
  if (!a2)
  {
    *a1 = v34;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    memcpy((a1 + 41), v32, 0x122uLL);
    v16 = 0;
    *(a1 + 331) = v11;
    *(a1 + 332) = 0;
    v21 = 1;
LABEL_20:
    *(a1 + 336) = v21;
    return v16;
  }

  if (!a3)
  {
    v22 = 1;
LABEL_23:
    *a1 = v12;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    memcpy((a1 + 41), v32, 0x122uLL);
    *(a1 + 331) = v11;
    *(a1 + 332) = 0;
    v16 = a3;
    *(a1 + 336) = v22;
    return v16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v25 = v11;
    memcpy(__src, __dst, 0x11BuLL);
    ObjectType = swift_getObjectType();
    v15 = v8;
    v16 = 0;
    v17 = *(*(&v12 + 1) + 200);
    v23 = v15;
    v18 = v15;
    while (1)
    {
      memcpy(v27, __src, 0x11BuLL);
      DateComponents.scaled(by:)(v16 + 1, v28);
      memcpy(v29, v27, 0x11BuLL);
      outlined init with copy of DateComponents(__src, v26);
      outlined destroy of DateComponents(v29);
      memcpy(v30, v28, 0x11BuLL);
      memcpy(v28, v30, 0x11BuLL);
      v19 = one-time initialization token for validCalendarRange;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      v20 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v7)
      {
        v20 = v7;
      }

      if (*&static Date.validCalendarRange >= v20)
      {
        v20 = *&static Date.validCalendarRange;
      }

      *v26 = v20;
      v17(v27, v28, v26, v25, ObjectType, *(&v12 + 1));
      outlined destroy of DateComponents(v30);
      result = swift_unknownObjectRelease();
      if ((LOBYTE(v27[1]) & 1) != 0 || (v10 & 1) == 0 && (v27[0] < v18 || v27[0] >= v9))
      {
        *a1 = v12;
        *(a1 + 16) = v7;
        *(a1 + 24) = v23;
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        memcpy((a1 + 41), v32, 0x122uLL);
        *(a1 + 331) = v25;
        *(a1 + 332) = 1;
        v21 = v16 + 1;
        goto LABEL_20;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFELL)
      {
        break;
      }

      *(v24 + 8 * v16) = v27[0];
      if (a3 - 1 == v16)
      {
        v22 = v16 + 2;
        LOBYTE(v11) = v25;
        v8 = v23;
        goto LABEL_23;
      }

      ++v16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v7 = a2;
      v8 = 1;
      while (uenum_next())
      {
        *v7 = String.init(cString:)();
        v7[1] = v9;
        if (v6 == v8)
        {
          goto LABEL_12;
        }

        v7 += 2;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      v6 = v8 - 1;
    }
  }

  else
  {
LABEL_10:
    v6 = 0;
  }

LABEL_12:
  *a1 = 0;
  a1[1] = a4;
  return v6;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  LOBYTE(v9) = a6;
  v145 = a2;
  v144 = a1;
  v151 = *MEMORY[0x1E69E9840];
  type metadata accessor for _POSIXDirectoryContentsSequence.Iterator();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 64) = 0;
  if ((a5 & 0x1000000000000000) != 0)
  {
LABEL_33:
    v14 = String.UTF8View._foreignCount()();
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v14 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v15 = 3 * v14;
  if ((v14 * 3) >> 64 == (3 * v14) >> 63)
  {
    if (v15 < -1)
    {
      __break(1u);
      goto LABEL_207;
    }

    v7 = v15 + 1;

    v142 = a3;
    v143 = a5;
    if (v15 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    isTaggedPointer = v13;
    v34 = swift_slowAlloc();
    v35 = v7;
    v21 = 0;
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v34, v35, a4, a5, &v150.st_dev);
    MEMORY[0x1865D2690](v34, -1, -1);
    v20 = *&v150.st_dev;
    v13 = isTaggedPointer;
    if (*&v150.st_dev)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_8:
  isTaggedPointer = &v137;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v19 = &v137 - v18;
  if (String._fileSystemRepresentation(into:)(&v137 - v18, v7, a4, a5))
  {
    v20 = opendir(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = 0;
  if (v20)
  {
LABEL_12:
    v141 = 0;
    v7 = 0;
    *(v13 + 24) = a4;
    *(v13 + 32) = a5;
    *(v13 + 16) = v20;
    *(v13 + 56) = v9 & 1;
    v22 = *(a7 + 16);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v23 = (a7 + 40 + 16 * v7);
    while (v22 != v7)
    {
      if (v7 >= *(a7 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      ++v7;
      a4 = *(v23 - 1);
      st_ino = *v23;
      v23 += 2;
      v25 = HIBYTE(st_ino) & 0xF;
      if ((st_ino & 0x2000000000000000) == 0)
      {
        v25 = a4 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {

        String.index(before:)();
        if (String.subscript.getter() == 47 && v26 == 0xE100000000000000)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            *&v150.st_dev = a4;
            v150.st_ino = st_ino;

            MEMORY[0x1865CB0E0](47, 0xE100000000000000);

            a4 = *&v150.st_dev;
            st_ino = v150.st_ino;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        a5 = *(v9 + 2);
        v29 = *(v9 + 3);
        if (a5 >= v29 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), a5 + 1, 1, v9);
        }

        *(v9 + 2) = a5 + 1;
        v30 = &v9[16 * a5];
        *(v30 + 4) = a4;
        *(v30 + 5) = st_ino;
        a3 = v142;
        goto LABEL_13;
      }
    }

    *&v150.st_dev = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v31 = BidirectionalCollection<>.joined(separator:)();
    v33 = v32;

    *(v13 + 40) = v31;
    *(v13 + 48) = v33;
    goto LABEL_171;
  }

LABEL_37:
  *(v13 + 24) = 0;
  *(v13 + 32) = 0xE000000000000000;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0xE000000000000000;
  *(v13 + 56) = 0;
  v36 = MEMORY[0x1865CA7A0]();
  LODWORD(v37) = v36;
  v139 = v13;
  if (v36 > 26)
  {
    if (v36 == 27)
    {
      v38 = 263;
      goto LABEL_50;
    }

    if (v36 != 63)
    {
      if (v36 == 102)
      {
        v141 = 0;
        v39 = 0;
        v140 = 256;
        goto LABEL_162;
      }

LABEL_47:
      v38 = 256;
      goto LABEL_50;
    }

    v38 = 258;
  }

  else
  {
    if (v36 == 1)
    {
LABEL_41:
      v38 = 257;
      goto LABEL_50;
    }

    if (v36 != 2)
    {
      if (v36 == 13)
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }

    v38 = 260;
  }

LABEL_50:
  v140 = v38;
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v40 = @"NSPOSIXErrorDomain";
    v37 = v40;
    LODWORD(v138) = isTaggedPointer;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v40);
      switch(TaggedPointerTag)
      {
        case 0:
          v141 = 0;
          v146 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v47)
          {
            [(__CFString *)v37 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            isTaggedPointer = MEMORY[0x1E69E7CA0];
            swift_dynamicCast();
            goto LABEL_85;
          }

          goto LABEL_83;
        case 0x16:
          v141 = 0;
          v45 = [(__CFString *)v37 UTF8String];
          if (!v45)
          {
            __break(1u);
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

          String.init(utf8String:)(v45);
          isTaggedPointer = MEMORY[0x1E69E7CA0];
          if (!v46)
          {
LABEL_212:
            __break(1u);
            goto LABEL_213;
          }

LABEL_85:
          v51 = POSIXErrorCode.rawValue.getter();
          v52 = objc_allocWithZone(NSError);
          v53 = String._bridgeToObjectiveCImpl()();

          v39 = [v52 initWithDomain:v53 code:v51 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v54 = [v39 domain];
          if (!v54)
          {
            goto LABEL_109;
          }

          v55 = v54;
          v56 = _objc_isTaggedPointer(v54);
          v57 = v55;
          v58 = v57;
          if ((v56 & 1) == 0)
          {
LABEL_91:
            LOBYTE(v147) = 0;
            *&v150.st_dev = 0;
            LOBYTE(v146) = 0;
            v149 = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              v63 = *&v150.st_dev;
              if (!*&v150.st_dev)
              {

                v21 = 0xE000000000000000;
                goto LABEL_123;
              }

              if (v149 == 1)
              {
                if (v147)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_121;
              }

              if (v146)
              {
                if (v147 != 1)
                {
                  IsCF = [v58 lengthOfBytesUsingEncoding_];
                }

                MEMORY[0x1EEE9AC00](IsCF);
                v73 = v141;
                v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v141 = v73;
                v21 = v75;
                v76 = HIBYTE(v75) & 0xF;
                if ((v75 & 0x2000000000000000) == 0)
                {
                  v76 = v74 & 0xFFFFFFFFFFFFLL;
                }

                if (v76)
                {
                  v63 = v74;

                  goto LABEL_123;
                }
              }

LABEL_120:
              v71 = String.init(_cocoaString:)();
LABEL_121:
              v63 = v71;
              v21 = v72;
              goto LABEL_122;
            }

            v65 = v58;
            v66 = String.init(_nativeStorage:)();
            if (v67)
            {
              v63 = v66;
              v21 = v67;

              goto LABEL_123;
            }

            *&v150.st_dev = [v65 length];
            if (*&v150.st_dev)
            {
              goto LABEL_120;
            }

LABEL_109:
            v63 = 0;
            v21 = 0xE000000000000000;
            goto LABEL_123;
          }

          v59 = _objc_getTaggedPointerTag(v57);
          if (v59)
          {
            if (v59 != 22)
            {
              if (v59 == 2)
              {
                MEMORY[0x1EEE9AC00](v59);
                v60 = v141;
                v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v141 = v60;
                v21 = v62;

                v63 = v61;
LABEL_123:
                v77 = v37;
                v37 = v77;
                if (!v138)
                {
                  goto LABEL_128;
                }

                v78 = _objc_getTaggedPointerTag(v77);
                if (!v78)
                {
                  goto LABEL_139;
                }

                if (v78 != 22)
                {
                  if (v78 == 2)
                  {
                    v138 = &v137;
                    MEMORY[0x1EEE9AC00](v78);
                    v79 = v63;
                    v80 = v21;
                    v81 = v141;
                    v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v84 = v83;
                    v141 = v81;
                    v21 = v80;
                    v63 = v79;

LABEL_158:
                    if (v63 == v82 && v21 == v84)
                    {
                    }

                    else
                    {
                      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v100 & 1) == 0)
                      {
                        __break(1u);
                      }
                    }

LABEL_162:
                    v101 = v143;

                    URL.init(_fileManagerFailableFileURLWithPath:)(a4, v101, &v150.st_dev);

                    v102 = *&v150.st_dev;
                    v103 = v150.st_ino;
                    v104 = String._bridgeToObjectiveCImpl()();

                    if (v102)
                    {
                      ObjectType = swift_getObjectType();
                      v106 = (*(v103 + 432))(ObjectType, v103);
                      swift_unknownObjectRelease();
                      if (v39)
                      {
LABEL_164:
                        v147 = v39;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v39 = v39;
                        v107 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v107)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v109 = v39;
                        }

                        v108 = _swift_stdlib_bridgeErrorToNSError();
                        goto LABEL_170;
                      }
                    }

                    else
                    {
                      v106 = 0;
                      if (v39)
                      {
                        goto LABEL_164;
                      }
                    }

                    v108 = 0;
LABEL_170:
                    v110 = objc_opt_self();
                    v111 = [v110 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();

                    v112 = v139;
                    v113 = *(v139 + 64);
                    *(v139 + 64) = v111;
                    v13 = v112;

LABEL_171:
                    v114 = v145;
                    if (!v145 || !a3)
                    {
LABEL_203:
                      v115 = 0;
LABEL_205:
                      *v144 = v13;
                      return v115;
                    }

                    if ((a3 & 0x8000000000000000) == 0)
                    {
                      v115 = 0;
                      v116 = 1;
                      while (1)
                      {
                        v117 = v13;
                        v118 = *(v13 + 16);
                        if (!v118)
                        {
                          v13 = v117;
                          goto LABEL_205;
                        }

                        while (1)
                        {
                          do
                          {
                            v119 = readdir(v118);
                            if (!v119)
                            {
                              closedir(v118);
                              v13 = v117;
                              *(v117 + 16) = 0;
                              goto LABEL_205;
                            }
                          }

                          while (!v119->d_namlen || !v119->d_ino);
                          v120 = v119;
                          v122 = String.init(cString:)();
                          v123 = v121;
                          if ((v122 != 46 || v121 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v122 != 11822 || v123 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v122 != 24366 || v123 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                          {
                            break;
                          }
                        }

                        v13 = v117;
                        if (*(v117 + 56) != 1)
                        {
                          goto LABEL_198;
                        }

                        if (v120->d_type)
                        {
                          if (v120->d_type != 4)
                          {
                            goto LABEL_198;
                          }
                        }

                        else
                        {
                          memset(&v150, 0, sizeof(v150));
                          v125 = *(v117 + 32);
                          v147 = *(v117 + 24);
                          v148 = v125;

                          MEMORY[0x1865CB0E0](47, 0xE100000000000000);

                          MEMORY[0x1865CB0E0](v122, v123);

                          v126 = String.utf8CString.getter();

                          v127 = stat((v126 + 32), &v150);

                          if (v127)
                          {
                            v13 = v117;
LABEL_198:
                            v130 = *(v13 + 48);
                            *&v150.st_dev = *(v13 + 40);
                            v150.st_ino = v130;

                            MEMORY[0x1865CB0E0](v122, v123);
                            goto LABEL_199;
                          }

                          st_mode = v150.st_mode;
                          v129 = S_IFMT.getter() & st_mode;
                          v13 = v117;
                          if (v129 != S_IFDIR.getter())
                          {
                            goto LABEL_198;
                          }
                        }

                        v124 = *(v13 + 48);
                        *&v150.st_dev = *(v13 + 40);
                        v150.st_ino = v124;

                        MEMORY[0x1865CB0E0](v122, v123);

                        MEMORY[0x1865CB0E0](47, 0xE100000000000000);
                        v13 = v117;

LABEL_199:
                        v131 = *&v150.st_dev;
                        v132 = v150.st_ino;
                        d_type = v120->d_type;
                        *v114 = v122;
                        *(v114 + 8) = v123;
                        *(v114 + 16) = v131;
                        *(v114 + 24) = v132;
                        *(v114 + 32) = d_type;
                        if (v116 == v142)
                        {
                          goto LABEL_208;
                        }

                        v114 += 40;
                        v115 = v116;
                        if (__OFADD__(v116++, 1))
                        {
                          __break(1u);
                          goto LABEL_203;
                        }
                      }
                    }

LABEL_207:
                    __break(1u);
LABEL_208:
                    v115 = v142;
                    goto LABEL_205;
                  }

LABEL_128:
                  LOBYTE(v147) = 0;
                  *&v150.st_dev = 0;
                  LOBYTE(v146) = 0;
                  v149 = 0;
                  v85 = __CFStringIsCF();
                  if (v85)
                  {
                    v82 = *&v150.st_dev;
                    if (!*&v150.st_dev)
                    {

                      v84 = 0xE000000000000000;
                      goto LABEL_158;
                    }

                    if (v149 == 1)
                    {
                      if (v147)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v94 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_157;
                    }

                    if (v146)
                    {
                      v138 = v63;
                      v93 = v21;
                      if (v147 != 1)
                      {
                        v85 = [(__CFString *)v37 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](v85);
                      v96 = v141;
                      v97 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v84 = v98;
                      v141 = v96;
                      v99 = HIBYTE(v98) & 0xF;
                      if ((v98 & 0x2000000000000000) == 0)
                      {
                        v99 = v97 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v99)
                      {
                        v82 = v97;

                        v21 = v93;
                        v63 = v138;
                        goto LABEL_158;
                      }

                      v21 = v93;

                      v63 = v138;
                    }
                  }

                  else
                  {
                    v86 = v63;
                    v87 = v37;
                    v88 = String.init(_nativeStorage:)();
                    if (v89)
                    {
                      v82 = v88;
                      v84 = v89;

                      v63 = v86;
                      goto LABEL_158;
                    }

                    *&v150.st_dev = [(__CFString *)v87 length];
                    if (!*&v150.st_dev)
                    {

                      v82 = 0;
                      v84 = 0xE000000000000000;
                      v63 = v86;
                      goto LABEL_158;
                    }

                    v63 = v86;
                  }

                  v94 = String.init(_cocoaString:)();
LABEL_157:
                  v82 = v94;
                  v84 = v95;
                  goto LABEL_158;
                }

                v90 = [(__CFString *)v37 UTF8String];
                if (v90)
                {
                  v91 = String.init(utf8String:)(v90);
                  if (v92)
                  {
LABEL_140:
                    v82 = v91;
                    v84 = v92;

                    goto LABEL_158;
                  }

                  __break(1u);
LABEL_139:
                  v146 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v92)
                  {
                    [(__CFString *)v37 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v82 = v147;
                    v84 = v148;
                    goto LABEL_158;
                  }

                  goto LABEL_140;
                }

                goto LABEL_211;
              }

              goto LABEL_91;
            }

            v68 = [v58 UTF8String];
            if (!v68)
            {
LABEL_213:
              __break(1u);
              goto LABEL_214;
            }

            v69 = String.init(utf8String:)(v68);
            if (v70)
            {
              goto LABEL_103;
            }

            __break(1u);
          }

          v146 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v70)
          {
            [v58 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v63 = v147;
            v21 = v148;
            goto LABEL_122;
          }

LABEL_103:
          v63 = v69;
          v21 = v70;

LABEL_122:
          goto LABEL_123;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v141 = 0;

LABEL_84:
          isTaggedPointer = MEMORY[0x1E69E7CA0];
          goto LABEL_85;
      }
    }

    LOBYTE(v147) = 0;
    *&v150.st_dev = 0;
    LOBYTE(v146) = 0;
    v149 = 0;
    v42 = __CFStringIsCF();
    v141 = 0;
    if (v42)
    {
      if (!*&v150.st_dev)
      {
LABEL_83:

        goto LABEL_84;
      }

      if (v149 == 1)
      {
        if (v147)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_84;
      }

      if (v146)
      {
        if (v147 != 1)
        {
          v42 = [(__CFString *)v37 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v42);
        v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v50 = HIBYTE(v49) & 0xF;
        if ((v49 & 0x2000000000000000) == 0)
        {
          v50 = v48 & 0xFFFFFFFFFFFFLL;
        }

        v141 = 0;
        if (v50)
        {
          goto LABEL_83;
        }

        isTaggedPointer = MEMORY[0x1E69E7CA0];

LABEL_74:
        String.init(_cocoaString:)();
        goto LABEL_85;
      }
    }

    else
    {
      v43 = v37;
      String.init(_nativeStorage:)();
      if (v44 || (*&v150.st_dev = [(__CFString *)v43 length]) == 0)
      {

        goto LABEL_84;
      }
    }

    isTaggedPointer = MEMORY[0x1E69E7CA0];
    goto LABEL_74;
  }

LABEL_214:
  *&v150.st_dev = 0;
  v150.st_ino = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v150.st_dev = 0xD000000000000014;
  v150.st_ino = 0x80000001814813E0;
  LODWORD(v147) = v37;
  v136 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v136);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

id specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  type metadata accessor for _DarwinSearchPathsSequence.Iterator();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = 0;
  *(v9 + 32) = sysdir_start_search_path_enumeration_private();
  if (!a2 || !a3)
  {
LABEL_58:
    *a1 = v9;
    return v10;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  v10 = 0;
  v43 = a3;
  while (1)
  {
    v13 = *(v9 + 32);
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v22 = swift_slowAlloc();
      v23 = MEMORY[0x1865D2880](v13, v22);
      *(v9 + 32) = v23;
      if (!v23)
      {
        MEMORY[0x1865D2690](v22, -1, -1);
        goto LABEL_58;
      }

      v24 = [objc_opt_self() defaultManager];
      v25 = [v24 stringWithFileSystemRepresentation:v22 length:strlen(v22)];

      if (!v25)
      {
        goto LABEL_48;
      }

      isTaggedPointer = _objc_isTaggedPointer(v25);
      v27 = v25;
      v28 = v27;
      if (!isTaggedPointer)
      {
LABEL_25:
        LOBYTE(v44) = 0;
        v47 = 0;
        if (__CFStringIsCF())
        {
          v11 = v47;
          if (!v47)
          {

            v12 = 0xE000000000000000;
            goto LABEL_53;
          }

LABEL_51:
          v11 = String.init(_cocoaString:)();
          v12 = v40;
          goto LABEL_52;
        }

        v34 = v28;
        v35 = String.init(_nativeStorage:)();
        if (v36)
        {
          v11 = v35;
          v12 = v36;

          goto LABEL_53;
        }

        v47 = [v34 length];
        if (v47)
        {
          goto LABEL_51;
        }

LABEL_48:
        v11 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_53;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v27);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v12 = v30;

LABEL_53:
            MEMORY[0x1865D2690](v22, -1, -1);
LABEL_54:
            a3 = v43;
            goto LABEL_6;
          }

          goto LABEL_25;
        }

        result = [v28 UTF8String];
        if (!result)
        {
          goto LABEL_62;
        }

        result = String.init(utf8String:)(result);
        if (!v39)
        {
          goto LABEL_61;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v39)
        {
          [v28 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = v44;
          v12 = v45;
          goto LABEL_52;
        }
      }

      v11 = result;
      v12 = v39;

LABEL_52:
      goto LABEL_53;
    }

    v14 = MEMORY[0x1865D2880](v13, v46);
    *(v9 + 32) = v14;
    if (!v14)
    {
      goto LABEL_58;
    }

    v15 = [objc_opt_self() defaultManager];
    v16 = [v15 stringWithFileSystemRepresentation:v46 length:strlen(v46)];

    if (v16)
    {
      break;
    }

LABEL_5:
    v11 = 0;
    v12 = 0xE000000000000000;
LABEL_6:
    ++v10;
    *a2 = v11;
    a2[1] = v12;
    a2 += 2;
    if (a3 == v10)
    {
      v10 = a3;
      goto LABEL_58;
    }
  }

  v17 = _objc_isTaggedPointer(v16);
  v18 = v16;
  v19 = v18;
  if (!v17)
  {
LABEL_22:
    LOBYTE(v44) = 0;
    v47 = 0;
    if (__CFStringIsCF())
    {
      if (v47)
      {
        a3 = v43;
LABEL_55:
        v11 = String.init(_cocoaString:)();
        v12 = v41;

        goto LABEL_6;
      }

      v11 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_54;
    }

    v31 = v19;
    v32 = String.init(_nativeStorage:)();
    if (v33)
    {
      v11 = v32;
      v12 = v33;

      goto LABEL_6;
    }

    v47 = [v31 length];
    if (v47)
    {
      goto LABEL_55;
    }

    goto LABEL_5;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  if (!v20)
  {
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v38)
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v44;
      v12 = v45;

      goto LABEL_6;
    }

    goto LABEL_41;
  }

  if (v20 != 22)
  {
    if (v20 == 2)
    {
      MEMORY[0x1EEE9AC00](v20);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v12 = v21;

      goto LABEL_6;
    }

    goto LABEL_22;
  }

  result = [v19 UTF8String];
  if (!result)
  {
    goto LABEL_60;
  }

  result = String.init(utf8String:)(result);
  if (v38)
  {
LABEL_41:
    v11 = result;
    v12 = v38;

    goto LABEL_6;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  LODWORD(v14) = 0;
  v7 = HIBYTE(a5) & 0xF;
  *(&v14 + 1) = 0;
  *&v15 = a4;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v7 = a4 & 0xFFFFFFFFFFFFLL;
  }

  *(&v15 + 1) = a5;
  *&v16 = 0;
  *(&v16 + 1) = v7;
  v17 = a6 & 1;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        __break(1u);
      }

      v9 = 0;
      v10 = a3;
      v11 = a3 - 1;
      while (1)
      {
        v12 = UnicodeScalarToDataAdaptor.Iterator.next()();
        if ((*&v12 & 0x100) != 0)
        {
          a3 = v9;
          goto LABEL_15;
        }

        *(a2 + v9) = v12.value;
        if (v11 == v9)
        {
          break;
        }

        if (__OFADD__(++v9, 1))
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      a3 = v10;
    }
  }

  else
  {
LABEL_12:
    a3 = 0;
  }

LABEL_15:
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = *(v3 + 4);
  v8 = *v3;
  v7 = *(v3 + 1);
  v9 = *(*v3 + 16);
  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    v19 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v19;
    *(result + 64) = v3[4];
    v20 = v3[1];
    *result = *v3;
    *(result + 16) = v20;
    *(result + 80) = v7;
    *(result + 88) = v4;
    *(result + 96) = v5;
    *(result + 104) = v6;
    *(result + 112) = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = result;
    v10 = 0;
    v11 = *(v3 + 5) >> 10;
    v21 = a3;
    v24 = a3 - 1;
    v25 = v7 >> 10;
    while (1)
    {
      v12 = v7 >> 10;
      if (v7 >> 10 == v11)
      {
        a3 = v10;
        v3 = v22;
        result = v23;
        goto LABEL_16;
      }

      if (v12 < v25 || v12 >= v11)
      {
        break;
      }

      v13 = *(v8 + 40);
      v27[3] = *(v8 + 24);
      v27[4] = v13;
      v27[5] = *(v8 + 56);
      swift_unknownObjectRetain();
      v14 = BigString.UTF16View.subscript.getter();
      swift_unknownObjectRelease();
      v15 = *(v8 + 40);
      v27[0] = *(v8 + 24);
      v27[1] = v15;
      v27[2] = *(v8 + 56);
      swift_unknownObjectRetain();
      v3 = v27;
      v7 = BigString.UTF16View.index(after:)();
      v4 = v16;
      v5 = v17;
      v6 = v18;
      result = swift_unknownObjectRelease();
      if (v11 < v7 >> 10)
      {
        goto LABEL_18;
      }

      v9 = *(v8 + 16);
      *(a2 + 2 * v10) = v14;
      if (v24 == v10)
      {
        v3 = v22;
        result = v23;
        a3 = v21;
        goto LABEL_16;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = *(v3 + 4);
  v8 = *v3;
  v7 = *(v3 + 1);
  v9 = *(*v3 + 16);
  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    v19 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v19;
    *(result + 64) = v3[4];
    v20 = v3[1];
    *result = *v3;
    *(result + 16) = v20;
    *(result + 80) = v7;
    *(result + 88) = v4;
    *(result + 96) = v5;
    *(result + 104) = v6;
    *(result + 112) = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = result;
    v10 = 0;
    v11 = *(v3 + 5) >> 10;
    v21 = a3;
    v24 = a3 - 1;
    v25 = v7 >> 10;
    while (1)
    {
      v12 = v7 >> 10;
      if (v7 >> 10 == v11)
      {
        a3 = v10;
        v3 = v22;
        result = v23;
        goto LABEL_16;
      }

      if (v12 < v25 || v12 >= v11)
      {
        break;
      }

      v13 = *(v8 + 40);
      v27[3] = *(v8 + 24);
      v27[4] = v13;
      v27[5] = *(v8 + 56);
      swift_unknownObjectRetain();
      v14 = BigString.UTF8View.subscript.getter();
      swift_unknownObjectRelease();
      v15 = *(v8 + 40);
      v27[0] = *(v8 + 24);
      v27[1] = v15;
      v27[2] = *(v8 + 56);
      swift_unknownObjectRetain();
      v3 = v27;
      v7 = BigString.UTF8View.index(after:)();
      v4 = v16;
      v5 = v17;
      v6 = v18;
      result = swift_unknownObjectRelease();
      if (v11 < v7 >> 10)
      {
        goto LABEL_18;
      }

      v9 = *(v8 + 16);
      *(a2 + v10) = v14;
      if (v24 == v10)
      {
        v3 = v22;
        result = v23;
        a3 = v21;
        goto LABEL_16;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = *(v3 + 4);
  v8 = *v3;
  v7 = *(v3 + 1);
  v9 = *(*v3 + 16);
  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    v19 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v19;
    *(result + 64) = v3[4];
    v20 = v3[1];
    *result = *v3;
    *(result + 16) = v20;
    *(result + 80) = v7;
    *(result + 88) = v4;
    *(result + 96) = v5;
    *(result + 104) = v6;
    *(result + 112) = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = result;
    v10 = 0;
    v11 = *(v3 + 5) >> 10;
    v21 = a3;
    v24 = a3 - 1;
    v25 = v7 >> 10;
    while (1)
    {
      v12 = v7 >> 10;
      if (v7 >> 10 == v11)
      {
        a3 = v10;
        v3 = v22;
        result = v23;
        goto LABEL_16;
      }

      if (v12 < v25 || v12 >= v11)
      {
        break;
      }

      v13 = *(v8 + 40);
      v27[3] = *(v8 + 24);
      v27[4] = v13;
      v27[5] = *(v8 + 56);
      swift_unknownObjectRetain();
      v14 = BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      v15 = *(v8 + 40);
      v27[0] = *(v8 + 24);
      v27[1] = v15;
      v27[2] = *(v8 + 56);
      swift_unknownObjectRetain();
      v3 = v27;
      v7 = BigString.UnicodeScalarView.index(after:)();
      v4 = v16;
      v5 = v17;
      v6 = v18;
      result = swift_unknownObjectRelease();
      if (v11 < v7 >> 10)
      {
        goto LABEL_18;
      }

      v9 = *(v8 + 16);
      *(a2 + 4 * v10) = v14;
      if (v24 == v10)
      {
        v3 = v22;
        result = v23;
        a3 = v21;
        goto LABEL_16;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v253 = a3;
  v271 = a2;
  v246 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v290 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v251 = &v242 - v5;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v288 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v7 = &v242 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v242 - v10;
  _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v3, &v242 - v10, type metadata accessor for AttributedString.Runs);
  v12 = *(v9 + 44);
  v289 = v11;
  v13 = &v11[v12];
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  v19 = *(v3 + 40);
  v18 = *(v3 + 48);
  v20 = *(v3 + 64);
  v276 = *(v3 + 56);
  v277 = v18;
  v280 = v20;
  v281 = v16;
  v21 = *(v3 + 80);
  v284 = *(v3 + 72);
  v270 = v21;
  v22 = *(v3 + 96);
  v272 = *(v3 + 88);
  v286 = v22;
  v23 = *(v3 + 104);
  v275 = *(v3 + 112);
  LODWORD(v291) = *(v3 + 113);
  result = outlined destroy of AttributedString.Runs.NSAttributesSlice(v3, type metadata accessor for AttributedString.Runs);
  v25 = v17;
  v26 = v14;
  *v13 = v14;
  *(v13 + 1) = v15;
  v27 = v284;
  v28 = v15;
  v29 = v271;
  v30 = v272;
  *(v13 + 2) = v281;
  *(v13 + 3) = v25;
  v279 = v19;
  v32 = v276;
  v31 = v277;
  *(v13 + 4) = v19;
  *(v13 + 5) = v31;
  v33 = v280;
  *(v13 + 6) = v32;
  *(v13 + 7) = v33;
  v34 = v270;
  *(v13 + 8) = v27;
  *(v13 + 9) = v34;
  v35 = v286;
  *(v13 + 10) = v30;
  *(v13 + 11) = v35;
  v287 = v23;
  *(v13 + 12) = v23;
  v13[104] = v275;
  v249 = v13;
  v13[105] = v291;
  if (!v29)
  {
LABEL_247:
    v36 = 0;
LABEL_248:
    v37 = v289;
LABEL_249:
    outlined init with take of IndexingIterator<AttributedString.Runs>(v37, v246);
    return v36;
  }

  v36 = v253;
  if (!v253)
  {
    goto LABEL_248;
  }

  if ((v253 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v289;
    v38 = v289[15];
    v39 = v289[23];
    v291 = (v288 + 8);
    v247 = v39 >> 10;
    v248 = v39;
    v245 = (v290 + 16);
    v40 = v289[26];
    v243 = v39;
    v244 = (v290 + 8);
    v41 = 1;
    v252 = v40;
    v250 = v40;
    v263 = v38;
    v42 = v38;
    v288 = v4;
    v43 = v26;
    v44 = v28;
    while (1)
    {
      v45 = v41;
      if (v43 == v263)
      {
        if (v286 == 2)
        {
          if (v252 == 2)
          {
            goto LABEL_249;
          }
        }

        else if (v252 != 2 && (v27 ^ v243) < 0x400)
        {
          goto LABEL_249;
        }
      }

      v46 = *(v37 + 8);
      if (v43 < v46)
      {
        goto LABEL_262;
      }

      v260 = v45;
      v271 = v29;
      v269 = *(v37 + 72);
      v47 = v46 < v43 || *(v37 + 96) == 2;
      v48 = v47;
      if (!v47)
      {
        if (v286 == 2)
        {
          goto LABEL_293;
        }

        if (v27 >> 10 < v269 >> 10)
        {
          goto LABEL_276;
        }
      }

      if (v43 >= v42)
      {
        if (v42 < v43)
        {
          goto LABEL_277;
        }

        if (v250 == 2)
        {
          goto LABEL_294;
        }

        if (v286 == 2)
        {
          if ((v48 & 1) == 0)
          {
            goto LABEL_292;
          }

          goto LABEL_31;
        }

        if (v27 >> 10 >= v248 >> 10)
        {
          goto LABEL_285;
        }
      }

      if ((v48 & 1) == 0)
      {
        if (v286 == 2)
        {
          goto LABEL_292;
        }

        if (v27 >> 10 < v269 >> 10)
        {
          goto LABEL_283;
        }
      }

LABEL_31:
      if (v42 < v43)
      {
        goto LABEL_263;
      }

      if (v43 >= v42 && v286 != 2)
      {
        if (v250 == 2)
        {
          goto LABEL_295;
        }

        if (v248 >> 10 < v27 >> 10)
        {
          goto LABEL_278;
        }
      }

      v274 = v279 >> 11;
      v278 = v43;
      v282 = v44;
      v283 = v25;
      v254 = v42;
      v284 = v27;
      v272 = v30;
      v262 = v48;
      if (v25 == 1 || (v285 = *v37, v44 != *(v285 + 96)))
      {
        result = type metadata accessor for AttributedString.Runs();
        if (*(v37 + *(result + 28)))
        {
          goto LABEL_272;
        }

        v285 = *v37;
        v56 = *(v285 + 72);
        v55 = *(v285 + 80);
        v290 = v55;
        if (!v56)
        {
          v55 = 0;
        }

        if (v43 < 0 || v55 < v43)
        {
          goto LABEL_273;
        }

        v57 = *(v285 + 96);
        v273 = *(v285 + 88);
        if (v56)
        {
          v58 = (v56 + 16);
          v59 = *(v56 + 16);
          if (*(v56 + 16))
          {
            if (v43 < v290)
            {
              v264 = v57;
              v60 = *(v56 + 18);
              result = swift_unknownObjectRetain_n();
              if (!v60)
              {
                v62 = 0;
                v61 = v43;
                v65 = v56;
LABEL_69:
                v75 = 0;
                v74 = v59;
                v76 = v61 & ~(v61 >> 63);
                while ((v61 ^ v75) != 0x8000000000000000)
                {
                  if (v76 == v75)
                  {
                    goto LABEL_75;
                  }

                  if (v59 == ++v75)
                  {
                    v61 -= v75;
                    goto LABEL_74;
                  }
                }

                goto LABEL_258;
              }

              v61 = v43;
              v62 = v60;
              v63 = v56;
              do
              {
                v64 = *v58;
                if (*v58)
                {
                  v66 = 0;
                  v67 = (v63 + 32);
                  while (1)
                  {
                    v68 = *v67;
                    v67 += 3;
                    v69 = v61 - v68;
                    if (__OFSUB__(v61, v68))
                    {
                      goto LABEL_251;
                    }

                    if (__OFADD__(v69, 1))
                    {
                      goto LABEL_252;
                    }

                    if (v69 + 1 < 1)
                    {
                      v64 = v66;
                      goto LABEL_52;
                    }

                    ++v66;
                    v61 = v69;
                    if (v64 == v66)
                    {
                      goto LABEL_61;
                    }
                  }
                }

                v69 = v61;
LABEL_61:
                if (v69)
                {
                  goto LABEL_259;
                }

                v61 = 0;
LABEL_52:
                v62 = (v64 << ((4 * v60 + 8) & 0x3C)) | ((-15 << ((4 * v60 + 8) & 0x3C)) - 1) & v62;
                v65 = *(v63 + 24 + 24 * v64);
                swift_unknownObjectRetain();
                result = swift_unknownObjectRelease();
                v58 = (v65 + 16);
                LOBYTE(v60) = *(v65 + 18);
                v63 = v65;
              }

              while (v60);
              v59 = *v58;
              if (*v58)
              {
                goto LABEL_69;
              }

              v74 = 0;
LABEL_74:
              v76 = v74;
              if (!v61)
              {
LABEL_75:
                swift_unknownObjectRelease();
                v72 = v62 & 0xFFFFFFFFFFFFF0FFLL | (v76 << 8);
                v57 = v264;
                v71 = v273;
                v261 = v72;
                goto LABEL_64;
              }

              goto LABEL_290;
            }
          }
        }

        v70 = swift_unknownObjectRetain();
        v71 = v273;
        v72 = specialized Rope._endPath.getter(v70);
        v65 = 0;
        v261 = v72;
        if (v56)
        {
LABEL_64:
          v73 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v57, v72, v65, v56, v290, v71);
          swift_unknownObjectRelease();
        }

        else
        {
          v73 = 0;
        }
      }

      else
      {
        if (v280 == 2)
        {
          v49 = v285;
          v50 = *(v285 + 72);
          if (v50)
          {
            v52 = *(v285 + 80);
            v51 = *(v285 + 88);
            v53 = v44;
            swift_unknownObjectRetain();
            v54 = v281;
            specialized Rope._Node.distanceFromStart<A>(to:in:)(v53, v281, v283, v50, v52, v51);
            swift_unknownObjectRelease();
            v44 = v53;
            v25 = v283;
          }

          else
          {
            v54 = v281;
          }

          v258 = 0;
          LODWORD(v273) = 1;
          v65 = v25;
          v261 = v54;
          v264 = v44;
          goto LABEL_83;
        }

        v57 = v44;
        v261 = v281;
        v65 = v25;
        v73 = v274;
      }

      LODWORD(v273) = v280 == 2;
      v258 = v280 != 2;
      v264 = v57;
      if (v280 != 2 && v274 == v73)
      {
        v77 = *(v285 + 40);
        v323 = *(v285 + 24);
        v324 = v77;
        v325 = *(v285 + 56);
        swift_unknownObjectRetain();
        v78 = BigString.UTF8View.index(roundingDown:)();
        v266 = v80;
        v267 = v79;
        v265 = v81;
        swift_unknownObjectRelease();
        LODWORD(v273) = 0;
        goto LABEL_84;
      }

      v49 = v285;
LABEL_83:
      v82 = *(v49 + 24);
      v83 = *(v49 + 56);
      v330 = *(v49 + 40);
      v331 = v83;
      v84 = *(v49 + 40);
      v326 = *(v49 + 24);
      v327 = v84;
      v285 = v49;
      v328 = *(v49 + 56);
      v329 = v82;
      BigString.startIndex.getter();
      v332[0] = v329;
      v332[1] = v330;
      v333 = v331;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v332, &v293);
      v78 = BigString.UTF8View.index(_:offsetBy:)();
      v266 = v86;
      v267 = v85;
      v265 = v87;
      outlined destroy of BigString(&v329);
LABEL_84:
      v88 = v291;
      v89 = v284;
      v268 = v78;
      if (v275)
      {
        if (v286 == 2)
        {
          v90 = v78;
        }

        else
        {
          v90 = v284;
        }

        type metadata accessor for AttributedString.Runs();
        RangeSet.ranges.getter();
        v91 = v292;
        v92 = RangeSet.Ranges.count.getter();
        v290 = *v88;
        result = (v290)(v7, v91);
        if (v92 < 1)
        {
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v93 = 0;
        v94 = v90 >> 10;
        while (!__OFADD__(v93, v92))
        {
          v95 = (v93 + v92) / 2;
          RangeSet.ranges.getter();
          v96 = v292;
          RangeSet.Ranges.subscript.getter();
          result = (v290)(v7, v96);
          v97 = v293;
          if (v94 >= v293 >> 10)
          {
            v98 = v297;
            if (v94 < v297 >> 10)
            {
              v100 = v294;
              v101 = v295;
              v102 = v296;
              v104 = v251;
              v89 = v284;
              v103 = v286;
              goto LABEL_100;
            }

            v93 = v95 + 1;
            v95 = v92;
          }

          v92 = v95;
          if (v93 >= v95)
          {
            goto LABEL_250;
          }
        }

LABEL_256:
        __break(1u);
        goto LABEL_257;
      }

      type metadata accessor for AttributedString.Runs();
      RangeSet.ranges.getter();
      v99 = v292;
      RangeSet.Ranges.subscript.getter();
      v290 = *v88;
      result = (v290)(v7, v99);
      v97 = v293;
      v100 = v294;
      v101 = v295;
      v102 = v296;
      v98 = v297;
      v103 = v286;
      v104 = v251;
      if (v286 != 2 && (v89 >> 10 < v293 >> 10 || v89 >> 10 >= v297 >> 10))
      {
        goto LABEL_286;
      }

LABEL_100:
      v106 = v279;
      v105 = v280;
      result = v276;
      v107 = v277;
      if (v273)
      {
        v107 = v267;
        v106 = v268;
        v105 = v265;
        result = v266;
      }

      if (v103 == 2)
      {
        v89 = v268;
        v108 = v267;
      }

      else
      {
        v108 = v270;
      }

      if (v103 == 2)
      {
        v109 = v266;
      }

      else
      {
        v109 = v272;
      }

      if (v103 == 2)
      {
        v110 = v265;
      }

      else
      {
        v110 = v103;
      }

      if (v264 != *(v285 + 96))
      {
        goto LABEL_264;
      }

      v267 = v105;
      v268 = result;
      v259 = v110;
      v264 = v109;
      v265 = v108;
      v272 = v102;
      v286 = v103;
      v270 = v101;
      if (v65)
      {
        v111 = (v65 + 24 * ((v261 >> ((4 * *(v65 + 18) + 8) & 0x3C)) & 0xF));
        v112 = v111[4];
        v266 = v111[3];
        v113 = v111[5];
        v261 = v112;

        v257 = v113;
      }

      else
      {
        v114 = *(v285 + 72);
        v266 = *(v285 + 80);
        v257 = *(v285 + 88);
        swift_unknownObjectRetain();
        v266 = specialized Rope._Node.subscript.getter(v261, v114);
        v261 = v115;
        v257 = v116;
        result = swift_unknownObjectRelease();
      }

      if (v97 >> 10 >= v106 >> 10)
      {
        v117 = v97;
      }

      else
      {
        v117 = v106;
      }

      if (v97 >> 10 >= v106 >> 10)
      {
        v118 = v100;
      }

      else
      {
        v118 = v107;
      }

      if (v97 >> 10 >= v106 >> 10)
      {
        v119 = v270;
      }

      else
      {
        v119 = v268;
      }

      if (v97 >> 10 >= v106 >> 10)
      {
        v120 = v272;
      }

      else
      {
        v120 = v267;
      }

      v121 = v266 + (v106 >> 11);
      if (__OFADD__(v266, v106 >> 11))
      {
        goto LABEL_265;
      }

      if ((v98 >> 11) < v121)
      {
        v121 = v98 >> 11;
      }

      v122 = v285;
      v123 = *(v285 + 24);
      v124 = *(v285 + 40);
      v125 = *(v285 + 56);
      v270 = (v285 + 24);
      v320 = v123;
      v321 = v124;
      v322 = v125;
      if (__OFSUB__(v121, v89 >> 11))
      {
        goto LABEL_266;
      }

      v256 = v120;
      v266 = v119;
      v267 = v118;
      v268 = v117;
      swift_unknownObjectRetain();
      v126 = BigString.UTF8View.index(_:offsetBy:)();
      v264 = v128;
      v265 = v127;
      v259 = v129;
      result = swift_unknownObjectRelease();
      if (v262)
      {
        v130 = v263;
        v131 = v278;
        v133 = v282;
        v132 = v283;
        v134 = v286;
        if (v278 < v263)
        {
          v135 = 1;
          goto LABEL_147;
        }
      }

      else
      {
        v134 = v286;
        v130 = v263;
        v131 = v278;
        v133 = v282;
        if (v286 == 2)
        {
          goto LABEL_296;
        }

        v132 = v283;
        if (v284 >> 10 < v269 >> 10)
        {
          goto LABEL_279;
        }

        if (v278 < v263)
        {
          v135 = 1;
          if (v284 >> 10 < v269 >> 10)
          {
            goto LABEL_284;
          }

          goto LABEL_147;
        }
      }

      if (v130 < v131)
      {
        goto LABEL_280;
      }

      if (v252 == 2)
      {
        goto LABEL_297;
      }

      if (v134 == 2)
      {
        if ((v262 & 1) == 0)
        {
          goto LABEL_299;
        }

        v135 = 0;
      }

      else
      {
        if (v284 >> 10 >= v247)
        {
          goto LABEL_287;
        }

        v135 = 0;
        if ((v262 & 1) == 0 && v284 >> 10 < v269 >> 10)
        {
          goto LABEL_284;
        }
      }

LABEL_147:
      if (v130 < v131)
      {
        goto LABEL_267;
      }

      if (v134 == 2)
      {
        v135 = 1;
      }

      if (v135 != 1)
      {
        if (v252 == 2)
        {
          goto LABEL_298;
        }

        if (v247 < v284 >> 10)
        {
          goto LABEL_281;
        }
      }

      v255 = v126;
      if (v132 == 1 || v133 != *(v122 + 96))
      {
        result = type metadata accessor for AttributedString.Runs();
        if (*(v289 + *(result + 28)))
        {
          goto LABEL_274;
        }

        v140 = *(v122 + 72);
        v141 = *(v122 + 80);
        if (v140)
        {
          v142 = *(v122 + 80);
        }

        else
        {
          v142 = 0;
        }

        if (v131 < 0 || v142 < v131)
        {
          goto LABEL_275;
        }

        v143 = *(v122 + 88);
        v282 = *(v122 + 96);
        if (v140)
        {
          v144 = (v140 + 16);
          v145 = *(v140 + 16);
          if (*(v140 + 16))
          {
            if (v131 < v141)
            {
              v283 = v141;
              v146 = *(v140 + 18);
              swift_unknownObjectRetain_n();

              if (!v146)
              {
                v147 = 0;
                result = v140;
LABEL_186:
                v122 = v285;
                v160 = 0;
                v159 = v145;
                v161 = v131 & ~(v131 >> 63);
                v156 = v143;
                while ((v131 ^ v160) != 0x8000000000000000)
                {
                  if (v161 == v160)
                  {
                    goto LABEL_192;
                  }

                  if (v159 == ++v160)
                  {
                    v131 -= v160;
                    goto LABEL_191;
                  }
                }

                goto LABEL_260;
              }

              v147 = v146;
              v148 = v140;
              do
              {
                v149 = *v144;
                if (*v144)
                {
                  v151 = 0;
                  v152 = (v148 + 32);
                  while (1)
                  {
                    v153 = *v152;
                    v152 += 3;
                    v154 = v131 - v153;
                    if (__OFSUB__(v131, v153))
                    {
                      goto LABEL_254;
                    }

                    if (__OFADD__(v154, 1))
                    {
                      goto LABEL_255;
                    }

                    if (v154 + 1 < 1)
                    {
                      v149 = v151;
                      goto LABEL_170;
                    }

                    ++v151;
                    v131 = v154;
                    if (v149 == v151)
                    {
                      goto LABEL_179;
                    }
                  }
                }

                v154 = v131;
LABEL_179:
                if (v154)
                {
                  goto LABEL_261;
                }

                v131 = 0;
LABEL_170:
                v147 = (v149 << ((4 * v146 + 8) & 0x3C)) | ((-15 << ((4 * v146 + 8) & 0x3C)) - 1) & v147;
                v150 = *(v148 + 24 + 24 * v149);
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                result = v150;
                v144 = (v150 + 16);
                LOBYTE(v146) = *(result + 18);
                v148 = result;
              }

              while (v146);
              v145 = *v144;
              if (*v144)
              {
                goto LABEL_186;
              }

              v159 = 0;
              v122 = v285;
              v156 = v143;
LABEL_191:
              v161 = v159;
              if (!v131)
              {
LABEL_192:
                v162 = result;
                swift_unknownObjectRelease();
                v158 = v162;
                v157 = v147 & 0xFFFFFFFFFFFFF0FFLL | (v161 << 8);
                v133 = v282;
                v141 = v283;
                goto LABEL_193;
              }

              goto LABEL_291;
            }
          }
        }

        v155 = swift_unknownObjectRetain();
        v156 = v143;
        v133 = v282;
        v157 = specialized Rope._endPath.getter(v155);
        v158 = 0;
LABEL_193:
        v163 = v258;
        v283 = v158;
        v281 = v157;
        if (v140)
        {
          v139 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v133, v157, v158, v140, v141, v156);
          swift_unknownObjectRelease();
        }

        else
        {
          v139 = 0;
        }
      }

      else
      {
        if (v273)
        {
          v136 = *(v122 + 72);
          if (v136)
          {
            v138 = *(v122 + 80);
            v137 = *(v122 + 88);

            swift_unknownObjectRetain();
            v139 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v133, v281, v283, v136, v138, v137);
            swift_unknownObjectRelease();
          }

          else
          {

            v139 = 0;
          }
        }

        else
        {

          v139 = v274;
        }

        v163 = v258;
      }

      if (v274 == v139 && v163)
      {
        v165 = v139;
        v166 = *(v122 + 40);
        v311 = *(v122 + 24);
        v312 = v166;
        v313 = *(v122 + 56);
        swift_unknownObjectRetain();
        v269 = BigString.UTF8View.index(roundingDown:)();
        result = swift_unknownObjectRelease();
      }

      else
      {
        v167 = *v270;
        v168 = v270[1];
        v169 = v270[2];
        v282 = v133;
        v318 = v168;
        v319 = v169;
        v170 = *(v122 + 40);
        v314 = *(v122 + 24);
        v315 = v170;
        v316 = *(v122 + 56);
        v317 = v167;
        BigString.startIndex.getter();
        v334[0] = v317;
        v334[1] = v318;
        v133 = v282;
        v335 = v319;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v334, &v293);
        v122 = v285;
        v165 = v139;
        v269 = BigString.UTF8View.index(_:offsetBy:)();
        result = outlined destroy of BigString(&v317);
      }

      v171 = v284;
      v172 = *(v122 + 72);
      v173 = *(v122 + 96);
      v293 = v133;
      v294 = v281;
      v295 = v283;
      if (__OFADD__(v278, 1))
      {
        goto LABEL_268;
      }

      if (v133 != v173)
      {
        goto LABEL_269;
      }

      ++v278;
      if (v283)
      {
        v174 = *(v283 + 24 * ((v281 >> ((4 * *(v283 + 18) + 8) & 0x3C)) & 0xF) + 24);
        result = swift_unknownObjectRetain();
        v175 = v165 + v174;
        if (__OFADD__(v165, v174))
        {
          goto LABEL_270;
        }
      }

      else
      {
        v176 = v281;
        swift_unknownObjectRetain();
        v177 = specialized Rope._Node.subscript.getter(v176, v172);

        v171 = v284;

        v175 = v165 + v177;
        if (__OFADD__(v165, v177))
        {
          goto LABEL_270;
        }
      }

      v284 = v175;
      result = specialized Rope._endPath.getter(v172);
      if (v281 >= result)
      {
        goto LABEL_271;
      }

      if (v283 && (v178 = (4 * *(v283 + 18) + 8) & 0x3C, v179 = ((v281 >> v178) & 0xF) + 1, v179 < *(v283 + 16)))
      {
        v281 = (v179 << v178) | ((-15 << v178) - 1) & v281;
        swift_unknownObjectRelease();
        v180 = v286;
      }

      else
      {
        v181 = specialized Rope._Node.formSuccessor(of:)(&v293, v172);
        v180 = v286;
        if (v181)
        {
          swift_unknownObjectRelease();
          v281 = v294;
        }

        else
        {
          v182 = specialized Rope._endPath.getter(v172);
          swift_unknownObjectRelease();
          v293 = v133;
          v294 = v182;
          v281 = v182;
          v295 = 0;
        }
      }

      v183 = v293;
      v283 = v295;
      v272 = type metadata accessor for AttributedString.Runs();
      v184 = *(v272 + 24);
      v185 = v288;
      v186 = v292;
      v282 = v183;
      if (v275)
      {
        (*v245)(v104, v289 + v184, v288);
        if (v180 == 2)
        {
          v187 = v269;
        }

        else
        {
          v187 = v171;
        }

        RangeSet.ranges.getter();
        v188 = RangeSet.Ranges.count.getter();
        result = (v290)(v7, v186);
        if (v188 >= 1)
        {
          v189 = 0;
          v190 = v187 >> 10;
          while (!__OFADD__(v189, v188))
          {
            v191 = (v189 + v188) / 2;
            RangeSet.ranges.getter();
            v192 = v292;
            RangeSet.Ranges.subscript.getter();
            result = (v290)(v7, v192);
            if (v190 < v293 >> 10)
            {
              v188 = (v189 + v188) / 2;
              if (v189 >= v191)
              {
                goto LABEL_253;
              }
            }

            else
            {
              v287 = (v189 + v188) / 2;
              v193 = v297;
              if (v190 < v297 >> 10)
              {
                result = (*v244)(v104, v185);
                v186 = v292;
                v37 = v289;
                v194 = v290;
                goto LABEL_232;
              }

              v189 = v287 + 1;
              if (v287 + 1 >= v188)
              {
                goto LABEL_253;
              }
            }
          }

LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
          break;
        }

LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      v37 = v289;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      v194 = v290;
      result = (v290)(v7, v186);
      v193 = v297;
LABEL_232:
      if (v284 < (v193 >> 11))
      {
        if (v273)
        {
          v195 = *v270;
          v196 = v270[2];
          v309 = v270[1];
          v310 = v196;
          v305 = *(v285 + 24);
          v197 = *(v285 + 56);
          v306 = *(v285 + 40);
          v307 = v197;
          v308 = v195;
          BigString.startIndex.getter();
          v336[0] = v308;
          v336[1] = v309;
          v337 = v310;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v336, &v293);
          v27 = BigString.UTF8View.index(_:offsetBy:)();
          v199 = v198;
          v30 = v200;
          v202 = v201;
          outlined destroy of BigString(&v308);
          v203 = v272;
        }

        else
        {
          v218 = *(v285 + 40);
          v302 = *(v285 + 24);
          v303 = v218;
          v304 = *(v285 + 56);
          v203 = v272;
          if (__OFSUB__(v284, v274))
          {
            goto LABEL_288;
          }

          swift_unknownObjectRetain();
          v27 = BigString.UTF8View.index(_:offsetBy:)();
          v199 = v219;
          v30 = v220;
          v202 = v221;
          swift_unknownObjectRelease();
        }

        v275 = 0;
        v37 = v289;
        v222 = *(v289 + *(v203 + 28));
        LOBYTE(v293) = 0;
        v223 = v249;
        v43 = v278;
        v224 = v281;
        v44 = v282;
        *v249 = v278;
        *(v223 + 1) = v44;
        v25 = v283;
        *(v223 + 2) = v224;
        *(v223 + 3) = v25;
        *(v223 + 4) = v27;
        *(v223 + 5) = v199;
        *(v223 + 6) = v30;
        *(v223 + 7) = v202;
        *(v223 + 8) = v27;
        *(v223 + 9) = v199;
        *(v223 + 10) = v30;
        *(v223 + 11) = v202;
        *(v223 + 12) = v287;
        v223[104] = 0;
        v223[105] = v222;
        v279 = v27;
        v280 = v202;
        v270 = v199;
        v276 = v30;
        v277 = v199;
        v286 = v202;
        goto LABEL_242;
      }

      v204 = v287 + 1;
      if (__OFADD__(v287, 1))
      {
        goto LABEL_282;
      }

      RangeSet.ranges.getter();
      v205 = RangeSet.Ranges.count.getter();
      v194(v7, v186);
      if (v204 != v205)
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        v194(v7, v186);
        v225 = v294;
        v284 = v293;
        v226 = v295;
        v227 = v296;
        AttributedString.Guts.findRun(at:)(v293, v296, &v293);
        v275 = 0;
        v44 = v293;
        v228 = v294;
        v25 = v295;
        v43 = v296;
        v229 = v298;
        v230 = v299;
        v231 = v249;
        v249[105] = *(v37 + *(v272 + 28));
        v232 = v300;
        v233 = v301;
        LOBYTE(v293) = 0;
        *v231 = v43;
        *(v231 + 1) = v44;
        v280 = v233;
        v281 = v228;
        *(v231 + 2) = v228;
        *(v231 + 3) = v25;
        v279 = v229;
        *(v231 + 4) = v229;
        *(v231 + 5) = v230;
        v276 = v232;
        v277 = v230;
        *(v231 + 6) = v232;
        *(v231 + 7) = v233;
        v234 = v284;
        *(v231 + 8) = v284;
        *(v231 + 9) = v225;
        v270 = v225;
        *(v231 + 10) = v226;
        *(v231 + 11) = v227;
        v286 = v227;
        v287 = v204;
        v30 = v226;
        *(v231 + 12) = v204;
        v27 = v234;
        v231[104] = 0;
LABEL_242:
        v217 = v271;
        v36 = v253;
        v42 = v254;
        goto LABEL_243;
      }

      v43 = *(v37 + 120);
      v44 = *(v37 + 128);
      v206 = *(v37 + 136);
      v25 = *(v37 + 144);
      v207 = *(v37 + 152);
      v208 = *(v37 + 160);
      v209 = *(v37 + 168);
      v210 = *(v37 + 176);
      v27 = *(v37 + 184);
      v211 = *(v37 + 192);
      v30 = *(v37 + 200);
      v212 = *(v37 + 208);
      v213 = *(v37 + 216);
      v214 = *(v37 + 225);
      v215 = *(v37 + 224);
      v216 = v249;
      *v249 = v43;
      *(v216 + 1) = v44;
      v280 = v210;
      v281 = v206;
      *(v216 + 2) = v206;
      *(v216 + 3) = v25;
      v279 = v207;
      *(v216 + 4) = v207;
      *(v216 + 5) = v208;
      v276 = v209;
      v277 = v208;
      *(v216 + 6) = v209;
      *(v216 + 7) = v210;
      *(v216 + 8) = v27;
      *(v216 + 9) = v211;
      v270 = v211;
      *(v216 + 10) = v30;
      *(v216 + 11) = v212;
      v286 = v212;
      v287 = v213;
      *(v216 + 12) = v213;
      v216[105] = v214;
      v248 = v27;
      v250 = v212;
      v42 = v43;
      v275 = v215;
      v216[104] = v215;
      v217 = v271;
      v36 = v253;
LABEL_243:
      v236 = v256;
      v235 = v257;
      v238 = v267;
      v237 = v268;
      v240 = v265;
      v239 = v266;
      v241 = v264;
      result = v259;
      *v217 = v261;
      v217[1] = v235;
      v217[2] = v237;
      v217[3] = v238;
      v217[4] = v239;
      v217[5] = v236;
      v217[6] = v255;
      v217[7] = v240;
      v217[8] = v241;
      v217[9] = result;
      v217[10] = v285;
      if (v260 == v36)
      {
        goto LABEL_249;
      }

      v29 = v217 + 11;
      v36 = v260;
      v41 = v260 + 1;
      if (__OFADD__(v260, 1))
      {
        __break(1u);
        goto LABEL_247;
      }
    }
  }

  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
  return result;
}