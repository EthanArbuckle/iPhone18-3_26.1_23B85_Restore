uint64_t specialized static _SymbolEffect.Added.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v28 = v5;
  v29 = v4;
  v30 = v2;
  v31 = v3;
  v8 = *(a2 + 48);
  v9 = *(a1 + 48);
  v10 = *(a2 + 44);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 16);
  v14 = *(a1 + 44);
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a2 + 40);
  v24 = *(a1 + 16);
  v25 = v16;
  v26 = v15;
  v27 = v17;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v18;
  outlined copy of _SymbolEffect.Storage(v24, v16, v15, v17);
  outlined copy of _SymbolEffect.Storage(v13, v12, v11, v18);
  v19 = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v24, &v20);
  outlined consume of _SymbolEffect.Storage(v20, v21, v22, v23);
  outlined consume of _SymbolEffect.Storage(v24, v25, v26, v27);
  if (v9 == v8)
  {
    return v19 & (v14 == v10);
  }

  else
  {
    return 0;
  }
}

BOOL specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = specialized static PlaybackMode.== infix(_:_:)(&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 == v5;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 == v5;
}

uint64_t specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    v20 = *(a2 + 16);
    v14 = *(a1 + 16);
    v15 = *(a2 + 20);
    v16 = *(a1 + 20);
    v17 = *(a2 + 24);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    if ((~v8 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      v12 = v17;
      v5 = v16;
      v11 = v15;
      v4 = v14;
      v10 = v20;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v22 = *a1;
  if ((~v8 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v8);
    return 0;
  }

  v21 = v8;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v19 = specialized static PlaybackMode.== infix(_:_:)(&v22, &v21);
  outlined consume of _SymbolEffect.Trigger(v21);
  outlined consume of _SymbolEffect.Trigger(v22);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = 0;
  if (v4)
  {
    if (!v10)
    {
      return result;
    }
  }

  else if ((v10 & 1) != 0 || v3 != v9)
  {
    return result;
  }

  if (v5 == v11 && ((v6 ^ v12) & 1) == 0)
  {
    return v7 ^ v13 ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(*a1);
    outlined copy of _SymbolEffect.Trigger?(v5);
    if ((~v5 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v3 == v6)
      {
        return v4 ^ v7 ^ 1u;
      }

      return 0;
    }

LABEL_7:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v5);
    return 0;
  }

  v11 = *a1;
  if ((~v5 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v5);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
    goto LABEL_7;
  }

  v10 = v5;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v5);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v9 = specialized static PlaybackMode.== infix(_:_:)(&v11, &v10);
  outlined consume of _SymbolEffect.Trigger(v10);
  outlined consume of _SymbolEffect.Trigger(v11);
  outlined consume of _SymbolEffect.Trigger?(v2);
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = specialized static PlaybackMode.== infix(_:_:)(&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 ^ v5 ^ 1u;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 ^ v5 ^ 1u;
}

uint64_t specialized static _SymbolEffect.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v24[0] = *a1;
  v24[1] = v3;
  v24[2] = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v10 = v5 >> 12;
  v29 = v9;
  if (v5 >> 12 <= 3)
  {
    if (v5 >> 12 > 1)
    {
      if (v10 != 2)
      {
        if ((v9 & 0xF000) == 0x3000)
        {
          v19 = v2;
          v20 = v3;
          v21 = v4 & 1;
          v22 = HIDWORD(v4);
          v23 = v5 & 0x101;
          v14 = v6;
          v15 = v7;
          v16 = v8 & 1;
          v17 = HIDWORD(v8);
          v18 = v9 & 0x101;
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          v11 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v19, &v14);
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if ((v9 & 0xF000) != 0x2000)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!v10)
      {
        if (v9 < 0x1000)
        {
          v19 = v2;
          LOBYTE(v20) = v3 & 1;
          v14 = v6;
          LOBYTE(v15) = v7 & 1;
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          v11 = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v19, &v14);
LABEL_36:
          v12 = v11;
          outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
          outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
          return v12 & 1;
        }

        goto LABEL_37;
      }

      if ((v9 & 0xF000) != 0x1000)
      {
        goto LABEL_37;
      }
    }

LABEL_27:
    v19 = v2;
    LODWORD(v20) = v3;
    BYTE4(v20) = BYTE4(v3) & 1;
    v14 = v6;
    LODWORD(v15) = v7;
    BYTE4(v15) = BYTE4(v7) & 1;
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    v11 = specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)(&v19, &v14);
    goto LABEL_36;
  }

  if (v5 >> 12 <= 5)
  {
    if (v10 == 4)
    {
      if ((v9 & 0xF000) != 0x4000)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    if ((v9 & 0xF000) == 0x5000)
    {
      v19 = v2;
      LODWORD(v20) = v3;
      v14 = v6;
      LODWORD(v15) = v7;
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      v11 = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v19, &v14);
      goto LABEL_36;
    }

LABEL_37:
    outlined copy of _SymbolEffect.Trigger?(v2);
    goto LABEL_38;
  }

  if (v10 == 6)
  {
    if ((v9 & 0xF000) != 0x6000)
    {
      goto LABEL_38;
    }

    outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
    if (v2 == v6)
    {
      v12 = BYTE4(v2) & 1 ^ ((v6 & 0x100000000) == 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (v10 == 7)
    {
      if ((v9 & 0xF000) == 0x7000)
      {
        outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
        if ((v2 & 0x100000000) != 0)
        {
          if ((v6 & 0x100000000) == 0 || v2 != v6 || ((v2 >> 40) & 1) != ((v6 >> 40) & 1) || (HIWORD(v2) & 1) != (HIWORD(v6) & 1))
          {
            goto LABEL_39;
          }
        }

        else if ((v6 & 0x100000000) != 0 || v2 != v6 || ((v2 >> 40) & 1) != ((v6 >> 40) & 1) || (HIWORD(v2) & 1) != (HIWORD(v6) & 1))
        {
          goto LABEL_39;
        }

        v12 = 1;
        return v12 & 1;
      }

LABEL_38:
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
LABEL_39:
      v12 = 0;
      return v12 & 1;
    }

    if ((v9 & 0xF000) != 0x8000 || v7 | v6 | v8 || v9 != 0x8000)
    {
      goto LABEL_38;
    }

    outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t outlined copy of _SymbolEffect.Trigger?(uint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return outlined copy of _SymbolEffect.Trigger(result);
  }

  return result;
}

uint64_t outlined copy of _SymbolEffect.Storage(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined copy of _SymbolEffect.Trigger?(result);
  }

  return result;
}

uint64_t specialized static _SymbolEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 28);
  v12 = *(a2 + 32);
  v14 = *(a2 + 36);
  v15 = *(a2 + 40);
  v16 = *(a2 + 44);
  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v17;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v18;
  outlined copy of _SymbolEffect.Storage(v26, v2, v3, v17);
  outlined copy of _SymbolEffect.Storage(v9, v10, v11, v18);
  LOBYTE(v9) = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v26, &v22);
  outlined consume of _SymbolEffect.Storage(v22, v23, v24, v25);
  outlined consume of _SymbolEffect.Storage(v26, v27, v28, v29);
  result = 0;
  if ((v9 & 1) != 0 && v5 == v13)
  {
    if (v6)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v12)
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v21 = v16;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t outlined init with copy of _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  outlined copy of _SymbolEffect.Storage(*a1, v5, v6, v7);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(a1 + 28);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 28) = v8;
  return a2;
}

uint64_t specialized static _SymbolEffect.Identified.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 2);
  v20 = *(a1 + 1);
  v21[0] = v5;
  *(v21 + 13) = *(a1 + 45);
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 2);
  v22 = *(a2 + 1);
  v23[0] = v8;
  *(v23 + 13) = *(a2 + 45);
  if (v4 == v7 && v3 == v6)
  {
    v9 = *(a1 + 2);
    v14 = *(a1 + 1);
    v15[0] = v9;
    *(v15 + 13) = *(a1 + 45);
    v10 = *(a2 + 2);
    v12 = *(a2 + 1);
    v13[0] = v10;
    *(v13 + 13) = *(a2 + 45);
    outlined init with copy of _SymbolEffect(&v20, &v18);
    outlined init with copy of _SymbolEffect(&v22, &v18);
    v2 = specialized static _SymbolEffect.== infix(_:_:)(&v14, &v12);
    v16 = v12;
    v17[0] = v13[0];
    *(v17 + 13) = *(v13 + 13);
    outlined destroy of _SymbolEffect(&v16);
    v18 = v14;
    v19[0] = v15[0];
    *(v19 + 13) = *(v15 + 13);
    outlined destroy of _SymbolEffect(&v18);
  }

  return v2 & 1;
}

uint64_t outlined consume of _SymbolEffect.Storage?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((~a3 & 0xFFFFFFFE) != 0 || (a4 & 0xFEFE) != 2)
  {
    return outlined consume of _SymbolEffect.Storage(result, a2, a3, a4);
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 28) = *(a2 + 28);
  v12 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v12;
  v13 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v13;
  return a1;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 2;
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of _SymbolEffect.Storage(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Storage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 2;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _SymbolEffect.Storage(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 12;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t destructiveInjectEnumTag for _SymbolEffect.Storage(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    v2 = *(result + 24) & 0x101 | (a2 << 12);
    *(result + 16) &= 0xFFFFFFFF00000001;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 8;
    *(result + 24) = 0x8000;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.PulseConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.PulseConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.PulseConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.WiggleConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  v5 = *(a2 + 8);
  *result = v3;
  *(result + 8) = v5;
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.WiggleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  v7 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v7;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.WiggleConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  result[1] = a2[1];
  *(result + 16) = *(a2 + 16);
  *(result + 5) = *(a2 + 5);
  *(result + 24) = *(a2 + 24);
  *(result + 25) = *(a2 + 25);
  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.WiggleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.WiggleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.BreatheConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.BreatheConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.BreatheConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 2) = *(a2 + 2);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.VariableColorConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.VariableColorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.VariableColorConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 2) = *(a2 + 2);
  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.VariableColorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 12))
  {
    return (*a1 + 62);
  }

  v3 = *a1 >> 58;
  v4 = *a1 & 6 | (8 * ((v3 >> 2) & 7));
  v5 = 62 - (v4 | (v3 >> 5));
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.VariableColorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      v3 = (32 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 1);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.ScaleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.ScaleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.HiddenConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for _SymbolEffect.HiddenConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.ReplaceConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.ReplaceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v11 = *(a1 + 40);
  *(a1 + 40) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 44) = *(a2 + 44);
  v12 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v12;
  v13 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v13;
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v4;
  v10 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Identified(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Identified(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-2 * a2);
      *(result + 40) = 2;
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Phase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 39) = *(a2 + 39);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 61) = *(a2 + 61);

  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Phase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = v4;
  v5 = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = v5;
  v6 = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 36) = v6;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  v7 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v7;
  v8 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v8;
  *(a1 + 61) = *(a2 + 61);
  return a1;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for _SymbolEffect.Phase(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Phase(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
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

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Phase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v11 = *(a1 + 40);
  *(a1 + 40) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v4;
  v10 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Added(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Added(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-2 * a2);
      *(result + 40) = 2;
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for RBAnimation()
{
  result = lazy cache variable for type metadata for RBAnimation;
  if (!lazy cache variable for type metadata for RBAnimation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBAnimation);
  }

  return result;
}

uint64_t outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(uint64_t a1)
{
  type metadata accessor for (_SymbolEffect.Storage, _SymbolEffect.Storage)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (_SymbolEffect.Storage, _SymbolEffect.Storage)()
{
  if (!lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
    }
  }
}

__n128 RepresentableContextValues.init(preferenceBridge:transaction:environmentStorage:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

uint64_t RepresentableContextValues.preferenceBridge.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RepresentableContextValues.transaction.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RepresentableContextValues.environmentStorage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of RepresentableContextValues.EnvironmentStorage(v2, v3, v4);
}

uint64_t RepresentableContextValues.environmentStorage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of RepresentableContextValues.EnvironmentStorage(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t static RepresentableContextValues.current.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static RepresentableContextValues.current;
  v4 = qword_1ED527ED0;
  v5 = qword_1ED527ED8;
  v6 = *(a1 + 16);
  static RepresentableContextValues.current = *a1;
  *&qword_1ED527ED0 = v6;
  v7 = byte_1ED527EE0;
  byte_1ED527EE0 = v2;
  return outlined consume of RepresentableContextValues?(v3, *(&v3 + 1), v4, v5, v7);
}

uint64_t key path getter for static RepresentableContextValues.current : RepresentableContextValues.Type@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  v3 = qword_1ED527ED0;
  v4 = qword_1ED527ED8;
  *a1 = static RepresentableContextValues.current;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_1ED527EE0;
  *(a1 + 32) = byte_1ED527EE0;
  return outlined copy of RepresentableContextValues?(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t key path setter for static RepresentableContextValues.current : RepresentableContextValues.Type(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  v6 = *(&static RepresentableContextValues.current + 1);
  v11 = static RepresentableContextValues.current;
  v7 = qword_1ED527ED0;
  v8 = qword_1ED527ED8;
  *&static RepresentableContextValues.current = v1;
  *(&static RepresentableContextValues.current + 1) = v2;
  qword_1ED527ED0 = v3;
  qword_1ED527ED8 = v4;
  v9 = byte_1ED527EE0;
  byte_1ED527EE0 = v5;
  outlined copy of RepresentableContextValues?(v1, v2, v3, v4, v5);
  return outlined consume of RepresentableContextValues?(v11, v6, v7, v8, v9);
}

uint64_t destroy for RepresentableContextValues(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  return outlined consume of RepresentableContextValues.EnvironmentStorage(v2, v3, v4);
}

uint64_t initializeWithCopy for RepresentableContextValues(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t assignWithCopy for RepresentableContextValues(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;

  *(a1 + 8) = v2[1];

  v4 = v2[2];
  v5 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v2;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RepresentableContextValues(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for RepresentableContextValues(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for RepresentableContextValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of RepresentableContextValues.EnvironmentStorage(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of RepresentableContextValues.EnvironmentStorage(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  return a1;
}

void NSDateFormatter.configure(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v12);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v15)
    {
      (*(v10 + 16))(v12, &v15[*(*v15 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v12, v16, v9);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);
  v18 = v23;
  [v23 setLocale_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v8);
  }

  v19 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v18 setCalendar_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v4);
  }

  v20 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v21 + 8))(v4, v22);
  [v18 setTimeZone_];
}

void protocol witness for EnvironmentConfigurableFormatter.configure(in:) in conformance NSISO8601DateFormatter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v11[-v7];
  v9 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, &v11[-v7]);
  }

  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setTimeZone_];
}

void protocol witness for EnvironmentConfigurableFormatter.configure(in:) in conformance NSDateComponentsFormatter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v11[-v7];
  v9 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, &v11[-v7]);
  }

  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setCalendar_];
}

void NSDateIntervalFormatter.configure(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v12);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*a1, &v22 - v11);
  }

  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v16 = v26;
  [v26 setCalendar_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v7);

    v17 = v23;
  }

  else
  {
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v13);
    v17 = v23;
    if (v18)
    {
      (*(v5 + 16))(v7, &v18[*(*v18 + 248)], v23);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v17, static LocaleKey.defaultValue);
      (*(v5 + 16))(v7, v19, v17);
    }
  }

  v20 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v17);
  [v16 setLocale_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v4);
  }

  v21 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v24 + 8))(v4, v25);
  [v16 setTimeZone_];
}

void NSNumberFormatter.configure(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v8, v7);
  }

  else
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v8);
    if (v9)
    {
      (*(v5 + 16))(v7, &v9[*(*v9 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v7, v10, v4);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v2 setLocale_];
}

void NSMeasurementFormatter.configure(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v12 = *a1;
  v11 = *(a1 + 8);
  if (v11)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v10);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v13)
    {
      (*(v5 + 16))(v10, &v13[*(*v13 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v10, v14, v4);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  v16 = *(v5 + 8);
  v16(v10, v4);
  [v2 setLocale_];

  v17 = [v2 numberFormatter];
  if (v17)
  {
    v18 = v17;
    if (v11)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v7);
    }

    else
    {
      v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
      if (v19)
      {
        (*(v5 + 16))(v7, &v19[*(*v19 + 248)], v4);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v20 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
        (*(v5 + 16))(v7, v20, v4);
      }
    }

    v21 = Locale._bridgeToObjectiveC()().super.isa;
    v16(v7, v4);
    [v18 setLocale_];
  }

  else
  {
    __break(1u);
  }
}

