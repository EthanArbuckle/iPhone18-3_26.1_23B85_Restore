double GlassContainer.Storage.appendToNewEntry(item:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x289uLL);
  v3 = BYTE8(__dst[1]);
  v4 = __dst[2];
  v5 = *(&__dst[3] + 1);
  v40 = *&__dst[4];
  v38 = __dst[3];
  v39 = BYTE8(__dst[4]);
  v6 = *&__dst[8];
  v37 = BYTE8(__dst[1]);
  if (*&__dst[8] && (__dst[9] & 1) == 0)
  {
    v36 = *(&__dst[8] + 1);
    v44[0] = __dst[2];

    outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));
    _Glass.Variant.ID.init(_:)(v44, &v42);
    v34 = 0;
    v35 = v42;
    v7 = 256;
    if (!v3)
    {
      v7 = 0;
    }

    v33 = v7 | v43;
  }

  else
  {
    v35 = LODWORD(__dst[0]);
    v6 = *&__dst[1];
    v33 = *(&__dst[0] + 1);

    v36 = 0;
    v34 = 1;
  }

  v31 = __dst[6];
  v32 = __dst[5];
  v8 = *&__dst[7];
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDA6EB0;
  memcpy((v9 + 32), __dst, 0x289uLL);
  v29 = BYTE1(__dst[11]);
  v30 = *(&__dst[11] + 1);
  v10 = *(&__dst[12] + 1);
  v11 = *&__dst[13];
  LOBYTE(v42) = __dst[12];
  outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));

  outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));

  outlined init with copy of GlassContainer.Item(__dst, v44);

  outlined consume of _Glass?(0, 0, 0, 1);
  v12 = outlined consume of _Glass?(0, 0, 0, 1);
  LOBYTE(v44[0]) = 1;
  v27 = v42;
  v28 = (*(*v8 + 128))(v12);
  v41 = v2;
  v13 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[344 * v15];
  *(v16 + 4) = v35;
  *(v16 + 5) = v33;
  v16 += 32;
  *(v16 + 2) = v6;
  *(v16 + 3) = v36;
  v16[32] = v34;
  v17 = *(v44 + 3);
  *(v16 + 33) = v44[0];
  *(v16 + 9) = v17;
  *(v16 + 40) = v4;
  v16[56] = v38;
  v18 = v42;
  *(v16 + 15) = *(&v42 + 3);
  *(v16 + 57) = v18;
  *(v16 + 8) = v5;
  *(v16 + 9) = v40;
  v16[80] = v39;
  v19 = *v53;
  *(v16 + 21) = *&v53[3];
  *(v16 + 81) = v19;
  *(v16 + 104) = v31;
  *(v16 + 88) = v32;
  *(v16 + 15) = v8;
  *(v16 + 16) = v9;
  v16[136] = v37;
  v16[137] = v29;
  v20 = *&v51[7];
  *(v16 + 71) = v52;
  *(v16 + 138) = v20;
  *(v16 + 9) = v4;
  v16[160] = v38;
  v21 = *v51;
  *(v16 + 41) = *&v51[3];
  *(v16 + 161) = v21;
  *(v16 + 21) = v5;
  *(v16 + 22) = v40;
  v16[184] = v39;
  v22 = *v50;
  *(v16 + 47) = *&v50[3];
  *(v16 + 185) = v22;
  *(v16 + 24) = v30;
  v16[200] = v27;
  v23 = *v49;
  *(v16 + 51) = *&v49[3];
  *(v16 + 201) = v23;
  *(v16 + 26) = v10;
  *(v16 + 27) = v11;
  *(v16 + 28) = 0;
  *(v16 + 29) = 0;
  *(v16 + 30) = 0;
  *&result = 1;
  *(v16 + 248) = xmmword_18DD85500;
  v16[264] = 0;
  v25 = *v48;
  *(v16 + 67) = *&v48[3];
  *(v16 + 265) = v25;
  *(v16 + 34) = 0;
  *(v16 + 35) = 0;
  *(v16 + 36) = 0;
  *(v16 + 37) = 1;
  *(v16 + 38) = 0;
  v16[312] = 0;
  LOBYTE(v25) = v47;
  *(v16 + 313) = v46;
  v16[315] = v25;
  *(v16 + 79) = 0;
  v16[320] = 1;
  v26 = *v45;
  *(v16 + 81) = *&v45[3];
  *(v16 + 321) = v26;
  *(v16 + 41) = v28;
  *(v16 + 84) = 0;
  *(v41 + 16) = v13;
  return result;
}

uint64_t GlassContainer.Entry.matches(_:)(uint64_t a1)
{
  v31 = *(a1 + 8);
  v32 = *a1;
  v29 = *(a1 + 24);
  v30 = *(a1 + 16);
  v28 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v35 = *(a1 + 72);
  v34 = *(a1 + 80);
  v26 = *(v1 + 8);
  v27 = *v1;
  v25 = *(v1 + 16);
  v23 = *(a1 + 128);
  v24 = *(v1 + 24);
  v36 = *(a1 + 56);
  v37 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v33 = *(v1 + 128);
  __dst[0] = *(v1 + 40);
  __dst[1] = v5;

  outlined copy of _Glass.Variant.Role(__dst[0], v5);
  _Glass.Variant.ID.init(_:)(__dst, v40);
  __dst[0] = v40[0];
  LOBYTE(__dst[1]) = v40[1];
  __dst[2] = v7;
  LOBYTE(__dst[3]) = v6;
  __dst[4] = v8;
  LOBYTE(__dst[5]) = v9;
  v40[0] = v2;
  v40[1] = v3;

  outlined copy of _Glass.Variant.Role(v2, v3);
  _Glass.Variant.ID.init(_:)(v40, &v38);
  v40[0] = v38;
  LOBYTE(v40[1]) = v39;
  v40[2] = v4;
  LOBYTE(v40[3]) = v36;
  v40[4] = v35;
  LOBYTE(v40[5]) = v34;
  LOBYTE(v5) = specialized static _Glass.ID.== infix(_:_:)(__dst, v40);
  outlined consume of _Glass.Variant.ID(v40[0], v40[1]);

  outlined consume of _Glass.Variant.ID(__dst[0], __dst[1]);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  __dst[0] = v27;
  __dst[1] = v26;
  __dst[2] = v25;
  __dst[3] = v24;
  LOBYTE(__dst[4]) = v37;
  v40[0] = v32;
  v40[1] = v31;
  v40[2] = v30;
  v40[3] = v29;
  LOBYTE(v40[4]) = v28;
  outlined copy of GlassContainer.Entry.ModelID(v27, v26, v25, v24, v37);
  outlined copy of GlassContainer.Entry.ModelID(v32, v31, v30, v29, v28);
  v10 = GlassContainer.Entry.ModelID.matches(_:)(v40);
  outlined consume of GlassContainer.Entry.ModelID(v32, v31, v30, v29, v28);
  result = outlined consume of GlassContainer.Entry.ModelID(v27, v26, v25, v24, v37);
  if (!v10)
  {
    return 0;
  }

  v12 = v33;
  v13 = *(v33 + 16);
  v14 = v23;
  if (v13 != *(v23 + 16))
  {
    return 0;
  }

  if (!v13)
  {
    return 1;
  }

  v15 = 0;
  v16 = (v33 + 32);
  v17 = (v23 + 32);
  while (v15 < *(v12 + 16))
  {
    result = memcpy(__dst, v16, 0x289uLL);
    v18 = *(v14 + 16);
    if (v15 == v18)
    {
      return 1;
    }

    if (v15 >= v18)
    {
      goto LABEL_20;
    }

    memcpy(v40, v17, 0x289uLL);
    if (__dst[1] && (v19 = v40[1]) != 0)
    {
      v20 = v40[2];
      v21 = __dst[2];
      if (__dst[1] != v40[1])
      {
        v22 = *(*__dst[1] + 112);
        outlined init with copy of GlassContainer.Item(__dst, &v38);
        outlined init with copy of GlassContainer.Item(v40, &v38);

        v14 = v23;
        LOBYTE(v22) = v22(v19);
        outlined destroy of GlassContainer.Item(v40);
        outlined destroy of GlassContainer.Item(__dst);

        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      v12 = v33;
      if (v21 != v20)
      {
        return 0;
      }
    }

    else if (LODWORD(__dst[0]) != LODWORD(v40[0]))
    {
      return 0;
    }

    ++v15;
    v17 += 656;
    v16 += 656;
    result = 1;
    if (v13 == v15)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(uint64_t result, uint64_t a2)
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    v8 = (result + 32);
    v9 = *MEMORY[0x1E698D3F8];
    v29 = *(MEMORY[0x1E695F050] + 8);
    v30 = *MEMORY[0x1E695F050];
    v27 = *(MEMORY[0x1E695F050] + 24);
    v28 = *(MEMORY[0x1E695F050] + 16);
    while (1)
    {
      v10 = *v8;

      specialized static Update.begin()();
      if (one-time initialization token for lockAssertionsAreEnabled != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      if (AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9)
      {
        (*(*v10 + 88))(&v31);
        x = v31;
        y = v32;
        width = v33;
        height = v34;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
        v26 = v7;
        v17 = *InputValue;
        v16 = *(InputValue + 8);
        v18 = *(InputValue + 16);
        v19 = *(InputValue + 24);
        v20 = *(InputValue + 32);
        v21 = *(InputValue + 40);
        type metadata accessor for CGPoint(0);

        v22 = AGGraphGetInputValue();
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v20 - (*v22 - v18);
        v31 = v17;
        v32 = v16;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v21 - (v24 - v19);
        (*(*v10 + 96))(v37, &v31);
        v7 = v26;

        x = *v37;
        y = *&v37[1];
        width = *&v37[2];
        height = *&v37[3];
      }

      static Update.end()();
      v38.origin.x = v2;
      v38.origin.y = v3;
      v38.size.width = v4;
      v38.size.height = v5;
      v41.origin.y = v29;
      v41.origin.x = v30;
      v41.size.height = v27;
      v41.size.width = v28;
      if (!CGRectEqualToRect(v38, v41))
      {
        v39.origin.x = v2;
        v39.origin.y = v3;
        v39.size.width = v4;
        v39.size.height = v5;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v40 = CGRectUnion(v39, v42);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
      }

      ++v8;
      v2 = x;
      v3 = y;
      v4 = width;
      v5 = height;
      if (!--v6)
      {
        return result;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

BOOL GlassContainer.Entry.ModelID.matches(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *v1;
  v7 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (!*(v1 + 32))
  {
    if (!*(a1 + 32))
    {
      v21 = *(a1 + 24);
      v22 = v8;
      LOWORD(v23) = v7 & 0x1FF;
      v24 = v10;
      v25 = v9;
      v18 = v3;
      LOWORD(v19) = v2 & 0x1FF;
      v20 = v5;
      v14 = v9;
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      v13 = specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(&v22, &v18);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      return v13;
    }

    goto LABEL_11;
  }

  if (v11 != 1)
  {
    if (v6 == 2 && (v2 | v3 | v5 | v4) == 0)
    {
      outlined consume of GlassContainer.Entry.ModelID(*v1, *(v1 + 8), *(v1 + 16), v9, 2);
      outlined consume of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
      return 1;
    }

    goto LABEL_11;
  }

  if (v6 != 1)
  {
LABEL_11:
    v16 = *(v1 + 24);
    outlined copy of GlassContainer.Entry.ModelID(*a1, v2, v5, v4, v6);
    outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v16, v11);
    outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v16, v11);
    outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    return 0;
  }

  LODWORD(v22) = *v1;
  v23 = v7;
  v24 = v10;
  LODWORD(v18) = v3;
  v19 = v2;
  v20 = v5;
  v12 = v9;
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  v13 = GlassContainer.Item.ID.matches(_:)(&v18);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  return v13;
}

__n128 GlassContainer.Appearance.init()@<Q0>(uint64_t a1@<X8>)
{
  v15 = 1;
  EnvironmentValues.init()(v14);
  v3 = v14[0];
  v2 = v14[1];
  static GlassContainer.AppearanceSettings.match.getter(&v11);
  v9 = v12;
  v4 = v13;
  if (v2)
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v3);
  }

  if (v5 == 2)
  {
    v11 = v3;
    v12.n128_u64[0] = v2;
    v10 = 2;
    v5 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v10);
  }

  v6 = 1.2;
  if (v5)
  {
    v6 = 1.0;
  }

  v7 = v15;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = xmmword_18DDAA020;
  *(a1 + 40) = v6;
  result = v9;
  *(a1 + 48) = v9;
  *(a1 + 64) = v4;
  return result;
}

void GlassContainer.ScalePulse.init()(uint64_t a1@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v50.receiver = swift_getObjCClassFromMetadata();
  v50.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v2 = objc_msgSendSuper2(&v50, sel_rootSettings);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for GlassContainerPTSettings();
    v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(&v39);
    v5 = v39;
    _Q16 = v40;
    v7 = v41;
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v45;
    v12 = v46;
    v13 = v47;
    v14 = v48;
    v15 = v49;
    if (one-time initialization token for enableAdjustments != -1)
    {
      v32 = v41;
      v34 = v48;
      v29 = v44;
      v30 = v43;
      v26 = v45;
      v27 = v46;
      v24 = v40;
      v25 = v39;
      swift_once();
      _Q16 = v24;
      v5 = v25;
      v11 = v26;
      v12 = v27;
      v10 = v29;
      v9 = v30;
      v7 = v32;
      v14 = v34;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v33 = v39;
      v15 = v40;
      Spring.init(duration:bounce:)(0.35, 0.6);
      v31 = v39;
      v8 = v40;
      Spring.init(duration:bounce:)(0.5, 0.5);
      v16 = &unk_18DDA9FF8;
      v17 = vld1q_dup_f64(v16);
      v17.f64[0] = v38;
      v28 = v17;
      Spring.init(duration:bounce:)(0.5, 0.6);
      v10 = v28;
      v9 = v37;
      v7 = v31;
      v14 = v33;
      v18 = &unk_18DDAA008;
      v12 = vld1q_dup_f64(v18);
      v12.f64[0] = v36;
      v11 = v35;
      v5 = vdupq_n_s64(0x3FF3333333333333uLL);
      __asm { FMOV            V16.2D, #16.0 }

      v13 = 10.0;
    }

    *a1 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *(a1 + 8) = _Q0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v5;
    *(a1 + 56) = _Q16;
    *(a1 + 72) = v7;
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    *(a1 + 112) = v10;
    *(a1 + 128) = v11;
    *(a1 + 144) = v12;
    *(a1 + 160) = v13;
    *(a1 + 168) = v14;
    *(a1 + 184) = v15;
  }

  else
  {
    __break(1u);
  }
}

double GlassContainer.TranslationKick.kickDistance.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
    v6 = (v1 + 48);
    v4 = 0uLL;
    v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v4 = vaddq_f64(vaddq_f64(v4, v6[-1]), *v6);
      v6 += 2;
      v7 -= 2;
    }

    while (v7);
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

  v8 = v2 - v3;
  v9 = (v1 + 16 * v3 + 32);
  do
  {
    v10 = *v9++;
    v4 = vaddq_f64(v4, v10);
    --v8;
  }

  while (v8);
LABEL_10:
  *&result = *&vdivq_f64(vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(v2), 0)), vdupq_lane_s64(*(v0 + 88), 0));
  return result;
}

void GlassContainer.Entry.ModelID.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v4);
      if (!v3)
      {
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(1u);
      (*(*v3 + 120))(a1);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = v1[3];
    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(a1);
    Hasher._combine(_:)(BYTE1(v3) & 1);
    (*(*v5 + 120))(a1);
    v6 = v7;
  }

  MEMORY[0x193AC11A0](v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Entry.ModelID()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Entry.ModelID()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Entry.GroupID()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  (*(*v2 + 120))(v5);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GlassContainer.Entry.GroupID(uint64_t a1)
{
  v3 = *(v1 + 9);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  _Glass.Variant.ID.hash(into:)(a1);
  Hasher._combine(_:)(v3);
  (*(*v4 + 120))(a1);
  return MEMORY[0x193AC11A0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Entry.GroupID()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  (*(*v2 + 120))(v5);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

uint64_t specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t result, uint64_t a2)
{
  v88 = *(result + 16);
  if (!v88)
  {
    return result;
  }

  v3 = 0;
  v87 = result + 32;
  while (1)
  {
    v4 = v87 + 200 * v3;
    v5 = *(v4 + 48);
    v92[2] = *(v4 + 32);
    v92[3] = v5;
    v6 = *(v4 + 112);
    v92[6] = *(v4 + 96);
    v92[7] = v6;
    v7 = *(v4 + 80);
    v92[4] = *(v4 + 64);
    v92[5] = v7;
    v93 = *(v4 + 192);
    v8 = *(v4 + 176);
    v92[10] = *(v4 + 160);
    v92[11] = v8;
    v9 = *(v4 + 144);
    v92[8] = *(v4 + 128);
    v92[9] = v9;
    v10 = *(v4 + 16);
    v92[0] = *v4;
    v92[1] = v10;
    v11 = v93;
    v12 = *(v93 + 16);
    if (v12)
    {
      break;
    }

LABEL_4:
    if (++v3 == v88)
    {
      return result;
    }
  }

  v89 = v3;
  v13 = v93 + 32;
  outlined init with copy of GlassContainer.Effect(v92, v91);

  v14 = 0;
  v90 = v11 + 32;
  while (1)
  {
    v15 = (v13 + 344 * v14);
    v16 = *v15;
    v17 = v15[1];
    v96 = *(v15 + 32);
    v94 = v16;
    v95 = v17;
    v18 = *(v15 + 8);
    v19 = *(a2 + 8);
    swift_beginAccess();
    v20 = *(v19 + 184);
    v21 = *(v20 + 16);

    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }

    v24 = v12;
    v25 = *(v20 + 56) + 32 * v22;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 12);
    v29 = *(v25 + 16);
    v30 = *(v25 + 20);
    v31 = *(v25 + 24);
    v32 = *(v19 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v19 + 184);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (v34[3] < v40)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_56;
      }

LABEL_16:
      if (v41)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v44 = v35;
    specialized _NativeDictionary.copy()();
    v35 = v44;
    if (v41)
    {
LABEL_17:
      v43 = v34[7] + 32 * v35;
      *v43 = v26;
      *(v43 + 8) = v27;
      *(v43 + 12) = v28;
      *(v43 + 16) = v29;
      *(v43 + 20) = v30;
      *(v43 + 24) = v31;
      *(v43 + 28) = v32;
      goto LABEL_21;
    }

LABEL_19:
    v34[(v35 >> 6) + 8] |= 1 << v35;
    v45 = v34[6] + 40 * v35;
    v46 = v94;
    v47 = v95;
    *(v45 + 32) = v96;
    *v45 = v46;
    *(v45 + 16) = v47;
    v48 = v34[7] + 32 * v35;
    *v48 = v26;
    *(v48 + 8) = v27;
    *(v48 + 12) = v28;
    *(v48 + 16) = v29;
    *(v48 + 20) = v30;
    *(v48 + 24) = v31;
    *(v48 + 28) = v32;
    v49 = v34[2];
    v39 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v39)
    {
      goto LABEL_54;
    }

    v34[2] = v50;
    outlined init with copy of GlassContainer.Entry.ModelID(&v94, v91);
LABEL_21:
    *(v19 + 184) = v34;
    swift_endAccess();

    v12 = v24;
    if (!v18 || (v51 = *(a2 + 24), (v52 = *(v51 + 16)) == 0))
    {
LABEL_41:
      v76 = *(a2 + 8);
      swift_beginAccess();

      v77 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      v13 = v90;
      if (v78)
      {
        v79 = v77;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(v76 + 184);
        if (!v80)
        {
          specialized _NativeDictionary.copy()();
        }

        v82 = *(v81 + 48) + 40 * v79;
        outlined consume of GlassContainer.Entry.ModelID(*v82, *(v82 + 8), *(v82 + 16), *(v82 + 24), *(v82 + 32));
        specialized _NativeDictionary._delete(at:)(v79, v81);
        *(v76 + 184) = v81;
      }

LABEL_7:
      swift_endAccess();
      goto LABEL_8;
    }

    v53 = v27;
    v54 = v31;
    v55 = (v51 + 56);
    while (1)
    {
      v56 = *(v55 - 4);
      v57 = *(v55 - 3);
      v59 = *(v55 - 2);
      v58 = *(v55 - 1);
      v60 = v56 == v53 && v57 == v28;
      v61 = v60 && v59 == v29;
      if (v61 && v58 == v30)
      {
        v63 = *v55;
        if (*v55 == v54)
        {
          break;
        }
      }

      v55 += 8;
      if (!--v52)
      {
        goto LABEL_41;
      }
    }

    v64 = *(v55 - 3);
    v65 = *(a2 + 8);
    swift_beginAccess();
    v66 = *(v65 + 192);
    outlined init with copy of GlassContainer.Entry.ModelID(&v94, v91);

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = *(v65 + 184);
    v68 = v91[0];
    *(v65 + 184) = 0x8000000000000000;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    v71 = v68[2];
    v72 = (v70 & 1) == 0;
    v39 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v39)
    {
      goto LABEL_55;
    }

    v74 = v70;
    if (v68[3] >= v73)
    {
      if ((v67 & 1) == 0)
      {
        v86 = v69;
        specialized _NativeDictionary.copy()();
        v69 = v86;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, v67);
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_56;
      }
    }

    *&v97 = v64;
    *(&v97 + 1) = __PAIR64__(LODWORD(v57), LODWORD(v56));
    *&v98 = __PAIR64__(LODWORD(v58), LODWORD(v59));
    *(&v98 + 1) = __PAIR64__(v66, LODWORD(v63));
    v83 = v91[0];
    if (v74)
    {
      v84 = (v91[0][7] + 32 * v69);
      v85 = v98;
      *v84 = v97;
      v84[1] = v85;
      outlined destroy of GlassContainer.Entry.ModelID(&v94);
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v69, &v94, &v97, v91[0]);
    }

    v12 = v24;
    *(v65 + 184) = v83;
    swift_endAccess();
    v13 = v90;
LABEL_8:
    ++v14;

    if (v14 == v12)
    {
      outlined destroy of GlassContainer.Effect(v92);

      v3 = v89;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void GlassContainer.DisplayMaterial.ID.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 28);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  _Glass.Variant.ID.hash(into:)(a1);
  if (v4 < 0xFC)
  {
    Hasher._combine(_:)(1u);
    outlined copy of _Glass.Variant.ID(v3, v4);
    _Glass.Variant.ID.hash(into:)(a1);
    outlined consume of _Glass.Variant.ID(v3, v4);
    if (!v6)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v5);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
  if (!v8)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_11:
  Hasher._combine(_:)(0);
  if (v9)
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v9);
    return;
  }

LABEL_12:
  Hasher._combine(_:)(0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.DisplayMaterial.ID()
{
  Hasher.init(_seed:)();
  GlassContainer.DisplayMaterial.ID.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.DisplayMaterial.ID()
{
  Hasher.init(_seed:)();
  GlassContainer.DisplayMaterial.ID.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  return v2 < v3;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  return v3 >= v2;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  return v2 >= v3;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  return v3 < v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t GlassContainer.DataStorage.description.getter(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;
  *(v2 + 32) = Double.description.getter();
  *(v2 + 40) = v3;
  if (*(a1 + 16))
  {
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v4 = Dictionary.description.getter();
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v7 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v5;
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
      v5 = v14;
      v2 = v15;
      v4 = v13;
    }

    *(v2 + 16) = v7 + 1;
    v8 = v2 + 16 * v7;
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
  }

  _StringGuts.grow(_:)(20);

  v9 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v11 = v10;

  MEMORY[0x193ABEDD0](v9, v11);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t GlassContainer.ItemData.description.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  v1 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    strcpy(v5 + 32, "hasDisplayList");
    v5[47] = -18;
  }

  if (AGWeakAttributeGetAttribute() != v1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000011;
    *(v8 + 5) = 0x800000018DD7C4F0;
  }

  _StringGuts.grow(_:)(17);

  strcpy(v13, "GlassItemData(");
  v9 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v11 = v10;

  MEMORY[0x193ABEDD0](v9, v11);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v13[0];
}

uint64_t GlassContainer.Item.description.getter()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 128);
  v22 = *(v0 + 24);
  v23 = *(v0 + 177);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDAF080;
  *(v2 + 32) = GlassContainer.Item.ID.description.getter();
  *(v2 + 40) = v3;
  *(v2 + 48) = _Glass.debugDescription.getter();
  *(v2 + 56) = v4;
  if (v1 == -1)
  {
    v5 = 0xE700000000000000;
    v6 = 0x64696C61766E69;
  }

  else if (v1)
  {
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7974706D65;
  }

  *(v2 + 64) = v6;
  *(v2 + 72) = v5;
  if (v22)
  {
    v7 = 4;
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 4, 1, v2);
    *(v2 + 16) = 4;
    *(v2 + 80) = 0x656C62616E457369;
    *(v2 + 88) = 0xE900000000000064;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 3;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  v8 = *(v2 + 24);
  if (v7 >= v8 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 16) = v7 + 1;
  v9 = v2 + 16 * v7;
  *(v9 + 32) = 0x6E65646469487369;
  *(v9 + 40) = 0xE800000000000000;
LABEL_13:
  if (v24)
  {
    v10 = *(*v24 + 88);

    v12 = v10(v11);
    v14 = v13;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  v18 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v20 = v19;

  MEMORY[0x193ABEDD0](v18, v20);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x6574497373616C47;
}

uint64_t GlassContainer.Item.ID.description.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;

  _StringGuts.grow(_:)(16);

  strcpy(v15, "ViewIdentity(");
  HIWORD(v15[1]) = -4864;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v4 = v15[1];
  *(v2 + 32) = v15[0];
  *(v2 + 40) = v4;
  if (v1)
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = *(*v1 + 88);

    v7 = v5(v6);
    MEMORY[0x193ABEDD0](v7);

    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v9 >= v8 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 16) = v9 + 1;
    v10 = v2 + 16 * v9;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
  }

  strcpy(v15, "GlassItemID(");
  v11 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v13 = v12;

  MEMORY[0x193ABEDD0](v11, v13);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v15[0];
}

uint64_t GlassContainer.Entry.ModelID.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v3 = GlassContainer.Item.ID.description.getter();
      MEMORY[0x193ABEDD0](v3);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return 0x2844497972746E45;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);
    MEMORY[0x193ABEDD0](0x2844497972746E45, 0xE800000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    if ((v1 & 0x100) != 0)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if ((v1 & 0x100) != 0)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x193ABEDD0](v5, v6);

    v7 = MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    v8 = (*(*v2 + 88))(v7);
    MEMORY[0x193ABEDD0](v8);

    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t GlassContainer.Entry.description.getter()
{
  v25 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 137);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18DDACA80;
  *(v1 + 32) = GlassContainer.Entry.ModelID.description.getter();
  *(v1 + 40) = v2;
  *(v1 + 48) = _Glass.debugDescription.getter();
  *(v1 + 56) = v3;
  *(v1 + 64) = GlassContainer.DisplayMaterial.description.getter();
  *(v1 + 72) = v4;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v1 + 80) = BinaryInteger.description.getter();
  *(v1 + 88) = v5;
  v28 = v1;
  if (v23 == 1)
  {
    v6 = 5;
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 5, 1, v1);
    *(v1 + 16) = 5;
    *(v1 + 96) = 0x656C62616E457369;
    *(v1 + 104) = 0xE900000000000064;
    v28 = v1;
  }

  else
  {
    v6 = 4;
  }

  if (v24)
  {
    v7 = *(v1 + 24);
    if (v6 >= v7 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 16) = v6 + 1;
    v8 = v1 + 16 * v6;
    *(v8 + 32) = 0x6E65646469487369;
    *(v8 + 40) = 0xE800000000000000;
    v28 = v1;
  }

  v9 = *(v25 + 16);
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v26;
    v11 = v25 + 40;
    do
    {
      v12 = GlassContainer.Item.ID.description.getter();
      v27 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v12;
        v18 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v12 = v17;
        v10 = v27;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 656;
      --v9;
    }

    while (v9);
    specialized Array.append<A>(contentsOf:)(v10);
    v1 = v28;
  }

  v19 = MEMORY[0x193ABF1C0](v1, MEMORY[0x1E69E6158]);
  v21 = v20;

  MEMORY[0x193ABEDD0](v19, v21);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x287972746E45;
}

unint64_t GlassContainer.DisplayMaterial.description.getter()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v27 = *(v0 + 128);
  v29 = *(v0 + 144);
  v30 = *(v0 + 136);
  v31 = *(v0 + 152);
  v28 = *(v0 + 176);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDA6EB0;
  v6 = v5;
  outlined copy of _Glass?(v2, v1, v4, v3);
  *(v6 + 4) = _Glass.debugDescription.getter();
  *(v6 + 5) = v7;
  if (v3 != 1)
  {
    if (v31 == 1 || (v28 & 1) != 0)
    {
      outlined consume of _Glass?(v2, v1, v4, v3);
    }

    else
    {
      outlined copy of _Glass.Variant.Role(v27, v30);

      v8 = _Glass.debugDescription.getter();
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v33 = v9;
        v36 = v8;
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
        v9 = v33;
        v8 = v36;
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
      v13 = _Glass.debugDescription.getter();
      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v34 = v14;
        v37 = v13;
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        v14 = v34;
        v13 = v37;
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v18 = BinaryInteger.description.getter();
      v32 = v19;
      v35 = v18;
      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v6);
      }

      outlined consume of _Glass?(v2, v1, v4, v3);
      outlined consume of _Glass?(v27, v30, v29, v31);
      *(v6 + 2) = v21 + 1;
      v22 = &v6[16 * v21];
      *(v22 + 4) = v35;
      *(v22 + 5) = v32;
    }
  }

  _StringGuts.grow(_:)(19);

  v23 = MEMORY[0x193ABF1C0](v6, MEMORY[0x1E69E6158]);
  v25 = v24;

  MEMORY[0x193ABEDD0](v23, v25);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t GlassContainer.Effect.description.getter()
{
  v1 = *(v0 + 192);
  _StringGuts.grow(_:)(18);

  v2 = GlassContainer.DisplayMaterial.description.getter();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v4 = MEMORY[0x193ABF1C0](v1, &type metadata for GlassContainer.Entry);
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x28746365666645;
}

uint64_t specialized static GlassContainer.Appearance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((v4 & 1) == 0)
    {
      v8 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
      if (v8 && v2 == v5)
      {
        return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1;
      }
    }

    return 0;
  }

  if (v3 != v6)
  {
    v4 = 0;
  }

  if (v4 != 1 || v2 != v5)
  {
    return 0;
  }

  return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1;
}