void NSMassFormatter.configure(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = [v2 numberFormatter];
  if (v11)
  {
    v12 = v11;
    if (v9)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, v8);
    }

    else
    {
      v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
      if (v13)
      {
        (*(v5 + 16))(v8, &v13[*(*v13 + 248)], v4);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
        (*(v5 + 16))(v8, v14, v4);
      }
    }

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v8, v4);
    [v12 setLocale_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer@<X0>(unint64_t *a1@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18DDAB4C0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDC5680;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0x3FF0000000000000;
  *(v1 + 32) = v2 | 0x5000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1065353216;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 76) = 0x7F8000003F800000;
  type metadata accessor for _ContiguousArrayStorage<SIMD4<Float>>();
  v3 = swift_allocObject();
  v3[1] = xmmword_18DDAF080;
  v3[2] = xmmword_18DDC5690;
  if (one-time initialization token for linear != -1)
  {
    swift_once();
  }

  v4 = static SIMD4<>.linear;
  v3[3] = static SIMD4<>.linear;
  v3[4] = v4;
  v87 = v4;
  v123 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5, 0);
  v5 = v123;
  v7 = *(v123 + 16);
  v6 = *(v123 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
    v5 = v123;
    v6 = *(v123 + 24);
    v8 = v6 >> 1;
  }

  *(v5 + 16) = v9;
  v10 = v5 + 20 * v7;
  *(v10 + 32) = xmmword_18DDC56A0;
  *(v10 + 48) = 2143289344;
  v11 = v7 + 2;
  if (v8 <= v9)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v11, 1);
    v5 = v123;
  }

  *(v5 + 16) = v11;
  v12 = v5 + 20 * v9;
  *(v12 + 32) = xmmword_18DDC56B0;
  *(v12 + 48) = 2143289344;
  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
  }

  v16 = v123;
  *(v123 + 16) = v15;
  v17 = v16 + 20 * v14;
  *(v17 + 32) = xmmword_18DDC56C0;
  *(v17 + 48) = 2143289344;
  v18 = *(v16 + 24);
  v19 = v14 + 2;
  if (v15 >= v18 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19, 1);
    v16 = v123;
  }

  *(v16 + 16) = v19;
  v20 = v16 + 20 * v15;
  __asm { FMOV            V0.4S, #1.0 }

  v91 = _Q0;
  *(v20 + 32) = _Q0;
  *(v20 + 48) = 2143289344;
  v27 = *(v16 + 16);
  v26 = *(v16 + 24);
  if (v27 >= v26 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    v16 = v123;
  }

  v28 = swift_allocObject();
  *(v16 + 16) = v27 + 1;
  v29 = v16 + 20 * v27;
  *(v29 + 32) = v91;
  *(v29 + 48) = 2143289344;
  *(v28 + 16) = v16;
  *(v28 + 24) = &outlined read-only object #1 of closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer;
  *(v28 + 32) = v3;
  *(v1 + 88) = v28 | 0x2000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1065353216;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 132) = 0x7F8000003F800000;
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.Filter>);
  v30 = swift_allocObject();
  v30[1] = xmmword_18DDAB4C0;
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  v106 = 0x80000000;
  outlined destroy of VariableBlurStyle.Mask(v104);
  *&v109 = 0x4050800000000000;
  WORD4(v109) = 1;
  *(&v109 + 10) = v107;
  HIWORD(v109) = v108;
  v110 = xmmword_18DD85500;
  *(&v112 + 1) = 0;
  *&v114 = 0;
  *&v115[24] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v109);
  v31 = v114;
  v30[6] = v113;
  v30[7] = v31;
  v30[8] = *v115;
  *(v30 + 140) = *&v115[12];
  v32 = v110;
  v30[2] = v109;
  v30[3] = v32;
  v33 = v112;
  v30[4] = v111;
  v30[5] = v33;
  *(&v120 + 1) = 0;
  *&v119 = 0;
  *&v117 = 0;
  v116 = 0x4040800000000000uLL;
  *&v122[16] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi1_(&v116);
  v34 = v121;
  v30[14] = v120;
  v30[15] = v34;
  v30[16] = *v122;
  *(v30 + 268) = *&v122[12];
  v35 = v117;
  v30[10] = v116;
  v30[11] = v35;
  v36 = v119;
  v30[12] = v118;
  v30[13] = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_18DDC56D0;
  *(v37 + 32) = 0x80;
  *(v37 + 40) = v1;
  *(v37 + 48) = v30;
  v90 = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 36) = 0x7FC000003DCCCCCDLL;
  *(v38 + 48) = xmmword_18DDC56E0;
  *(v38 + 64) = 0x400A666666666666;
  *(v38 + 72) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_18DDA6EB0;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_18DDC56F0;
  *(v40 + 40) = 0;
  *(v40 + 48) = 0;
  *(v40 + 32) = 0x3FF0000000000000;
  *(v39 + 32) = v40 | 0x5000000000000000;
  *(v39 + 40) = 0;
  *(v39 + 48) = 1065353216;
  *(v39 + 56) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 76) = 0x7F8000003F800000;
  v41 = swift_allocObject();
  v41[1] = xmmword_18DDAF080;
  *(&v97 + 1) = 0;
  *&v96 = 0;
  *&v94 = 0;
  v93 = 0x4060A00000000000uLL;
  *&v99[16] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi1_(&v93);
  v42 = v98;
  v41[6] = v97;
  v41[7] = v42;
  v41[8] = *v99;
  *(v41 + 140) = *&v99[12];
  v43 = v94;
  v41[2] = v93;
  v41[3] = v43;
  v44 = v96;
  v41[4] = v95;
  v41[5] = v44;
  *&v100[0] = 0x4040800000000000;
  WORD4(v100[0]) = 0;
  _s7SwiftUI14GraphicsFilterOWOi_(v100);
  v45 = v100[5];
  v41[14] = v100[4];
  v41[15] = v45;
  v41[16] = *v101;
  *(v41 + 268) = *&v101[12];
  v46 = v100[1];
  v41[10] = v100[0];
  v41[11] = v46;
  v47 = v100[3];
  v41[12] = v100[2];
  v41[13] = v47;
  *&v102[0] = 0x4008000000000000;
  _s7SwiftUI14GraphicsFilterOWOi9_(v102);
  v48 = v102[5];
  v41[22] = v102[4];
  v41[23] = v48;
  v41[24] = v103[0];
  *(v41 + 396) = *(v103 + 12);
  v49 = v102[1];
  v41[18] = v102[0];
  v41[19] = v49;
  v50 = v102[3];
  v41[20] = v102[2];
  v41[21] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_18DDC56D0;
  *(v51 + 32) = 0x80;
  *(v51 + 40) = v39;
  *(v51 + 48) = v41;
  v52 = swift_allocObject();
  v52[1] = xmmword_18DDAF080;
  v52[2] = xmmword_18DDC5700;
  v52[3] = v87;
  v52[4] = v87;
  v53 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v54 = v92;
  v56 = *(v92 + 16);
  v55 = *(v92 + 24);
  v57 = v55 >> 1;
  v58 = v56 + 1;
  if (v55 >> 1 <= v56)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
    v54 = v92;
    v55 = *(v92 + 24);
    v57 = v55 >> 1;
  }

  *(v54 + 16) = v58;
  v59 = v54 + 20 * v56;
  *(v59 + 32) = xmmword_18DDC5710;
  *(v59 + 48) = 2143289344;
  v60 = v56 + 2;
  v61 = v91;
  if (v57 <= v58)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v60, 1);
    v61 = v91;
    v54 = v92;
  }

  *(v54 + 16) = v60;
  v62 = v54 + 20 * v58;
  *(v62 + 32) = v61;
  *(v62 + 48) = 2143289344;
  v64 = *(v54 + 16);
  v63 = *(v54 + 24);
  if (v64 >= v63 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
  }

  v65 = swift_allocObject();
  *(v92 + 16) = v64 + 1;
  v66 = v92 + 20 * v64;
  *(v66 + 32) = v91;
  *(v66 + 48) = 2143289344;
  *(v65 + 16) = v92;
  *(v65 + 24) = &outlined read-only object #3 of closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer;
  *(v65 + 32) = v52;
  v67 = v65 | 0x2000000000000000;
  v68 = swift_allocObject();
  *(v68 + 16) = v51 | 0x8000000000000000;
  *(v68 + 24) = v67;
  v88 = v68 | 0x9000000000000000;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_18DDA6EB0;
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = v91;
  *(v70 + 40) = 2143289344;
  v71 = swift_allocObject();
  if (one-time initialization token for faceEffectMatrix != -1)
  {
    v85 = v71;
    swift_once();
    v71 = v85;
  }

  v72 = unk_1EAB1C920;
  *(v71 + 48) = xmmword_1EAB1C910;
  *(v71 + 64) = v72;
  *(v71 + 80) = xmmword_1EAB1C930;
  v73 = unk_1EAB1C900;
  *(v71 + 16) = static _ColorMatrix.faceEffectMatrix;
  *(v71 + 32) = v73;
  *(v69 + 32) = v70;
  *(v69 + 40) = v71 | 0x4000000000000000;
  *(v69 + 48) = 1065353216;
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  *(v69 + 72) = 0;
  *(v69 + 76) = 0x7F8000003F800000;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = 0x80;
  v86 = v74 | 0x8000000000000000;
  *(v74 + 40) = v69;
  *(v74 + 48) = v53;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_18DDC5720;
  *(v75 + 32) = v91;
  *(v75 + 48) = 2143289344;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = xmmword_18DDC5730;
  *(v76 + 40) = 2143289344;
  *(v76 + 48) = xmmword_18DDC5740;
  *(v76 + 64) = xmmword_18DDC5750;
  *(v76 + 80) = 0x3FB999999999999ALL;
  *(v76 + 88) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v77 + 24) = xmmword_18DDC5760;
  *(v77 + 40) = 2143289344;
  *(v77 + 48) = xmmword_18DDC5770;
  *(v77 + 64) = xmmword_18DDC5780;
  *(v77 + 80) = 0x3FD0000000000000;
  *(v77 + 88) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_18DDACAA0;
  *(v78 + 32) = v90 | 0x8000000000000000;
  *(v78 + 40) = 0;
  *(v78 + 48) = 1065353216;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 0;
  *(v78 + 76) = 0x7F8000003F800000;
  *(v78 + 88) = v38 | 0x3000000000000000;
  *(v78 + 96) = 0;
  *(v78 + 104) = 1065353216;
  *(v78 + 112) = 0;
  *(v78 + 120) = 0;
  *(v78 + 128) = 0;
  *(v78 + 132) = 0x7F8000003F800000;
  *(v78 + 144) = v88;
  *(v78 + 152) = 0;
  *(v78 + 160) = 1051931443;
  *(v78 + 168) = 0;
  *(v78 + 176) = 0;
  *(v78 + 184) = 0;
  *(v78 + 188) = 0x7F8000003F800000;
  *(v78 + 200) = v86;
  *(v78 + 208) = 0;
  *(v78 + 216) = 1065353216;
  *(v78 + 240) = 0;
  *(v78 + 224) = 0;
  *(v78 + 232) = 0;
  *(v78 + 244) = 0x7F8000003F800000;
  v79 = swift_allocObject();
  v80 = one-time initialization token for thinSolidEdgeMatrix;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = unk_1EAB1C970;
  *(v79 + 48) = xmmword_1EAB1C960;
  *(v79 + 64) = v81;
  *(v79 + 80) = xmmword_1EAB1C980;
  v82 = *algn_1EAB1C950;
  *(v79 + 16) = static _ColorMatrix.thinSolidEdgeMatrix;
  *(v79 + 32) = v82;
  *(v78 + 256) = v75 | 0x1000000000000000;
  *(v78 + 264) = v79 | 0x4000000000000000;
  *(v78 + 272) = 1065353216;
  *(v78 + 280) = 0;
  *(v78 + 288) = 0;
  *(v78 + 296) = 0;
  *(v78 + 300) = 0x7F8000003F800000;
  *(v78 + 312) = v76 | 0x6000000000000000;
  *(v78 + 320) = 0;
  *(v78 + 328) = 1065353216;
  *(v78 + 336) = 0;
  *(v78 + 344) = 0;
  *(v78 + 352) = 0;
  *(v78 + 356) = 0x7F8000003F800000;
  *(v78 + 368) = v77 | 0x6000000000000000;
  *(v78 + 376) = 0;
  *(v78 + 384) = 1065353216;
  *(v78 + 408) = 0;
  *(v78 + 392) = 0;
  *(v78 + 400) = 0;
  *(v78 + 412) = 0x7F8000003F800000;

  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  *(v83 + 32) = 0x80;
  *(v83 + 40) = v78;
  *(v83 + 48) = MEMORY[0x1E69E7CC0];
  *a1 = v83 | 0x8000000000000000;
  a1[1] = 0;
}

uint64_t ExperimentalGlassMaterialProvider.resolveLayers(in:)()
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  if (one-time initialization token for sdfLayer != -1)
  {
    swift_once();
  }

  v1 = static ExperimentalGlassMaterialProvider.sdfLayer;
  v2 = unk_1EABBFCC0;
  *(v0 + 68) = 1065353216;
  v3 = one-time initialization token for normal;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static GraphicsBlendMode.normal;
  v5 = byte_1ED52F818;
  *(v0 + 72) = static GraphicsBlendMode.normal;
  *(v0 + 80) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  outlined copy of GraphicsBlendMode(v4, v5);
  return v0;
}

uint64_t protocol witness for MaterialProvider.resolveLayers(in:) in conformance ExperimentalGlassMaterialProvider()
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  if (one-time initialization token for sdfLayer != -1)
  {
    swift_once();
  }

  v1 = static ExperimentalGlassMaterialProvider.sdfLayer;
  v2 = unk_1EABBFCC0;
  *(v0 + 68) = 1065353216;
  v3 = one-time initialization token for normal;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static GraphicsBlendMode.normal;
  v5 = byte_1ED52F818;
  *(v0 + 72) = static GraphicsBlendMode.normal;
  *(v0 + 80) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  outlined copy of GraphicsBlendMode(v4, v5);
  return v0;
}

uint64_t static Material.experimentalGlassMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(0, &lazy cache variable for type metadata for MaterialProviderBox<ExperimentalGlassMaterialProvider>, lazy protocol witness table accessor for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider, &type metadata for ExperimentalGlassMaterialProvider, type metadata accessor for MaterialProviderBox);
  result = swift_allocObject();
  *a1 = result;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  return result;
}

double one-time initialization function for faceEffectMatrix()
{
  static _ColorMatrix.faceEffectMatrix = xmmword_18DDC5790;
  unk_1EAB1C900 = xmmword_18DDC57A0;
  xmmword_1EAB1C910 = xmmword_18DDC57B0;
  unk_1EAB1C920 = xmmword_18DDC57C0;
  result = 0.0;
  xmmword_1EAB1C930 = xmmword_18DDC57D0;
  return result;
}

double one-time initialization function for thinSolidEdgeMatrix()
{
  static _ColorMatrix.thinSolidEdgeMatrix = xmmword_18DDC57E0;
  *algn_1EAB1C950 = xmmword_18DDC57F0;
  xmmword_1EAB1C960 = xmmword_18DDC5800;
  unk_1EAB1C970 = xmmword_18DDC5810;
  result = 0.0;
  xmmword_1EAB1C980 = xmmword_18DDC57D0;
  return result;
}

double one-time initialization function for linear()
{
  result = 0.0;
  static SIMD4<>.linear = xmmword_18DDBDEB0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider()
{
  result = lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider;
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider;
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider;
  if (!lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ExperimentalGlassMaterialProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SIMD4<Float>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD4<Float>>)
  {
    type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(255, &lazy cache variable for type metadata for SIMD4<Float>, lazy protocol witness table accessor for type Float and conformance Float, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SIMD4<Float>>);
    }
  }
}

void type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

SwiftUI::ToggleState_optional __swiftcall ToggleState.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ToggleState.debugDescription.getter()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

unint64_t lazy protocol witness table accessor for type ToggleState and conformance ToggleState()
{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToggleState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToggleState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToggleState] and conformance [A])
  {
    type metadata accessor for [ToggleState]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToggleState] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ToggleState]()
{
  if (!lazy cache variable for type metadata for [ToggleState])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ToggleState]);
    }
  }
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToggleState()
{
  v1 = 6710895;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28271;
  }
}

uint64_t AccessibilityNullableOptionSet.subscript.getter()
{
  if (dispatch thunk of SetAlgebra.contains(_:)())
  {
    return 1;
  }

  if (dispatch thunk of SetAlgebra.contains(_:)())
  {
    return 0;
  }

  return 2;
}

uint64_t AccessibilityNullableOptionSet.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a6;
  v15 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  dispatch thunk of SetAlgebra.init()();
  dispatch thunk of SetAlgebra.init()();
  v21 = *(v15 + 32);
  v21(a9, v20, a1);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = v25;
  v33 = a5;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = a10;
  v22 = type metadata accessor for AccessibilityNullableOptionSet();
  return (v21)(a9 + *(v22 + 92), v17, a1);
}

uint64_t AccessibilityNullableOptionSet.subscript.setter(unsigned __int8 a1, char *a2, uint64_t a3)
{
  LODWORD(v27) = a1;
  v5 = *(a3 + 48);
  v6 = *(a3 + 16);
  v30 = *(v5 + 16);
  v29 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v28 = (v12 + 8);
  if (v27 == 2)
  {
    dispatch thunk of SetAlgebra.remove(_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    dispatch thunk of SetAlgebra.remove(_:)();
    (*v28)(a2, AssociatedTypeWitness);
    return (v20)(v11, v8);
  }

  else
  {
    v26 = v8;
    v27 = a2;
    v22 = *(v12 + 16);
    v22(v15, a2, AssociatedTypeWitness, v17);
    dispatch thunk of SetAlgebra.insert(_:)();
    v23 = *(v12 + 8);
    v23(v19, AssociatedTypeWitness);
    if (a1)
    {
      v24 = v27;
      (v22)(v15, v27, AssociatedTypeWitness);
      dispatch thunk of SetAlgebra.insert(_:)();
      v23(v24, AssociatedTypeWitness);
      return (v23)(v19, AssociatedTypeWitness);
    }

    else
    {
      v25 = v27;
      dispatch thunk of SetAlgebra.remove(_:)();
      v23(v25, AssociatedTypeWitness);
      return (*(v9 + 8))(v11, v26);
    }
  }
}

uint64_t AccessibilityNullableOptionSet.subscript.getter(uint64_t a1, char a2)
{
  v3 = AccessibilityNullableOptionSet.subscript.getter();
  if (v3 == 2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

uint64_t AccessibilityNullableOptionSet.init(implying:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v29 = v20;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of SetAlgebra.init()();
  v21 = *(v14 + 32);
  v21(a9, v19, a2);
  v29 = a2;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = a6;
  v34 = v27;
  v35 = v28;
  v36 = a10;
  v37 = a11;
  v22 = type metadata accessor for AccessibilityNullableOptionSet();
  return (v21)(a9 + *(v22 + 92), v16, a2);
}

uint64_t AccessibilityNullableOptionSet.init(adding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v29 = v20;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 16))(v16, v19, a2);
  v21 = *(v14 + 32);
  v21(a9, v16, a2);
  v29 = a2;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = a6;
  v34 = v27;
  v35 = v28;
  v36 = a10;
  v37 = a11;
  v22 = type metadata accessor for AccessibilityNullableOptionSet();
  return (v21)(a9 + *(v22 + 92), v19, a2);
}

uint64_t AccessibilityNullableOptionSet.init(removing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  dispatch thunk of SetAlgebra.init()();
  v29 = a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = *(v15 + 32);
  v21(a9, v20, a2);
  v29 = a2;
  v30 = v24;
  v31 = v25;
  v32 = v26;
  v33 = a6;
  v34 = v27;
  v35 = v28;
  v36 = a10;
  v37 = a11;
  v22 = type metadata accessor for AccessibilityNullableOptionSet();
  return (v21)(a9 + *(v22 + 92), v17, a2);
}

uint64_t AccessibilityNullableOptionSet.init(adding:removing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a6;
  v50 = a8;
  v43 = a7;
  v39 = a5;
  v37 = a4;
  v51 = a2;
  v47 = a9;
  v48 = a12;
  v15 = *(a3 - 8);
  v46 = a11;
  v38 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v45 = &v36 - v22;
  v52 = v24;
  v40 = *(v25 + 16);
  swift_getAssociatedTypeWitness();
  v42 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v44 = v15;
  v26 = *(v15 + 16);
  v36 = v20;
  v26(v20, v23, a3);
  v26(v17, v23, a3);
  v27 = *(v15 + 32);
  v28 = v47;
  v27(v47, v20, a3);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v30 = v49;
  v29 = v50;
  v31 = v43;
  v55 = v49;
  v56 = v43;
  v57 = v50;
  v58 = a10;
  v32 = v46;
  v33 = v48;
  v59 = v46;
  v60 = v48;
  v34 = type metadata accessor for AccessibilityNullableOptionSet();
  v27(v28 + *(v34 + 92), v17, a3);
  v52 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = a3;
  v53 = v37;
  v54 = v39;
  v55 = v30;
  v56 = v31;
  v57 = v29;
  v58 = v38;
  v59 = v32;
  v60 = v33;
  type metadata accessor for AccessibilityNullableOptionSet();
  dispatch thunk of SetAlgebra.formUnion(_:)();
  return (*(v44 + 8))(v45, a3);
}

uint64_t key path getter for AccessibilityNullableOptionSet.subscript(_:) : <A>AccessibilityNullableOptionSet<A>A@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for AccessibilityNullableOptionSet();
  result = AccessibilityNullableOptionSet.subscript.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for AccessibilityNullableOptionSet.subscript(_:) : <A>AccessibilityNullableOptionSet<A>A(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 8);
  v19 = *(a3 + a4 - 72);
  v18 = *(a3 + a4 - 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v16 - v9;
  v12 = *(v11 + 16);
  v13 = *(v6 - 24);
  v16 = *(v6 - 56);
  v17 = v13;
  v12(v10, v4);
  LOBYTE(v4) = *a1;
  v20 = v19;
  v21 = v16;
  v22 = v18;
  v23 = v17;
  v24 = v7;
  v14 = type metadata accessor for AccessibilityNullableOptionSet();
  return AccessibilityNullableOptionSet.subscript.setter(v4, v10, v14);
}

void (*AccessibilityNullableOptionSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[2] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10;
  v8[3] = v10;
  v12 = *(v10 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v8[5] = v13;
  (*(v11 + 16))();
  *(v8 + 48) = AccessibilityNullableOptionSet.subscript.getter();
  return AccessibilityNullableOptionSet.subscript.modify;
}

void AccessibilityNullableOptionSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = *v2;
    (*(v2[3] + 32))((*a1)[4], v5, v2[2]);
    v7 = v3;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    v9 = *v2;
    v7 = *(*a1 + 48);
    v8 = v5;
  }

  AccessibilityNullableOptionSet.subscript.setter(v7, v8, v9);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t AccessibilityNullableOptionSet.isDefault.getter()
{
  if ((dispatch thunk of SetAlgebra.isEmpty.getter() & 1) == 0)
  {
    return 0;
  }

  return dispatch thunk of SetAlgebra.isEmpty.getter();
}

uint64_t static AccessibilityNullableOptionSet.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for AccessibilityNullableOptionSet();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t AccessibilityNullableOptionSet.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802723693 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AccessibilityNullableOptionSet.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1802723693;
  }

  else
  {
    return 0x65756C6176;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys()
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AccessibilityNullableOptionSet.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AccessibilityNullableOptionSet<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AccessibilityNullableOptionSet<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AccessibilityNullableOptionSet<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AccessibilityNullableOptionSet.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 16);
  v12[0] = *(a2 + 32);
  v12[1] = v4;
  v13 = v4;
  v14 = v12[0];
  v5 = *(a2 + 64);
  v15 = *(a2 + 48);
  v16 = v5;
  v17 = v3;
  type metadata accessor for AccessibilityNullableOptionSet.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  v10 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int AccessibilityNullableOptionSet.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a8;
  v47 = a6;
  v48 = a7;
  v60 = a1;
  v39 = a9;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v39 - v17;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v58 = a10;
  v59 = a11;
  type metadata accessor for AccessibilityNullableOptionSet.CodingKeys();
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v26 = &v39 - v25;
  v43 = a2;
  v51 = a2;
  v52 = a3;
  v45 = a3;
  v53 = a4;
  v54 = a5;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = a10;
  v27 = v60;
  v59 = a11;
  v28 = type metadata accessor for AccessibilityNullableOptionSet();
  v48 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v39 - v29;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v49 = v26;
  v31 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v50 = v28;
  v33 = v40;
  v32 = v41;
  v35 = v42;
  v34 = v43;
  LOBYTE(v51) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = *(v35 + 32);
  v47(v30, v44, v34);
  LOBYTE(v51) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v49, v46);
  v36 = v50;
  v47(&v30[*(v50 + 92)], v32, v34);
  v37 = v48;
  (*(v48 + 16))(v39, v30, v36);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return (*(v37 + 8))(v30, v36);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityNullableOptionSet<A>()
{
  Hasher.init(_seed:)();
  AccessibilityNullableOptionSet.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AccessibilityNullableOptionSet.merge(with:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v23 = &v20 - v12;
  v25 = v5;
  v13 = *(v5 + 16);
  v21 = a1;
  v13(v9, a1, v4, v11);
  v20 = a2;
  v22 = *(a2 + 92);
  dispatch thunk of SetAlgebra.subtracting(_:)();
  v14 = *(v20 + 92);
  (v13)(v9, a1 + v14, v4);
  v15 = v24;
  dispatch thunk of SetAlgebra.subtracting(_:)();
  v16 = v23;
  (v13)(v9, v21 + v14, v4);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  dispatch thunk of SetAlgebra.subtract(_:)();
  (v13)(v9, v16, v4);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v17 = 1;
  }

  else
  {
    v17 = dispatch thunk of SetAlgebra.isEmpty.getter();
  }

  v18 = *(v25 + 8);
  v18(v15, v4);
  v18(v16, v4);
  return v17 & 1;
}

void AccessibilityNullableOptionSet.encode(to:)(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = *(*(*(a2[9] + 8) + 24) + 16);
  v4 = *(a2[6] + 8);
  v34[5] = a2;
  v5 = a2[2];
  swift_getAssociatedTypeWitness();
  v38 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v34 - v7;
  v9 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v37 = v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v35 = v2;
  v34[3] = v5;
  v34[4] = v4;
  v16 = v15;
  v18 = v17;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v19 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v16 + 8))(v18, v9);
    if ((v19 & 1) == 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }
  }

  v34[0] = v8;
  v34[1] = AssociatedTypeWitness;
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v21 = v37;
  if (v20 > 63)
  {
    v39 = -1;
    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v24 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v16 + 8))(v18, v9);
        if ((v24 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }
    }

    else if (v23 < 65)
    {
      goto LABEL_11;
    }

    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v16 + 8))(v18, v9);
    if ((v25 & 1) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v26 = dispatch thunk of BinaryInteger._lowWord.getter();
  v27 = *(v16 + 8);
  v27(v14, v9);
  if (v26)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v26);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v21 = v37;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v28 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v27(v18, v9);
    if ((v28 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
  {
    goto LABEL_25;
  }

  v39 = -1;
  v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v30 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v29 & 1) == 0)
  {
    if (v30 < 65)
    {
      goto LABEL_24;
    }

LABEL_22:
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    v27(v18, v9);
    if ((v32 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v30 > 64)
  {
    goto LABEL_22;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v21 = v37;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v31 = dispatch thunk of static Comparable.> infix(_:_:)();
  v27(v18, v9);
  if (v31)
  {
LABEL_24:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_25:
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  v27(v21, v9);
  if (v33)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v33);
  }
}

unint64_t AccessibilityNullableOptionSet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v59 = a4;
  v60 = a8;
  v49 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v47 - v21;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v50 = &v47 - v25;
  v55 = a11;
  v72 = a9;
  v61 = a2;
  v62 = a6;
  v54 = a3;
  v56 = a5;
  v26 = a6;
  v27 = v49;
  v57 = a7;
  result = AccessibilityNullableOptionSet.init()(a2, a3, v59, a5, v26, a7, v60, v49, a9, a11);
  v29 = a1[1];
  v30 = a1[2];
  if (v29 >= v30)
  {
LABEL_45:
    a1[3] = 0;
    return result;
  }

  v31 = (v48 + 40);
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v32 = a1[4];
      if (v29 < v32)
      {
        goto LABEL_11;
      }

      if (v32 < v29)
      {
        goto LABEL_43;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v11)
    {
      goto LABEL_44;
    }

    if (result <= 7)
    {
      goto LABEL_43;
    }

LABEL_11:
    v33 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v33 != 2)
        {
          goto LABEL_43;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v11)
        {
          goto LABEL_44;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v38 = a1[1] + result;
        if (v30 < v38)
        {
LABEL_43:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_44:
          v63 = v61;
          v64 = v54;
          v65 = v59;
          v66 = v56;
          v67 = v62;
          v68 = v57;
          v69 = v60;
          v70 = v27;
          v71 = v55;
          v46 = type metadata accessor for AccessibilityNullableOptionSet();
          return (*(*(v46 - 8) + 8))(v72, v46);
        }

        a1[3] = 16;
        a1[4] = v38;
      }

      v39 = ProtobufDecoder.decodeVarint()();
      if (v11)
      {
        goto LABEL_44;
      }

      v63 = v39;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v40 = v51;
      v41 = v61;
      v42 = v27;
      v43 = v62;
      dispatch thunk of OptionSet.init(rawValue:)();
      v63 = v41;
      v64 = v54;
      v65 = v59;
      v66 = v56;
      v67 = v43;
      v68 = v57;
      v27 = v42;
      v69 = v60;
      v70 = v42;
      v71 = v55;
      v44 = type metadata accessor for AccessibilityNullableOptionSet();
      result = (*v31)(v72 + *(v44 + 92), v40, v41);
      goto LABEL_4;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v33 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v11)
        {
          goto LABEL_44;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        v45 = a1[1] + result;
        if (v30 < v45)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v33 != 5)
        {
          goto LABEL_43;
        }

        v45 = a1[1] + 4;
        if (v30 < v45)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v33 != 1)
      {
        goto LABEL_43;
      }

      v45 = a1[1] + 8;
      if (v30 < v45)
      {
        goto LABEL_43;
      }

LABEL_3:
      a1[1] = v45;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v11)
    {
      goto LABEL_44;
    }

LABEL_4:
    v29 = a1[1];
    if (v29 >= v30)
    {
      goto LABEL_45;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_19:
    v35 = ProtobufDecoder.decodeVarint()();
    if (v11)
    {
      goto LABEL_44;
    }

    v63 = v35;
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v36 = v50;
    v37 = v61;
    dispatch thunk of OptionSet.init(rawValue:)();
    result = (*v31)(v72, v36, v37);
    goto LABEL_4;
  }

  if (v33 != 2)
  {
    goto LABEL_43;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v11)
  {
    goto LABEL_44;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v34 = a1[1] + result;
    if (v30 < v34)
    {
      goto LABEL_43;
    }

    a1[3] = 8;
    a1[4] = v34;
    goto LABEL_19;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

uint64_t Comparable.clamp(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v8, v2, a2, v6);
  v9 = type metadata accessor for ClosedRange();
  Comparable.clamp(min:max:)(a1, a1 + *(v9 + 36), a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t Comparable.clamp(min:max:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  max<A>(_:_:)();
  min<A>(_:_:)();
  return (*(v4 + 8))(v6, a3);
}

uint64_t Comparable.formMin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  result = a4(a1, v5, a2, a3);
  if (result)
  {
    v10 = *(a2 - 8);
    (*(v10 + 8))(v5, a2);
    v9 = *(v10 + 16);

    return v9(v5, a1, a2);
  }

  return result;
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v16 - v3;
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v5 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v6 = *(v2 + 8);
  v6(v4, AssociatedTypeWitness);
  if (v5 & 1) != 0 && (dispatch thunk of Collection.endIndex.getter(), v7 = dispatch thunk of static Comparable.< infix(_:_:)(), v6(v4, AssociatedTypeWitness), (v7))
  {
    v8 = dispatch thunk of Collection.subscript.read();
    v10 = v9;
    v11 = swift_getAssociatedTypeWitness();
    v12 = *(v11 - 8);
    v13 = v17;
    (*(v12 + 16))(v17, v10, v11);
    v8(v18, 0);
    return (*(v12 + 56))(v13, 0, 1, v11);
  }

  else
  {
    v15 = swift_getAssociatedTypeWitness();
    return (*(*(v15 - 8) + 56))(v17, 1, 1, v15);
  }
}

uint64_t Collection.index(atOffset:limitedBy:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t Collection.offset(of:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v6 - v2;
  dispatch thunk of Collection.startIndex.getter();
  v4 = dispatch thunk of Collection.distance(from:to:)();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4;
}

uint64_t _AlphaThresholdEffect.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

float _AlphaThresholdEffect.resolve(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v10 = *a1;
  *a3 = (*(*a2 + 112))(&v10);
  *(a3 + 4) = v6;
  result = a4;
  *(a3 + 8) = v8;
  *(a3 + 12) = v9;
  *(a3 + 16) = result;
  return result;
}

float32x4_t _AlphaThresholdEffect._Resolved.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v3 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v4 = v8;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  result = vmulq_f32(v4, v5);
  *a1 = v3;
  *(a1 + 4) = result;
  return result;
}

void _AlphaThresholdEffect._Resolved.animatableData.setter(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 4);
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v9 = *(a1 + 4);
    swift_once();
    v3.i64[0] = 0x3C0000003C000000;
    v3.i64[1] = 0x3C0000003C000000;
    v2 = v9;
  }

  v8 = vmulq_f32(v2, v3);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8.f32[0];
    v6 = v8.i32[2];
    v5 = v8.i32[1];
    v7 = v8.i32[3];
  }

  else
  {
    v11 = 2;
    v10 = v8;
    v4 = ResolvedGradient.ColorSpace.convertOut(_:)(&v10);
  }

  *v1 = v4;
  *(v1 + 4) = v5;
  *(v1 + 8) = v6;
  *(v1 + 12) = v7;
}