BOOL specialized static GlassContainer.ScalePulse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v6 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 32) == *(a2 + 32))
  {
    v20 = v2;
    v21 = v3;
    v7 = *(a1 + 152);
    v18[6] = *(a1 + 136);
    v18[7] = v7;
    v18[8] = *(a1 + 168);
    v19 = *(a1 + 184);
    v8 = *(a1 + 88);
    v18[2] = *(a1 + 72);
    v18[3] = v8;
    v9 = *(a1 + 120);
    v18[4] = *(a1 + 104);
    v18[5] = v9;
    v10 = *(a1 + 56);
    v18[0] = *(a1 + 40);
    v18[1] = v10;
    v11 = *(a2 + 152);
    v16[6] = *(a2 + 136);
    v16[7] = v11;
    v16[8] = *(a2 + 168);
    v17 = *(a2 + 184);
    v12 = *(a2 + 88);
    v16[2] = *(a2 + 72);
    v16[3] = v12;
    v13 = *(a2 + 120);
    v16[4] = *(a2 + 104);
    v16[5] = v13;
    v14 = *(a2 + 56);
    v16[0] = *(a2 + 40);
    v16[1] = v14;
    return specialized static GlassContainer.ScalePulseSettings.== infix(_:_:)(v18, v16);
  }

  return v4;
}

BOOL specialized static GlassContainer.ResolvedPhase.== infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      if ((a2 & 0xC000) == 0x4000)
      {
        return ((a2 ^ a1) & 1) == 0;
      }
    }

    else if (a2 == 0x8000)
    {
      return 1;
    }

    return 0;
  }

  if (a2 >= 0x4000u)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0 && ((a2 ^ a1) & 0x100) == 0;
}

BOOL specialized static GlassContainer.TranslationKick.== infix(_:_:)(void *a1, void *a2)
{
  v2 = (a1 + 3);
  v3 = (a2 + 3);
  if (*a1 == *a2)
  {
    v4 = a2[2];
    v5 = a1[2];
    v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo6CGSizeV_Tt1g5(a1[1], a2[1]);
    v7 = 0;
    if ((v6 & 1) != 0 && v5 == v4)
    {
      v8 = v2[3];
      v15[2] = v2[2];
      v15[3] = v8;
      v16 = v2[4].f64[0];
      v9 = v2[1];
      v15[0] = *v2;
      v15[1] = v9;
      v10 = v3[3];
      v13[2] = v3[2];
      v13[3] = v10;
      v14 = v3[4].f64[0];
      v11 = v3[1];
      v13[0] = *v3;
      v13[1] = v11;
      return specialized static GlassContainer.TranslationKickSettings.== infix(_:_:)(v15, v13);
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

BOOL specialized static GlassContainer.TransitionState.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v62 = a1[2];
  v63 = v4;
  v5 = *(a1 + 9);
  *&v64 = *(a1 + 8);
  v6 = a1[1];
  v60 = *a1;
  v61 = v6;
  v7 = *(a1 + 10);
  v8 = *(a1 + 11);
  v9 = a1[19];
  v72 = a1[18];
  v73 = v9;
  v10 = a1[20];
  v11 = a1[21];
  v12 = a1[23];
  v76 = a1[22];
  v77 = v12;
  v74 = v10;
  v75 = v11;
  v13 = a2[3];
  v50 = a2[2];
  v51 = v13;
  v14 = *(a2 + 9);
  *&v52 = *(a2 + 8);
  v15 = a2[1];
  v48 = *a2;
  v49 = v15;
  v16 = *(a2 + 10);
  v17 = *(a2 + 11);
  v18 = a2[19];
  v78 = a2[18];
  v79 = v18;
  v19 = a2[20];
  v20 = a2[21];
  v21 = a2[23];
  v82 = a2[22];
  v83 = v21;
  v80 = v19;
  v81 = v20;
  v22 = 0;
  if ((specialized static GlassContainer.Appearance.== infix(_:_:)(&v60, &v48) & 1) != 0 && v5 == v14 && v7 == v16 && v8 == v17)
  {
    v23 = a1[15];
    v68 = a1[14];
    v69 = v23;
    v24 = a1[17];
    v70 = a1[16];
    v71 = v24;
    v25 = a1[11];
    v64 = a1[10];
    v65 = v25;
    v26 = a1[13];
    v66 = a1[12];
    v67 = v26;
    v27 = a1[7];
    v60 = a1[6];
    v61 = v27;
    v28 = a1[9];
    v62 = a1[8];
    v63 = v28;
    v29 = a2[15];
    v56 = a2[14];
    v57 = v29;
    v30 = a2[17];
    v58 = a2[16];
    v59 = v30;
    v31 = a2[11];
    v52 = a2[10];
    v53 = v31;
    v32 = a2[13];
    v54 = a2[12];
    v55 = v32;
    v33 = a2[7];
    v48 = a2[6];
    v49 = v33;
    v34 = a2[9];
    v50 = a2[8];
    v51 = v34;
    if (specialized static GlassContainer.ScalePulse.== infix(_:_:)(&v60, &v48))
    {
      v44 = v74;
      v45 = v75;
      v46 = v76;
      v47 = v77;
      v42 = v72;
      v43 = v73;
      v38 = v80;
      v39 = v81;
      v40 = v82;
      v41 = v83;
      v36 = v78;
      v37 = v79;
      v22 = specialized static GlassContainer.TranslationKick.== infix(_:_:)(&v42, &v36);
      v50 = v38;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      v48 = v36;
      v49 = v37;
      outlined init with copy of GlassContainer.TranslationKick(&v72, &v60);
      outlined init with copy of GlassContainer.TranslationKick(&v78, &v60);
      outlined destroy of GlassContainer.TranslationKick(&v48);
      v62 = v44;
      v63 = v45;
      v64 = v46;
      v65 = v47;
      v60 = v42;
      v61 = v43;
      outlined destroy of GlassContainer.TranslationKick(&v60);
    }

    else
    {
      return 0;
    }
  }

  return v22;
}

BOOL specialized static GlassContainer.Item.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (!v2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:

    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v2 == v3)
  {
    swift_retain_n();
  }

  else
  {
    v7 = *(*v2 + 112);
    swift_retain_n();

    LOBYTE(v7) = v7(v8);

    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  return v4 == v5;
}

BOOL specialized static GlassContainer.Item.ID.Explicit.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 == *a2)
  {
    return v2 == v3;
  }

  v4 = *(**a1 + 112);

  LOBYTE(v4) = v4(v5);

  return (v4 & 1) != 0 && v2 == v3;
}

BOOL specialized static GlassContainer.DisplayMaterial.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = *(a1 + 48);
  v19 = *(a1 + 56);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v20 = *(a1 + 28);
  v21 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a1 + 8);
  v14 = *(a2 + 8);
  v25 = *a1;
  v26 = v13;
  v23 = v6;
  v24 = v14;
  outlined copy of _Glass.Variant.ID(v25, v13);
  outlined copy of _Glass.Variant.ID(v6, v14);
  LOBYTE(v6) = static _Glass.Variant.ID.== infix(_:_:)(&v25, &v23);
  outlined consume of _Glass.Variant.ID(v23, v24);
  outlined consume of _Glass.Variant.ID(v25, v26);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v3 > 0xFB)
  {
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined copy of _Glass.Variant.ID?(v7, v8);
    if (v8 > 0xFB)
    {
      outlined consume of _Glass.Variant.ID?(v2, v3);
      goto LABEL_10;
    }

LABEL_7:
    outlined consume of _Glass.Variant.ID?(v2, v3);
    outlined consume of _Glass.Variant.ID?(v7, v8);
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (v8 > 0xFB)
  {
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined copy of _Glass.Variant.ID?(v7, v8);
    outlined copy of _Glass.Variant.ID?(v2, v3);
    outlined consume of _Glass.Variant.ID(v2, v3);
    goto LABEL_7;
  }

  v23 = v7;
  v24 = v8;
  outlined copy of _Glass.Variant.ID?(v2, v3);
  outlined copy of _Glass.Variant.ID?(v7, v8);
  outlined copy of _Glass.Variant.ID?(v2, v3);
  v16 = static _Glass.Variant.ID.== infix(_:_:)(&v25, &v23);
  outlined consume of _Glass.Variant.ID(v23, v24);
  outlined consume of _Glass.Variant.ID(v25, v26);
  outlined consume of _Glass.Variant.ID?(v2, v3);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v4)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == v9)
    {
      v17 = v10;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v22)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v18 = v21;
    if (v5 != v11)
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (!v19)
  {
    return !v12;
  }

  return v12 && v19 == v12;
}

uint64_t outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(uint64_t a1)
{
  type metadata accessor for (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v16 = *a1;
  v17 = v9;
  v14 = v5;
  v15 = v10;
  outlined copy of _Glass.Variant.ID(v16, v9);
  outlined copy of _Glass.Variant.ID(v5, v10);
  LOBYTE(v5) = specialized static _Glass.Variant.ID.== infix(_:_:)(&v16, &v14);
  outlined consume of _Glass.Variant.ID(v14, v15);
  outlined consume of _Glass.Variant.ID(v16, v17);
  result = 0;
  if ((v5 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
    if (v3 == v7)
    {
      return v4 == v8;
    }

    v12 = *(*v3 + 112);

    LOBYTE(v12) = v12(v13);

    return (v12 & 1) != 0 && v4 == v8;
  }

  return result;
}

BOOL specialized static GlassContainer.Entry.ModelID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v18 = *(a2 + 24);
      v19 = v3;
      LOWORD(v20) = v2 & 0x1FF;
      v21 = v5;
      v22 = v4;
      v15 = v8;
      LOWORD(v16) = v7 & 0x1FF;
      v17 = v10;
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      v12 = specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(&v19, &v15);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      return v12;
    }

    goto LABEL_11;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      outlined consume of GlassContainer.Entry.ModelID(*a1, v2, v5, v4, 2);
      outlined consume of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
      return 1;
    }

    goto LABEL_11;
  }

  if (v11 != 1)
  {
LABEL_11:
    outlined copy of GlassContainer.Entry.ModelID(*a2, *(a2 + 8), v10, v9, v11);
    outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, v11);
    return 0;
  }

  LODWORD(v19) = *a1;
  v20 = v2;
  v21 = v5;
  LODWORD(v15) = v8;
  v16 = v7;
  v17 = v10;
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  v12 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v19, &v15);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v9, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  return v12;
}

uint64_t destroy for GlassContainer.DisplayMaterial.ID(uint64_t a1)
{
  result = outlined consume of _Glass.Variant.ID(*a1, *(a1 + 8));
  v3 = *(a1 + 24);
  if (v3 <= 0xFB)
  {
    v4 = *(a1 + 16);

    return outlined consume of _Glass.Variant.ID(v4, v3);
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  if (v6 <= 0xFB)
  {
    v7 = *(a2 + 16);
    outlined copy of _Glass.Variant.ID(v7, *(a2 + 24));
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
  }

  else
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  v8 = *(a2 + 24);
  if (*(a1 + 24) <= 0xFBu)
  {
    if (v8 <= 0xFB)
    {
      v12 = *(a2 + 16);
      outlined copy of _Glass.Variant.ID(v12, *(a2 + 24));
      v13 = *(a1 + 16);
      *(a1 + 16) = v12;
      v14 = *(a1 + 24);
      *(a1 + 24) = v8;
      outlined consume of _Glass.Variant.ID(v13, v14);
    }

    else
    {
      outlined destroy of _Glass.Variant.ID(a1 + 16);
      v10 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v10;
    }
  }

  else if (v8 <= 0xFB)
  {
    v11 = *(a2 + 16);
    outlined copy of _Glass.Variant.ID(v11, *(a2 + 24));
    *(a1 + 16) = v11;
    *(a1 + 24) = v8;
  }

  else
  {
    v9 = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = v9;
  }

  v15 = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = v15;
  v16 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v16;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for GlassContainer.DisplayMaterial.ID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  v7 = *(a1 + 24);
  if (v7 <= 0xFB)
  {
    v8 = *(a2 + 24);
    if (v8 <= 0xFB)
    {
      v9 = *(a1 + 16);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v8;
      outlined consume of _Glass.Variant.ID(v9, v7);
      goto LABEL_6;
    }

    outlined destroy of _Glass.Variant.ID(a1 + 16);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.DisplayMaterial.ID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 64))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GlassContainer.DisplayMaterial.ID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t assignWithTake for GlassContainer.Storage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for GlassContainer.DataStorage(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t assignWithCopy for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  return a1;
}

uint64_t assignWithTake for GlassContainer.ItemData(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v9 == 1)
    {
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      outlined copy of _Glass.Variant.Role(v14, v15);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
    v12 = *(a2 + 105);
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    *(a1 + 105) = v12;
  }

  else
  {
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v16, v17);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    outlined consume of _Glass.Variant.Role(v18, v19);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
  }

  v20 = *(a2 + 152);
  if (*(a1 + 152) == 1)
  {
    if (v20 == 1)
    {
      v21 = *(a2 + 128);
      v22 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
    }

    else
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      outlined copy of _Glass.Variant.Role(v25, v26);
      *(a1 + 128) = v25;
      *(a1 + 136) = v26;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v20 == 1)
  {
    outlined destroy of _Glass(a1 + 128);
    v23 = *(a2 + 153);
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    *(a1 + 153) = v23;
  }

  else
  {
    v27 = *(a2 + 128);
    v28 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v27, v28);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    *(a1 + 128) = v27;
    *(a1 + 136) = v28;
    outlined consume of _Glass.Variant.Role(v29, v30);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  v31 = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = v31;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t assignWithTake for GlassContainer.Effect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  if (*(a1 + 104) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 104);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
LABEL_4:
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    *(a1 + 105) = *(a2 + 105);
    goto LABEL_6;
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
LABEL_6:
  if (*(a1 + 152) != 1)
  {
    v10 = *(a2 + 152);
    if (v10 != 1)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 136);
      *(a1 + 128) = *(a2 + 128);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v10;

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 128);
  }

  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 153) = *(a2 + 153);
LABEL_11:
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Effect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 192);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Effect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.ID(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.GroupID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Glass.Variant.ID(v5, v6);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t initializeWithCopy for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 96);
  v6 = *(a2 + 112);
  v7 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v7;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v8 = *(a2 + 160);
  v9 = *(a2 + 176);
  v10 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v10;
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  v11 = *(a2 + 224);
  v12 = *(a2 + 240);
  v13 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v13;
  *(a1 + 224) = v11;
  *(a1 + 240) = v12;
  v14 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v14;
  *(a1 + 304) = *(a2 + 304);
  v15 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v15;
  *(a1 + 376) = *(a2 + 376);
  v16 = *(a2 + 328);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 328) = v16;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  return a1;
}