void (*_AlphaThresholdEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  *(v4 + 72) = v5;
  *(v4 + 76) = vmulq_f32(v6, v7);
  return _AlphaThresholdEffect._Resolved.animatableData.modify;
}

void _AlphaThresholdEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 52;
  if (a2)
  {
    v3 = 32;
  }

  v4 = v2 + v3;
  *v4 = *(v2 + 72);
  *(v4 + 16) = *(v2 + 88);
  _AlphaThresholdEffect._Resolved.animatableData.setter(v2 + v3);

  free(v2);
}

double _AlphaThresholdEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = 2143289344;
  DWORD1(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _AlphaThresholdEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = swift_allocObject();
  v9 = *v1;
  LODWORD(v10) = 2143289344;
  DWORD1(v10) = v3;
  _s7SwiftUI14GraphicsFilterOWOi18_(&v9);
  v5 = v14;
  v4[5] = v13;
  v4[6] = v5;
  v4[7] = v15[0];
  *(v4 + 124) = *(v15 + 12);
  v6 = v10;
  v4[1] = v9;
  v4[2] = v6;
  result = *&v11;
  v8 = v12;
  v4[3] = v11;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _AlphaThresholdEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  _AlphaThresholdEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _AlphaThresholdEffect._Resolved(uint64_t **a1))(void *a1)
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
  v2[4] = _AlphaThresholdEffect._Resolved.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

float protocol witness for EnvironmentalModifier.resolve(in:) in conformance _AlphaThresholdEffect@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v10 = *a1;
  *a2 = (*(**&v4 + 112))(&v10);
  *(a2 + 4) = v6;
  result = v5;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for _AlphaThresholdEffect._Resolved(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _AlphaThresholdEffect._Resolved and conformance _AlphaThresholdEffect._Resolved();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path setter for _ViewInputs.textAlwaysOnProvider : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.textAlwaysOnProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_ViewInputs.textAlwaysOnProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.textAlwaysOnProvider.modify;
}

uint64_t (*_GraphInputs.textAlwaysOnProvider.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.textAlwaysOnProvider.modify;
}

void _ViewInputs.textAlwaysOnProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

float64x2_t static CGPoint.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGPoint.-= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vsubq_f64(*a1, a2);
  *a1 = result;
  return result;
}

CGPoint __swiftcall CGPoint.unapplying(_:)(CGAffineTransform *a1)
{
  v3 = v2;
  v4 = v1;
  tx = a1->tx;
  ty = a1->ty;
  v7 = *&a1->c;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&a1->a, xmmword_18DDAA020), vceqq_f64(v7, xmmword_18DDAB500))))))
  {
    *&v13.a = *&a1->a;
    *&v13.c = v7;
    v13.tx = tx;
    v13.ty = ty;
    CGAffineTransformInvert(&v12, &v13);
    v13 = v12;
    v14.x = v4;
    v14.y = v3;
    v10 = CGPointApplyAffineTransform(v14, &v13);
    y = v10.y;
    x = v10.x;
  }

  else
  {
    x = v4 - tx;
    y = v3 - ty;
  }

  result.y = y;
  result.x = x;
  return result;
}

CGPoint __swiftcall CGPoint.clamp(min:max:)(CGPoint min, CGPoint max)
{
  if (min.x <= v2)
  {
    min.x = v2;
  }

  if (min.x > max.x)
  {
    min.x = max.x;
  }

  if (min.y <= v3)
  {
    min.y = v3;
  }

  if (min.y > max.y)
  {
    min.y = max.y;
  }

  return min;
}

float64x2_t static CGPoint.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

double static CGSize.+ infix(_:_:)(double a1, double a2, double a3)
{
  return a1 + a3;
}

{
  return a1 + a3;
}

uint64_t SystemListStyleMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FontBox<Font.SystemProvider>();
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *a1 = result;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static SystemStyleMetrics.list.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_1EAB0F2A0;
  v3 = qword_1EAB0F2A8;
  *a1 = static SystemStyleMetrics.list;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static SystemStyleMetrics.list.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SystemStyleMetrics.list = v1;
  byte_1EAB0F2A0 = v2;
  qword_1EAB0F2A8 = v3;
}

uint64_t (*static SystemStyleMetrics.list.modify())()
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

uint64_t key path getter for static SystemStyleMetrics.list : SystemStyleMetrics.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for list != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_1EAB0F2A0;
  v3 = qword_1EAB0F2A8;
  *a1 = static SystemStyleMetrics.list;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t key path setter for static SystemStyleMetrics.list : SystemStyleMetrics.Type(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = one-time initialization token for list;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SystemStyleMetrics.list = v1;
  byte_1EAB0F2A0 = v2;
  qword_1EAB0F2A8 = v3;
}

uint64_t SystemListStyleMetrics.Sidebar.headerFont.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SystemListStyleMetrics.Sidebar.outlineDisclosureFont.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SystemListStyleMetrics.sidebar.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t key path setter for SystemListStyleMetrics.sidebar : SystemListStyleMetrics(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t SystemListStyleMetrics.sidebar.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t (*SystemListStyleMetrics.sidebar.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v1;

  return SystemListStyleMetrics.sidebar.modify;
}

uint64_t SystemListStyleMetrics.sidebar.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }

  else
  {

    *v5 = v2;
    *(v5 + 8) = v3;
    *(v5 + 16) = v4;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SystemListStyleMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for SystemListStyleMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SystemListStyleMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for SystemShadowStyleMetrics.Separated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for SystemShadowStyleMetrics.Separated(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[4];
  v4 = a1[4];
  a1[4] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for SystemShadowStyleMetrics.Separated(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unsigned __int8 *AccessibilityTraitSet.init(trait:)@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v2;
  }

  *a2 = v3;
  return result;
}

BOOL AccessibilityTraits.insert(_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  v5 = *v2 & *a2;
  if (v5 != *a2)
  {
    v4 |= v3;
    *v2 = v4;
  }

  *a1 = v4;
  return v5 != v3;
}

void *AccessibilityTraits.remove(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & ~*result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

void *AccessibilityTraits.update(with:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AccessibilityTraits@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & ~*result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = 0;
  return result;
}

void *protocol witness for SetAlgebra.update(with:) in conformance AccessibilityTraits@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  *v2 = v3;
  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t AccessibilityTrait.displayDescription.getter()
{
  result = 0;
  if (((1 << *v0) & 0x23C07FFF) != 0)
  {
    v2 = String.init<A>(describing:)();
    MEMORY[0x193ABEDD0](v2);

    return 46;
  }

  return result;
}

uint64_t AccessibilityTrait.uiTrait.getter()
{
  result = 0;
  switch(*v0)
  {
    case 0:
      v2 = &AXSwiftUITraitsButton;
      goto LABEL_23;
    case 1:
      v2 = &AXSwiftUITraitsHeader;
      goto LABEL_23;
    case 2:
      v2 = &AXSwiftUITraitsSelected;
      goto LABEL_23;
    case 3:
      v2 = &AXSwiftUITraitsLink;
      goto LABEL_23;
    case 4:
      v2 = &AXSwiftUITraitsSearchField;
      goto LABEL_23;
    case 5:
      v2 = &AXSwiftUITraitsImage;
      goto LABEL_23;
    case 6:
      v2 = &AXSwiftUITraitsPlaysSound;
      goto LABEL_23;
    case 7:
      v2 = &AXSwiftUITraitsKeyboardKey;
      goto LABEL_23;
    case 8:
      v2 = &AXSwiftUITraitsStaticText;
      goto LABEL_23;
    case 9:
      v2 = &AXSwiftUITraitsSummaryElement;
      goto LABEL_23;
    case 0xA:
      v2 = &AXSwiftUITraitsUpdatesFrequently;
      goto LABEL_23;
    case 0xB:
      v2 = &AXSwiftUITraitsStartsMediaSession;
      goto LABEL_23;
    case 0xC:
      v2 = &AXSwiftUITraitsAllowsDirectInteraction;
      goto LABEL_23;
    case 0xD:
      v2 = &AXSwiftUITraitsCausesPageTurn;
      goto LABEL_23;
    case 0x11:
      v2 = &AXSwiftUITraitsRadioButton;
      goto LABEL_23;
    case 0x16:
      v2 = &AXSwiftUITraitsTabBar;
      goto LABEL_23;
    case 0x17:
      v2 = &AXSwiftUITraitsTabButton;
      goto LABEL_23;
    case 0x18:
      v2 = &AXSwiftUITraitsBackButton;
      goto LABEL_23;
    case 0x1B:
      v2 = &AXSwiftUITraitsPopupButton;
      goto LABEL_23;
    case 0x1D:
      v2 = &AXSwiftUITraitsToggle;
      goto LABEL_23;
    case 0x1E:
      v2 = &AXSwiftUITraitsMathEquation;
LABEL_23:
      result = *v2;
      break;
    default:
      return result;
  }

  return result;
}

SwiftUI::AccessibilityTrait_optional __swiftcall AccessibilityTrait.init(rawValue:)(Swift::UInt64 rawValue)
{
  v2 = 0;
  v3 = 14;
  switch(rawValue)
  {
    case 0uLL:
      goto LABEL_25;
    case 1uLL:
      v2 = 1;
      goto LABEL_25;
    case 2uLL:
      v2 = 2;
      goto LABEL_25;
    case 3uLL:
      v2 = 3;
      goto LABEL_25;
    case 4uLL:
      v2 = 4;
      goto LABEL_25;
    case 5uLL:
      v2 = 5;
      goto LABEL_25;
    case 6uLL:
      v2 = 6;
      goto LABEL_25;
    case 7uLL:
      v2 = 7;
      goto LABEL_25;
    case 8uLL:
      v2 = 8;
      goto LABEL_25;
    case 9uLL:
      v2 = 9;
      goto LABEL_25;
    case 0xAuLL:
      v2 = 10;
      goto LABEL_25;
    case 0xBuLL:
      v2 = 11;
      goto LABEL_25;
    case 0xCuLL:
      v2 = 12;
      goto LABEL_25;
    case 0xDuLL:
      v2 = 13;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 0xEuLL:
LABEL_26:
      *v1 = v3;
      break;
    case 0xFuLL:
      *v1 = 15;
      break;
    case 0x10uLL:
      *v1 = 16;
      break;
    case 0x11uLL:
      *v1 = 17;
      break;
    case 0x12uLL:
      *v1 = 18;
      break;
    case 0x13uLL:
      *v1 = 19;
      break;
    case 0x14uLL:
      *v1 = 20;
      break;
    case 0x15uLL:
      *v1 = 21;
      break;
    case 0x16uLL:
      *v1 = 22;
      break;
    case 0x17uLL:
      *v1 = 23;
      break;
    case 0x18uLL:
      *v1 = 24;
      break;
    case 0x19uLL:
      *v1 = 25;
      break;
    case 0x1AuLL:
      *v1 = 26;
      break;
    case 0x1BuLL:
      *v1 = 27;
      break;
    case 0x1CuLL:
      *v1 = 28;
      break;
    case 0x1DuLL:
      *v1 = 29;
      break;
    case 0x1EuLL:
      *v1 = 30;
      break;
    case 0x1FuLL:
      *v1 = 31;
      break;
    default:
      *v1 = 32;
      break;
  }

  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityTrait()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityTrait()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

uint64_t AccessibilityTraitSet.init(traits:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = 1 << v6;
      v8 = v6 >= 0x40 ? 0 : v7;
      v9 = __CFADD__(v4, v8);
      v4 += v8;
      if (v9)
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = 0;
LABEL_10:

    *a2 = v4;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AccessibilityTraitSet()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AccessibilityTraitSet()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11E0](*v0);
  return Hasher._finalize()();
}

uint64_t *AccessibilityNullableOptionSet<>.init(adding:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t *AccessibilityNullableOptionSet<>.init(removing:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  a2[1] = v2;
  return result;
}

unsigned __int8 *AccessibilityNullableOptionSet<>.init(adding:)@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  a2[1] = v3;
  return result;
}

uint64_t AccessibilityNullableOptionSet<>.init(adding:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AccessibilityTraitSet.init(traits:)(a1, &v5);
  v4 = v5;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

unsigned __int8 *AccessibilityNullableOptionSet<>.init(removing:)@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = 0;
  a2[1] = v3;
  return result;
}

uint64_t AccessibilityNullableOptionSet<>.init(removing:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = AccessibilityTraitSet.init(traits:)(a1, &v5);
  v4 = v5;
  *a2 = 0;
  a2[1] = v4;
  return result;
}

BOOL AccessibilityNullableOptionSet<>.isSet(_:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 >= 0x40)
  {
    v3 = 0;
  }

  else
  {
    v3 = 1 << v2;
  }

  return (v3 & ~*(v1 + 8)) == 0;
}

uint64_t AccessibilityNullableOptionSet<>.subscript.getter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 > 0x3F)
  {
    return 1;
  }

  v4 = 1 << v2;
  if ((*v1 & v4) != 0)
  {
    return 1;
  }

  else
  {
    return 2 * ((v4 & v1[1]) == 0);
  }
}

uint64_t AccessibilityNullableOptionSet<>.subscript.setter(uint64_t result, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 0x40)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1 << v3;
  }

  if (result == 2)
  {
    v5 = v2[1];
    if ((v5 & v4) != 0)
    {
      v2[1] = v5 & ~v4;
    }

    v6 = *v2;
    if ((*v2 & v4) == 0)
    {
      return result;
    }

LABEL_15:
    *v2 = v6 & ~v4;
    return result;
  }

  v7 = v2[1];
  if ((v4 & ~v7) != 0)
  {
    v2[1] = v7 | v4;
  }

  v6 = *v2;
  v8 = *v2 & v4;
  if ((result & 1) == 0)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v8 != v4)
  {
    *v2 = v6 | v4;
  }

  return result;
}

uint64_t (*AccessibilityNullableOptionSet<>.subscript.modify(uint64_t a1, unsigned __int8 *a2))(uint64_t a1)
{
  *a1 = v2;
  v3 = *a2;
  *(a1 + 9) = v3;
  if (v3 <= 0x3F)
  {
    v5 = 1 << v3;
    if ((*v2 & v5) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * ((v2[1] & v5) == 0);
    }
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return AccessibilityNullableOptionSet<>.subscript.modify;
}

uint64_t AccessibilityNullableOptionSet<>.subscript.modify(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 >= 0x40)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << v1;
  }

  return specialized AccessibilityNullableOptionSet.subscript.setter(*(a1 + 8), v2);
}

uint64_t AccessibilityNullableOptionSet<>.subscript.getter(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = *a1;
  if (v3 > 0x3F)
  {
    return 1;
  }

  v5 = 1 << v3;
  if ((*v2 & v5) != 0)
  {
    return 1;
  }

  else
  {
    return ((v5 & v2[1]) == 0) & a2;
  }
}

uint64_t AccessibilityProperties.isTabBar.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 42) & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 21) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isTabBar.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 21) & 2;
    if ((*(v1 + 42) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isTabBar.modify;
}

uint64_t AccessibilityProperties.isTabButton.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 42) & 0x80) != 0)
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 22) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isTabButton.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 22) & 2;
    if ((*(v1 + 42) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isTabButton.modify;
}

uint64_t AccessibilityProperties.isBackButton.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if (*(v0 + 43))
    {
      return 1;
    }

    else
    {
      return ~(*(v0 + 48) >> 23) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.isBackButton.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~(*(v1 + 48) >> 23) & 2;
    if (*(v1 + 43))
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.isBackButton.modify;
}

uint64_t AccessibilityProperties.excludeFromItemChooser.getter()
{
  result = 2;
  if (*(v0 + 56) != 1)
  {
    if ((*(v0 + 43) & 2) != 0)
    {
      return 1;
    }

    else
    {
      return ~BYTE3(*(v0 + 48)) & 2;
    }
  }

  return result;
}

double (*AccessibilityProperties.excludeFromItemChooser.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  LOBYTE(v2) = 2;
  if ((*(v1 + 56) & 1) == 0)
  {
    v2 = ~BYTE3(*(v1 + 48)) & 2;
    if ((*(v1 + 43) & 2) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *(a1 + 8) = v2;
  return AccessibilityProperties.excludeFromItemChooser.modify;
}

double AccessibilityProperties.isTabBar.modify(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = a3;
    v4 = &v6;
  }

  else
  {
    v7 = a3;
    v4 = &v7;
  }

  return AccessibilityProperties.subscript.setter(v3, v4);
}

unint64_t lazy protocol witness table accessor for type AccessibilityTrait and conformance AccessibilityTrait()
{
  result = lazy protocol witness table cache variable for type AccessibilityTrait and conformance AccessibilityTrait;
  if (!lazy protocol witness table cache variable for type AccessibilityTrait and conformance AccessibilityTrait)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTrait and conformance AccessibilityTrait);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AccessibilityTrait] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AccessibilityTrait] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AccessibilityTrait] and conformance [A])
  {
    type metadata accessor for [AccessibilityTrait]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AccessibilityTrait] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [AccessibilityTrait]()
{
  if (!lazy cache variable for type metadata for [AccessibilityTrait])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [AccessibilityTrait]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityTraitSet and conformance AccessibilityTraitSet()
{
  result = lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet;
  if (!lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityTraitSet and conformance AccessibilityTraitSet);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t LocalizedStringKey.isStyled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)();
  v95 = v7;
  v94 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)?, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v83 - v10;
  type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator, MEMORY[0x1E6968788]);
  v92 = v11;
  v91 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v83 - v12;
  type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(0, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>, MEMORY[0x1E6968798]);
  v99 = v13;
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v83 - v16;
  v89 = type metadata accessor for AttributedString.Runs();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v111 = &v83 - v19;
  v20 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v108 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v107 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v110 = &v83 - v26;
  v114 = type metadata accessor for LocalizedStringResource();
  v27 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AttributedString();
  v117 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v119 = &v83 - v32;
  v33 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  v38.n128_f64[0] = MEMORY[0x1EEE9AC00](v36);
  v40 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a4 + 16);
  v120 = v29;
  v121 = v41;
  if (!v41)
  {
LABEL_22:
    (*(v104 + 104))(v106, *MEMORY[0x1E6968748], v105, v38);
    (*(v108 + 104))(v109, *MEMORY[0x1E6968728], v20);

    AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
    v68 = type metadata accessor for URL();
    v69 = *(v68 - 8);
    (*(v69 + 56))(v111, 1, 1, v68);
    v70 = v110;
    AttributedString.init(markdown:options:baseURL:)();
    v71 = v117;
    v72 = v120;
    (*(v117 + 56))(v70, 0, 1, v120);
    (*(v71 + 32))(v96, v70, v72);
    v73 = v87;
    AttributedString.runs.getter();
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v74 = v97;
    AttributedString.Runs.subscript.getter();
    (*(v88 + 8))(v73, v89);
    (*(v98 + 16))(v90, v74, v99);
    lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>, MEMORY[0x1E6968798]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(&lazy protocol witness table cache variable for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator and conformance AttributedString.Runs.AttributesSlice2<A, B>.Iterator, &lazy cache variable for type metadata for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator, MEMORY[0x1E6968788]);
    v75 = v116;
    v76 = v92;
    dispatch thunk of IteratorProtocol.next()();
    v77 = v75;
    v78 = *(v94 + 48);
    v79 = v95;
    v80 = v78(v77, 1, v95);
    v81 = v93;
    if (v80 == 1)
    {
LABEL_28:
      (*(v91 + 8))(v118, v76);
      (*(v98 + 8))(v97, v99);
      (*(v117 + 8))(v96, v120);
      return 0;
    }

    else
    {
      v82 = (v69 + 48);
      while (1)
      {
        outlined init with take of LocalizedStringKey.FormatArgument(v77, v81, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
        if ((v81[8] & 1) == 0 && (*v81 & 0x27) != 0)
        {
          break;
        }

        if ((*v82)(&v81[*(v79 + 48)], 1, v68) != 1)
        {
          break;
        }

        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v81, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
        dispatch thunk of IteratorProtocol.next()();
        v77 = v116;
        if (v78(v116, 1, v79) == 1)
        {
          goto LABEL_28;
        }
      }

      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v81, type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
      (*(v91 + 8))(v118, v76);
      (*(v98 + 8))(v97, v99);
      (*(v117 + 8))(v96, v120);
      return 1;
    }
  }

  v42 = 0;
  v43 = a4 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v122 = *(v37 + 72);
  v123 = v43;
  v102 = (v27 + 32);
  v115 = (v117 + 8);
  v101 = (v27 + 8);
  v100 = (v117 + 32);
  v86 = a2;
  v85 = a1;
  v84 = v20;
  v103 = v33;
  while (1)
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v123 + v122 * v42, v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    outlined init with copy of LocalizedStringKey.FormatArgument(v40, v35, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v53 = v119;
      v54 = v120;
      (*v100)(v119, v35, v120);
      v50 = AttributedString.isStyled.getter();
      (*v115)(v53, v54);
    }

    else
    {
      v44 = v20;
      v45 = a2;
      v46 = a1;
      v47 = v113;
      v48 = v114;
      (*v102)(v113, v35, v114);
      EnvironmentValues.init()(&v125);
      v124 = v125;
      v49 = v119;
      LocalizedStringResource.resolve(in:)(&v124, v119);

      v50 = AttributedString.isStyled.getter();
      (*v115)(v49, v120);
      v51 = v47;
      a1 = v46;
      a2 = v45;
      v20 = v44;
      (*v101)(v51, v48);
    }

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    if (v50)
    {
      return 1;
    }

LABEL_5:
    if (++v42 == v121)
    {
      goto LABEL_22;
    }
  }

  if (!EnumCaseMultiPayload)
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_19:
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
    goto LABEL_5;
  }

  v56 = *v35;
  v55 = *(v35 + 1);
  v57 = v35[16];
  v58 = *(v35 + 3);
  if (v57 == 1 && (*&v125 = 0, ((*(*v56 + 104))(&v125) & 1) != 0))
  {
    v64 = v56;
    v65 = v55;
    v66 = 1;
  }

  else
  {
    v112 = v55;
    v59 = (v58 + 40);
    v60 = *(v58 + 16) + 1;
    do
    {
      if (!--v60)
      {
        outlined consume of Text.Storage(v56, v112, v57);

        a2 = v86;
        a1 = v85;
        v20 = v84;
        goto LABEL_19;
      }

      if ((*v59 & 0xE0) != 0xC0)
      {
        break;
      }

      v61 = v59 + 16;
      v62 = *(v59 - 1);
      *&v125 = 0;
      v63 = (*(*v62 + 80))(&v125);
      v59 = v61;
    }

    while ((v63 & 1) == 0);
    v64 = v56;
    v65 = v112;
    v66 = v57;
  }

  outlined consume of Text.Storage(v64, v65, v66);

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v40, type metadata accessor for LocalizedStringKey.FormatArgument);
  return 1;
}

uint64_t LocalizedStringKey.resolve(in:table:bundle:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v24 = a4;
  v25 = a5;
  v14 = type metadata accessor for Text.ResolvedString(0);
  v15 = (v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  Text.Style.init()(v17);
  v20 = &v17[v15[7]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v17[v15[8]];
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v17[v15[9]] = 0;
  specialized LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(v17, v18, v19, 0, a2, a3, v24, v25, a6, a7, a8);
  v22 = *v21;

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for Text.ResolvedString);
  return v22;
}

void specialized LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v135 = a8;
  v132 = a5;
  v140 = a1;
  v16 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v130 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v128 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v129 = &v128 - v22;
  v23 = type metadata accessor for Locale();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v128 - v29;
  if (one-time initialization token for semantic != -1)
  {
    v125 = v28;
    swift_once();
    v28 = v125;
  }

  v136 = v28;
  v31 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  v133 = a11;
  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v32 = dyld_program_sdk_at_least();
  }

  else
  {
    v32 = static Semantics.forced >= v31;
  }

  v131 = a4;
  LODWORD(v134) = a10;
  if (v32 && (a4 & 0x100) == 0)
  {
    if (a7)
    {
      v33 = a7;
    }

    else
    {
      v33 = [objc_opt_self() mainBundle];
    }

    v42 = a7;
    v43 = MEMORY[0x193ABEC20](v135, a9);
    if (a6)
    {
      v44 = MEMORY[0x193ABEC20](v132, a6);
      if (a3)
      {
LABEL_24:
        swift_retain_n();
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v26);
        v45 = v136;
LABEL_40:
        isa = Locale._bridgeToObjectiveC()().super.isa;
        v137 = v24;
        v132 = *(v24 + 8);
        v132(v26, v45);
        v59 = _LocalizeAttributedString(v33, v43, v44, isa);

        if (v134)
        {
          v60 = (v140 + *(v138 + 20));
          v61 = *v60;
          v62 = v60[1];
          outlined init with copy of LocalizedStringKey.FormatArgument(v140, v130, type metadata accessor for Text.Style);
          if (a3)
          {
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);

            v64 = *&v144[0];
            v65 = v131;
            v66 = v133;
          }

          else
          {
            v63 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
            v65 = v131;
            v66 = v133;
            if (v63)
            {
              v64 = *(v63 + 72);
            }

            else
            {
              v64 = 0;
            }
          }

          LOBYTE(v144[0]) = v64 == 0;
          MEMORY[0x1EEE9AC00](v63);
          *(&v128 - 12) = a2;
          *(&v128 - 11) = a3;
          *(&v128 - 10) = v61;
          *(&v128 - 9) = v62;
          *(&v128 - 8) = v144;
          *(&v128 - 7) = v59;
          *(&v128 - 6) = v135;
          *(&v128 - 5) = a9;
          *(&v128 - 32) = 1;
          v97 = v130;
          *(&v128 - 3) = v66;
          v126 = v97;
          v127 = v65;
          _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SwiftUI18LocalizedStringKeyV14FormatArgumentVG_s7CVarArg_ps5NeverOTg5(closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)partial apply, (&v128 - 14), v66);
          LODWORD(v138) = LOBYTE(v144[0]);
          _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v97, type metadata accessor for Text.Style);
          v139 = a2;
          if (a3)
          {
            v98 = v128;
            _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v128);

            v100 = v136;
            v99 = v137;
          }

          else
          {
            v101 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
            v98 = v128;
            if (v101)
            {
              v100 = v136;
              v99 = v137;
              (*(v137 + 16))(v128, &v101[*(*v101 + 248)], v136);
            }

            else
            {
              if (one-time initialization token for defaultValue != -1)
              {
                swift_once();
              }

              v100 = v136;
              v102 = __swift_project_value_buffer(v136, static LocaleKey.defaultValue);
              v99 = v137;
              (*(v137 + 16))(v98, v102, v100);
            }
          }

          (*(v99 + 56))(v98, 0, 1, v100);
          v103 = getVaList(_:)();

          v104 = (*(v99 + 48))(v98, 1, v100);
          v105 = v59;
          if (v104 == 1)
          {
            v106 = 0;
          }

          else
          {
            v106 = Locale._bridgeToObjectiveC()().super.isa;
            v132(v98, v100);
          }

          v107 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initSwiftUIAttributedStringWithFormat:v105 options:0 locale:v106 arguments:v103];

          v108 = specialized LocalizedStringKey.getTextArguments()(v66);
          if (*(v108 + 16))
          {
            v109 = v108;
            v110 = [v107 string];
            v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v113 = v112;

            v114 = v139;
            *&v144[0] = v139;
            *(&v144[0] + 1) = a3;
            v143[0] = v65;
            MEMORY[0x1EEE9AC00](v115);
            v116 = v140;
            *(&v128 - 6) = v107;
            *(&v128 - 5) = v116;
            *(&v128 - 4) = v114;
            *(&v128 - 3) = v117;
            LOBYTE(v127) = v138;
            MEMORY[0x1EEE9AC00](v118);
            *(&v128 - 4) = v107;
            *(&v128 - 3) = v119;
            specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v111, v113, v144, v143, v109, partial apply for specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v120, partial apply for specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), (&v128 - 6));
          }

          else
          {

            v121 = [v107 string];
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            specialized ResolvedTextContainer.append<A>(_:in:with:)(v122, v124, v139, a3);
          }

          return;
        }

        if (a3)
        {
          _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);
        }

        else
        {
          _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
        }

        v67 = [v59 string];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        specialized ResolvedTextContainer.append<A>(_:in:with:)(v68, v70, a2, a3);
LABEL_49:

        return;
      }
    }

    else
    {
      v44 = 0;
      if (a3)
      {
        goto LABEL_24;
      }
    }

    v46 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
    if (v46)
    {
      v45 = v136;
      (*(v24 + 16))(v26, &v46[*(*v46 + 248)], v136);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v45 = v136;
      v57 = __swift_project_value_buffer(v136, static LocaleKey.defaultValue);
      (*(v24 + 16))(v26, v57, v45);
    }

    goto LABEL_40;
  }

  v34 = v24;
  if (a7)
  {
    v35 = a7;
  }

  else
  {
    v35 = [objc_opt_self() mainBundle];
  }

  v36 = a7;
  v37 = MEMORY[0x193ABEC20](v135, a9);
  if (a6)
  {
    v38 = MEMORY[0x193ABEC20](v132, a6);
    v39 = v136;
    if (a3)
    {
LABEL_17:
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v30);

      v40 = v34;
      goto LABEL_31;
    }
  }

  else
  {
    v38 = 0;
    v39 = v136;
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v41 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
  if (v41)
  {
    v40 = v34;
    (*(v34 + 16))(v30, &v41[*(*v41 + 248)], v39);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v39, static LocaleKey.defaultValue);
    v40 = v34;
    (*(v34 + 16))(v30, v47, v39);
  }

LABEL_31:
  v48 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v40 + 8))(v30, v39);
  v49 = _LocalizeString(v35, v37, v38, v48);

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  if ((v134 & 1) == 0)
  {

    specialized ResolvedTextContainer.append<A>(_:in:with:)(v50, v52, a2, a3);
    goto LABEL_49;
  }

  v134 = v50;
  v135 = v52;
  v139 = a2;
  if (a3)
  {
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE015TextSizeVariantI033_22A2F77020526CCA53FF38DE37184183LLVG_Tt1g5(a2, v144);

    v53 = *&v144[0];
    v54 = v129;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(a2, v129);

    v55 = v133;
  }

  else
  {
    v56 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE015TextSizeVariantS033_22A2F77020526CCA53FF38DE37184183LLVG_Tt0g5(a2);
    v55 = v133;
    v54 = v129;
    if (v56)
    {
      v53 = v56[9];
    }

    else
    {
      v53 = 0;
    }

    v71 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a2);
    if (v71)
    {
      (*(v34 + 16))(v54, &v71[*(*v71 + 248)], v39);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v72 = __swift_project_value_buffer(v39, static LocaleKey.defaultValue);
      (*(v34 + 16))(v54, v72, v39);
    }
  }

  v73 = v53 == 0;
  (*(v34 + 56))(v54, 0, 1, v39);
  v74 = *(v55 + 16);
  if (v74)
  {
    v145 = MEMORY[0x1E69E7CC0];

    v75 = a3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74, 0);
    v76 = v145;
    v77 = *(type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8);
    v78 = v55 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v79 = *(v77 + 72);
    do
    {
      v80 = v137;
      outlined init with copy of LocalizedStringKey.FormatArgument(v140, v137, type metadata accessor for Text.ResolvedString);
      v81 = (v80 + *(v138 + 20));
      v82 = *v81;
      v83 = v81[1];
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v80, type metadata accessor for Text.ResolvedString);
      v143[0] = v139;
      v143[1] = v75;
      v141 = v82;
      v142 = v83;
      v84 = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(v144, v143);
      v145 = v76;
      v86 = *(v76 + 16);
      v85 = *(v76 + 24);
      if (v86 >= v85 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
        v76 = v145;
      }

      v73 |= v84;
      *(v76 + 16) = v86 + 1;
      outlined init with take of AnyTrackedValue(v144, v76 + 40 * v86 + 32);
      v78 += v79;
      --v74;
    }

    while (v74);
    a3 = v75;

    v87 = v131;
    v55 = v133;
    v54 = v129;
  }

  else
  {
    v87 = v131;
  }

  v88 = String.init(format:locale:arguments:)();
  v90 = v89;

  _sypSgWOhTm_3(v54, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
  v91 = specialized LocalizedStringKey.getTextArguments()(v55);
  if (*(v91 + 16))
  {
    *&v144[0] = v139;
    *(&v144[0] + 1) = a3;
    v143[0] = v87;
    MEMORY[0x1EEE9AC00](v91);
    *(&v128 - 6) = v140;
    *(&v128 - 5) = v92;
    *(&v128 - 4) = v93;
    *(&v128 - 3) = v87;
    MEMORY[0x1EEE9AC00](v94);
    v127 = v87;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v88, v90, v144, v143, v95, partial apply for specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v96, partial apply for specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), (&v128 - 4));
  }

  else
  {

    specialized ResolvedTextContainer.append<A>(_:in:with:)(v88, v90, v139, a3);
  }
}