uint64_t assignWithTake for GlassContainer.TransitionState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  v4 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v4;

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v5 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v5;
  v6 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.TransitionState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 296);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.TransitionState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 296) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item.ID(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t destroy for GlassContainer.Item(uint64_t *a1)
{

  outlined consume of _Glass.Variant.Role(a1[4], a1[5]);

  if (a1[28] != 1)
  {
  }

  if (a1[31] != 1)
  {
  }
}

uint64_t initializeWithCopy for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of _Glass.Variant.Role(v5, v6);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v9;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v10;
  v11 = *(a2 + 224);

  if (v11 == 1)
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    v12 = *(a2 + 232);
    *(a1 + 224) = v11;
    *(a1 + 232) = v12;
  }

  v13 = *(a2 + 248);
  if (v13 == 1)
  {
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = *(a2 + 256);
  }

  else
  {
    *(a1 + 240) = *(a2 + 240);
    v14 = *(a2 + 256);
    *(a1 + 248) = v13;
    *(a1 + 256) = v14;
  }

  *(a1 + 328) = *(a2 + 328);
  v15 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v15;
  v16 = *(a2 + 280);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = v16;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  v17 = *(a2 + 360);
  v18 = *(a2 + 376);
  v19 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v19;
  *(a1 + 360) = v17;
  *(a1 + 376) = v18;
  v20 = *(a2 + 424);
  v21 = *(a2 + 440);
  v22 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v22;
  *(a1 + 424) = v20;
  *(a1 + 440) = v21;
  v23 = *(a2 + 488);
  v24 = *(a2 + 504);
  v25 = *(a2 + 536);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 536) = v25;
  *(a1 + 488) = v23;
  *(a1 + 504) = v24;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  v26 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v26;
  *(a1 + 640) = *(a2 + 640);
  v27 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v27;
  *(a1 + 648) = *(a2 + 648);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of _Glass.Variant.Role(v4, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  v8 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v8;
  v9 = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 152) = v9;
  *(a1 + 177) = *(a2 + 177);
  v10 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v10;
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  v11 = *(a2 + 224);
  if (*(a1 + 224) == 1)
  {
    if (v11 == 1)
    {
      v12 = *(a2 + 216);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 216) = v12;
    }

    else
    {
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
    }
  }

  else if (v11 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
    v13 = *(a2 + 232);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = v13;
  }

  else
  {
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);

    *(a1 + 232) = *(a2 + 232);
  }

  v14 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v14 == 1)
    {
      v15 = *(a2 + 240);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 240) = v15;
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
    }
  }

  else
  {
    if (v14 == 1)
    {
      outlined destroy of GlassContainer.Item.ID(a1 + 240);
      v16 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
    }

    else
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);

      v16 = *(a2 + 256);
    }

    *(a1 + 256) = v16;
  }

  *(a1 + 264) = *(a2 + 264);
  v17 = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 272) = v17;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  if (*(a1 + 224) == 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 224);
  if (v7 == 1)
  {
    outlined destroy of GlassContainer.Item.ID(a1 + 216);
LABEL_4:
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    goto LABEL_6;
  }

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v7;

  *(a1 + 232) = *(a2 + 232);
LABEL_6:
  if (*(a1 + 248) != 1)
  {
    v8 = *(a2 + 248);
    if (v8 != 1)
    {
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = v8;

      goto LABEL_11;
    }

    outlined destroy of GlassContainer.Item.ID(a1 + 240);
  }

  *(a1 + 240) = *(a2 + 240);
LABEL_11:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  v9 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v9;
  v10 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v10;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = *(a2 + 392);
  v11 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v11;
  v12 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v12;
  v13 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v13;
  v14 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v14;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  v15 = *(a2 + 592);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = v15;
  v16 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v16;
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Item(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 649))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Item(uint64_t result, int a2, int a3)
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
    *(result + 648) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 649) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 649) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration()
{
  result = lazy protocol witness table cache variable for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration;
  if (!lazy protocol witness table cache variable for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.ResolvedPhase.PreparingConfiguration and conformance GlassContainer.ResolvedPhase.PreparingConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate()
{
  result = lazy protocol witness table cache variable for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate;
  if (!lazy protocol witness table cache variable for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.ResolvedUpdate and conformance GlassContainer.ResolvedUpdate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID()
{
  result = lazy protocol witness table cache variable for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Entry.GroupID and conformance GlassContainer.Entry.GroupID);
  }

  return result;
}

uint64_t specialized GlassContainer.Storage.matches(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a1 + 16))
  {

    if (v2)
    {
      v5 = (a2 + 32);
      v6 = (a1 + 32);
      do
      {
        memcpy(v11, v6, 0x154uLL);
        memcpy(__dst, v5, sizeof(__dst));
        v7 = GlassContainer.Entry.matches(_:)(v11);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v6 += 344;
        v5 += 344;
        --v2;
      }

      while (v2);
    }

    else
    {
      v7 = 1;
    }

    v9 = v7;

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v71 = *(result + 16);
  if (!v71)
  {
    return result;
  }

  v6 = a3;
  v7 = a2;
  v8 = 0;
  v70 = result + 32;
  while (1)
  {
    v9 = v70 + 200 * v8;
    v10 = *(v9 + 48);
    v89[2] = *(v9 + 32);
    v89[3] = v10;
    v11 = *(v9 + 112);
    v89[6] = *(v9 + 96);
    v89[7] = v11;
    v12 = *(v9 + 80);
    v89[4] = *(v9 + 64);
    v89[5] = v12;
    v13 = *(v9 + 192);
    v90 = v13;
    v14 = *(v9 + 176);
    v89[10] = *(v9 + 160);
    v89[11] = v14;
    v15 = *(v9 + 144);
    v89[8] = *(v9 + 128);
    v89[9] = v15;
    v16 = *(v9 + 16);
    v89[0] = *v9;
    v89[1] = v16;
    v82 = *(v13 + 16);
    if (v82)
    {
      break;
    }

LABEL_4:
    if (++v8 == v71)
    {
      return result;
    }
  }

  v72 = v8;
  v81 = v13 + 32;
  outlined init with copy of GlassContainer.Effect(v89, __dst);

  v17 = 0;
  while (1)
  {
    memcpy(__dst, (v81 + 344 * v17), sizeof(__dst));
    if (!*&__dst[64])
    {
      goto LABEL_9;
    }

    v77 = __dst[8];
    v78 = *__dst;
    v93 = *__dst;
    v76 = *&__dst[16];
    v94 = *&__dst[16];
    v80 = *&__dst[24];
    v79 = __dst[32];
    v95 = __dst[32];
    v87[0] = v7;
    v87[1] = v6;
    v18 = *(**&__dst[64] + 120);
    outlined init with copy of GlassContainer.Entry(__dst, &v83);

    v18(&v91, v87);
    v19 = *(a4 + 8);
    swift_beginAccess();
    v20 = *(v19 + 184);
    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
      if (v23)
      {
        break;
      }
    }

    swift_endAccess();

LABEL_8:
    outlined destroy of GlassContainer.Entry(__dst);
LABEL_9:
    if (++v17 == v82)
    {
      outlined destroy of GlassContainer.Effect(v89);

      v8 = v72;
      goto LABEL_4;
    }
  }

  v24 = a4;
  v25 = *(v20 + 56) + 32 * v22;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 12);
  v29 = *(v25 + 16);
  v30 = *(v25 + 20);
  v31 = *(v25 + 24);
  v32 = *(v19 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87[0] = *(v19 + 184);
  v34 = v87[0];
  v36 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
  v37 = *(v34 + 16);
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (!__OFADD__(v37, v38))
  {
    v40 = v35;
    if (*(v34 + 24) < v39)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(&v93);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_56;
      }

      v36 = v41;
      v43 = v87[0];
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_20:
      v44 = v43[7] + 32 * v36;
      *v44 = v26;
      *(v44 + 8) = v27;
      *(v44 + 12) = v28;
      *(v44 + 16) = v29;
      *(v44 + 20) = v30;
      *(v44 + 24) = v31;
      *(v44 + 28) = v32;
LABEL_24:
      *(v19 + 184) = v43;
      swift_endAccess();

      a4 = v24;
      v51 = *(v24 + 24);
      v52 = *(v51 + 2);
      v6 = a3;
      if (!v52)
      {
        goto LABEL_44;
      }

      v53 = 0;
      v54 = 60;
      while (1)
      {
        v55 = *&v51[v54 - 28] == v26 && *&v51[v54 - 20] == v27;
        v56 = v55 && *&v51[v54 - 16] == v28;
        v57 = v56 && *&v51[v54 - 12] == v29;
        v58 = v57 && *&v51[v54 - 8] == v30;
        if (v58 && *&v51[v54 - 4] == v31)
        {
          break;
        }

        ++v53;
        v54 += 32;
        if (v52 == v53)
        {
          goto LABEL_44;
        }
      }

      if ((v26 & ~*a5) != 0)
      {
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *(v24 + 24) = v51;
        v7 = a2;
        if ((v59 & 1) == 0)
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
          *(v24 + 24) = v51;
        }

        if (v53 >= *(v51 + 2))
        {
          goto LABEL_54;
        }

        v60 = &v51[v54];
        *(v60 - 20) = v91;
        *(v60 - 1) = v92;
        *(*(v24 + 24) + v54) = *(v24 + 32);
        v61 = *(v24 + 8);
        v62 = *(v24 + 24) + v54;
        v63 = *(v62 - 28);
        v64 = *(v62 - 4);
        v69 = *(v62 - 20);
        swift_beginAccess();
        v65 = *(v61 + 192);
        v96 = v63;
        v97 = v69;
        v98 = v64;
        v99 = v65;
        outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);

        v66 = swift_isUniquelyReferenced_nonNull_native();
        v87[0] = *(v61 + 184);
        *(v61 + 184) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v96, &v93, v66);
        outlined consume of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
        *(v61 + 184) = v87[0];
        swift_endAccess();

        outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
        specialized Set._Variant.insert(_:)(&v83, &v93);
        outlined consume of GlassContainer.Entry.ModelID(v83.i64[0], v83.u8[8], v84, v85, v86);
        v67 = *(v24 + 24);
        if (v53 >= *(v67 + 16))
        {
          goto LABEL_55;
        }

        v68 = *(v67 + v54 - 28);

        if ((v68 & ~*a5) != 0)
        {
          *a5 |= v68;
        }
      }

      else
      {
LABEL_44:

        v7 = a2;
      }

      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v43 = v87[0];
      if (v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v43 = v87[0];
      if (v40)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    v43[(v36 >> 6) + 8] |= 1 << v36;
    v45 = v43[6] + 40 * v36;
    v46 = v94;
    *v45 = v93;
    *(v45 + 16) = v46;
    *(v45 + 32) = v95;
    v47 = v43[7] + 32 * v36;
    *v47 = v26;
    *(v47 + 8) = v27;
    *(v47 + 12) = v28;
    *(v47 + 16) = v29;
    *(v47 + 20) = v30;
    *(v47 + 24) = v31;
    *(v47 + 28) = v32;
    v48 = v43[2];
    v49 = __OFADD__(v48, 1);
    v50 = v48 + 1;
    if (v49)
    {
      goto LABEL_53;
    }

    v43[2] = v50;
    outlined copy of GlassContainer.Entry.ModelID(v78, v77, v76, v80, v79);
    goto LABEL_24;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 16);
  if (v5)
  {
    v10 = 0;
    v22 = result + 32;
    do
    {
      v11 = v22 + 200 * v10;
      v12 = *(v11 + 48);
      v26[2] = *(v11 + 32);
      v26[3] = v12;
      v13 = *(v11 + 112);
      v26[6] = *(v11 + 96);
      v26[7] = v13;
      v14 = *(v11 + 80);
      v26[4] = *(v11 + 64);
      v26[5] = v14;
      v27 = *(v11 + 192);
      v15 = *(v11 + 176);
      v26[10] = *(v11 + 160);
      v26[11] = v15;
      v16 = *(v11 + 144);
      v26[8] = *(v11 + 128);
      v26[9] = v16;
      v17 = *(v11 + 16);
      v26[0] = *v11;
      v26[1] = v17;
      v18 = v27;
      v19 = *(v27 + 16);
      if (v19)
      {
        outlined init with copy of GlassContainer.Effect(v26, __dst);

        v20 = v19 - 1;
        for (i = 32; ; i += 344)
        {
          memcpy(__dst, (v18 + i), 0x154uLL);
          memcpy(v24, (v18 + i), 0x154uLL);
          outlined init with copy of GlassContainer.Entry(__dst, v23);
          closure #1 in GlassContainerResolvedTintConfig.updateRemainingTints(resolved:updatedIDs:env:)(v24, a2, a3, a4, a5);
          outlined destroy of GlassContainer.Entry(__dst);
          if (!v20)
          {
            break;
          }

          --v20;
        }

        outlined destroy of GlassContainer.Effect(v26);
      }

      ++v10;
    }

    while (v10 != v5);
  }

  return result;
}

uint64_t outlined copy of _Glass.Variant.ID?(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return outlined copy of _Glass.Variant.ID(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef()
{
  result = lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef;
  if (!lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef)
  {
    type metadata accessor for AGSubgraphRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef;
  if (!lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef)
  {
    type metadata accessor for AGSubgraphRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef);
  }

  return result;
}

uint64_t outlined init with copy of GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 24) = *(a1 + 24);

  return a2;
}

uint64_t initializeWithCopy for GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for GlassContainer.TranslationKick(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  return a1;
}

uint64_t assignWithTake for GlassContainer.TranslationKick(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.TranslationKick(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.TranslationKick(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.ScalePulse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for GlassContainer.ScalePulse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit()
{
  result = lazy protocol witness table cache variable for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit;
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Item.ID.Explicit and conformance GlassContainer.Item.ID.Explicit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID()
{
  result = lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID;
  if (!lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.DisplayMaterial.ComparableID and conformance GlassContainer.DisplayMaterial.ComparableID);
  }

  return result;
}

void (*Transaction.isContinuous.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA010ContinuousF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.isContinuous.modify;
}

uint64_t key path setter for Transaction.isContinuous : Transaction(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t *))
{
  v7 = *a1;

  a5(a2, v7, &v9);
}

void (*Transaction.fromScrollView.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return Transaction.fromScrollView.modify;
}

void Transaction.isContinuous.modify(uint64_t a1, char a2, void (*a3)(void, uint64_t, void *))
{
  v5 = *a1;
  v6 = *(*a1 + 40);

  if (a2)
  {
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v8 = v5 + 1;
    v7 = v6;
  }

  a3(v5[2], v7, v8);

  free(v5);
}

uint64_t keypath_getTm_1@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result & 1;
  return result;
}

uint64_t static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 32);
  v5 = swift_checkMetadataState();
  return v4(a2, v5, AssociatedConformanceWitness) & 1;
}

uint64_t DynamicContainerAdaptor<>.foreachItem(items:_:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v26 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = swift_getAssociatedTypeWitness();
  v22 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  (*(v11 + 16))(v13, v26, v10, v15);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  v25 = v17;
  v26 = v14;
  dispatch thunk of IteratorProtocol.next()();
  v18 = *(v4 + 48);
  if (v18(v9, 1, AssociatedTypeWitness) != 1)
  {
    v19 = *(v4 + 32);
    do
    {
      v19(v6, v9, AssociatedTypeWitness);
      v23(v6);
      (*(v4 + 8))(v6, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v18(v9, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v22 + 8))(v25, v26);
}

uint64_t closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 32);
  v5 = swift_checkMetadataState();
  return v4(a2, v5, AssociatedConformanceWitness) & 1;
}

uint64_t DynamicViewListItem.matchesIdentity(of:)(uint64_t a1)
{
  v2 = *(a1 + 76);
  if (*(v1 + 76))
  {
    if (!*(a1 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 72) != *(a1 + 72))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*v1 != *a1 || *(v1 + 4) != *(a1 + 4))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(v1 + 8);

  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v6, v5);

  return v7 & 1;
}

uint64_t protocol witness for DynamicContainerItem.count.getter in conformance DynamicViewListItem()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for DynamicContainerItem.needsTransitions.getter in conformance DynamicViewListItem()
{
  v1 = *(v0 + 64);
  CanTransitiondJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, v1);
  v3 = 0;
  if (CanTransitiondJ0V_Tt0B5)
  {
    if (one-time initialization token for opacity != -1)
    {
      swift_once();
    }

    v4 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v1);
    v5 = (*(*v4 + 96))(v4);

    v3 = v5 ^ 1;
  }

  return v3 & 1;
}