BOOL closure #1 in LocalizedStringKey.resolve<A>(into:in:options:table:bundle:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21[-2] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v17, v18, v14);
  (*(a6 + 56))(&v22, a5, a6);
  (*(v13 + 8))(v16, a5);
  v21[0] = a2;
  v21[1] = a3;
  v20 = v22;
  result = LocalizedStringKey.FormatArgument.resolve(in:idiom:)(a7, v21);
  *a4 |= result;
  return result;
}

uint64_t closure #2 in closure #1 in LocalizedStringKey.getArgumentsForInflection(for:in:idiom:with:including:)()
{
  v0 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v0);
  AttributedString.characters.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  return String.init<A>(_:)();
}

uint64_t specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v9 = String.init<A>(_:)();
  v16 = a6;
  v17 = a7;
  v11 = String.caseConvertedIfNeeded(_:)(&v16, v9, v10);

  v16 = a6;
  v17 = a7;
  v12 = String.redactedIfNeeded(_:)(&v16, v11);
  v14 = v13;

  type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x193ABEDD0](v12, v14);
}

uint64_t specialized closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(int a1, int a2, int a3, int a4, id a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = [a5 string];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v15 = _NSRange.init<A, B>(_:in:)();
  v17 = [a5 attributedSubstringFromRange_];
  v18 = [v17 string];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  specialized ResolvedTextContainer.append<A>(_:in:with:)(v19, v21, a7, a8);
}

uint64_t specialized closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, char *a4, int a5, int a6, void *a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11)
{
  v15 = [a9 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();
  v16 = _NSRange.init<A, B>(_:in:)();
  v18 = [a9 attributesAtIndex:v16 longestEffectiveRange:0 inRange:{v16, v17}];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = Text.withInlinePresentationIntent(from:)(v19, a1, a2, a3 & 1, a4);
  v22 = v21;
  LOBYTE(a2) = v23;
  v25 = v24;

  specialized Text.resolve<A>(into:in:with:)(a10, a7, a8, a11, v20, v22, a2 & 1, v25);
  outlined consume of Text.Storage(v20, v22, a2 & 1);
}

uint64_t closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues.CapitalizationContext();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  outlined init with copy of LocalizedStringKey.FormatArgument(a1, v4, type metadata accessor for EnvironmentValues.CapitalizationContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v4)();

    (*(v6 + 32))(v14, v11, v5);
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v11, v4, v5);
    v15(v14, v11, v5);
  }

  static FormatStyleCapitalizationContext.middleOfSentence.getter();
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext, MEMORY[0x1E6968F28]);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v8, v5);
  v18 = (v17)(v14, v5);
  if (v16)
  {
    return static FormatStyleCapitalizationContext.middleOfSentence.getter();
  }

  else
  {
    return MEMORY[0x193ABCD00](v18);
  }
}

uint64_t closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(uint64_t a1, uint64_t a2)
{
  v4 = String.subscript.getter();
  v5 = MEMORY[0x193ABED20](v4);
  v7 = v6;

  v8 = MEMORY[0x193ABEC20](a1, a2);
  v9 = MEMORY[0x193ABEC20](v5, v7);

  isa = Locale._bridgeToObjectiveC()().super.isa;
  isBeginningOfSentence = _isBeginningOfSentence(v8, v9, isa);

  if (isBeginningOfSentence)
  {

    JUMPOUT(0x193ABCD00);
  }

  return static FormatStyleCapitalizationContext.middleOfSentence.getter();
}

BOOL LocalizedStringKey.resolvesToEmpty(in:options:table:bundle:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v56) = a8;
  v54 = a3;
  v14 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSInlinePresentationIntent?(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = &v52 - v18;
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *(a1 + 8);
  v57 = v23;
  if (a5)
  {
    v25 = a5;
  }

  else
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = a5;
  v27 = MEMORY[0x193ABEC20](a6, a7);
  if (a4)
  {
    v28 = MEMORY[0x193ABEC20](v54, a4);
    v29 = v20;
    if (v24)
    {
LABEL_6:

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v57, v22);

      goto LABEL_13;
    }
  }

  else
  {
    v28 = 0;
    v29 = v20;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  v30 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v57);
  if (v30)
  {
    (*(v29 + 16))(v22, &v30[*(*v30 + 248)], v19);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v19, static LocaleKey.defaultValue);
    (*(v29 + 16))(v22, v31, v19);
  }

LABEL_13:
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v29 + 8))(v22, v19);
  v33 = _LocalizeString(v25, v27, v28, isa);

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v56)
  {
    if (v24)
    {

      v37 = v55;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v57, v55);
    }

    else
    {
      v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v57);
      v37 = v55;
      if (v38)
      {
        (*(v29 + 16))(v55, &v38[*(*v38 + 248)], v19);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v39 = __swift_project_value_buffer(v19, static LocaleKey.defaultValue);
        (*(v29 + 16))(v37, v39, v19);
      }
    }

    (*(v29 + 56))(v37, 0, 1, v19);
    v40 = *(a9 + 16);
    if (v40)
    {
      v54 = v36;
      v56 = v34;
      v62 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
      _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_0(0, &lazy cache variable for type metadata for InterfaceIdiomBox<PhoneInterfaceIdiom>, &type metadata for PhoneInterfaceIdiom, &protocol witness table for PhoneInterfaceIdiom, type metadata accessor for InterfaceIdiomBox);
      v42 = v41;
      v43 = v62;
      v44 = a9 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v45 = *(v53 + 72);
      do
      {
        outlined init with copy of LocalizedStringKey.FormatArgument(v44, v16, type metadata accessor for LocalizedStringKey.FormatArgument);
        v60[0] = v57;
        v60[1] = v24;
        v58 = v42;
        v59 = &protocol witness table for InterfaceIdiomBox<A>;
        LocalizedStringKey.FormatArgument.resolve(in:idiom:)(v61, v60);
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v16, type metadata accessor for LocalizedStringKey.FormatArgument);
        v62 = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
          v43 = v62;
        }

        *(v43 + 16) = v47 + 1;
        outlined init with take of AnyTrackedValue(v61, v43 + 40 * v47 + 32);
        v44 += v45;
        --v40;
      }

      while (v40);
      v37 = v55;
    }

    v34 = String.init(format:locale:arguments:)();
    v49 = v48;

    _sypSgWOhTm_3(v37, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], type metadata accessor for NSInlinePresentationIntent?);
    v36 = v49;
  }

  v50 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v50 = v34 & 0xFFFFFFFFFFFFLL;
  }

  return v50 == 0;
}

uint64_t LocalizedStringKey.FormatArgument.init(value:formatter:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTrackedValue(a1, v8);
  if (a2)
  {
    [a2 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFormatter);
    swift_dynamicCast();
    v9 = v11[5];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v9 = 0;
  }

  *(v8 + 5) = v9;
  swift_storeEnumTagMultiPayload();
  return outlined init with take of LocalizedStringKey.FormatArgument(v8, a3, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24[-v16 - 8];
  (*(v7 + 16))(v9, a1, a3, v15);
  v25 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
  v26 = lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject);
  swift_dynamicCast();
  v18 = a2;
  LocalizedStringKey.FormatArgument.init(value:formatter:)(v24, a2, v17);
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v17, v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  v19 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v19);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v17, type metadata accessor for LocalizedStringKey.FormatArgument);
  v19[2] = v21 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v13, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v3 + 16) = v19;
  return result;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:formatter:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-1] - v12;
  v21[3] = a3;
  v21[4] = swift_getWitnessTable();
  v21[0] = a1;
  v14 = a2;
  v15 = a1;
  LocalizedStringKey.FormatArgument.init(value:formatter:)(v21, a2, v13);
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v13, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v16 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v16);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  v16[2] = v18 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v10, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v3 + 16) = v16;
  return result;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(a1, a2, a3, a4, a5, specialized Text.init<A>(_:format:));
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(a1, a2, a3, a4, a5, specialized Text.init<A>(_:format:));
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v6 = a6();
  v8 = v7;
  v10 = v9;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v6, v7, v9 & 1, v11);
  outlined consume of Text.Storage(v6, v8, v10 & 1);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = formatSpecifier<A>(_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)(a1, v6, v7, a2, a3);
}

uint64_t formatSpecifier<A>(_:)()
{
  v0 = 1684827173;
  if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      return 25637;
    }

    else
    {
      v0 = 1970039845;
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
        {
          return 29989;
        }

        else if (swift_dynamicCastMetatype())
        {
          return 26149;
        }

        else
        {
          v0 = 6712357;
          if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
          {
            return 16421;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:)()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0._countAndFlagsBits = String.init<A>(describing:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v0);
}

size_t protocol witness for StringInterpolationProtocol.init(literalCapacity:interpolationCount:) in conformance LocalizedStringKey.StringInterpolation@<X0>(size_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[3] = 0;
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = __OFADD__(result, 2 * a2);
    result += 2 * a2;
    if (!v5)
    {
      MEMORY[0x193ABED40](result);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
      a3[2] = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for StringInterpolationProtocol.appendLiteral(_:) in conformance LocalizedStringKey.StringInterpolation()
{
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v0);
}

uint64_t static LocalizedStringKey.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((a3 ^ a7))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(a4, a8);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(v3, v5);
}

void *protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance LocalizedStringKey@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  v3 = result[2];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
  *(a2 + 24) = v3;
  return result;
}

BOOL LocalizedTextStorage.resolvesToEmpty(in:with:)(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *a1;
  return LocalizedStringKey.resolvesToEmpty(in:options:table:bundle:)(&v7, a2, *(v2 + 48), *(v2 + 56), *(v2 + 64), v3, v4, v5, *(v2 + 40));
}

void LocalizedTextStorage.__ivar_destroyer()
{

  v1 = *(v0 + 64);
}

float protocol witness for _FormatSpecifiable._arg.getter in conformance Float@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t specialized LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *a4;
  v14 = a4[1];
  v16 = *a5;
  v17 = specialized LocalizedStringKey.getTextArguments()(a7);
  if (*(v17 + 16))
  {
    v27 = v15;
    v28 = v14;
    v26[0] = v16;
    MEMORY[0x1EEE9AC00](v17);
    v23[8] = a8;
    v23[9] = a9;
    v23[10] = a3;
    v23[11] = v15;
    v23[12] = v14;
    v23[13] = v16;
    v24 = a6 & 1;
    MEMORY[0x1EEE9AC00](v18);
    v23[2] = a8;
    v23[3] = a9;
    v23[4] = a3;
    v23[5] = v16;
    specialized LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(a1, a2, &v27, v26, v19, partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v20, partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:), v23);
  }

  else
  {

    v27 = a1;
    v28 = a2;
    v26[0] = v15;
    v26[1] = v14;
    v25 = v16;
    v22 = lazy protocol witness table accessor for type String and conformance String();
    return ResolvedTextContainer.append<A>(_:in:with:)(&v27, v26, &v25, a8, MEMORY[0x1E69E6158], a9, v22);
  }
}

unint64_t lazy protocol witness table accessor for type LocalizedStringKey and conformance LocalizedStringKey()
{
  result = lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey;
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey;
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey;
  if (!lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringKey and conformance LocalizedStringKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation;
  if (!lazy protocol witness table cache variable for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringKey.StringInterpolation and conformance LocalizedStringKey.StringInterpolation);
  }

  return result;
}

uint64_t initializeWithCopy for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for LocalizedStringKey(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for LocalizedStringKey.FormatArgument(unint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v4 + 16) & ~v4);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v10 = type metadata accessor for AttributedString();
      }

      else
      {
        v10 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }

    else if (EnumCaseMultiPayload)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      v13 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v12, v13);
      *a1 = v11;
      *(a1 + 8) = v12;
      *(a1 + 16) = v13;
      v14 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v14;
    }

    else
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      v8 = v7;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = type metadata accessor for AttributedString();
      }

      else
      {
        v8 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v10, v11);
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      v7 = v6;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for LocalizedStringKey.FormatArgument(void *a1, const void *a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for LocalizedStringResource();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithTake for LocalizedStringKey.FormatArgument(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for LocalizedStringResource();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for LocalizedStringKey.StringInterpolation()
{
}

void *initializeWithCopy for LocalizedStringKey.StringInterpolation(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for LocalizedStringKey.StringInterpolation(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for LocalizedStringKey.StringInterpolation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for LocalizedStringKey.FormatArgument.Storage(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = v10 + ((v5 + 16) & ~v5);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v11 = type metadata accessor for AttributedString();
      }

      else
      {
        v11 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v11 - 8) + 16))(a1, a2, v11);
    }

    else if (EnumCaseMultiPayload)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v13, v14);
      *a1 = v12;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      v15 = *(a2 + 32);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v15;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      (**(v7 - 8))(a1, a2);
      v8 = *(a2 + 40);
      *(a1 + 40) = v8;
      v9 = v8;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t assignWithCopy for LocalizedStringKey.FormatArgument.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v8 = type metadata accessor for AttributedString();
      }

      else
      {
        v8 = type metadata accessor for LocalizedStringResource();
      }

      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    else if (EnumCaseMultiPayload)
    {
      v9 = *a2;
      v10 = *(a2 + 8);
      v11 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v10, v11);
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 32);
      (**(v5 - 8))(a1, a2);
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      v7 = v6;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for LocalizedStringKey.FormatArgument.Storage(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for LocalizedStringResource();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithTake for LocalizedStringKey.FormatArgument.Storage(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(a1, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for LocalizedStringResource();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void type metadata accessor for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>)()
{
  if (!lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>))
  {
    type metadata accessor for NSInlinePresentationIntent?(255, &lazy cache variable for type metadata for NSInlinePresentationIntent?, type metadata accessor for NSInlinePresentationIntent);
    type metadata accessor for NSInlinePresentationIntent?(255, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    type metadata accessor for Range<AttributedString.Index>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (NSInlinePresentationIntent?, URL?, Range<AttributedString.Index>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

void type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
    v7 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute();
    v10[0] = MEMORY[0x1E6968508];
    v10[1] = MEMORY[0x1E6968518];
    v10[2] = v6;
    v10[3] = v7;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute> and conformance AttributedString.Runs.AttributesSlice2<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttributedString.Runs.AttributesSlice2<AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute, AttributeScopes.FoundationAttributes.LinkAttribute>.Iterator(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CAMediaTimingFunction(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in AttributeScopeContext.init<A>(scope:constraints:)specialized partial apply()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)();
}

{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:)();
}

uint64_t partial apply for closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)()
{
  type metadata accessor for Locale();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return closure #2 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v1, v2);
}

uint64_t partial apply for closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)()
{
  v1 = *(type metadata accessor for EnvironmentValues.CapitalizationContext() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in LocalizedStringKey.scan(string:in:options:textArgs:appendLiteral:appendText:)(v2);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute);
  }

  return result;
}

uint64_t partial apply for closure #1 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v12[0] = a1;
  v12[1] = a2;
  v11 = *(v2 + 40);
  v10 = v5;
  v7 = *(v4 + 64);
  v8 = lazy protocol witness table accessor for type String and conformance String();
  return v7(v12, &v11, &v10, v6, MEMORY[0x1E69E6158], v8, v3, v4);
}

uint64_t partial apply for closure #2 in LocalizedStringKey.resolveArguments<A>(from:into:in:options:isUniqueSizeVariant:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v10 = v7[2];
  v11 = v7[3];
  v12 = v7[4];
  v13 = v7[5];
  v16 = *a7;
  v15 = v13;
  return Text.resolve<A>(into:in:with:)(v12, &v16, &v15, a1, a2, a3 & 1, a4, v10, v11);
}

unint64_t lazy protocol witness table accessor for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token()
{
  result = lazy protocol witness table cache variable for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token;
  if (!lazy protocol witness table cache variable for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringKey.FormatArgument.Token and conformance LocalizedStringKey.FormatArgument.Token);
  }

  return result;
}