uint64_t specialized closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *a2 || *(a1 + 20) != *(a2 + 4))
  {
    return 1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 24);

  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12_ViewList_IDV8ExplicitV_Tt1g5(v5, v4);

  return (v6 ^ 1) & 1;
}

BOOL protocol witness for static DynamicContainerAdaptor.containsItem(_:_:) in conformance DynamicLayoutViewAdaptor(void *a1, uint64_t a2)
{
  v8 = 0;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v6[2] = a2;
  v7 = 1;
  return (ViewList.applySublists(from:list:to:)(&v8, 0x100000000uLL, partial apply for specialized closure #1 in static DynamicContainerAdaptor<>.containsItem(_:_:), v6, v3, v4) & 1) == 0;
}

__n128 __swift_memcpy77_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for DynamicViewListItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicViewListItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicViewListItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ObservedObject.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

void *assignWithTake for ObservedObject(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithCopy for ObservedObjectPropertyBox(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for ObservedObjectPropertyBox(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t specialized UnaryLayout.spacing(in:child:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a3))
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v4 = *InputValue;
  v5 = one-time initialization token for lockAssertionsAreEnabled;

  if (v5 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v4 + 112))();
  }

  return result;
}

SwiftUI::Spacing UnaryLayout.spacing(in:child:)()
{
  return LayoutProxy.spacing()();
}

{
  return UnaryLayout.spacing(in:child:)();
}

uint64_t static UnaryLayout._makeView(modifier:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v10[4] = *(a2 + 64);
  v11 = *(a2 + 80);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v12 = v6;
  return (*(a6 + 80))(&v12, v10);
}

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout>, lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout, &type metadata for ContainerCornerOffsetLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<ContainerCornerOffsetLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaRegionsIgnoringLayout and conformance _SafeAreaRegionsIgnoringLayout, &type metadata for _SafeAreaRegionsIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaRegionsIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }

  return result;
}

void type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareLayoutComputer<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>()
{
  result = lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>;
  if (!lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>)
  {
    type metadata accessor for UnaryPositionAwareLayoutComputer<ContainerCornerOffsetLayout>(255, &lazy cache variable for type metadata for UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout>, lazy protocol witness table accessor for type _SafeAreaIgnoringLayout and conformance _SafeAreaIgnoringLayout, &type metadata for _SafeAreaIgnoringLayout, type metadata accessor for UnaryPositionAwareChildGeometry);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnaryPositionAwareChildGeometry<_SafeAreaIgnoringLayout> and conformance UnaryPositionAwareChildGeometry<A>);
  }

  return result;
}

ValueMetadata *Font.StaticModifierTag.type.getter()
{
  if (!(*v0 >> 6))
  {
    return type metadata accessor for Font.UndoModifier();
  }

  if (*v0 >> 6 == 1)
  {
    return off_1E7243BB8[*v0 & 0x3F];
  }

  return &type metadata for Font.MonospacedDigitModifier;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.StaticModifierTag.CodingKeys()
{
  v1 = 1868852853;
  if (*v0 != 1)
  {
    v1 = 28516;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636170736F6E6F6DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.StaticModifierTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.StaticModifierTag.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.DoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.DoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.MonospacedDigitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.MonospacedDigitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.StaticModifierTag.UndoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.StaticModifierTag.UndoCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.StaticModifierTag.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, MEMORY[0x1E69E6F58]);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.UndoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v3);
  v26 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.MonospacedDigitCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v3);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.StaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v3);
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!(v15 >> 6))
  {
    v19 = v23;
    v34 = 1;
    lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();
    v17 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v15;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
    v20 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v8, v20);
    return (*(v30 + 8))(v14, v17);
  }

  if (v15 >> 6 == 1)
  {
    v36 = 2;
    lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();
    v16 = v27;
    v17 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v15 & 0x3F;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
    v18 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v28 + 8))(v16, v18);
    return (*(v30 + 8))(v14, v17);
  }

  v32 = 0;
  lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();
  v22 = v31;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v24 + 8))(v11, v25);
  return (*(v30 + 8))(v14, v22);
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag()
{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag);
  }

  return result;
}

uint64_t Font.StaticModifierTag.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.DoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys, &unk_1F007D008, MEMORY[0x1E69E6F48]);
  v35 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v34 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.UndoCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys, &unk_1F007CF78, v3);
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v8;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.MonospacedDigitCodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys, &unk_1F007CEE8, v3);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.StaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys, &unk_1F007CEC8, v3);
  v14 = v13;
  v40 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type Font.StaticModifierTag.CodingKeys and conformance Font.StaticModifierTag.CodingKeys();
  v18 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v41;
    v20 = v42;
    v44 = v10;
    v21 = v43;
    v22 = v40;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v46 = v23;
    v47 = v23 + 32;
    v48 = 0;
    v49 = v24;
    v25 = specialized Collection<>.popFirst()();
    if (v25 == 3 || v48 != v49 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v30 = &type metadata for Font.StaticModifierTag;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v22 + 8))(v16, v14);
      swift_unknownObjectRelease();
    }

    else if (v25)
    {
      if (v25 == 1)
      {
        v50 = 1;
        lazy protocol witness table accessor for type Font.StaticModifierTag.UndoCodingKeys and conformance Font.StaticModifierTag.UndoCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v26 = v39;
        lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
        v27 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v37 + 8))(v20, v27);
        (*(v22 + 8))(v16, v14);
        swift_unknownObjectRelease();
        *v26 = v50;
      }

      else
      {
        v50 = 2;
        lazy protocol witness table accessor for type Font.StaticModifierTag.DoCodingKeys and conformance Font.StaticModifierTag.DoCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v39;
        lazy protocol witness table accessor for type Font.UndoableStaticModifierTag and conformance Font.UndoableStaticModifierTag();
        v33 = v35;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v38 + 8))(v21, v33);
        (*(v22 + 8))(v16, v14);
        swift_unknownObjectRelease();
        *v32 = v50 | 0x40;
      }
    }

    else
    {
      v50 = 0;
      lazy protocol witness table accessor for type Font.StaticModifierTag.MonospacedDigitCodingKeys and conformance Font.StaticModifierTag.MonospacedDigitCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v19 + 8))(v12, v44);
      (*(v22 + 8))(v16, v14);
      swift_unknownObjectRelease();
      *v39 = 0x80;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.BoldCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.BoldCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Font.UndoableStaticModifierTag.CodingKeys()
{
  v1 = 0x63696C617469;
  if (*v0 != 1)
  {
    v1 = 0x636170736F6E6F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828002;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Font.UndoableStaticModifierTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Font.UndoableStaticModifierTag.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.ItalicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.ItalicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Font.UndoableStaticModifierTag.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.MonospacedCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.ItalicCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.BoldCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Font.UndoableStaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();
      v17 = v25;
      v18 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();
    v10 = v28;
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

unint64_t lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys);
  }

  return result;
}

Swift::Int Font.UndoableStaticModifierTag.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t Font.UndoableStaticModifierTag.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.MonospacedCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys, &unk_1F007CE38, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.ItalicCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys, &unk_1F007CE18, v3);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.BoldCodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys, &unk_1F007CDF8, v3);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Font.UndoableStaticModifierTag.CodingKeys>, lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys, &unk_1F007CDD8, v3);
  v13 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.CodingKeys and conformance Font.UndoableStaticModifierTag.CodingKeys();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = v38;
  v17 = v39;
  v41 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v42 = v20;
  v43 = v20 + 32;
  v44 = 0;
  v45 = v21;
  v22 = specialized Collection<>.popFirst()();
  if (v22 == 3 || v44 != v45 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v27 = &type metadata for Font.UndoableStaticModifierTag;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v40 + 8))(v15, v13);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_8:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  if (v22)
  {
    LODWORD(v32) = v22;
    v23 = v40;
    if (v22 == 1)
    {
      v46 = 1;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.ItalicCodingKeys and conformance Font.UndoableStaticModifierTag.ItalicCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v34 + 8))(v18, v35);
    }

    else
    {
      v46 = 2;
      lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.MonospacedCodingKeys and conformance Font.UndoableStaticModifierTag.MonospacedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v33 + 8))(v17, v36);
    }

    (*(v23 + 8))(v19, v13);
    swift_unknownObjectRelease();
    v30 = v32;
  }

  else
  {
    v30 = v22;
    v46 = 0;
    lazy protocol witness table accessor for type Font.UndoableStaticModifierTag.BoldCodingKeys and conformance Font.UndoableStaticModifierTag.BoldCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v40;
    (*(v32 + 8))(v11, v9);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v24 = v37;
  }

  *v24 = v30;
  v28 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

void type metadata accessor for KeyedEncodingContainer<Font.StaticModifierTag.DoCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *static UndoableStaticFontModifier.tag.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 16))(&v4);
  *a2 = v4 | 0x40;
  return result;
}

void *static Font.UndoModifier.tag.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(a1 + 16))(&v4);
  *a2 = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for Font.StaticModifierTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_17;
  }

  if (a2 + 194 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 194) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 194;
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

      return (*a1 | (v4 << 8)) - 194;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 194;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Font.StaticModifierTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3E)
  {
    v4 = 0;
  }

  if (a2 > 0x3D)
  {
    v5 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for Font.StaticModifierTag(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for Font.StaticModifierTag(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 & 3 ^ 0x82;
  }

  return result;
}

uint64_t specialized Font.StaticModifierTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636170736F6E6F6DLL && a2 == 0xEF74696769446465;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868852853 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28516 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized Font.UndoableStaticModifierTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684828002 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696C617469 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636170736F6E6F6DLL && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static DerivedLayout.layoutProperties.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DerivedLayout.makeCache(subviews:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 17);
  (*(a3 + 32))(a2, a3, v9);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t DerivedLayout.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = *(a2 + 1);
  v14 = *(a2 + 16);
  LOBYTE(a2) = *(a2 + 17);
  (*(a4 + 32))(a3, a4, v9);
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v17, &v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance ZStackLayout@<X0>(uint64_t a1@<X0>, int64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  return _ZStackLayout.spacing(subviews:cache:)(&v6, a2);
}

uint64_t DerivedLayout.spacing(subviews:cache:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[1] = a5;
  v19 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v18 - v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 16);
  LOBYTE(a1) = *(a1 + 17);
  (*(a4 + 32))(a3, a4, v10);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v20, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ZStackLayout(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 17);
  v10 = *v6;
  v11 = v6[1];
  v13 = *a5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  return _ZStackLayout.sizeThatFits(proposal:subviews:cache:)(a1, a2 & 1, a3, a4 & 1, &v13, a6, v10, v11);
}

double DerivedLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a3;
  v27 = a6;
  v23 = a2;
  v24 = a4;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = *a5;
  v17 = *(a5 + 1);
  v18 = *(a5 + 16);
  LOBYTE(a5) = *(a5 + 17);
  (*(a8 + 32))(a7, a8, v13);
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = a5;
  v19 = *(swift_getAssociatedConformanceWitness() + 56);
  v29 = v23 & 1;
  v28 = v24 & 1;
  v20 = v19(v25);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  return v20;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance ZStackLayout(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a9 + 8);
  v12 = *(a9 + 16);
  v13 = *(a9 + 17);
  v14 = *v10;
  v15 = v10[1];
  v17 = *a9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  return specialized _ZStackLayout.placeSubviews(in:proposal:subviews:cache:)(&v17, a1, a2, a3, a4, a10, v14, v15);
}

uint64_t DerivedLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v33 = a3;
  v34 = a6;
  v30 = a2;
  v31 = a4;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v29 - v22;
  v24 = *a5;
  v25 = *(a5 + 1);
  v26 = *(a5 + 16);
  LOBYTE(a5) = *(a5 + 17);
  (*(a8 + 32))(a7, a8, v21);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = a5;
  v27 = *(swift_getAssociatedConformanceWitness() + 64);
  v36 = v30 & 1;
  v35 = v31 & 1;
  v27(v32, a9, a10, a11, a12);
  return (*(v20 + 8))(v23, AssociatedTypeWitness);
}

uint64_t DerivedLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  v34 = a4;
  v35 = a7;
  v30 = a3;
  v31 = a5;
  v32 = a1;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v30 - v22;
  v24 = *a6;
  v25 = *(a6 + 1);
  v26 = *(a6 + 16);
  LOBYTE(a6) = *(a6 + 17);
  (*(a13 + 32))(a8, a13, v21);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = a6;
  v27 = *(swift_getAssociatedConformanceWitness() + 72);
  v37 = v30 & 1;
  v36 = v31 & 1;
  v28 = v27(v32, v33, a9, a10, a11, a12);
  (*(v20 + 8))(v23, AssociatedTypeWitness);
  return v28;
}

{
  v34 = a4;
  v35 = a7;
  v30 = a3;
  v31 = a5;
  v32 = a1;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v30 - v22;
  v24 = *a6;
  v25 = *(a6 + 1);
  v26 = *(a6 + 16);
  LOBYTE(a6) = *(a6 + 17);
  (*(a13 + 32))(a8, a13, v21);
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = a6;
  v27 = *(swift_getAssociatedConformanceWitness() + 80);
  v37 = v30 & 1;
  v36 = v31 & 1;
  v28 = v27(v32, v33, a9, a10, a11, a12);
  (*(v20 + 8))(v23, AssociatedTypeWitness);
  return v28;
}

uint64_t LayoutChildGeometries.init(parentSize:parentPosition:layoutComputer:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance LayoutChildGeometries@<X0>(uint64_t *a1@<X8>)
{
  result = LayoutChildGeometries.value.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance LayoutChildGeometry@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    v5 = (*result + (v3 << 6));
    v6 = v5[2];
    v7 = v5[3];
    v8 = v5[5];
    v12[2] = v5[4];
    v12[3] = v8;
    v12[0] = v6;
    v12[1] = v7;
    v9 = v5[3];
    *a1 = v5[2];
    a1[1] = v9;
    v10 = v5[5];
    a1[2] = v5[4];
    a1[3] = v10;
    return outlined init with copy of ViewGeometry(v12, &v11);
  }

  __break(1u);
  return result;
}

unint64_t instantiation function for generic protocol witness table for LayoutChildGeometries(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized StaticLayoutComputer.description.getter()
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](0x209286E220, 0xA500000000000000);
  MEMORY[0x193ABEDD0](0x6F4374756F79614CLL, 0xEE0072657475706DLL);
  return v1;
}

unint64_t instantiation function for generic protocol witness table for LayoutChildGeometry(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LayoutChildGeometry and conformance LayoutChildGeometry();
  *(a1 + 8) = result;
  return result;
}

uint64_t View.overlayPreferenceValue<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, _UNKNOWN **), uint64_t a13, uint64_t a14)
{
  v32 = a8;
  v33 = a2;
  v38 = a9;
  v39 = a7;
  v36 = a13;
  v37 = a14;
  v34 = a3;
  v35 = a12;
  v18 = *(a4 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v21 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v14, v22, v20);
  v23 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v24 = (v19 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = a4;
  *(v25 + 3) = a5;
  v26 = v39;
  *(v25 + 4) = a6;
  *(v25 + 5) = v26;
  v27 = v32;
  *(v25 + 6) = v32;
  *(v25 + 7) = a10;
  (*(v18 + 32))(&v25[v23], v21, a4);
  v28 = &v25[v24];
  v29 = v34;
  *v28 = v33;
  *(v28 + 1) = v29;
  v42 = a5;
  v43 = a6;
  v44 = v27;
  v45 = a10;
  v30 = type metadata accessor for _PreferenceReadingView();
  v35(255, v30, &protocol witness table for _PreferenceReadingView<A, B>);
  type metadata accessor for ModifiedContent();
  v40 = v39;
  v41 = v36;
  swift_getWitnessTable();
  static PreferenceKey._delay<A>(_:)(v37, v25, v38);
}

uint64_t closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(void *, void, void, uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  type metadata accessor for _PreferenceValue();
  _PreferenceValue._force<A>(_:)(a3, a4, v18);
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  v14 = static Alignment.center;
  v15 = type metadata accessor for _PreferenceReadingView();
  a11(v18, v14, *(&v14 + 1), a5, v15, a8, &protocol witness table for _PreferenceReadingView<A, B>);
}

uint64_t partial apply for closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(uint64_t a1, void (*a2)(void *, void, void, uint64_t, uint64_t, uint64_t, _UNKNOWN **))
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (v2 + ((*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return closure #1 in View.overlayPreferenceValue<A, B>(_:_:)(a1, v2 + v3, *v4, v4[1], v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], a2);
}

uint64_t _OverlayPreferenceModifier.transform.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _OverlayPreferenceModifier.alignment.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t specialized makeSecondaryPreferenceView<A, B>(modifier:inputs:body:flipOrder:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 16);
  v62 = *(a2 + 32);
  v63 = v7;
  v35 = *a2;
  v10 = *(a2 + 36);
  v64 = v8;
  v65 = *(a2 + 80);
  v60 = *a2;
  v61 = v9;
  outlined init with copy of _ViewInputs(a2, v73);
  PreferenceKeys.add(_:)(&type metadata for Text.LayoutKey, &protocol witness table for Text.LayoutKey);
  v36 = v10;
  if ((v10 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(0);
  }

  v39 = a4;
  v11 = *(a2 + 72);
  v12 = *(a2 + 64);
  v73[2] = v62;
  v73[3] = v63;
  v73[4] = v64;
  v74 = v65;
  v73[0] = v60;
  v73[1] = v61;
  outlined init with copy of _ViewInputs(v73, &v67);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v73, &v67);
  outlined destroy of _ViewInputs(v73);
  v13 = v67;
  v37 = DWORD2(v67);
  v14 = HIDWORD(v67);
  v40 = a1;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v16 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v17 = specialized CachedEnvironment.attribute<A>(id:_:)(v16);
  swift_endAccess();
  v18 = *MEMORY[0x1E698D3F8];
  *&v67 = __PAIR64__(v17, OffsetAttribute2);
  *(&v67 + 1) = __PAIR64__(v11, v12);
  *&v68 = __PAIR64__(v18, v14);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type SecondaryLayerGeometryQuery and conformance SecondaryLayerGeometryQuery();
  Attribute.init<A>(body:value:flags:update:)();
  v66 = v35;
  v19 = *(a2 + 48);
  v56 = *(a2 + 32);
  v57 = v19;
  v58 = *(a2 + 64);
  v59 = *(a2 + 80);
  v20 = *(a2 + 16);
  v54 = *a2;
  v55 = v20;
  outlined init with copy of _ViewInputs(a2, &v67);
  outlined init with copy of PropertyList(&v66, &v67);
  LODWORD(v58) = AGGraphCreateOffsetAttribute2();
  DWORD2(v58) = AGGraphCreateOffsetAttribute2();
  LODWORD(v56) = v56 | 0x18;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v54, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  outlined destroy of PropertyList(&v66);
  if ((v36 & 0x100) != 0)
  {
    specialized _GraphInputs.pushScope<A>(id:)(1);
  }

  v21 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA4TextV06LayoutI0V_TtB5(v13);
  if ((v21 & 0x100000000) != 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21;
  }

  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v67 = v54;
  v68 = v55;
  v23 = _s7SwiftUI27makeSecondaryPreferenceView33_E16FB36220E60E9D0940B6710E02DAD28modifier6inputs4body9flipOrderAA01_F7OutputsV14AttributeGraph0U0VyAA08_OverlayE8ModifierVyxq_GG_AA01_F6InputsVAiA01_V0V_ARtcSbtAA0E3KeyRzAA0F0R_r0_lFAiT_ARtcfU0_AA4TextV06LayoutZ0V_AA7ForEachVySnySiGSiAA15ModifiedContentVyA3_yAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA017_ValueTransactionX0VySdGGAA13_OffsetEffectVGGTt0B5(&v67, v40 | (v22 << 32), v52);
  v24 = *&v52[0];
  v41 = DWORD2(v52[0]);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v25);
  AGGraphMutateAttribute();
  v26 = v41;
  if (a3)
  {
    v27 = v24;
    v28 = v41;
    v24 = v13;
    v26 = v37;
  }

  else
  {
    v27 = v13;
    v28 = v37;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v49 = 0;
  v44 = v27;
  v45 = v28;
  v46 = v24;
  v47 = v26;
  v29 = *(a2 + 48);
  v42 = v29;
  v43 = *(a2 + 56);
  v30 = *(v29 + 16);
  if (v30)
  {

    outlined init with copy of PreferencesInputs(&v42, v52);
    v31 = (v29 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v44, *(v31 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v31, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v31 += 2;
      --v30;
    }

    while (v30);
  }

  else
  {

    outlined init with copy of PreferencesInputs(&v42, v52);
  }

  v50[2] = v56;
  v50[3] = v57;
  v50[4] = v58;
  v51 = v59;
  v50[0] = v54;
  v50[1] = v55;
  outlined destroy of _ViewInputs(v50);
  v52[2] = v62;
  v52[3] = v63;
  v52[4] = v64;
  v53 = v65;
  v52[0] = v60;
  v52[1] = v61;
  outlined destroy of _ViewInputs(v52);
  *(v39 + 12) = v14;
  v32 = v48;
  v33 = v49;

  *v39 = v32;
  *(v39 + 8) = v33;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzAA13PreferenceKeyRd__AaBRd_0_r_0_lAA15ModifiedContentVyxAA08_OverlayD8ModifierVyqd__qd_0_GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v2 = *(a1 + 32);
  v4[0] = *(a1 + 8);
  v4[1] = v2;
  a2(255, v4);
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t _s7SwiftUI27makeSecondaryPreferenceView33_E16FB36220E60E9D0940B6710E02DAD2LL8modifier6inputs4body9flipOrderAA01_F7OutputsV14AttributeGraph0U0VyAA08_OverlayE8ModifierVyxq_GG_AA01_F6InputsVAiA01_V0V_ARtcSbtAA0E3KeyRzAA0F0R_r0_lFAiT_ARtcfU0_AA4TextV06LayoutZ0V_AA7ForEachVySnySiGSiAA15ModifiedContentVyA3_yAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA017_ValueTransactionX0VySdGGAA13_OffsetEffectVGGTt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>();
  *&v23 = a2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>();
  lazy protocol witness table accessor for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v8 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v8;
  v35 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = *(a1 + 16);
  v31 = *a1;
  v32 = v10;
  v11 = v33;
  v36 = v9;
  LODWORD(v33) = 0;
  v37[0] = v31;
  v37[1] = v10;
  v38 = v9;
  v37[3] = v8;
  v37[4] = v35;
  v37[2] = v33;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  LODWORD(v28) = v36;
  v23 = v31;
  v24 = v32;
  *(&v28 + 1) = partial apply for specialized closure #1 in static View.makeImplicitRoot(view:inputs:);
  v29 = v12;
  v30 = 0;
  v13 = *&v37[0];
  outlined init with copy of _ViewInputs(v37, v21);
  outlined init with copy of _ViewInputs(v37, v21);
  outlined init with copy of _ViewInputs(a1, v21);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v13);
  (*(v14 + 8))(&v23, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v15 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
    __break(1u);
  }

  v16 = v30;
  v17 = HIDWORD(v30);
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v22 = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;

  outlined destroy of MakeViewRoot(v21);

  outlined destroy of _ViewInputs(v37);
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 12) = v17;
  LODWORD(v33) = v11;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v31);
    AGSubgraphEndTreeElement();
  }

  v19[2] = v33;
  v19[3] = v34;
  v19[4] = v35;
  v20 = v36;
  v19[0] = v31;
  v19[1] = v32;
  return outlined destroy of _ViewInputs(v19);
}

void type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>()
{
  if (!lazy cache variable for type metadata for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>();
    lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>> and conformance <> ForEach<A, B, C>();
    v0 = type metadata accessor for SecondaryChild();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>()
{
  result = lazy protocol witness table cache variable for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>;
  if (!lazy protocol witness table cache variable for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>)
  {
    type metadata accessor for SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecondaryChild<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>> and conformance SecondaryChild<A, B>);
  }

  return result;
}

uint64_t specialized closure #1 in static View.makeImplicitRoot(view:inputs:)@<X0>(__int128 *a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = a1[4];
  v14 = *(a1 + 20);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>();
  _ViewInputs.implicitRootBodyInputs.getter(v8);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5(a2, v8, a3);
    AGSubgraphEndTreeElement();
  }

  else
  {
    _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZSnySiG_SiAA15ModifiedContentVyARyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_L19TransactionModifierVySdGGAA13_OffsetEffectVGTt2B5(a2, v8, a3);
  }

  return outlined destroy of _ViewListInputs(v8);
}

uint64_t AnyLayout.makeCache(subviews:)(int *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  return (*(*a2 + 88))(&v6);
}

uint64_t AnyLayout.updateCache(_:subviews:)(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*a3 + 96))(a1, &v7);
}

uint64_t AnyLayout.spacing(subviews:cache:)(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*a3 + 104))(&v7);
}

uint64_t AnyLayout.explicitAlignment(of:in:proposal:subviews:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(*a8 + 128))();
}

{
  return (*(*a8 + 136))();
}

uint64_t key path setter for AnyLayout.animatableData : AnyLayout(void *a1, uint64_t *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v8, v7);
    (*(*v4 + 152))(v7);
    return outlined destroy of _AnyAnimatableData(v8);
  }

  else
  {
    v6 = (*(*v4 + 168))(v8);
    outlined destroy of _AnyAnimatableData(v8);

    *a2 = v6;
  }

  return result;
}

uint64_t AnyLayout.animatableData.setter(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    (*(*v5 + 152))(v8);
    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v7 = (*(*v5 + 168))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v7;
  }

  return result;
}

void (*AnyLayout.animatableData.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 144))();
  return AnyLayout.animatableData.modify;
}

void AnyLayout.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[15];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      outlined init with copy of _AnyAnimatableData(v2 + 5, v2 + 10);
      (*(*v5 + 152))(v2 + 10);
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }

    else
    {
      v8 = v2[15];
      v9 = (*(*v5 + 168))(v2 + 5);
      outlined destroy of _AnyAnimatableData((v2 + 5));

      *v8 = v9;
    }

    goto LABEL_7;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v3;
  if (v6)
  {
    outlined init with copy of _AnyAnimatableData(v2, v2 + 5);
    (*(*v7 + 152))(v2 + 5);
LABEL_7:
    outlined destroy of _AnyAnimatableData(v2);
    goto LABEL_9;
  }

  v10 = v2[15];
  v11 = (*(*v7 + 168))(v2);
  outlined destroy of _AnyAnimatableData(v2);

  *v10 = v11;
LABEL_9:

  free(v2);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance AnyLayout(int *a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*v2 + 88))(&v7);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance AnyLayout(uint64_t a1, int *a2)
{
  v3 = *v2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v8 = *a2;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return (*(*v3 + 96))(a1, &v8);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance AnyLayout(int *a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*v2 + 104))(&v7);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance AnyLayout(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    (*(*v5 + 152))(v8);
    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v7 = (*(*v5 + 168))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v7;
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnyLayout(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 144))();
  return AnyLayout.animatableData.modify;
}

void AnyLayoutBox.explicitAlignment(of:in:proposal:subviews:cache:)()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _AnyLayoutBox.spacing(subviews:cache:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v23 = a3;
  v5 = a1;
  v6 = *(*v3 + 184);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18[-v8];
  v11 = *(v10 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14];
  v21 = *v5;
  v20 = *(v5 + 1);
  v19 = *(v5 + 16);
  LOBYTE(v5) = *(v5 + 17);
  outlined init with copy of Any(a2 + 8, v28);
  swift_dynamicCast();
  v16 = *(*v3 + 200);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v16, v6);
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v5;
  (*(v11 + 48))(&v24, v15, v6, v11);
  (*(v7 + 8))(v9, v6);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(v22, v15);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t _AnyLayoutBox.animatableData.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  swift_beginAccess();
  _AnyAnimatableData.update<A>(_:)(v1 + v4, *(v3 + 184), *(*(v3 + 192) + 8));
  swift_endAccess();
  return outlined destroy of _AnyAnimatableData(a1);
}

uint64_t _AnyLayoutBox.withAnimatableData(_:)(uint64_t a1)
{
  v14 = *v1;
  v2 = v14;
  v3 = *(v14 + 184);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(v2 + 200);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, &v1[v10], v3);
  _AnyAnimatableData.update<A>(_:)(v9, v3, *(*(v2 + 192) + 8));
  v11(v6, v9, v3);
  v12 = _AnyLayoutBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t LogicalCompletionModifier.animate<A, B>(base:value:time:context:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a5 + 17);
  result = (*(a9 + 16))(a4, a5, a6, a8, a7, a9);
  if ((v12 & 1) == 0)
  {
    *(a5 + 17) = a2 <= a1;
  }

  return result;
}

uint64_t protocol witness for CustomAnimationModifier.function(base:) in conformance LogicalCompletionModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  v7 = *(a1 + 40);
  *(a2 + 40) = v7;
  return outlined copy of Animation.Function(v3, v2, v4, v5, v6, v7);
}

uint64_t Animation.logicallyComplete(after:)(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(*a1 + 144);
  v3 = lazy protocol witness table accessor for type LogicalCompletionModifier and conformance LogicalCompletionModifier();
  return v2(&v5, &unk_1F007D510, v3);
}

unint64_t lazy protocol witness table accessor for type LogicalCompletionModifier and conformance LogicalCompletionModifier()
{
  result = lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier;
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier;
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier;
  if (!lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogicalCompletionModifier and conformance LogicalCompletionModifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LogicalCompletionModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LogicalCompletionModifier and conformance LogicalCompletionModifier();
  *(a1 + 8) = result;
  return result;
}

uint64_t Color.headroom(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a2 & 1;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v4 = *&a1;
    v6 = v4;
  }

  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for ColorBox<HeadroomColorProvider>, lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider, &type metadata for HeadroomColorProvider, type metadata accessor for ColorBox);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 28) = v5;

  return v7;
}

uint64_t Color._linearScale(_:)(uint64_t a1, float a2)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for ColorBox<LinearScaleColorProvider>, lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, type metadata accessor for ColorBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return v4;
}

uint64_t assignWithCopy for LinearScaleColorProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for LinearScaleColorProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithCopy for HeadroomColorProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithTake for HeadroomColorProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for HeadroomColorProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t storeEnumTagSinglePayload for HeadroomColorProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HeadroomColorProvider.colorDescription.getter()
{
  v1 = *v0;
  if (*(v0 + 12))
  {
    v2 = 0xE400000000000000;
    v3 = 1701736302;
  }

  else
  {
    Float.write<A>(to:)();
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = *(*v1 + 160);

  v6 = v4(v5);

  MEMORY[0x193ABEDD0](0x6F6F726461656820, 0xEA00000000003D6DLL);
  MEMORY[0x193ABEDD0](v3, v2);

  return v6;
}

uint64_t HeadroomColorProvider.encode(to:)(void *a1)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HeadroomColorProvider.CodingKeys>, lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 2);
  HIDWORD(v11) = *(v1 + 12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  v9 = v13;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    v15 = 1;
    v14 = BYTE4(v11);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void HeadroomColorProvider.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  (*(**v0 + 152))();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
  }
}