uint64_t DebugReplaceableView.init<A>(_erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = *(v6 + 16);
  v11(v15 - v12, a1, a2, v10);
  if (swift_dynamicCast())
  {
    v13 = v15[1];
  }

  else
  {
    type metadata accessor for DebugReplaceableViewStorage();
    (v11)(v8, a1, a2);
    v13 = _AnyMaterialCustomFillProvider.__allocating_init(_:)(v8);
  }

  result = (*(v6 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t DebugReplaceableView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  DebugReplaceableView.init<A>(_erasing:)(v9, a2, &v12);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v12;
  return result;
}

uint64_t static DebugReplaceableView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5(v3, v7, a3);
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *&v21[48] = *(a2 + 48);
  *&v21[64] = v6;
  *&v21[80] = *(a2 + 80);
  v7 = *(a2 + 16);
  *v21 = *a2;
  *&v21[16] = v7;
  *&v21[32] = v5;
  _ViewInputs.makeIndirectOutputs()(v27);
  v8 = *v27;
  v9 = *&v27[8];
  v10 = *&v27[12];
  v11 = *(a2 + 48);
  *&v27[36] = *(a2 + 32);
  *&v27[52] = v11;
  *&v27[68] = *(a2 + 64);
  v12 = *(a2 + 16);
  *&v27[4] = *a2;
  *&v27[84] = *(a2 + 80);
  *&v27[20] = v12;
  v13 = AGSubgraphGetCurrent();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  *v21 = a1;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v13;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();

  outlined init with copy of _ViewInputs(a2, v20);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>.Value, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer.Value);
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  v15 = v9;
  lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewContainer<DebugReplaceableView> and conformance DynamicViewContainer<A>, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, type metadata accessor for DynamicViewContainer);
  Attribute.init<A>(body:value:flags:update:)();
  *&v21[36] = *&v27[32];
  *&v21[52] = *&v27[48];
  *&v21[68] = *&v27[64];
  *&v21[4] = *v27;
  *v21 = a1;
  v22 = *&v27[80];
  *&v21[20] = *&v27[16];
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v14;
  outlined destroy of DynamicViewList<AnyView>(v21, &lazy cache variable for type metadata for DynamicViewContainer<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewContainer);
  result = AGGraphSetFlags();
  v17 = *(v8 + 16);
  if (v17)
  {
    v18 = v8 + 48;
    do
    {
      v18 += 24;
      result = AGGraphSetIndirectDependency();
      --v17;
    }

    while (v17);
  }

  if (v10 != *MEMORY[0x1E698D3F8])
  {
    result = AGGraphSetIndirectDependency();
  }

  *a3 = v8;
  *(a3 + 8) = v15;
  *(a3 + 12) = v10;
  return result;
}

uint64_t _s7SwiftUI11DynamicViewPAAE04makecD4List8metadata4view6inputsAA01_dF7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_dF6InputsVtFZAA016DebugReplaceableD0V_Tt3B5@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[20] = *MEMORY[0x1E69E9840];
  v9 = a1;
  outlined init with copy of _ViewListInputs(a2, v10);
  v5 = AGSubgraphGetCurrent();
  if (!v5)
  {
    __break(1u);
  }

  v10[17] = v5;
  type metadata accessor for MutableBox<[Unmanaged<DynamicViewList<AnyView>.Item>]>(0, &lazy cache variable for type metadata for MutableBox<[Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]>, type metadata accessor for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v10[18] = v6;
  v10[19] = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ViewList();
  type metadata accessor for DynamicViewList<AnyView>.Item(0, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(&lazy protocol witness table cache variable for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, type metadata accessor for DynamicViewList);
  v7 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of DynamicViewList<AnyView>(&v9, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, type metadata accessor for DynamicViewList);
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = *(a2 + 48);
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  return result;
}

uint64_t static DebugReplaceableView._viewListCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(a1 + 64) == 1 && v1 != 0)
  {
    *v1 = 1;
  }

  return 0;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DebugReplaceableView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA016DebugReplaceableD0V_Tt3B5(v3, v7, a3);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance DebugReplaceableView(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (*(a1 + 64) == 1 && v1 != 0)
  {
    *v1 = 1;
  }

  return 0;
}

uint64_t DebugReplaceableView.childInfo(metadata:)(uint64_t a1)
{
  result = (*(**v1 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t DebugReplaceableView.makeChildView(metadata:view:inputs:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return (*(**v2 + 88))(a1, v6);
}

uint64_t protocol witness for DynamicView.childInfo(metadata:) in conformance DebugReplaceableView(uint64_t a1)
{
  result = (*(**v1 + 80))();
  *a1 = 0;
  *(a1 + 8) = 1;
  return result;
}

uint64_t protocol witness for DynamicView.makeChildView(metadata:view:inputs:) in conformance DebugReplaceableView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v7[2] = *(a3 + 32);
  v7[3] = v4;
  v7[4] = *(a3 + 64);
  v8 = *(a3 + 80);
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  return (*(**v3 + 88))(a2, v7);
}

uint64_t DebugReplaceableViewStorage.makeChildView(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *v3;
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v68 = *(a2 + 32);
  v69 = v7;
  v9 = *(a2 + 48);
  v70 = *(a2 + 64);
  v10 = *(a2 + 16);
  v67[0] = *a2;
  v67[1] = v10;
  v63 = v68;
  v64 = v9;
  v65 = *(a2 + 64);
  v71 = *(a2 + 80);
  v66 = *(a2 + 80);
  v61 = v67[0];
  v62 = v8;
  v11 = v6;
  v12 = *(v5 + 128);
  v35 = a3;
  if ((WORD2(v68) & 0x100) != 0)
  {
    outlined init with copy of _ViewInputs(v67, &v55);
    AGTypeGetSignature();
    v13 = specialized _GraphInputs.pushScope<A>(id:)(v55, *(&v55 + 1), v56);
  }

  else
  {
    v13 = outlined init with copy of _ViewInputs(v67, &v55);
  }

  v14 = *(v11 + 136);
  LODWORD(v55) = a1;
  MEMORY[0x1EEE9AC00](v13);
  v31 = v12;
  v32 = type metadata accessor for DebugReplaceableViewChild();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for Attribute();
  v16 = MEMORY[0x1E69E73E0];
  v17 = MEMORY[0x1E69E7410];
  v19 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v55, closure #1 in Attribute.init<A>(_:)partial apply, &v30, v32, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v18);
  v20 = LODWORD(v53[0]);
  MEMORY[0x1EEE9AC00](v19);
  WitnessTable = v12;
  v34 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v21, closure #1 in Attribute.setValue(_:)partial apply, &v31, v12, v16, MEMORY[0x1E69E6370], v17, v22);
  _GraphValue.init(_:)(v20, v36);
  v23 = v36[0];
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v60 = v66;
  v55 = v61;
  v56 = v62;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v47 = v57;
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v45 = v55;
  v46 = v56;
  v25 = v57;
  LODWORD(v47) = 0;
  LODWORD(v37[0]) = v23;
  v51[0] = v55;
  v51[1] = v56;
  v52 = v60;
  v51[3] = v58;
  v51[4] = v59;
  v51[2] = v47;
  v41 = v47;
  v42 = v58;
  v43 = v59;
  v44 = v60;
  v39 = v55;
  v40 = v56;
  v26 = *(v14 + 24);
  outlined init with copy of _ViewInputs(&v55, v53);
  outlined init with copy of _ViewInputs(v51, v53);
  v27 = v14;
  v28 = v35;
  v26(v37, &v39, v12, v27);
  v53[2] = v41;
  v53[3] = v42;
  v53[4] = v43;
  v54 = v44;
  v53[0] = v39;
  v53[1] = v40;
  outlined destroy of _ViewInputs(v53);
  LODWORD(v47) = v25;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v28, &v45);
    AGSubgraphEndTreeElement();
  }

  v37[2] = v47;
  v37[3] = v48;
  v37[4] = v49;
  v38 = v50;
  v37[0] = v45;
  v37[1] = v46;
  outlined destroy of _ViewInputs(v37);
  v41 = v63;
  v42 = v64;
  v43 = v65;
  v44 = v66;
  v39 = v61;
  v40 = v62;
  return outlined destroy of _ViewInputs(&v39);
}

uint64_t DebugReplaceableViewStorage.makeChildViewList(view:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *v3;
  v8 = outlined init with copy of _ViewListInputs(a2, v40);
  v9 = *(v6 + 128);
  if (v40[37])
  {
    AGTypeGetSignature();
    v8 = specialized _GraphInputs.pushScope<A>(id:)(v36, *(&v36 + 1), LODWORD(v37[0]));
  }

  v10 = *(v7 + 136);
  LODWORD(v36) = a1;
  MEMORY[0x1EEE9AC00](v8);
  v32 = v9;
  v33 = type metadata accessor for DebugReplaceableViewChild();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Attribute();
  v12 = MEMORY[0x1E69E73E0];
  v13 = MEMORY[0x1E69E7410];
  v15 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, &v31, v33, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v14);
  v16 = LODWORD(v39[0]);
  MEMORY[0x1EEE9AC00](v15);
  WitnessTable = v9;
  v35 = v16;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v17, partial apply for closure #1 in Attribute.setValue(_:), &v32, v9, v12, MEMORY[0x1E69E6370], v13, v18);
  _GraphValue.init(_:)(v16, &v36);
  v19 = v36;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v39[0]) = v19;
  (*(v10 + 32))(v39, v40, v9, v10);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v19, v9, v10);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return outlined destroy of _ViewListInputs(v40);
  }

  v21 = Strong;
  swift_beginAccess();
  if ((*(v21 + 24) & 1) == 0)
  {
    v23 = *(v21 + 16);
    if (*(a3 + 64))
    {
      outlined init with copy of _ViewListInputs(v40, &v36);
      v24 = v36;
      v25 = DWORD1(v37[1]);
      v26 = *(&v37[2] + 1);

      outlined destroy of _ViewListInputs(&v36);
      *&v36 = v24;
      *(&v36 + 1) = v26;
      LODWORD(v37[0]) = v25;
      *(v37 + 8) = 0u;
      *(&v37[1] + 8) = 0u;
      BYTE8(v37[2]) = 0;
      LOBYTE(v38) = 0;
      *(&v38 + 1) = 0;
      v27 = (*(v10 + 40))(&v36, v9, v10);
      v29 = v28;
      v39[2] = v37[1];
      v39[3] = v37[2];
      v39[4] = v38;
      v39[0] = v36;
      v39[1] = v37[0];
      outlined destroy of _ViewListCountInputs(v39);
      outlined destroy of _ViewListInputs(v40);
      if (v29)
      {
        *(v21 + 16) = v27;
        *(v21 + 24) = 1;
      }
    }

    else
    {
      v27 = *(a3 + 56);
      outlined destroy of _ViewListInputs(v40);
      v30 = v23 + v27;
      if (!__OFADD__(v23, v27))
      {
LABEL_16:
        *(v21 + 16) = v30;
        *(v21 + 24) = 0;
      }

      __break(1u);
    }

    v30 = v23 + v27;
    if (__OFADD__(v23, v27))
    {
      __break(1u);
    }

    goto LABEL_16;
  }

  outlined destroy of _ViewListInputs(v40);
}

uint64_t DebugReplaceableViewChild.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 16);
  AGGraphGetValue();
  type metadata accessor for DebugReplaceableViewStorage();

  v3 = swift_dynamicCastClassUnconditional();
  v4 = *(*v3 + 144);
  v7[2] = a1;
  v7[3] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3 + v4, partial apply for closure #1 in StatefulRule.value.setter, v7, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v5);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance DebugReplaceableViewChild<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

void type metadata accessor for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]()
{
  if (!lazy cache variable for type metadata for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>])
  {
    type metadata accessor for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>(255, &lazy cache variable for type metadata for Unmanaged<DynamicViewList<DebugReplaceableView>.Item>, &lazy cache variable for type metadata for DynamicViewList<DebugReplaceableView>.Item, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Unmanaged<DynamicViewList<DebugReplaceableView>.Item>]);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DynamicViewList<DebugReplaceableView> and conformance DynamicViewList<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicViewList<AnyView>.Item(255, a2, lazy protocol witness table accessor for type DebugReplaceableView and conformance DebugReplaceableView, &type metadata for DebugReplaceableView, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for DebugReplaceableViewChild<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id PlatformTextRepresentableContext.text.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t key path setter for _ViewInputs.requestedTextRepresentation : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.requestedTextRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_ViewInputs.requestedTextRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.requestedTextRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedTextRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.requestedTextRepresentation.modify;
}

void _ViewInputs.requestedTextRepresentation.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

unint64_t lazy protocol witness table accessor for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions()
{
  result = lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions;
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions;
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions;
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions;
  if (!lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformTextRepresentationOptions and conformance PlatformTextRepresentationOptions);
  }

  return result;
}

void **assignWithTake for PlatformTextRepresentableContext(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

double CoreInteractionRepresentableFeatureBufferProxy.base.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  return result;
}

double CoreInteractionRepresentableFeatureBufferProxy.base.setter(uint64_t a1)
{
  *v1 = *a1;
  result = *(a1 + 8);
  *(v1 + 8) = result;
  return result;
}

uint64_t CoreInteractionRepresentableInteractionsProxy.Interaction.base.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t CoreInteractionRepresentableInteractionsProxy.interactions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t View.coreInteractionRepresentable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a4;
  v19 = a2;
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v21[0] = a3;
  v21[1] = MEMORY[0x1E69E6530];
  v21[2] = a5;
  v21[3] = MEMORY[0x1E69E6540];
  v11 = type metadata accessor for CoreInteractionRepresentableModifier();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = *(a3 - 8);
  (*(v16 + 16))(v10, a1, a3, v13);
  (*(v16 + 56))(v10, 0, 1, a3);
  v21[0] = -1;
  CoreInteractionRepresentableModifier.init(representable:id:)(v10, v21, MEMORY[0x1E69E6530], v15);
  View.modifier<A>(_:)(v15, v19, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t CoreInteractionRepresentableModifier.init(representable:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CoreInteractionRepresentableModifier();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

void CoreInteractionView.coreRemoveInteraction(_:)()
{
  static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)();
}

{
  static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)();
}

void CoreInteractionView.coreSetParentGestureContainerProxy(_:)()
{
  static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)();
}

{
  static os_log_type_t.error.getter();
  if (one-time initialization token for internalErrorsLog != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Log.internalErrorsLog;
  os_log(_:dso:log:_:_:)();
}

uint64_t CoreInteractionViewParentGestureContainerProxy.parentGestureContainer.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    Strong = swift_weakLoadStrong();
    v6 = (*(v4 + 24))(v2, Strong, v3, v4);

    return v6;
  }

  return result;
}

uint64_t CoreInteractionRepresentableEffect.representable.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CoreInteractionRepresentableEffect.representable.setter(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t CoreInteractionRepresentableEffect.interactions.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);

  *(v2 + v4) = v3;
  return result;
}

uint64_t CoreInteractionRepresentableEffect.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

uint64_t CoreInteractionRepresentableEffect.init(representable:interactions:view:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CoreInteractionRepresentableEffect();
  *(a4 + *(result + 36)) = v7;
  *(a4 + *(result + 40)) = a3;
  return result;
}