Swift::Int HeadroomColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFF) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t HeadroomColorProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HeadroomColorProvider.CodingKeys>, lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys, &unk_1F007D7F8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v14;
  type metadata accessor for ProxyCodable<Color>();
  v16 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v17;
  v15 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 12) = BYTE4(v12) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HeadroomColorProvider.CodingKeys()
{
  if (*v0)
  {
    return 0x6D6F6F7264616568;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeadroomColorProvider.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeadroomColorProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeadroomColorProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float protocol witness for ColorProvider.resolve(in:) in conformance HeadroomColorProvider(__int128 *a1)
{
  v2 = *v1;
  v6 = *a1;
  v3 = *(*v2 + 112);

  v4 = v3(&v6);

  return v4;
}

uint64_t protocol witness for ColorProvider.resolveHDR(in:) in conformance HeadroomColorProvider@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = *(v2 + 12);
  v10 = *a1;
  v7 = *(*v4 + 120);

  v7(&v11, &v10);

  v9 = NAN;
  if (!v6)
  {
    v9 = v5;
  }

  *a2 = v11;
  *(a2 + 16) = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeadroomColorProvider()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 12);
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v6);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFF) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  return Hasher._finalize()();
}

uint64_t LinearScaleColorProvider.colorDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);
  v2 = *(*v1 + 160);

  v4 = v2(v3);
  v6 = v5;

  MEMORY[0x193ABEDD0](v4, v6);

  MEMORY[0x193ABEDD0](0x537261656E696C2ELL, 0xED000028656C6163);
  Float.write<A>(to:)();
  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t LinearScaleColorProvider.encode(to:)(void *a1)
{
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<LinearScaleColorProvider.CodingKeys>, lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys, &unk_1F007D888, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  type metadata accessor for ProxyCodable<Color>();
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int LinearScaleColorProvider.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
  return Hasher._finalize()();
}

uint64_t LinearScaleColorProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  type metadata accessor for ColorBox<HeadroomColorProvider>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<LinearScaleColorProvider.CodingKeys>, lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys, &unk_1F007D888, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v16;
  type metadata accessor for ProxyCodable<Color>();
  v18 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v9 + 8))(v8, v5);
  *v10 = v11;
  *(v10 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LinearScaleColorProvider.CodingKeys()
{
  if (*v0)
  {
    return 0x726F74636166;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance LinearScaleColorProvider.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LinearScaleColorProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinearScaleColorProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float32_t protocol witness for ColorProvider.resolveHDR(in:) in conformance LinearScaleColorProvider@<S0>(__int128 *a1@<X0>, float32x2_t *a2@<X8>)
{
  v4 = *v2;
  v9 = v2[2];
  v10 = *a1;
  v5 = *(*v4 + 120);

  v5(&v11, &v10);

  v6 = v13;
  v7 = v9 * v12;
  result = v9 * v14;
  *a2 = vmul_n_f32(v11, v9);
  a2[1].f32[0] = v7;
  a2[1].i32[1] = v6;
  a2[2].f32[0] = result;
  return result;
}

void protocol witness for Hashable.hash(into:) in conformance LinearScaleColorProvider()
{
  v1 = v0[2];
  (*(**v0 + 152))();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinearScaleColorProvider()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v5);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(LODWORD(v3));
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance LinearScaleColorProvider(float *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

uint64_t instantiation function for generic protocol witness table for HeadroomColorProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for LinearScaleColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for HeadroomColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearScaleColorProvider.CodingKeys and conformance LinearScaleColorProvider.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Color>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeadroomColorProvider.CodingKeys and conformance HeadroomColorProvider.CodingKeys);
  }

  return result;
}

void type metadata accessor for ColorBox<HeadroomColorProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized static HeadroomColorProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

void *DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(uint64_t **a1, void *a2, unsigned int a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10)
{
  LODWORD(v10) = a8;
  v58 = a6;
  v59 = a5;
  v12 = a4;
  v56 = a3;
  v54 = a1;
  v14 = *a4;
  v52 = a4[1];
  v15 = a4[2];
  v57 = HIDWORD(a8);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v53 = v14;
  v16 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v14, v60);
  if (v16)
  {
    v17 = (v16 + 72);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = &static ArchivedViewInput.defaultValue;
  }

  v55 = a10;
  LODWORD(v19) = *v17 & 1;
  isEscapingClosureAtFileLocation = a2[8];
  CanTransitiondJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA013CanTransitiondJ0V_Tt0B5(0, isEscapingClosureAtFileLocation);
  v51 = v15;
  if ((CanTransitiondJ0V_Tt0B5 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for opacity != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v49 = static AnyTransition.opacity;
    v22 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, isEscapingClosureAtFileLocation);
    v23 = v22;
    if (v19 || ((*(*v22 + 96))(v22) & 1) == 0)
    {

      v50 = AGGraphClearUpdate();
      swift_beginAccess();
      Value = AGGraphGetValue();
      v26 = *Value;
      v25 = Value[1];
      if (v25)
      {

        v27 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v26);
      }

      else
      {
        v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(*Value);
      }

      if (v27 == 2)
      {
        v60 = v26;
        v61 = v25;
        LOBYTE(v66[0]) = 3;
        v27 = EnvironmentValues.accessibilitySettingEnabled(_:)(v66);
      }

      v28 = AGGraphSetUpdate();
      if ((*(*v23 + 104))(v28) & 1) != 0 && (v27)
      {
        v29 = v49;

        v23 = v29;
      }

      else
      {
      }
    }

    else
    {

LABEL_11:
      v23 = 0;
    }

    v68 = v56;
    MEMORY[0x1EEE9AC00](CanTransitiondJ0V_Tt0B5);
    v39[2] = v58;
    v39[3] = a7;
    v40 = v59;
    v41 = v10;
    v42 = v57;
    v43 = a9;
    v44 = v55;
    v45 = &v68;
    v46 = v23;
    v47 = a2;
    v48 = v19;
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #2 in DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:);
    *(v30 + 24) = v39;
    v67 = 0;
    MEMORY[0x1EEE9AC00](v30);
    a9 = v38;
    v38[2] = partial apply for thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?);
    v38[3] = v31;
    v60 = a2[7];
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v10 = a2[5];
      v19 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v10);
      v60 = v53;
      v61 = v52;
      v62 = v51;
      v63 = *(v12 + 3);
      v64 = *(v12 + 5);
      v65[0] = *(v12 + 7);
      *(v65 + 12) = *(v12 + 68);
      (*(v19 + 16))(v66, &v67, &v60, 0, partial apply for closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), v38, v10, v19);
      v12 = v66[0];
      a7 = v66[1];
    }

    else
    {
      a7 = 0;
      v12 = 0;
    }

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v32 = *MEMORY[0x1E698D3F8];
  v33 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v33 = v12;
    v34 = a7;
  }

  else
  {
    v34 = 0;
  }

  if (v12)
  {
    v32 = HIDWORD(a7);
  }

  v35 = v54;
  *v54 = v33;
  *(v35 + 2) = v34;
  *(v35 + 3) = v32;
  v60 = a2[7];

  v36 = _ViewList_SublistSubgraphStorage.retain()();

  return v36;
}

uint64_t closure #1 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for TransitionHelper();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  (*(v12 + 16))(v15 - v10, a1, v8, v9);
  v13 = *(v8 + 44);
  LOBYTE(a1) = Transition.hasContentTransition.getter(a2, a3);
  result = (*(*(a2 - 8) + 8))(&v11[v13], a2);
  *a4 = a1 & 1;
  return result;
}

uint64_t closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(uint64_t *__return_ptr, __int128 *)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v40 = a8;
  v41 = a5;
  v39 = a4;
  v35 = a3;
  v73 = *MEMORY[0x1E69E9840];
  v34 = type metadata accessor for TransitionHelper();
  v12 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v34 - v13;
  v36 = a6;
  v37 = a7;
  v15 = type metadata accessor for ViewListContentTransition();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v34 - v19;
  v20 = *(a1 + 16);
  v68[0] = *a1;
  v68[1] = v20;
  v21 = *(a1 + 48);
  v69 = *(a1 + 32);
  v70 = v21;
  v71 = *(a1 + 64);
  v62 = v69;
  v63 = v21;
  v64 = *(a1 + 64);
  v72 = *(a1 + 80);
  v22 = v20;
  v65 = *(a1 + 80);
  v60 = v68[0];
  v61 = v20;
  v23 = *(a2 + 64);
  outlined init with copy of _ViewInputs(v68, v66);
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v24 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA32_DisplayList_StableIdentityScopeV_Tt0B5(static _DisplayList_StableIdentityScope.defaultValue, v23);
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2g5(&v60, v24);
  }

  v25 = DWORD2(v71);
  (*(v12 + 16))(v14, v35, v34);
  swift_beginAccess();
  v26 = v42;
  ViewListContentTransition.init(helper:size:environment:)(v14, v25, *(v22 + 16), v42);
  v27 = v38;
  (*(v38 + 16))(v17, v26, v15);
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v17, &type metadata for ContentTransitionEffect, v15, WitnessTable, v43);
  v29 = v43[0];
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v54 = v60;
  v55 = v61;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  swift_retain_n();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v56;
  v51 = v57;
  v52 = v58;
  v48 = v54;
  v49 = v55;
  v31 = v56;
  v53 = v59;
  LODWORD(v50) = 0;
  v67 = v59;
  v66[3] = v57;
  v66[4] = v58;
  v66[0] = v54;
  v66[1] = v55;
  v66[2] = v50;

  outlined init with copy of _ViewInputs(&v54, v46);
  outlined init with copy of _ViewInputs(v66, v46);
  v32 = v40;
  _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA017ContentTransitionD0V_Tt3B503_s7a17UI24DynamicLayouti124AdaptorV14MakeTransition33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV012makeArchivedH06helperyAA0H6HelperAELLVyxG_tAA0H0RzlFAA01_E7j5VAA6_k9V_AA01_E6M18VtcfU0_AnP_ARtcfU_AnIIegnr_Tf1nnnc_n(v29, v66, v39, v40);
  outlined destroy of _ViewInputs(v66);
  LODWORD(v50) = v31;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v32, &v48);
    AGSubgraphEndTreeElement();
  }

  (*(v27 + 8))(v42, v15);
  v44[2] = v50;
  v44[3] = v51;
  v44[4] = v52;
  v45 = v53;
  v44[0] = v48;
  v44[1] = v49;
  outlined destroy of _ViewInputs(v44);
  v46[3] = v63;
  v46[4] = v64;
  v47 = v65;
  v46[0] = v60;
  v46[1] = v61;
  v46[2] = v62;
  return outlined destroy of _ViewInputs(v46);
}

uint64_t ViewListContentTransition.init(helper:size:environment:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TransitionHelper();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ViewListContentTransition();
  *(a4 + *(result + 36)) = a2;
  *(a4 + *(result + 40)) = a3;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.updatedItems() in conformance DynamicLayoutViewAdaptor@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  v4 = v3;
  outlined init with copy of AnyTrackedValue(Value, v6);
  if (v4)
  {
    return outlined init with take of _ViewList_Elements(v6, a1);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v6);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.foreachItem(items:_:) in conformance DynamicLayoutViewAdaptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v12 = 0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v10[2] = a2;
  v10[3] = a3;
  v11 = 0;
  return ViewList.applySublists(from:list:to:)(&v12, v6, partial apply for closure #1 in DynamicLayoutViewAdaptor.foreachItem(items:_:), v10, v7, v8);
}

void *protocol witness for DynamicContainerAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:) in conformance DynamicLayoutViewAdaptor(uint64_t **a1, void *a2, void *a3, unsigned int a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8)
{
  result = DynamicLayoutViewAdaptor.makeItemLayout(item:uniqueId:inputs:containerInfo:containerInputs:)(a1, a3, a4, a5, a6, a7, a8, *v8, *(v8 + 8), *(v8 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for DynamicContainerAdaptor.removeItemLayout(uniqueId:itemLayout:) in conformance DynamicLayoutViewAdaptor(int a1)
{
  v2 = *(v1 + 8);
  v4[4] = a1;
  return v2(_s7SwiftUI24DynamicLayoutViewAdaptorV010removeItemD08uniqueId04itemD0ys6UInt32V_AC0hD0VtFyAA0cD3MapVzXEfU_TA_0, v4);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance ViewListTransition<A>@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t ViewListArchivedAnimation.value.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == result)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 1;
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, v15);
    v8 = v16;
    v9 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v9 + 56))(&v14, v8, v9);
    v6 = 1;
    _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA017ArchivedAnimationdJ0V_Tt0B5(1, 0, 0, 0, v14, &v11);

    v10 = v11;
    v3 = v12;
    v4 = v13;
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v5 = v10;
    if (v10 == 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0uLL;
    }

    else
    {
      v6 = 0;
    }
  }

  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 28) = v6;
  return result;
}

uint64_t ViewListContentTransition.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance ViewListArchivedAnimation.Effect(uint64_t a1@<X8>)
{
  if (*(v1 + 28))
  {
    v3 = 0;
    v4 = 20;
  }

  else
  {
    v5 = *(v1 + 6);
    v7 = v1[1];
    v6 = v1[2];
    v8 = *v1;
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    *(v3 + 24) = v6;
    *(v3 + 32) = v5;
    *(v3 + 36) = 0;
    *(v3 + 40) = v8;

    v4 = 19;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v4;
}

void protocol witness for static Rule.initialValue.getter in conformance ViewListArchivedAnimation(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 1;
  *(a1 + 21) = 0;
}

uint64_t ViewListContentTransition.updateValue()(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v28 = *(a1 + 16);
  v3 = type metadata accessor for TransitionHelper();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UncheckedSendable();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  if ((TransitionHelper.update()(v3) & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    v26 = v2;
    ViewListContentTransition.environment.getter(&v29);
    v12 = v29;
    v27 = v7;
    if (v30)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v12, &v33);
    }

    else
    {
      v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v29);
      if (v13)
      {
        v14 = *(v13 + 84);
        v15 = *(v13 + 20);
        v16 = v15 | (v14 << 32);
        v17 = *(v13 + 86);
        v18 = *(v13 + 87);
        v19 = v13[11];
        v20 = *(v13 + 24);
        *&v33 = v13[9];
        BYTE12(v33) = v14;
        DWORD2(v33) = v15;
        v21 = *(v13 + 85);
        BYTE13(v33) = v21;
        BYTE14(v33) = v17;
        HIBYTE(v33) = v18;
        v34 = v19;
        v35 = v20;
        v22 = v33;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v22 = static ContentTransition.State.defaultValue;
        v16 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
        v33 = static ContentTransition.State.defaultValue;
        v21 = BYTE13(static ContentTransition.State.defaultValue);
        v34 = off_1ED536620;
        v35 = dword_1ED536628;
      }

      outlined copy of ContentTransition.Storage(v22, v16, v21);
    }

    (*(v4 + 16))(v6, v1, v3);
    UncheckedSendable.init(_:)(v6, v3, v10);
    Value = AGGraphGetValue();
    closure #1 in ViewListContentTransition.updateValue()(v10, &v33, v28, v26, &v29, *Value, Value[1]);
    v24 = v29;
    outlined consume of ContentTransition.Storage(v33, DWORD2(v33) | (BYTE12(v33) << 32), SBYTE13(v33));
    *&v33 = v24;
    BYTE12(v33) = 2;
    DWORD2(v33) = 6;
    *(&v33 + 13) = 1;

    v34 = 0;
    v35 = v35 & 1 | 4;
    v29 = v24;
    BYTE4(v30) = 2;
    LODWORD(v30) = 6;
    *(&v30 + 5) = 1;
    HIBYTE(v30) = HIBYTE(v33);
    v31 = 0;
    v32 = v35;
    AGGraphSetOutputValue();
    (*(v8 + 8))(v10, v27);
    outlined consume of ContentTransition.Storage(v33, DWORD2(v33) | (BYTE12(v33) << 32), SBYTE13(v33));
  }

  return result;
}

uint64_t closure #1 in ViewListContentTransition.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = type metadata accessor for TransitionHelper();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22[-v16];
  (*(v18 + 16))(&v22[-v16], a1, v14, v15);
  v19 = *(v14 + 44);
  v23 = *(a2 + 15);
  v20 = Transition.contentTransitionEffects(style:size:)(&v23, a6, a7, a3, a4);
  result = (*(*(a3 - 8) + 8))(&v17[v19], a3);
  *a5 = v20;
  return result;
}

void protocol witness for static StatefulRule.initialValue.getter in conformance ViewListContentTransition<A>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ViewListContentTransition<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t (*ViewTraitCollection.zIndex.modify(void *a1))(double *a1)
{
  a1[1] = v1;
  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06ZIndexdJ0V_Tt0B5(*v1);
  *a1 = v3;
  return ViewTraitCollection.zIndex.modify;
}

uint64_t protocol witness for ScrollableContainer.children.getter in conformance DynamicLayoutScrollable()
{
  type metadata accessor for [ScrollStateRequest](0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

uint64_t DynamicLayoutScrollable.visibleCollectionViewIDs.getter()
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v23);
  v1 = v24;
  v2 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v3 = ViewList.allViewIDs.getter(v1, v2);
  v4 = *(*v3 + 88);
  v5 = v4();
  result = v4();
  if ((result & 0x8000000000000000) == 0)
  {
    result = v4();
    if (v5 < 0 || result < v5)
    {
      goto LABEL_22;
    }

    if (v5)
    {
      v22 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v7 = 0;
      v8 = v22;
      v19 = *(*v3 + 96);
      v18 = v5;
      while (1)
      {
        v9 = v3;
        v19(&v20, v7);
        v11 = v20;
        v10 = HIDWORD(v20);
        v12 = v21;
        v13 = *(v21 + 16);

        if (v13)
        {
          v13 = *(v12 + 32);
          v14 = *(v12 + 52);

          swift_bridgeObjectRelease_n();
          if (v14)
          {
            v10 = -1;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v22 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v16 + 1;
        v17 = v8 + 16 * v16;
        *(v17 + 32) = v11;
        *(v17 + 36) = v10;
        *(v17 + 40) = v13;
        v3 = v9;
        result = v4();
        if (v7 >= result)
        {
          break;
        }

        if (v18 == ++v7)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v8;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t DynamicLayoutScrollable.forEachVisibleSubview(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  result = AGGraphGetWeakValue();
  if (result)
  {
    outlined init with copy of AnyTrackedValue(result, v20);
    _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v6 = *WeakValue;

      v7 = AGGraphGetWeakValue();
      if (v7)
      {
        v8 = *v7;
        v9 = v7[2];
        v23[1] = v7[1];
        v23[2] = v9;
        v23[0] = v8;
        v19 = 0;
        v17 = 0;
        v18 = 0;
        v10 = v21;
        v11 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        Attribute = AGWeakAttributeGetAttribute();
        v13 = Attribute == *MEMORY[0x1E698D3F8];
        if (Attribute == *MEMORY[0x1E698D3F8])
        {
          v14 = 0;
        }

        else
        {
          v14 = Attribute;
        }

        MEMORY[0x1EEE9AC00](Attribute);
        v15[2] = v6;
        v15[3] = &v17;
        v15[4] = v23;
        v15[5] = a1;
        v15[6] = a2;
        v15[7] = &v19;
        outlined init with copy of ViewTransform(v23, v16);
        v16[0] = v13;
        ViewList.applyIDs(from:listAttribute:to:)(&v18, v14 | (v13 << 32), partial apply for closure #1 in DynamicLayoutScrollable.forEachVisibleSubview(_:), v15, v10, v11);

        outlined destroy of ViewTransform(v23);
      }

      else
      {
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

BOOL closure #1 in DynamicLayoutScrollable.forEachVisibleSubview(_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, __int128 *a4, void (*a5)(_OWORD *, _BYTE *), uint64_t a6, _BYTE *a7)
{
  v9 = *a3;
  if ((*a3 & 0x8000000000000000) == 0 && v9 < *(a2 + 16))
  {
    v11 = *a1;
    v12 = a1[1];
    v13 = a2 + (v9 << 6);
    v20 = *(v13 + 64);
    v21 = *(v13 + 32);
    v30 = v21;
    v31 = v20;
    if (one-time initialization token for content != -1)
    {
      v19 = a4;
      swift_once();
      a4 = v19;
    }

    *&v23[0] = static ScrollCoordinateSpace.content;
    BYTE8(v24) = 1;
    v14 = a4[1];
    v32 = *a4;
    v33 = v14;
    v34 = a4[2];
    v15 = a4;
    CGRect.convert(to:transform:)(v23, &v32);
    outlined destroy of CoordinateSpace(v23);
    v16 = v15[2];
    v38 = v15[1];
    v39 = v16;
    v17 = *v15;
    *&v32 = v11;
    *(&v32 + 1) = v12;
    v33 = v21;
    v34 = v20;
    v35 = v30;
    v36 = v31;
    v37 = v17;
    v26 = v31;
    v27 = v17;
    v28 = v38;
    v29 = v16;
    v23[0] = v32;
    v23[1] = v21;
    v24 = v20;
    v25 = v30;

    outlined init with copy of ViewTransform(v15, v22);
    a5(v23, a7);
    outlined destroy of ScrollableCollectionSubview(&v32);
    v9 = *a3;
  }

  *a3 = v9 + 1;
  return (*a7 & 1) == 0;
}

_OWORD *closure #1 in DynamicLayoutScrollable.subviewClosestTo(rect:)(_OWORD *result, uint64_t a2, double *a3, _OWORD *a4, double a5, double a6)
{
  v6 = result[5];
  v36[4] = result[4];
  v36[5] = v6;
  v7 = result[7];
  v36[6] = result[6];
  v36[7] = v7;
  v8 = result[1];
  v36[0] = *result;
  v36[1] = v8;
  v9 = result[3];
  v36[2] = result[2];
  v36[3] = v9;
  v10 = sqrt((a5 - *&v8) * (a5 - *&v8) + (a6 - *(&v8 + 1)) * (a6 - *(&v8 + 1)));
  if (v10 < *a3)
  {
    *a3 = v10;
    v12 = result[5];
    v31 = result[4];
    v32 = v12;
    v13 = result[7];
    v33 = result[6];
    v34 = v13;
    v14 = result[1];
    v27 = *result;
    v28 = v14;
    v15 = result[3];
    v29 = result[2];
    v30 = v15;
    _ViewInputs.base.modify(&v27, a2);
    v16 = a4[5];
    v35[4] = a4[4];
    v35[5] = v16;
    v17 = a4[7];
    v35[6] = a4[6];
    v35[7] = v17;
    v18 = a4[1];
    v35[0] = *a4;
    v35[1] = v18;
    v19 = a4[3];
    v35[2] = a4[2];
    v35[3] = v19;
    v20 = v27;
    v21 = v28;
    v22 = v30;
    a4[2] = v29;
    a4[3] = v22;
    *a4 = v20;
    a4[1] = v21;
    v23 = v31;
    v24 = v32;
    v25 = v34;
    a4[6] = v33;
    a4[7] = v25;
    a4[4] = v23;
    a4[5] = v24;
    outlined init with copy of ScrollableCollectionSubview(v36, &v26);
    return outlined destroy of ScrollableCollectionSubview?(v35);
  }

  return result;
}

uint64_t DynamicLayoutScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v16);
    v7 = v17;
    v8 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    Attribute = AGWeakAttributeGetAttribute();
    MEMORY[0x1EEE9AC00](Attribute);
    v14[2] = a2;
    v14[3] = a3;
    v15 = v10;
    v12 = ViewList.applyIDs(from:listAttribute:to:)(a1, v11 | (v10 << 32), partial apply for closure #1 in DynamicLayoutScrollable.applyCollectionViewIDs(from:to:), v14, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

BOOL closure #1 in DynamicLayoutScrollable.applyCollectionViewIDs(from:to:)(uint64_t *a1, void (*a2)(uint64_t *, char *))
{
  v3 = a1[1];
  v8 = 0;
  v5 = *a1;
  v6 = v3;

  _ViewList_ID.Canonical.init(id:)(&v5, v7);
  v5 = v7[0];
  v6 = v7[1];
  a2(&v5, &v8);

  return (v8 & 1) == 0;
}

uint64_t DynamicLayoutScrollable.collectionViewID(for:)@<X0>(__int128 *a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result && (v3 = *(result + 8), v4 = *(result + 32), v5 = *(result + 40), v6 = *(result + 44), v11 = *result, v12 = v3, v13 = *(result + 16), v14 = v4, v15 = v5, v16 = v6, , , , v7 = DynamicContainer.Info.item(for:)(), , , result = , v7) && ((*(*v7 + 184))(&v11, result), result = , v12))
  {
    v9[0] = v11;
    v9[1] = v12;
    result = _ViewList_ID.Canonical.init(id:)(v9, &v10);
    v8 = v10;
  }

  else
  {
    v8 = xmmword_18DD85550;
  }

  *a1 = v8;
  return result;
}

uint64_t protocol witness for ScrollableCollection.subviewClosestTo(rect:) in conformance DynamicLayoutScrollable@<X0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v16 = 0x7FF0000000000000;
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(v17);
  v10 = v17[5];
  a1[4] = v17[4];
  a1[5] = v10;
  v11 = v17[7];
  a1[6] = v17[6];
  a1[7] = v11;
  v12 = v17[1];
  *a1 = v17[0];
  a1[1] = v12;
  v13 = v17[3];
  a1[2] = v17[2];
  a1[3] = v13;
  *&v15[2] = a2;
  *&v15[3] = a3;
  *&v15[4] = a4;
  *&v15[5] = a5;
  v15[6] = &v16;
  v15[7] = a1;
  return DynamicLayoutScrollable.forEachVisibleSubview(_:)(partial apply for closure #1 in DynamicLayoutScrollable.subviewClosestTo(rect:), v15);
}

uint64_t protocol witness for ScrollableCollection.firstCollectionViewIndex(of:) in conformance DynamicLayoutScrollable(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    return 0;
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8[0] = v1;
  v8[1] = v2;
  v6 = ViewList.firstOffset(of:)(v8, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

uint64_t specialized DynamicLayoutScrollable.scroll(toCollectionViewID:anchor:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
    goto LABEL_9;
  }

  outlined init with copy of AnyTrackedValue(WeakValue, v24);
  v6 = v25;
  v7 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v23[0] = v3;
  v23[1] = v4;
  v8 = ViewList.firstOffset(of:)(v23, v6, v7);
  LOBYTE(v7) = v9;
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v7)
  {
    goto LABEL_9;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    v10 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v10 = 0;
  }

  v11 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v10);
  v13 = v12;
  v15 = v14;

  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v2 + 32);
  *(v16 + 64) = *(v2 + 48);
  *(v16 + 72) = v8;
  *(v16 + 80) = v11;
  *(v16 + 88) = v13;
  *(v16 + 96) = v15 & 1;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  v18 = AGGraphGetWeakValue();
  if (!v18)
  {

LABEL_9:
    v21 = 0;
    return v21 & 1;
  }

  outlined init with copy of AnyTrackedValue(v18, v24);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v21 = (*(v20 + 16))(partial apply for closure #1 in DynamicLayoutScrollable.makeTarget(at:), v16, v19, v20);

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21 & 1;
}

uint64_t outlined destroy of ScrollableCollectionSubview?(uint64_t a1)
{
  _s7SwiftUI10MutableBoxCyAA17CachedEnvironmentVGMaTm_2(0, &lazy cache variable for type metadata for ScrollableCollectionSubview?, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _TraitWritingModifier<ZIndexTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 48) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 24, a2 + 24, v5);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v8;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  v9 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  return a1;
}

uint64_t assignWithCopy for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  __swift_assign_boxed_opaque_existential_1((a1 + 24), (a2 + 24));
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v4 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v4;
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v5 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v5;

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t assignWithTake for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutViewAdaptor.MakeTransition(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 209))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutViewAdaptor.MakeTransition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 209) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 209) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for DynamicLayoutComputer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutComputer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutComputer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for DynamicLayoutScrollable(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DynamicLayoutScrollable(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for DynamicLayoutViewChildGeometry(uint64_t a1)
{
  result = lazy protocol witness table accessor for type DynamicLayoutViewChildGeometry and conformance DynamicLayoutViewChildGeometry();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation()
{
  result = lazy protocol witness table cache variable for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation;
  if (!lazy protocol witness table cache variable for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewListArchivedAnimation and conformance ViewListArchivedAnimation);
  }

  return result;
}

uint64_t partial apply for closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TransitionHelper() - 8);
  v8 = (*(v7 + 80) + 109) & ~*(v7 + 80);
  v9 = v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return closure #2 in DynamicLayoutViewAdaptor.MakeTransition.makeArchivedTransition<A>(helper:)(a1, v2 + 32, v2 + v8, v10, v11, v5, v6, a2);
}

uint64_t type metadata completion function for ViewListContentTransition()
{
  result = type metadata accessor for TransitionHelper();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ViewListContentTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ((v5 + 12) & ~v5) + v6;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || (((v7 & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v11 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v12 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v11 = *v12;
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *v14;
    v15 = (v13 + v5 + 4) & ~v5;
    v16 = (v14 + v5 + 4) & ~v5;
    (*(v4 + 16))(v15, v16);
    *(v15 + v6) = *(v16 + v6);
    v18 = ((v3 + v7 + 4) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((a2 + v7 + 4) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    *((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  }

  return v3;
}

_DWORD *initializeWithCopy for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 16))(v12, v13);
  v14 = *(v10 + 48);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithCopy for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 24))(v12, v13);
  v14 = *(v10 + 40);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *initializeWithTake for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 32))(v12, v13);
  v14 = *(v10 + 32);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

_DWORD *assignWithTake for ViewListContentTransition(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + 4) & ~v11;
  v13 = (v8 + v11 + 4) & ~v11;
  (*(v9 + 40))(v12, v13);
  v14 = *(v10 + 24);
  *(v14 + v12) = *(v14 + v13);
  v15 = v14 + ((v11 + 12) & ~v11) + 4;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  *((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL) = *((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewListContentTransition(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v6 + 12) & ~v6) + v7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFFC;
  if ((v9 & 0xFFFFFFFC) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (v15)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v18 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
    if (v5 >= 0xFD)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(v18 + v7);
    if (v19 >= 3)
    {
      return v19 - 2;
    }

    else
    {
      return 0;
    }
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = *(a1 + v9);
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_24:
  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

_BYTE *storeEnumTagSinglePayload for ViewListContentTransition(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
      if (v6 < 0xFD)
      {
        result[v9] = a2 + 2;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) == 0xFFFFFFFC)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFC) + 11) & 0xFFFFFFFC) != 0xFFFFFFFC)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v8 + 12) & ~v8) + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}