uint64_t CoreInteractionRepresentableEffect.makePlatformGroup()(uint64_t a1)
{
  specialized CoreInteractionRepresentableEffect.makePlatformGroup()(a1);

  return swift_unknownObjectRetain();
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = LOBYTE(v13[0]);
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  MEMORY[0x193ABEDD0](0xD00000000000003FLL, 0x800000018DD79E20);
  v12 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v12);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v68 = a2;
  v69 = a3;
  v123 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 48);
  v119 = *(a1 + 32);
  v120 = v14;
  v121 = *(a1 + 64);
  v122 = *(a1 + 80);
  v15 = *(a1 + 16);
  v117 = *a1;
  v118 = v15;
  v16 = v14;
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v14) & 1) == 0 || (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v16) & 1) == 0)
  {
    v17 = *(a1 + 48);
    v77 = *(a1 + 32);
    v78 = v17;
    v79 = *(a1 + 64);
    v80 = *(a1 + 80);
    v18 = *(a1 + 16);
    v75 = *a1;
    v76 = v18;
    return v68();
  }

  v116 = 0uLL;
  (*(a6 + 24))(&v116, a4, a6);
  if (*(*(type metadata accessor for Optional() - 8) + 64))
  {
    closure #1 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1, a4, a5, a6, a7);
  }

  LODWORD(v64) = AGGraphCreateOffsetAttribute2();
  v20 = *(*(a5 - 8) + 64);
  v63 = a8;
  if (v20)
  {
    closure #2 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1, a4, a5, a6, a7);
  }

  v21 = a5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v66 = v117;
  v23 = v116;
  v65 = HIDWORD(v116);
  v67 = &v58;
  *&v75 = __PAIR64__(OffsetAttribute2, v64);
  DWORD2(v75) = DWORD2(v118);
  v76 = v116;
  *&v77 = AnyCoreInteractionHelper.init<A, B>(for:idType:)();
  MEMORY[0x1EEE9AC00](v77);
  v55 = type metadata accessor for CoreInteractionRepresentableEffect();
  *&v111 = a4;
  v61 = v21;
  v62 = a7;
  *(&v111 + 1) = v21;
  *&v112 = a6;
  *(&v112 + 1) = a7;
  v56 = type metadata accessor for CoreInteractionEffect();
  WitnessTable = swift_getWitnessTable();
  v64 = v55;
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v54, v56, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

  LODWORD(v67) = v111;
  CoreInteractionRepresentableFeatureProxy.init(base:)(v111, &v75);
  v26 = v75;
  v66 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v66);
  v59 = v27;
  v60 = 0;
  v113 = v119;
  v114[0] = v120;
  v114[1] = v121;
  v115 = v122;
  v111 = v117;
  v112 = v118;
  result = outlined init with copy of _ViewInputs(&v117, &v75);
  v28 = v65;
  if (v65)
  {
    if (!v23)
    {
      __break(1u);
      goto LABEL_41;
    }

    v29 = 0;
    v30 = v65 - 1;
    do
    {
      v32 = v23 + v29;
      if (v30)
      {
        v29 += *(v32 + 8);
      }

      else
      {
        v29 = 0;
      }

      v31 = v30 | v29;
      *&v75 = v32;
      LODWORD(v105) = v26;
      CoreInteractionRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(&v111, &v105, a4, a6);
      --v30;
    }

    while (v31);
  }

  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*&v114[0]) & 1) != 0 && v66)
  {
    *&v75 = *(v114 + 12);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform();
    HIDWORD(v114[0]) = Attribute.init<A>(body:value:flags:update:)();
    LODWORD(v113) = v113 | 4;
  }

  v33 = v64;
  _GraphValue.init(_:)(v67, &v71);
  v34 = v71;
  v107 = v113;
  v108 = v114[0];
  v109 = v114[1];
  v110 = v115;
  v105 = v111;
  v106 = v112;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v95 = v105;
  v96 = v106;
  v36 = v107;
  LODWORD(v97) = 0;
  LODWORD(v93[0]) = v34;
  v101[0] = v105;
  v101[1] = v106;
  v102 = v110;
  v101[3] = v108;
  v101[4] = v109;
  v101[2] = v97;
  v77 = v97;
  v78 = v108;
  v79 = v109;
  v80 = v110;
  v75 = v105;
  v76 = v106;
  outlined init with copy of _ViewInputs(&v105, v103);
  outlined init with copy of _ViewInputs(v101, v103);
  v37 = swift_getWitnessTable();
  static RendererEffect._makeView(modifier:inputs:body:)(v93, &v75, v68, v69, v33, v37, v72);
  v103[2] = v77;
  v103[3] = v78;
  v103[4] = v79;
  v104 = v80;
  v103[0] = v75;
  v103[1] = v76;
  outlined destroy of _ViewInputs(v103);
  LODWORD(v97) = v36;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v72, &v95);
    AGSubgraphEndTreeElement();
  }

  v93[2] = v97;
  v93[3] = v98;
  v93[4] = v99;
  v94 = v100;
  v93[0] = v95;
  v93[1] = v96;
  result = outlined destroy of _ViewInputs(v93);
  if (!v28)
  {
    goto LABEL_29;
  }

  if (!v23)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v38 = 0;
  v39 = v28 - 1;
  do
  {
    v41 = v23 + v38;
    if (v39)
    {
      v38 += *(v41 + 8);
    }

    else
    {
      v38 = 0;
    }

    v40 = v39 | v38;
    *&v73[0] = v41;
    v89 = v113;
    v90 = v114[0];
    v91 = v114[1];
    v92 = v115;
    v87 = v111;
    v88 = v112;
    v83 = v113;
    v84 = v114[0];
    v85 = v114[1];
    v86 = v115;
    v81 = v111;
    v82 = v112;
    v70 = v26;
    outlined init with copy of _ViewInputs(&v87, &v75);
    CoreInteractionRepresentableFeatureBuffer.Element.modifyViewOutputs<A>(inputs:outputs:proxy:)(&v81, v72, &v70, a4, a6);
    v77 = v83;
    v78 = v84;
    v79 = v85;
    v80 = v86;
    v75 = v81;
    v76 = v82;
    outlined destroy of _ViewInputs(&v75);
    --v39;
  }

  while (v40);
LABEL_29:
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*&v114[0]))
  {
    v42 = specialized static GestureContainerFeature.isEnabled.getter();
    v43 = v63;
    if ((v42 & 1) != 0 && v66)
    {
      closure #3 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(1);
      v44 = AGGraphCreateOffsetAttribute2();
      v89 = v113;
      v90 = v114[0];
      v91 = v114[1];
      v92 = v115;
      v87 = v111;
      v88 = v112;
      v83 = v113;
      v84 = v114[0];
      v85 = v114[1];
      v86 = v115;
      v81 = v111;
      v82 = v112;
      v45 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v72[0]);
      if ((v45 & 0x100000000) != 0)
      {
        outlined init with copy of _ViewInputs(&v87, &v75);
        specialized static GraphHost.currentHost.getter();
        type metadata accessor for ViewGraph();
        swift_dynamicCastClassUnconditional();
        type metadata accessor for [ViewResponder](0);
        v46 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v48, 0);
      }

      else
      {
        v46 = v45;
        outlined init with copy of _ViewInputs(&v87, &v75);
      }

      v49 = CoreInteractionResponderFilter.init(inputs:responderProvider:view:children:)(&v81, v66, v59, v44, v46, &v75);
      MEMORY[0x1EEE9AC00](v49);
      v50 = type metadata accessor for CoreInteractionResponderFilter();
      *&v54[-16] = v50;
      *&v54[-8] = swift_getWitnessTable();
      _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v75, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v54[-32], v50, MEMORY[0x1E69E73E0], v51, MEMORY[0x1E69E7410], v52);
      v53 = LODWORD(v73[0]);
      LOBYTE(v73[0]) = 0;
      PreferencesOutputs.subscript.setter(v53, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      (*(*(v50 - 8) + 8))(&v75, v50);
      v73[2] = v113;
      v73[3] = v114[0];
      v73[4] = v114[1];
      v74 = v115;
      v73[0] = v111;
      v73[1] = v112;
      v47 = v73;
    }

    else
    {
      v77 = v113;
      v78 = v114[0];
      v79 = v114[1];
      v80 = v115;
      v75 = v111;
      v76 = v112;
      v47 = &v75;
    }

    result = outlined destroy of _ViewInputs(v47);
  }

  else
  {
    v77 = v113;
    v78 = v114[0];
    v79 = v114[1];
    v80 = v115;
    v75 = v111;
    v76 = v112;
    result = outlined destroy of _ViewInputs(&v75);
    v43 = v63;
  }

  *v43 = v72[0];
  v43[1] = v72[1];
  return result;
}

uint64_t closure #1 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for CoreInteractionRepresentableModifier();
  v10 = type metadata accessor for Optional();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t closure #2 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for CoreInteractionRepresentableModifier();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t closure #3 in static CoreInteractionRepresentableModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for CoreInteractionRepresentableEffect();
  v3 = *(v2 + 40);
  v7[2] = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, partial apply for closure #1 in static PointerOffset.of(_:), v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v9;
}

id CoreInteractionResponderFilter.init(inputs:responderProvider:view:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v12;
  v35 = *(a1 + 64);
  v36 = *(a1 + 80);
  v13 = *(a1 + 16);
  v31 = *a1;
  v32 = v13;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *a6 = result;
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    swift_weakInit();

    v15 = *(a1 + 16);
    *(a6 + 40) = *(a1 + 32);
    v16 = *(a1 + 32);
    *(a6 + 56) = *(a1 + 48);
    v17 = *(a1 + 48);
    *(a6 + 72) = *(a1 + 64);
    v18 = *(a1 + 16);
    *(a6 + 8) = *a1;
    v19 = *a1;
    *(a6 + 24) = v18;
    v27 = v16;
    v28 = v17;
    v29 = *(a1 + 64);
    *(a6 + 144) = 0;
    *(a6 + 152) = 0;
    *(a6 + 88) = *(a1 + 80);
    *(a6 + 96) = a2;
    *(a6 + 104) = a3;
    *(a6 + 112) = a4;
    v30 = *(a1 + 80);
    v25 = v19;
    v26 = v15;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(&v31, &v24);
    *(a6 + 116) = CachedEnvironment.animatedPosition(for:)(&v25);
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v20 = CachedEnvironment.animatedSize(for:)(&v25);
    swift_endAccess();
    v21 = HIDWORD(v34);
    *(a6 + 120) = v20;
    *(a6 + 124) = v21;
    if (one-time initialization token for layoutDirection != -1)
    {
      swift_once();
    }

    v22 = static CachedEnvironment.ID.layoutDirection;
    swift_beginAccess();
    v23 = specialized CachedEnvironment.attribute<A>(id:_:)(v22);
    swift_endAccess();
    result = outlined destroy of _ViewInputs(&v31);
    *(a6 + 128) = v23;
    *(a6 + 132) = a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreInteractionEffect.representable.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance CoreInteractionEffect<A, B>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoreInteractionRepresentableEffect();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, unsigned int *a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v160 = a7;
  v161 = a8;
  LODWORD(v141) = a4;
  v157 = a3;
  v147 = a2;
  v149 = a1;
  v154 = *v9;
  v12 = v154;
  v13 = v154[15];
  v159 = v154[17];
  v138 = type metadata accessor for CoreInteractionRepresentableEffect();
  v14 = type metadata accessor for Optional();
  v140 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v15;
  v16 = type metadata accessor for Optional();
  v146 = type metadata accessor for UncheckedSendable();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v152 = &v119 - v17;
  v18 = v12[16];
  v19 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v148 = &v119 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v155 = *(v18 - 1);
  v24 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v153 = v16;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v119 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v156 = &v119 - v42;
  v43 = 0;
  v158 = v13;
  if (v13 != a5 || v18 != a6)
  {
    return v43 & 1;
  }

  v120 = v39;
  v136 = v38;
  v125 = v37;
  v126 = v36;
  v137 = v33;
  v144 = v34;
  v130 = v35;
  v131 = v19;
  v128 = v41;
  v143 = v40;
  v124 = v14;
  v150 = *v157;
  MEMORY[0x1EEE9AC00](v33);
  v157 = v44;
  v45 = v158;
  *(&v119 - 8) = v158;
  *(&v119 - 7) = v18;
  *(&v119 - 6) = a5;
  *(&v119 - 5) = v46;
  v47 = v154[18];
  *(&v119 - 4) = v159;
  *(&v119 - 3) = v47;
  v151 = v46;
  v154 = v18;
  v48 = a5;
  v49 = v161;
  *(&v119 - 2) = v160;
  *(&v119 - 1) = v49;
  type metadata accessor for Optional();
  v50 = v156;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v119 - 10), MEMORY[0x1E69E73E0], v45, v51, v156);
  v52 = *(*v9 + 184);
  swift_beginAccess();
  v53 = *(v157 + 2);
  v129 = v52;
  v54 = v153;
  v134 = (v157 + 4);
  v142 = v53;
  v55 = (v53)(v31, v9 + v52, v153);
  v133 = &v119;
  MEMORY[0x1EEE9AC00](v55);
  *(&v119 - 10) = v45;
  v56 = v157;
  *(&v119 - 9) = v154;
  *(&v119 - 8) = v48;
  v135 = v48;
  v57 = v151;
  *(&v119 - 7) = v151;
  *(&v119 - 6) = v159;
  *(&v119 - 5) = v47;
  v127 = v47;
  v58 = v161;
  *(&v119 - 4) = v160;
  *(&v119 - 3) = v58;
  *(&v119 - 2) = v50;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v119 - 12), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v59, v164);
  v61 = *(v56 + 1);
  v60 = v56 + 2;
  v132 = v31;
  v149 = v61;
  result = (v61)(v31, v54);
  v63 = v9 + *(*v9 + 200);
  if (*(v63 + 4))
  {
    v64 = 1;
  }

  else
  {
    v64 = (v150 != *v63) | v141;
  }

  v65 = v155;
  if (*(*(v57 - 8) + 64) != v24)
  {
    __break(1u);
    goto LABEL_33;
  }

  v121 = v64;
  v122 = v164[0] == 2;
  v123 = v164[0];
  v133 = 0;
  v157 = v60;
  v66 = *(v155 + 16);
  v67 = v143;
  v68 = v154;
  v66(v143, v147, v154);
  v69 = v136;
  v66(v136, v67, v68);
  (*(v65 + 56))(v69, 0, 1, v68);
  v70 = *(*v9 + 192);
  swift_beginAccess();
  v71 = *(v137 + 48);
  v72 = *(v144 + 16);
  v73 = v148;
  v74 = v131;
  v72(v148, v69, v131);
  v141 = v71;
  v147 = v9;
  v75 = v9 + v70;
  v76 = v68;
  v72(&v73[v71], v75, v74);
  v77 = *(v65 + 48);
  if (v77(v73, 1, v68) == 1)
  {
    v78 = *(v144 + 8);
    v78(v69, v74);
    v79 = v77(&v73[v141], 1, v68);
    v81 = v152;
    v80 = v153;
    v82 = v147;
    if (v79 == 1)
    {
      v78(v73, v74);
      v83 = 1;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v84 = v125;
  v72(v125, v73, v74);
  v85 = v141;
  if (v77(&v73[v141], 1, v76) == 1)
  {
    (*(v144 + 8))(v136, v74);
    (*(v155 + 8))(v84, v76);
    v81 = v152;
    v80 = v153;
    v82 = v147;
LABEL_12:
    (*(v126 + 8))(v73, v137);
    v83 = 0;
    goto LABEL_14;
  }

  v86 = v155;
  v87 = &v73[v85];
  v88 = v120;
  (*(v155 + 32))(v120, v87, v76);
  v89 = v73;
  v83 = dispatch thunk of static Equatable.== infix(_:_:)();
  v90 = *(v86 + 8);
  v90(v88, v76);
  v91 = *(v144 + 8);
  v91(v136, v74);
  v90(v84, v76);
  v91(v89, v74);
  v81 = v152;
  v80 = v153;
  v82 = v147;
LABEL_14:
  v92 = v150 >> 1;
  v93 = *(*v82 + 176);
  if (v150 >> 1 == *(v82 + v93))
  {
    if ((v83 & 1) == 0)
    {
      _CoreInteractionHelperBox.resetInteractions()();
    }
  }

  else
  {
    _CoreInteractionHelperBox.resetInteractions()();
    *(v82 + v93) = v92;
  }

  v94 = v130;
  v95 = v142;
  v142(v130, v82 + v129, v80);
  v96 = 1;
  v97 = (*(*(v158 - 8) + 48))(v94, 1);
  v149(v94, v80);
  v98 = *(*v82 + 160);
  v99 = *(v82 + v98);
  v100 = v99 == 0;
  if (v99 && v97 == 1)
  {
    v100 = 0;
    v96 = (v122 | v123) ^ 1 | v121;
  }

  v101 = v132;
  v95(v132, v156, v80);
  result = UncheckedSendable.init(_:)(v101, v80, v81);
  if (v100)
  {
    v162 = MEMORY[0x1E69E7CC0];
    UncheckedSendable.init(_:)(&v162, &type metadata for CoreInteractionRepresentableInteractionsProxy, &v163);
    v102 = type metadata accessor for MainActor();
    MEMORY[0x1EEE9AC00](v102);
    v103 = v154;
    *(&v119 - 10) = v158;
    *(&v119 - 9) = v103;
    v104 = v151;
    *(&v119 - 8) = v135;
    *(&v119 - 7) = v104;
    v105 = v127;
    *(&v119 - 6) = v159;
    *(&v119 - 5) = v105;
    v106 = v161;
    *(&v119 - 4) = v160;
    *(&v119 - 3) = v106;
    *(&v119 - 2) = v81;
    *(&v119 - 1) = &v163;
    specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #3 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:), (&v119 - 12), "SwiftUICore/CoreInteractionRepresentable.swift", 46);
    v95 = v142;
    *(v82 + v98) = v163;
  }

  LODWORD(v157) = v96;
  if ((v96 & 1) == 0)
  {
    goto LABEL_30;
  }

  v107 = *(*v82 + 168);
  if (*(v82 + v107))
  {
LABEL_27:
    result = (v95)(v128, v81, v80);
    if (*(v82 + v98))
    {
      v163 = *(v82 + v98);
      v111 = *(v82 + v107);
      v112 = v124;
      if (v111)
      {
        v113 = v139;
        CoreInteractionRepresentableEffect.init(representable:interactions:view:)(v128, &v163, v111, v139);
        (*(*(v138 - 8) + 56))(v113, 0, 1);
        v114 = *(*v82 + 152);
        swift_beginAccess();
        v115 = *(v140 + 40);

        swift_unknownObjectRetain();
        v115(v82 + v114, v113, v112);
        swift_endAccess();
        v81 = v152;
LABEL_30:
        (*(v145 + 8))(v81, v146);
        v116 = v143;
        $defer #3 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(v82, v143);
        (*(v155 + 8))(v116, v154);
        v117 = v82 + *(*v82 + 200);
        *v117 = v150;
        *(v117 + 4) = 0;
        v118 = v156;
        $defer #1 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(v82, v156);
        v149(v118, v80);
        v43 = v157;
        return v43 & 1;
      }

      goto LABEL_34;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v108 = *(v82 + v98);
  if (v108)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v163 = v108;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v148 = *(AssociatedConformanceWitness + 24);

    *(v82 + v107) = (v148)(&v163, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v80 = v153;
    v95 = v142;
    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
  return result;
}