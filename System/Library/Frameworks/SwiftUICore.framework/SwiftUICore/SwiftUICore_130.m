uint64_t destroy for TranslationKickModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);
}

uint64_t initializeWithCopy for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 32);
  v16 = *(v15 + 48);
  v18 = *(v15 + 16);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v17;
  *(v14 + 48) = v16;
  *(v14 + 16) = v18;
  *v14 = *v15;
  v19 = (v14 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 16) = *(v20 + 16);

  return a1;
}

uint64_t assignWithCopy for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v16 = ((v14 + 79) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  v16[2] = v17[2];

  return a1;
}

uint64_t initializeWithTake for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 32);
  v16 = *(v15 + 48);
  v18 = *(v15 + 16);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v17;
  *(v14 + 48) = v16;
  *(v14 + 16) = v18;
  *v14 = *v15;
  v19 = (v14 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 79) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 16) = *(v20 + 16);
  *v19 = v21;
  return a1;
}

uint64_t assignWithTake for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v16 = ((v14 + 79) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  v16[2] = v17[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for TranslationKickModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v20 = *(((((((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v21 = v20 - 1;
    if (v21 < 0)
    {
      v21 = -1;
    }

    return (v21 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for TranslationKickModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((((v12 + v11) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 < 0x7FFFFFFE)
      {
        v23 = ((((((v12 + ((result + v10) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v23[1] = 0;
          v23[2] = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v23[2] = a2;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

CFTypeRef CTFontDescriptorRef.size.getter()
{
  result = CTFontDescriptorCopyAttribute(v0, *MEMORY[0x1E6965848]);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CTFontRef.mayRequireLanguageAwareOutsets.getter()
{
  SymbolicTraits = CTFontGetSymbolicTraits(v0);
  if (SymbolicTraits)
  {
    return 1;
  }

  v2 = SymbolicTraits;
  CTFontGetWeight();
  if (*MEMORY[0x1E6965940] < v3)
  {
    return 1;
  }

  return (v2 & 0xF0000000) == 0xA0000000 || (v2 & 0xF0000000) == -1879048192;
}

BOOL CTFontRef.isMonospaced.getter()
{
  v1 = CTFontCopyFontDescriptor(v0);
  v2 = CTFontDescriptorRef.isMonospaced.getter();

  return v2;
}

double CTFontRef.bodyLeading.getter()
{
  Ascent = CTFontGetAscent(v0);
  v2 = Ascent + CTFontGetDescent(v0);
  return v2 + CTFontGetLeading(v0);
}

BOOL CTFontDescriptorRef.isMonospaced.getter()
{
  SymbolicTraits = CTFontDescriptorGetSymbolicTraits();
  CTFontDescriptorRef.design.getter(&v2);
  if (v2 == 4)
  {
    if ((SymbolicTraits & 0x400) == 0)
    {
      return 0;
    }
  }

  else if ((SymbolicTraits & 0x400) == 0)
  {
    return v2 == 3;
  }

  return 1;
}

CTFontRef_optional __swiftcall CTFontRef.symbolicTraits(_:)(CTFontSymbolicTraits a1)
{
  Size = CTFontGetSize(v1);

  return CTFontCreateCopyWithSymbolicTraits(v1, Size, 0, a1, 0xFFFFFFFF);
}

CTFontRef CTFontRef.scaled(by:toMultipleOf:maintainVisualWeight:)(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  if (a4 == 1.0)
  {

    return v4;
  }

  else
  {
    v11 = CTFontCopyFontDescriptor(v5);
    if (a3)
    {
      CTFontGetWeight();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(a1, a2 & 1, v13, (a3 & 1) == 0, a4);

    v15 = CTFontCreateWithFontDescriptor(v14, 0.0, 0);
    return v15;
  }
}

CTFontDescriptorRef CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  if (a5 != 1.0)
  {
    v13 = *MEMORY[0x1E6965848];
    original = v6;
    v14 = 0.0;
    if (CTFontDescriptorCopyAttribute(v6, *MEMORY[0x1E6965848]) && (swift_dynamicCast() & 1) != 0)
    {
      v14 = v39;
    }

    if (a2)
    {
      v15 = v14 * a5;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = round(v14 * a5 / *&a1);
      v17 = round(v14 * a5);
      if (*&a1 == 1.0)
      {
        v15 = v17;
      }

      else
      {
        v15 = v16 * *&a1;
      }

      if (a4)
      {
        goto LABEL_17;
      }
    }

    if (v15 > 0.0)
    {
      v18 = (a5 + 1.0) * 0.5 * ((*&a3 + 1.0) * v14 / v15) + -1.0;
      v19 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSDictionary);
      type metadata accessor for _ContiguousArrayStorage<(String, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any));
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_18DDA6EB0;
      v21 = *MEMORY[0x1E6965898];
      type metadata accessor for CFStringRef(0);
      v23 = v22;
      *(v20 + 56) = v22;
      *(v20 + 32) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_18DDA6EB0;
      v25 = *MEMORY[0x1E6965970];
      *(v24 + 56) = v23;
      *(v24 + 32) = v25;
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v27 = v21;
      v28 = v25;
      v29 = [v26 initWithDouble_];
      *(v24 + 88) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber);
      *(v24 + 64) = v29;
      v30 = NSDictionary.init(dictionaryLiteral:)();
      v31 = NSDictionary.init(dictionary:)();

      *(v20 + 88) = v19;
      *(v20 + 64) = v31;
      v32 = NSDictionary.init(dictionaryLiteral:)();
      isa = NSDictionary.init(dictionary:)();

LABEL_18:
      CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, isa);

      return CopyWithAttributes;
    }

LABEL_17:
    v34 = MEMORY[0x1E69E7DE0];
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat));
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v36 = v13;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, CGFloat)(inited + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v34, type metadata accessor for (CFStringRef, CGFloat));
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    goto LABEL_18;
  }

  return v5;
}

uint64_t CTFontLegibilityWeight.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return -1;
  }

  else
  {
    return v1 & 1;
  }
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.bold(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  result = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, v2, 2u);
  if (!result)
  {

    return v4;
  }

  return result;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.italic(_:)(Swift::Bool a1)
{
  result = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, a1, 1u);
  if (!result)
  {

    return v3;
  }

  return result;
}

CTFontDescriptorRef CTFontDescriptorRef.pointSize(_:)(double a1)
{
  v3 = MEMORY[0x1E69E7DE0];
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat));
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E6965848];
  *(inited + 16) = xmmword_18DDA6EB0;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = a1;
  v7 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CGFloat)(inited + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v3, type metadata accessor for (CFStringRef, CGFloat));
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, isa);

  return CopyWithAttributes;
}

unint64_t CTFontDescriptorRef.design(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *MEMORY[0x1E6965898];
  v5 = CTFontDescriptorCopyAttribute(v1, *MEMORY[0x1E6965898]);
  v6 = MEMORY[0x1E69E7CA0];
  if (v5 && (*&v24 = v5, type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any]), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v8 = *&v23[0];
  }

  else
  {
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v8 = result;
  }

  v26 = v8;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
LABEL_13:
      v9 = *MEMORY[0x1E69658C8];
      if (!*MEMORY[0x1E69658C8])
      {
        __break(1u);
LABEL_15:
        result = *MEMORY[0x1E69658E0];
        if (*MEMORY[0x1E69658E0])
        {
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          specialized Dictionary._Variant.removeValue(forKey:)(v10, v11, &v24);

          outlined destroy of (CFStringRef, CGFloat)(&v24, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
LABEL_20:
          type metadata accessor for _ContiguousArrayStorage<(CFStringRef, [String : Any])>();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDA6EB0;
          *(inited + 32) = v4;
          *(inited + 40) = v26;
          v20 = v4;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDySSypGTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of (CFStringRef, [String : Any])(inited + 32, &lazy cache variable for type metadata for (CFStringRef, [String : Any]), &lazy cache variable for type metadata for [String : Any], v6 + 8, type metadata accessor for [String : Any]);
          type metadata accessor for CFStringRef(0);
          type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any]);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v2, isa);

          return CopyWithAttributes;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v3 != 3)
    {
      goto LABEL_15;
    }

    v9 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_18:
      v12 = v9;
      result = *MEMORY[0x1E69658E0];
      if (*MEMORY[0x1E69658E0])
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        type metadata accessor for CFStringRef(0);
        v25 = v16;
        *&v24 = v12;
        outlined init with take of Any(&v24, v23);
        v17 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v13, v15, isUniquelyReferenced_nonNull_native);

        v26 = v8;
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
  }

  if (!v3)
  {
    v9 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t CTFontDescriptorRef.width.getter()
{
  v1 = CTFontDescriptorCopyAttributes(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v10[0] = 0;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E6965898]), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v10);

    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]);
    if (swift_dynamicCast())
    {
      v5 = v9;
      if (!*(v9 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!*(v5 + 16))
  {
LABEL_14:

    return 0;
  }

LABEL_10:
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69659C8]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

const __CTFontDescriptor *CTFontDescriptorRef.width(_:)(double a1)
{
  if (CTFontDescriptorIsSystemUIFont())
  {
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, [CFStringRef : CGFloat])>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v3 = *MEMORY[0x1E6965898];
    *(inited + 32) = *MEMORY[0x1E6965898];
    v4 = MEMORY[0x1E69E7DE0];
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat));
    v5 = swift_initStackObject();
    v6 = MEMORY[0x1E69659C8];
    *(v5 + 16) = xmmword_18DDA6EB0;
    v7 = *v6;
    *(v5 + 32) = *v6;
    *(v5 + 40) = a1;
    v8 = v3;
    v9 = v7;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v5);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, CGFloat)(v5 + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v4, type metadata accessor for (CFStringRef, CGFloat));
    *(inited + 40) = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [String : Any])(inited + 32, &lazy cache variable for type metadata for (CFStringRef, [CFStringRef : CGFloat]), &lazy cache variable for type metadata for [CFStringRef : CGFloat], v4, type metadata accessor for [CFStringRef : Any]);
    type metadata accessor for CFStringRef(0);
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : CGFloat]);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, isa);

    return CopyWithAttributes;
  }

  v13 = *MEMORY[0x1E6965790];
  v14 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965790]);
  if (v14)
  {
    v15 = v14;
    v16 = CTFontDescriptorCopyAttributes(original);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v34 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    specialized Dictionary._Variant.removeValue(forKey:)(*MEMORY[0x1E6965808], &v34);
    outlined destroy of (CFStringRef, CGFloat)(&v34, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
    ObjectType = swift_getObjectType();
    *&v34 = v15;
    outlined init with take of Any(&v34, v33);
    swift_unknownObjectRetain();
    v22 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v13, isUniquelyReferenced_nonNull_native);
    v36 = v22;
    v24 = *MEMORY[0x1E6965898];
    v25 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965898]);
    if (v25 && (*&v34 = v25, type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]), (swift_dynamicCast() & 1) != 0))
    {
      v26 = *&v33[0];
    }

    else
    {
      v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v27 = *MEMORY[0x1E69659C8];
    ObjectType = MEMORY[0x1E69E7DE0];
    *&v34 = a1;
    outlined init with take of Any(&v34, v33);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v27, v28);
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]);
    ObjectType = v29;
    *&v34 = v26;
    outlined init with take of Any(&v34, v33);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v24, v30);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateWithAttributes(v31);

    swift_unknownObjectRelease();
    return CopyWithAttributes;
  }

  _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_18DDA6EB0;
  _StringGuts.grow(_:)(38);
  _StringGuts.grow(_:)(50);
  MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD7D510);
  v18 = Double.description.getter();
  MEMORY[0x193ABEDD0](v18);

  MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
  type metadata accessor for CTFontDescriptorRef(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v19 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  *&v33[0] = 84;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 32) = 0;
  *(v17 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  return original;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.clearFeatures()()
{
  v1 = v0;
  v2 = CTFontDescriptorCopyAttributes(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v15 = 0;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = v3;
  v4 = *MEMORY[0x1E69657A8];
  v5 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738])
  {
    type metadata accessor for CFNullRef(0);
    v16 = v6;
    *&v15 = v5;
    outlined init with take of Any(&v15, v14);
    v7 = v4;
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native);

    v17 = v3;
  }

  else
  {
    v10 = v4;
    specialized Dictionary._Variant.removeValue(forKey:)(v10, &v15);

    outlined destroy of (CFStringRef, CGFloat)(&v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, isa);

  return CopyWithAttributes;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.feature(type:selector:)(Swift::Int type, Swift::Int selector)
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v4);

  return CopyWithFeature;
}

CTFontDescriptorRef CTFontDescriptorRef.upperCaseSmallCaps(_:)()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v0, isa, v2);

  return CopyWithFeature;
}

uint64_t CTFontDescriptorRef.design.getter@<X0>(char *a1@<X8>)
{
  CTFontRef.valueForTrait(_:)(*MEMORY[0x1E6965898], MEMORY[0x1E69655C8], &v8);
  if (v9)
  {
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any]);
    if (swift_dynamicCast())
    {
      v2 = *&v7[0];
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of (CFStringRef, CGFloat)(&v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
  }

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_6:
  result = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    if (*(v2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(result), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v4, v7);

      outlined init with take of Any(v7, &v8);
      outlined init with copy of Any(&v8, v7);
      type metadata accessor for CFStringRef(0);
      swift_dynamicCast();
      Font.Design.init(ctDesignIdentifier:)(v6, a1);
      return __swift_destroy_boxed_opaque_existential_1(&v8);
    }

    else
    {

      *a1 = 4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.monospaced(_:)(Swift::Bool a1)
{
  v2 = CTFontDescriptorRef.isMonospaced.getter();
  if (!a1)
  {
    if (v2)
    {
      if (CTFontDescriptorIsSystemUIFont())
      {
        CTFontDescriptorRef.design.getter(&v20);
        if (v20 == 3)
        {
          v3 = 4;
          goto LABEL_5;
        }

        _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_18DDA6EB0;
        v20 = 0;
        v21 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v20 = 0;
        v21 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        MEMORY[0x193ABEDD0](0xD000000000000039, 0x800000018DD7D570);
        v22 = original;
        type metadata accessor for CTFontDescriptorRef(0);
        _print_unlocked<A, B>(_:_:)();

        MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
        v7 = StaticString.description.getter();
        MEMORY[0x193ABEDD0](v7);

        MEMORY[0x193ABEDD0](58, 0xE100000000000000);
        v22 = 84;
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v8);

        MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
        v9 = v20;
        v10 = v21;
        *(v6 + 56) = MEMORY[0x1E69E6158];
        *(v6 + 32) = v9;
        *(v6 + 40) = v10;
        print(_:separator:terminator:)();
      }

      v5 = 0;
      goto LABEL_16;
    }

LABEL_10:

    return original;
  }

  if (v2)
  {
    goto LABEL_10;
  }

  if (CTFontDescriptorIsSystemUIFont())
  {
    v3 = 3;
LABEL_5:
    LOBYTE(v20) = v3;
    return CTFontDescriptorRef.design(_:)(&v20);
  }

  v5 = 1024;
LABEL_16:
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(original, v5, 0x400u);
  if (!CopyWithSymbolicTraits)
  {
    CopyWithSymbolicTraits = original;
  }

  v12 = CopyWithSymbolicTraits;
  SymbolicTraits = CTFontDescriptorGetSymbolicTraits();
  if (a1)
  {
    if ((SymbolicTraits & 0x400) != 0)
    {
      return v12;
    }
  }

  else if ((SymbolicTraits & 0x400) == 0 && !CTFontDescriptorRef.isMonospaced.getter())
  {
    return v12;
  }

  v14 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965848]);
  if (v14)
  {
    v20 = v14;
    swift_dynamicCast();
  }

  CTFontDescriptorGetWeight();
  v16 = v15;
  v17 = CTFontDescriptorCreateForUIType();

  if (v16 == 0.0)
  {
    return v17;
  }

  v18 = CTFontDescriptorRef.weight(_:)(v16);

  return v18;
}

double CTFontRef.valueForTrait(_:)@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = a2(v4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v9, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t outlined destroy of (CFStringRef, CGFloat)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t static CoreTesting.isRunning.setter(char a1)
{
  result = swift_beginAccess();
  static CoreTesting.isRunning = a1;
  return result;
}

uint64_t static CoreTesting.needsRender.setter(char a1)
{
  result = swift_beginAccess();
  static CoreTesting.needsRender = a1;
  return result;
}

unint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) <= 0x40uLL)
  {
    v5 = a3 + 64;
    v6 = 1 << *(a3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a3 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v11 = 0;
    v54 = 0;
    v51 = 1;
    v52 = 1;
    while (v8)
    {
LABEL_13:
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v13, v62);
      *&v61 = v15;
      *(&v61 + 1) = v16;
      *&v57 = v15;
      *(&v57 + 1) = v16;
      outlined init with take of _ViewList_Elements(v62, &v58);
      outlined init with copy of (key: EventID, value: EventType)(&v57, v55);
      LOBYTE(v15) = a1(v55, v56);
      outlined destroy of (key: EventID, value: EventType)(&v57);
      __swift_destroy_boxed_opaque_existential_1(v56);
      if (v15)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v52 = 0;
        v17 = 1 << v10;
        if (v10 >= 0x40)
        {
          v17 = 0;
        }

        v54 |= v17;
      }

      else
      {
        v51 = 0;
      }

      v8 &= v8 - 1;
      ++v10;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v18 = a3;

        if (v52)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v51)
        {

          return v18;
        }

        v20 = 1 << *(a3 + 32);
        v21 = -1;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        v22 = v21 & *(a3 + 64);
        v23 = (v20 + 63) >> 6;

        v24 = 0;
        v25 = 0;
        v26 = MEMORY[0x1E69E7CC8];
        while (v22)
        {
          v27 = v25;
LABEL_38:
          v30 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v31 = v30 | (v27 << 6);
          v32 = (*(v18 + 48) + 16 * v31);
          v33 = *v32;
          v34 = v32[1];
          outlined init with copy of AnyTrackedValue(*(v18 + 56) + 40 * v31, v55);
          *&v57 = v33;
          *(&v57 + 1) = v34;
          outlined init with take of _ViewList_Elements(v55, &v58);
LABEL_39:
          v61 = v57;
          v62[0] = v58;
          v62[1] = v59;
          v63 = v60;
          v35 = v57;
          if (!v57)
          {

            return v26;
          }

          v36 = *(&v61 + 1);
          outlined init with take of _ViewList_Elements(v62, &v57);
          if (v24 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v24 <= 0x3F && ((v54 >> v24) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v57, v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
            v40 = v26[2];
            v41 = (v39 & 1) == 0;
            v42 = __OFADD__(v40, v41);
            v43 = v40 + v41;
            if (v42)
            {
              goto LABEL_58;
            }

            v44 = v39;
            if (v26[3] >= v43)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v50 = v38;
                specialized _NativeDictionary.copy()();
                v38 = v50;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
              v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
              if ((v44 & 1) != (v45 & 1))
              {
                goto LABEL_61;
              }
            }

            v18 = a3;
            if (v44)
            {
              v46 = v26[7] + 40 * v38;
              __swift_destroy_boxed_opaque_existential_1(v46);
              outlined init with take of _ViewList_Elements(v55, v46);
              __swift_destroy_boxed_opaque_existential_1(&v57);
              ++v24;
            }

            else
            {
              v26[(v38 >> 6) + 8] |= 1 << v38;
              v47 = (v26[6] + 16 * v38);
              *v47 = v35;
              v47[1] = v36;
              outlined init with take of _ViewList_Elements(v55, v26[7] + 40 * v38);
              __swift_destroy_boxed_opaque_existential_1(&v57);
              v48 = v26[2];
              v42 = __OFADD__(v48, 1);
              v49 = v48 + 1;
              if (v42)
              {
                goto LABEL_60;
              }

              v26[2] = v49;
              ++v24;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v57);
            ++v24;
          }
        }

        if (v23 <= v25 + 1)
        {
          v28 = v25 + 1;
        }

        else
        {
          v28 = v23;
        }

        v29 = v28 - 1;
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v27 >= v23)
          {
            v22 = 0;
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            v25 = v29;
            v57 = 0u;
            goto LABEL_39;
          }

          v22 = *(v5 + 8 * v27);
          ++v25;
          if (v22)
          {
            v25 = v27;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_13;
      }
    }

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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2, a3);
  }

  return result;
}

uint64_t key path setter for EventFilter.predicate : <A>EventFilter<A>(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@out Bool);
  a2[1] = v5;
  return result;
}

uint64_t EventFilter.predicate.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventFilter.predicate.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventFilter.init(predicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static EventFilter._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *)@<X2>, _DWORD *a4@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[6];
  *v40 = a2[5];
  *&v40[16] = v7;
  *&v40[28] = *(a2 + 108);
  v8 = a2[4];
  v9 = a2[1];
  v35 = *a2;
  v36 = v9;
  v10 = a2[3];
  v37 = a2[2];
  v38 = v10;
  v39 = v8;
  *&v45 = __PAIR64__(*&v40[28], v6);
  v27 = type metadata accessor for EventFilterEvents();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<FilteredEvents>(0, &lazy cache variable for type metadata for Attribute<FilteredEvents>, &type metadata for FilteredEvents, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v45, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_13, v26, v27, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  v32 = v38;
  v33 = v39;
  v34[0] = *v40;
  *(v34 + 12) = *&v40[12];
  v29 = v35;
  v13 = v43[0];
  v30 = v36;
  v31 = v37;
  v21 = *&v40[40];
  v20 = *&v40[32];
  outlined init with copy of _GestureInputs(&v35, &v45);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v42[12] = *(v34 + 12);
  v41[4] = v33;
  *v42 = v34[0];
  v41[0] = v29;
  v41[1] = v30;
  v41[2] = v31;
  v41[3] = v32;
  *&v42[28] = OffsetAttribute2;
  *&v42[40] = v21;
  *&v42[32] = v20;
  *&v50[16] = *&v42[16];
  *&v50[28] = *&v42[28];
  v49 = v33;
  *v50 = v34[0];
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  outlined init with copy of _GestureInputs(v41, v43);
  a3(&v45);
  v43[4] = v49;
  v43[5] = *v50;
  v44[0] = *&v50[16];
  *(v44 + 12) = *&v50[28];
  v43[0] = v45;
  v43[1] = v46;
  v43[2] = v47;
  v43[3] = v48;
  outlined destroy of _GestureInputs(v43);
  v19[0] = *a4;
  v19[1] = v13;
  v23 = type metadata accessor for GesturePhase();
  v24 = type metadata accessor for EventFilterPhase();
  v25 = swift_getWitnessTable();
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, partial apply for closure #1 in Attribute.init<A>(_:), v22, v24, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v49 = v33;
  *v50 = v34[0];
  *&v50[12] = *(v34 + 12);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  *&v50[28] = OffsetAttribute2;
  *&v50[40] = v21;
  *&v50[32] = v20;
  result = outlined destroy of _GestureInputs(&v45);
  *a4 = v18;
  return result;
}

uint64_t Gesture.eventFilter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for EventFilter();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v10, a3, v8, a4);
}

uint64_t Gesture.eventFilter(allowedTypes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  Gesture.eventFilter(_:)(partial apply for closure #1 in Gesture.eventFilter(allowedTypes:), v6, a2, a3);
}

uint64_t closure #1 in Gesture.eventFilter(allowedTypes:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a2 + 32); ; ++i)
  {
    v17 = *i;
    outlined init with copy of AnyTrackedValue(v16, v18);
    v4 = *(&v17 + 1);
    v5 = *(*(&v17 + 1) + 56);
    v6 = v17;
    v7 = type metadata accessor for Optional();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v15 - v10;
    v5(v18, v6, v4, v9);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v11, 1, v6) != 1)
    {
      break;
    }

    (*(v8 + 8))(v11, v7);
    memset(v19, 0, 40);
    outlined destroy of EventType?(v19);
    if (!--v2)
    {
      return 0;
    }
  }

  *(&v19[1] + 8) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v12 + 32))(boxed_opaque_existential_1, v11, v6);
  outlined destroy of EventType?(v19);
  return 1;
}

BOOL closure #1 in Gesture.eventFilter(allowedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyTrackedValue(a1, v16);
  v5 = *(a3 + 56);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9 - 8];
  v5(v16, a2, a3, v8);
  v11 = *(a2 - 8);
  v12 = (*(v11 + 48))(v10, 1, a2);
  if (v12 == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = a2;
    v19 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v11 + 32))(boxed_opaque_existential_1, v10, a2);
  }

  outlined destroy of EventType?(&v17);
  return v12 != 1;
}

uint64_t Gesture.eventFilter(allowedType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  Gesture.eventFilter(_:)(a4, v10, a3, a5);
}

BOOL closure #1 in Gesture.eventFilter(excludedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyTrackedValue(a1, v16);
  v5 = *(a3 + 56);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9 - 8];
  v5(v16, a2, a3, v8);
  v11 = *(a2 - 8);
  v12 = (*(v11 + 48))(v10, 1, a2);
  if (v12 == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = a2;
    v19 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v11 + 32))(boxed_opaque_existential_1, v10, a2);
  }

  outlined destroy of EventType?(&v17);
  return v12 == 1;
}

uint64_t Gesture.eventFilter<A>(_:allowOtherTypes:_:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = a1;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;

  Gesture.eventFilter(_:)(partial apply for closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:), v16, a4, a8);
}

uint64_t closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:)(uint64_t a1, char a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-v14 - 8];
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of AnyTrackedValue(a1, v22);
  (*(a8 + 56))(v22, a6, a8);
  if ((*(v16 + 48))(v15, 1, a6) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v19, v15, a6);
    a2 = v21(v19);
    (*(v16 + 8))(v19, a6);
  }

  return a2 & 1;
}

uint64_t EventFilterEvents.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for EventFilter();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

unint64_t EventFilterEvents.value.getter(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  type metadata accessor for [EventID : EventType]();
  v5 = *AGGraphGetValue();
  v8[2] = a2;
  v9 = v3;
  v10 = v4;

  v6 = specialized Dictionary.optimisticFilter(_:)(partial apply for closure #1 in EventFilterEvents.value.getter, v8, v5);

  AGGraphGetValue();
  return v6;
}

uint64_t closure #1 in EventFilterEvents.value.getter(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  outlined init with copy of AnyTrackedValue(a2, v7);
  EventFilterEvents.modifier.getter(&v5);
  v3 = v5(v7);

  outlined destroy of (key: EventID, value: EventType)(v6);
  return v3 & 1;
}

uint64_t EventFilterPhase.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

unint64_t protocol witness for Rule.value.getter in conformance EventFilterEvents<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = EventFilterEvents.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t EventFilterPhase.value.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(AGGraphGetValue() + 8) == 1)
  {
    type metadata accessor for GesturePhase();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    return EventFilterPhase.phase.getter(a1);
  }
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n(v11, v7, a3, v5);
  result = MEMORY[0x193AC4820](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *))
{
  v27 = a4;
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v17 = (*(a3 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v26[0] = v19;
    v26[1] = v18;
    outlined init with copy of AnyTrackedValue(v16 + 40 * v15, v25);
    v20 = v27(v26, v25);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    if (v4)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, _BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = type metadata accessor for URL();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v36[1] = v42 + 16;
  v37 = result;
  v43 = v42 + 32;
  v16 = result + 64;
  v38 = a1;
  v36[0] = a4;
  v17 = v44;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v42;
    v41 = *(v42 + 72);
    v25 = v39;
    (*(v42 + 16))(v39, v23 + v41 * v22, v17);
    outlined init with copy of WeakBox<CUICatalog>(a4[7] + 8 * v22, v46);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    outlined init with take of WeakBox<CUICatalog>(v46, v45);
    v13 = v37;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v38;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v38;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v26((*(v13 + 48) + v30 * v41), v9, v44);
    result = outlined init with take of WeakBox<CUICatalog>(v45, *(v13 + 56) + 8 * v30);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36[0];
    v14 = v40;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined destroy of (key: EventID, value: EventType)(uint64_t a1)
{
  type metadata accessor for (key: EventID, value: EventType)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>)
  {
    type metadata accessor for LazyLayoutCacheItem();
    lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>)
  {
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item();
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of EventType?(uint64_t a1)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for EventType?, type metadata accessor for EventType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EventType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of WeakBox<CUICatalog>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for WeakBox<CUICatalog>, type metadata accessor for CUICatalog, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakBox<CUICatalog>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for WeakBox<CUICatalog>, type metadata accessor for CUICatalog, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item();
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>)
  {
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item();
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>);
    }
  }
}

void type metadata accessor for Attribute<FilteredEvents>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized getter of itemTransform #1 in static GlassEffectGroupModifier._makeView(modifier:inputs:body:)(_BYTE *a1)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform();
  v2 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v2;
  *a1 = v2;
  a1[4] = 0;
  return result;
}

uint64_t closure #1 in GlassEffectGroupModifier.ItemTransform.updateValue()(uint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      v5 = *result;
      v6 = *(*result + 16);
      if (v6)
      {
        v19 = result;
        v10 = ~(a5 << 32) + a5;

        v11 = 0;
        v12 = 0;
        while (1)
        {

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
            v5 = result;
          }

          if (v12 >= *(v5 + 16))
          {
            break;
          }

          v13 = v5 + v11;
          *(v5 + v11 + 160) = a2;

          if (v12 >= *(v5 + 16))
          {
            goto LABEL_19;
          }

          *(v13 + 168) = a3;
          *(v13 + 176) = 0;
          v14 = *(v13 + 152);
          if (v14 != -1 && a5)
          {
            v15 = a5;
            if (v14)
            {
              v15 = a5;
              if (a5 != -1)
              {
                v16 = (v10 + (v14 << 32)) ^ ((v10 + (v14 << 32)) >> 22);
                v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
                v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
                v15 = (v18 >> 31) ^ v18;
              }
            }

            *(v13 + 152) = v15;
          }

          ++v12;
          v11 += 656;
          if (v6 == v12)
          {

            *v19 = v5;
            return result;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassEffectGroupModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for GlassEffectGroupModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectGroupModifier.ItemTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform();
  *(a1 + 8) = result;
  return result;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewInfo.Seeds.invalidate()()
{
  if (*v0)
  {
    *v0 = ~*v0 | 1;
  }

  if (v0[1])
  {
    v0[1] = ~v0[1] | 1;
  }

  if (v0[2])
  {
    v0[2] = ~v0[2] | 1;
  }

  if (v0[3])
  {
    v0[3] = ~v0[3] | 1;
  }

  if (v0[4])
  {
    v0[4] = ~v0[4] | 1;
  }

  if (v0[5])
  {
    v0[5] = ~v0[5] | 1;
  }

  if (v0[6])
  {
    v0[6] = ~v0[6] | 1;
  }

  if (v0[7])
  {
    v0[7] = ~v0[7] | 1;
  }

  if (v0[8])
  {
    v0[8] = ~v0[8] | 1;
  }
}

uint64_t DisplayList.ViewUpdater.destroy(rootView:)(uint64_t a1)
{
  DisplayList.ViewUpdater.effectiveRootPlatform.getter(v5);
  v5[1] = a1;
  v5[2] = 0;
  v5[3] = 0x7FF0000000000000;
  v5[4] = 0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v1 + 40));
  v5[0] = 0x7FF0000000000000;
  DisplayList.ViewUpdater.ViewCache.reclaim(time:)(v3);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t DisplayList.ViewUpdater.deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 24);
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  v5[4] = *(v0 + 104);
  v5[5] = v2;
  v6 = *(v0 + 136);
  v3 = *(v0 + 56);
  v5[0] = *(v0 + 40);
  v5[1] = v3;
  v5[2] = *(v0 + 72);
  v5[3] = v1;
  outlined destroy of DisplayList.ViewUpdater.ViewCache(v5);

  return v0;
}

uint64_t static DisplayList.overrideMayInsertCALayers.setter(char a1)
{
  result = swift_beginAccess();
  static DisplayList.overrideMayInsertCALayers = a1;
  return result;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

__n128 __swift_memcpy18_2(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewInfo.Seeds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewInfo.Seeds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

double AnyViewFactory.encoding()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v9 = a2;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  DisplayList.GraphicsRenderer.render(list:in:)(&v6, &v9);
}

uint64_t RendererLeafView<>.content()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0x9000000000000000;
  return result;
}

{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0x8000000000000000;
  return result;
}

uint64_t protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance CoreInteractionRepresentableEffect<A>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v9 = a2;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  DisplayList.GraphicsRenderer.render(list:in:)(&v6, &v9);
}

void _DisplayList_ViewFactory.identity.getter(_DWORD *a1@<X8>)
{
  _DisplayList_ViewFactory.identity.getter(a1);
}

{
  *a1 = 0;
}

uint64_t RendererLeafView<>.content()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0xD000000000000000;
  return result;
}

uint64_t CodableViewFactory.encode(to:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  (*(v8 + 16))(&v34, v7, v8);
  if (*(&v34 + 1))
  {
    v37 = v34;
    outlined init with take of Decodable & Encodable(&v35, &v38);
    v9 = v37;
    outlined init with take of Decodable & Encodable(&v38, &v40);
    if (v9 == __PAIR128__(0xE000000000000000, 0) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v10 = v42;
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      static String.Encoding.utf8.getter();
      v30 = String.data(using:allowLossyConversion:)();
      v32 = v31;

      (*(v4 + 8))(v6, v3);
      if (v32 >> 60 == 15)
      {
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1(&v40);
      }

      v33 = v42;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v30, v32);
      v10 = v33;
      outlined consume of Data?(v30, v32);
    }

    v11 = v41;
    v12 = __swift_project_boxed_opaque_existential_1(&v40, v41);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = *(a1 + 32);
    v37 = *a1;
    *&v38 = v14;
    *(&v38 + 1) = v13;
    v39 = v15;

    v16 = ProtobufEncoder.binaryPlistData<A>(for:)(v12, v11);
    v18 = v17;

    if (v10)
    {
      return __swift_destroy_boxed_opaque_existential_1(&v40);
    }

    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v19 = *(a1 + 8);
    v20 = *(a1 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
      v20 = result;
    }

    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 16) = v23 + 1;
    *(v20 + 8 * v23 + 32) = v19;
    *(a1 + 24) = v20;
    if (!__OFADD__(v19, 1))
    {
      *(a1 + 8) = v19 + 1;
      Data.encode(to:)(a1, v16, v18);
      ProtobufEncoder.endLengthDelimited()();
      outlined consume of Data._Representation(v16, v18);
      return __swift_destroy_boxed_opaque_existential_1(&v40);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of (id: String, data: Decodable & Encodable)?(&v34, &lazy cache variable for type metadata for (id: String, data: Decodable & Encodable)?, type metadata accessor for (id: String, data: Decodable & Encodable));
    v24 = *(a1 + 16);
    v34 = *a1;
    v35 = v24;
    v36 = *(a1 + 24);
    ProtobufEncoder.archiveHost.getter(&v37);
    v25 = *(&v38 + 1);
    if (*(&v38 + 1))
    {
      v26 = v39;
      __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
      v27 = v1[3];
      v28 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v27);
      v29 = (*(v28 + 8))(v27, v28);
      (*(v26 + 8))(v29, v25, v26);
      return __swift_destroy_boxed_opaque_existential_1(&v37);
    }

    else
    {
      return outlined destroy of (id: String, data: Decodable & Encodable)?(&v37, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    }
  }

  return result;
}

uint64_t EmptyViewFactory.renderPlatformGroup(_:in:size:renderer:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, a3, a4);
  *&v12[0] = a2;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  DisplayList.GraphicsRenderer.render(list:in:)(&v9, v12);
}

uint64_t protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance EmptyViewFactory(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, a3, a4);
  *&v12[0] = a2;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  DisplayList.GraphicsRenderer.render(list:in:)(&v9, v12);
}

uint64_t EmptyViewFactory.makeView()()
{
  type metadata accessor for AnyViewStorage<EmptyView>();

  return swift_allocObject();
}

uint64_t specialized PlatformLayerFactory.renderPlatformLayer(in:size:renderer:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_beginAccess();
  if (*(a2 + 112) != 2)
  {
    _StringGuts.grow(_:)(41);

    v9 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    specialized static Log.externalWarning(_:)(0xD000000000000026, 0x800000018DD76060);

    return specialized GraphicsContext.drawLayer(flags:content:)(0, a1, a3, a4);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CodableViewFactory.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableViewFactory.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CodableViewFactory.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void type metadata accessor for (id: String, data: Decodable & Encodable)()
{
  if (!lazy cache variable for type metadata for (id: String, data: Decodable & Encodable))
  {
    type metadata accessor for Decodable & Encodable();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: String, data: Decodable & Encodable));
    }
  }
}

uint64_t outlined destroy of (id: String, data: Decodable & Encodable)?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for (id: String, data: Decodable & Encodable)?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (id: String, data: Decodable & Encodable)?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double AnyShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 80))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t AnyShape.animatableData.setter(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    (*(*v5 + 104))(v8);
    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v7 = (*(*v5 + 120))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v7;
  }

  return result;
}

uint64_t _AnyShapeBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 152) - 8) + 32))(v2 + *(*v2 + 168), a1);
  return v2;
}

uint64_t key path setter for AnyShape.animatableData : AnyShape(void *a1, uint64_t *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v8, v7);
    (*(*v4 + 104))(v7);
    return outlined destroy of _AnyAnimatableData(v8);
  }

  else
  {
    v6 = (*(*v4 + 120))(v8);
    outlined destroy of _AnyAnimatableData(v8);

    *a2 = v6;
  }

  return result;
}

void (*AnyShape.animatableData.modify(uint64_t *a1))(void **a1, char a2)
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
  (*(**v1 + 96))();
  return AnyShape.animatableData.modify;
}

void AnyShape.animatableData.modify(void **a1, char a2)
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
      (*(*v5 + 104))(v2 + 10);
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }

    else
    {
      v8 = v2[15];
      v9 = (*(*v5 + 120))(v2 + 5);
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
    (*(*v7 + 104))(v2 + 5);
LABEL_7:
    outlined destroy of _AnyAnimatableData(v2);
    goto LABEL_9;
  }

  v10 = v2[15];
  v11 = (*(*v7 + 120))(v2);
  outlined destroy of _AnyAnimatableData(v2);

  *v10 = v11;
LABEL_9:

  free(v2);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance AnyShape(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    (*(*v5 + 104))(v8);
    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v7 = (*(*v5 + 120))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v7;
  }

  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnyShape(uint64_t *a1))(void **a1, char a2)
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
  (*(**v1 + 96))();
  return AnyShape.animatableData.modify;
}

uint64_t type metadata completion function for _AnyShapeBox()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _AnyShapeBox.animatableData.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  swift_beginAccess();
  _AnyAnimatableData.update<A>(_:)(v1 + v4, *(v3 + 152), *(*(v3 + 160) + 8));
  swift_endAccess();
  return outlined destroy of _AnyAnimatableData(a1);
}

uint64_t _AnyShapeBox.withAnimatableData(_:)(uint64_t a1)
{
  v14 = *v1;
  v2 = v14;
  v3 = *(v14 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(v2 + 168);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, &v1[v10], v3);
  _AnyAnimatableData.update<A>(_:)(v9, v3, *(*(v2 + 160) + 8));
  v11(v6, v9, v3);
  v12 = _AnyShapeBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t _AnyShapeBox.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 152);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *(v10 + 168);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v11, v6);
  v12 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
}

uint64_t _AnyShapeBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 152) - 8) + 8))(v0 + *(*v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t Gesture.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for MapGesture();
  v20 = v12;
  v21 = a3;
  WitnessTable = swift_getWitnessTable();
  v23 = a5;
  v13 = type metadata accessor for ModifierGesture();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18 - v14;
  v16 = swift_allocObject();
  v16[2] = AssociatedTypeWitness;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;

  v20 = partial apply for closure #1 in MapGesture.init(_:);
  v21 = v16;
  Gesture.modifier<A>(_:)(&v20, a3, v12, v15);

  return _MapGesture.init(_body:)(v15, v19);
}

uint64_t MapGesture.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MapGesture.body.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t (*MapGesture.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X8>)@<X8>))@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = partial apply for closure #1 in MapGesture.init(_:);
  a5[1] = result;
  return result;
}

uint64_t static MapGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[5];
  v29 = a2[4];
  v30 = v6;
  v31 = a2[6];
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v8 = a2[3];
  v27 = a2[2];
  v28 = v8;
  v10 = *(a2 + 116);
  v32 = *(a2 + 28);
  v9 = v32;
  v33 = v10;
  a3(v19, &v25);
  v11 = v19[1];
  v12 = v20;
  v13 = type metadata accessor for GesturePhase();
  v14 = type metadata accessor for MapPhase();
  v18 = v19[0];
  *&v25 = __PAIR64__(v19[0], v5);
  *(&v25 + 1) = v9;
  v22 = v13;
  v23 = v14;
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v25, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v21, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  LODWORD(v14) = v19[0];
  *&v25 = v18;
  *(&v25 + 1) = v11;
  LODWORD(v26) = v12;
  type metadata accessor for _GestureOutputs();
  _GestureOutputs.withPhase<A>(_:)(v14, a4);
}

uint64_t MapPhase.modifier.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for MapGesture();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t MapPhase.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t MapPhase.updateValue()(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v18 = v7;
    MapPhase.modifier.getter(v19);
    v16 = v2;
    v17 = v6;
    v11 = v19[0];
    MapPhase.phase.getter(v5);
    v11(v5);

    v12 = (*(v3 + 8))(v5, v16);
    MEMORY[0x1EEE9AC00](v12);
    *(&v15 - 2) = a1;
    *(&v15 - 1) = swift_getWitnessTable();
    v13 = v17;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, partial apply for closure #1 in StatefulRule.value.setter, (&v15 - 4), v17, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
    return (*(v18 + 8))(v9, v13);
  }

  return result;
}

uint64_t Gesture.mapPhase<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for MapGesture();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v10, a3, v8, a4);
}

uint64_t _MapGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for MapGesture();
  swift_getWitnessTable();
  v4 = type metadata accessor for ModifierGesture();
  return (*(*(v4 - 8) + 32))(a2, a1, v4);
}

uint64_t partial apply for closure #1 in MapGesture.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = type metadata accessor for GesturePhase();
  return GesturePhase.map<A>(_:)(v4, v5, v3, a1);
}

uint64_t Gesture.discrete(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a1;
  swift_getAssociatedTypeWitness();
  Gesture.mapPhase<A>(_:)(partial apply for closure #1 in Gesture.discrete(_:), v8, a2, a4);
}

uint64_t closure #1 in Gesture.discrete(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v20) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GesturePhase();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = *(v7 + 16);
  if (v20)
  {
    v20 = a3;
    v15(v9, a1, v6, v12.n128_f64[0]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v10 + 32);
      v16(v14, v9, AssociatedTypeWitness);
      v17 = v20;
      v16(v20, v14, AssociatedTypeWitness);
      (*(v10 + 56))(v17, 0, 1, AssociatedTypeWitness);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 8))(v9, v6);
    a3 = v20;
  }

  return (v15)(a3, a1, v6, v12);
}

double static _MapGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 80);
  v38 = *(a2 + 64);
  v39 = v9;
  v40 = *(a2 + 96);
  v41 = *(a2 + 112);
  v10 = *(a2 + 16);
  v34 = *a2;
  v35 = v10;
  v11 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v11;
  v12 = *(a2 + 120);
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for MapGesture();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ModifierGesture();
  v33 = v8;
  type metadata accessor for _MapGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static _MapGesture._makeGesture(gesture:inputs:), v15, &v30);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v29 = v12;
  static ModifierGesture._makeGesture(gesture:inputs:)(&v30, &v21, v13, a3, WitnessTable, a4, v31);
  if ((v12 & 8) != 0 && (!swift_conformsToProtocol2() || !v15))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    LOBYTE(v30) = v16;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v29 = v12;
    type metadata accessor for _GestureOutputs();
    v17 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v15, &v30, 0x100000000, &v21, v17 | ((HIDWORD(v17) & 1) << 32), 0x100000000);
  }

  v18 = v31[1];
  v19 = v32;
  result = *v31;
  *a5 = v31[0];
  *(a5 + 8) = v18;
  *(a5 + 16) = v19;
  return result;
}

uint64_t closure #1 in static _MapGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for _MapGesture();
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for MapGesture();
  v13 = a2;
  WitnessTable = swift_getWitnessTable();
  v15 = a4;
  v11 = type metadata accessor for ModifierGesture();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, v11, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v12;
}

uint64_t instantiation function for generic protocol witness table for _MapGesture<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _MapGesture()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for MapGesture();
  swift_getWitnessTable();
  result = type metadata accessor for ModifierGesture();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MapPhase<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized MapPhase.description.getter()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  return 0x209286E22070614DLL;
}

uint64_t Gesture.repeatCount(_:maximumDelay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  swift_getAssociatedTypeWitness();
  RepeatGesture.init(count:maximumDelay:)(a1, v11, a4);
  v10[0] = v11[0];
  v10[1] = v11[1];
  v8 = type metadata accessor for RepeatGesture();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(v10, a2, v8, a3);
}

uint64_t RepeatGesture.init(count:maximumDelay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (result <= 0 || a3 < 0.0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = a3;
  }

  return result;
}

uint64_t static RepeatGesture._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *)@<X2>, int *a4@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v5 = a2[5];
  v40 = a2[4];
  v41 = v5;
  *v42 = a2[6];
  *&v42[12] = *(a2 + 108);
  v6 = a2[1];
  v36 = *a2;
  v37 = v6;
  v7 = a2[3];
  v38 = a2[2];
  v39 = v7;
  LODWORD(v47) = 0;
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = *v42;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v9 = *&v42[20];
  v10 = *&v42[16];
  *&v45[0] = __PAIR64__(v8, *&v42[16]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GestureInputs(&v36, &v47);
  lazy protocol witness table accessor for type RepeatResetSeed and conformance RepeatResetSeed();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  v43[5] = v34;
  *v44 = v35;
  v43[3] = v32;
  v43[4] = v33;
  v43[0] = v29;
  v43[1] = v30;
  v43[2] = v31;
  *&v44[16] = v11;
  *&v44[20] = v9;
  v51 = v33;
  v52 = v34;
  *v53 = v35;
  *&v53[12] = *&v44[12];
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  outlined init with copy of _GestureInputs(v43, v45);
  a3(&v47);
  v45[4] = v51;
  v45[5] = v52;
  v46[0] = *v53;
  *(v46 + 12) = *&v53[12];
  v45[0] = v47;
  v45[1] = v48;
  v45[2] = v49;
  v45[3] = v50;
  outlined destroy of _GestureInputs(v45);
  v12 = *a4;
  v23[0] = v17;
  v23[1] = v12;
  v23[2] = DWORD1(v41);
  v23[3] = v10;
  v23[4] = v8;
  v24 = (v42[24] & 0x10) != 0;
  v25 = 0;
  v26 = 1;
  v27 = 0;
  v28 = 0;
  v20 = type metadata accessor for GesturePhase();
  v21 = type metadata accessor for RepeatPhase();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v19, v21, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);
  v51 = v33;
  v52 = v34;
  *v53 = v35;
  v47 = v29;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  *&v53[16] = v11;
  *&v53[20] = v9;
  result = outlined destroy of _GestureInputs(&v47);
  *a4 = v18;
  return result;
}

_DWORD *protocol witness for Rule.value.getter in conformance RepeatResetSeed@<X0>(_DWORD *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a1 = *result + v2;
  return result;
}

void RepeatPhase.resetPhase()()
{
  *(v0 + 36) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
}

uint64_t RepeatPhase.updateValue()(uint64_t a1)
{
  v2 = v1;
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for GesturePhase();
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    if ((v1[2] & 1) != 0 || (v18 = *(v1 + 3), type metadata accessor for RepeatPhase(), v18 >= *AGGraphGetValue()))
    {
      v22 = v1[1];
      v58 = *v1;
      *(&v21 + 1) = *(&v58 + 1);
      v59 = v22;
      v60 = *(v1 + 8);
      *&v21 = *(v1 + 36);
      v51 = v21;
      v61 = v21;
      DelayedPhase.childPhase.getter(v13);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v50 = v5;
          (*(v5 + 32))(v7, v13, v4);
          v28 = (v51 + 1);
          *(v1 + 9) = v28;
          type metadata accessor for RepeatGesture();
          if (*AGGraphGetValue() <= v28)
          {
            *(v1 + 3) = 0;
            *(v1 + 32) = 1;
            v54 = *v1;
            v55 = *(v1 + 4);
            v24 = *(v1 + 20);
            v56 = v24;
            *v57 = *(v1 + 21);
            *&v57[15] = *(v1 + 36);
            v40 = DelayedPhase.childPhase.getter(v16);
            MEMORY[0x1EEE9AC00](v40);
            *(&v49 - 2) = a1;
            *(&v49 - 1) = swift_getWitnessTable();
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v41);
            (*(v52 + 8))(v16, v11);
            result = (*(v50 + 8))(v7, v4);
          }

          else
          {
            v29 = *AGGraphGetValue();
            v24 = *(v1 + 20);
            *&v51 = *(v1 + 9);
            *(v1 + 3) = v29 + *(AGGraphGetValue() + 8);
            *(v1 + 32) = 0;
            v30 = v50;
            (*(v50 + 16))(v16, v7, v4);
            (*(v30 + 56))(v16, 0, 1, v4);
            v31 = swift_storeEnumTagMultiPayload();
            v49 = &v49;
            MEMORY[0x1EEE9AC00](v31);
            *(&v49 - 2) = a1;
            *(&v49 - 1) = swift_getWitnessTable();
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v32);
            (*(v52 + 8))(v16, v11);
            specialized static GraphHost.currentHost.getter();
            specialized GraphHost.continueTransaction<A>(_:)(*(v1 + 4) | (v51 << 32));

            result = (*(v30 + 8))(v7, v4);
          }
        }

        else
        {
          v54 = *v1;
          v55 = *(v1 + 4);
          v24 = *(v1 + 20);
          v56 = v24;
          *v57 = *(v1 + 21);
          *&v57[15] = *(v1 + 36);
          v38 = DelayedPhase.childPhase.getter(v16);
          MEMORY[0x1EEE9AC00](v38);
          *(&v49 - 2) = a1;
          *(&v49 - 1) = swift_getWitnessTable();
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, partial apply for closure #1 in StatefulRule.value.setter, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v39);
          result = (*(v52 + 8))(v16, v11);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        (*(v5 + 32))(v10, v13, v4);
        *(v1 + 3) = 0;
        *(v1 + 32) = 1;
        v53 = *(v1 + 20);
        type metadata accessor for RepeatGesture();
        Value = AGGraphGetValue();
        if (__OFSUB__(*Value, 1))
        {
          __break(1u);
        }

        v34 = (v52 + 8);
        if (*Value - 1 <= v51)
        {
          v54 = *v1;
          v55 = *(v1 + 4);
          LODWORD(v52) = *(v1 + 20);
          v56 = v52;
          *v57 = *(v1 + 21);
          *&v57[15] = *(v1 + 36);
          v42 = DelayedPhase.childPhase.getter(v16);
          *&v51 = &v49;
          MEMORY[0x1EEE9AC00](v42);
          *(&v49 - 2) = a1;
          *(&v49 - 1) = swift_getWitnessTable();
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v43);
          (*v34)(v16, v11);
          result = (*(v5 + 8))(v10, v4);
          v24 = v52;
        }

        else
        {
          LODWORD(v52) = v53;
          v35 = v5;
          (*(v5 + 16))(v16, v10, v4);
          (*(v5 + 56))(v16, 0, 1, v4);
          v36 = swift_storeEnumTagMultiPayload();
          *&v51 = &v49;
          MEMORY[0x1EEE9AC00](v36);
          *(&v49 - 2) = a1;
          *(&v49 - 1) = swift_getWitnessTable();
          v24 = v52;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v37);
          (*v34)(v16, v11);
          result = (*(v35 + 8))(v10, v4);
        }
      }

      else
      {
        v54 = *v1;
        v55 = *(v1 + 4);
        v24 = *(v1 + 20);
        v56 = v24;
        *v57 = *(v1 + 21);
        *&v57[15] = *(v1 + 36);
        v25 = DelayedPhase.childPhase.getter(v16);
        MEMORY[0x1EEE9AC00](v25);
        *(&v49 - 2) = a1;
        *(&v49 - 1) = swift_getWitnessTable();
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
        v27 = *(v52 + 8);
        v27(v16, v11);
        result = (v27)(v13, v11);
      }

      if ((v2[4] & 1) == 0)
      {
        v44 = v2[3];
        specialized static GraphHost.currentHost.getter();
        if (v24)
        {
          type metadata accessor for GestureGraph();
          v45 = swift_dynamicCastClassUnconditional();
          v46 = *(v45 + 272);
          if (v44 < v46)
          {
            v46 = v44;
          }

          *(v45 + 272) = v46;
        }

        else
        {
          type metadata accessor for ViewGraph();
          v47 = swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          v48 = *(v47 + 408);
          if (v44 < v48)
          {
            v48 = v44;
          }

          *(v47 + 408) = v48;
        }
      }
    }

    else
    {
      v19 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v19);
      *(&v49 - 2) = a1;
      *(&v49 - 1) = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in StatefulRule.value.setterpartial apply, (&v49 - 4), v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
      return (*(v52 + 8))(v16, v11);
    }
  }

  return result;
}

uint64_t RepeatMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if ((swift_dynamicCast() & 1) == 0 || v6[2] != *v1)
  {
    return 0;
  }

  v1[1] = v6[3];
  return 1;
}

unint64_t lazy protocol witness table accessor for type RepeatResetSeed and conformance RepeatResetSeed()
{
  result = lazy protocol witness table cache variable for type RepeatResetSeed and conformance RepeatResetSeed;
  if (!lazy protocol witness table cache variable for type RepeatResetSeed and conformance RepeatResetSeed)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatResetSeed and conformance RepeatResetSeed);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RepeatPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RepeatPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for RepeatPhase<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t static EmptyGesture._makeGesture(gesture:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GesturePhase();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = a1[5];
  v19 = a1[4];
  v20 = v8;
  v21[0] = a1[6];
  *(v21 + 12) = *(a1 + 108);
  v9 = a1[1];
  v15 = *a1;
  v16 = v9;
  v10 = a1[3];
  v17 = a1[2];
  v18 = v10;
  swift_storeEnumTagMultiPayload();
  v14 = 4;
  v11 = _GestureInputs.intern<A>(_:id:)(v7, &v14, v4);
  (*(v5 + 8))(v7, v4);
  return _GestureOutputs.init(phase:)(v11, a2);
}

uint64_t instantiation function for generic protocol witness table for EmptyGesture<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _LazyLayout_PlacedSubview.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 152);
  *a1 = *(*v1 + 144);
  a1[1] = v2;
}

double _LazyLayout_PlacedSubview.frame.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  v4 = v2 - v1 * v3;
  _LazyLayout_PlacedSubview.size.getter();
  return v4;
}

__n128 _LazyLayout_PlacementContext.nearestScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v3;
  v4 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v2;
  result = *(v1 + 264);
  *(a1 + 96) = result;
  return result;
}

CGSize __swiftcall _LazyLayout_PlacementContext.translateGeometry(by:)(CGSize by)
{
  height = by.height;
  width = by.width;
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  ScrollGeometry.translate(by:limit:)(by, __PAIR128__(v7, v6));
  ScrollGeometry.translate(by:limit:)(__PAIR128__(*&height, *&width), __PAIR128__(v7, v6));
  v8 = *(v1 + 248) - v4;
  v9 = *(v1 + 256) - v5;
  result.height = v9;
  result.width = v8;
  return result;
}

uint64_t _LazyLayout_PlacedSubview.matches(_:)(_DWORD *a1)
{
  v2 = (*a1 >> 1) & 1;
  if (!*(*v1 + 174))
  {
    v2 = *(*v1 + 173) & *a1;
  }

  if (*(*v1 + 173) & *a1)
  {
    LOBYTE(v2) = *(*v1 + 173) & *a1;
  }

  return v2 & 1;
}

uint64_t _LazyLayout_Subview.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t _LazyLayout_Subviews.firstIndex(of:style:)(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7 = 0;
  v8 = 0;
  v5[2] = *a1;
  v5[3] = v2;
  v5[4] = &v8;
  v6 = v3;
  if (_LazyLayout_Subviews.apply(from:style:to:)(&v7, &v6, partial apply for closure #1 in _LazyLayout_Subviews.firstIndex(of:style:), v5))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE07initialE0AFvgZAA0C12HStackLayoutV_Tt0g5Tm@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a4 + 80) = 0u;
  *(a4 + 96) = _Q1;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a1, a2, a3, type metadata accessor for _LazyStack_Cache);
  v11 = (a4 + *(v10 + 60));
  v12 = MEMORY[0x1E69E7CC0];
  *v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v12);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Int]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyHStackLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static LazyLayout._makeView(root:inputs:body:)(v4, v8, a3, a4);
}

uint64_t specialized static LazyLayout._makeView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X3>, void *a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v62 = *a2;
  v63 = v8;
  v64 = v6;
  v9 = v62;
  v10 = WORD2(v6);
  v58 = v6;
  v59 = v7;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v8;
  DWORD1(v58) = DWORD1(v6) | 0xC;
  outlined init with copy of _ViewInputs(a2, v53);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v13 = outlined init with copy of _ViewInputs(v49, v65);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v13, &v33, a3);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v10 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);

        v21 = v46;
        v22 = v47;
LABEL_21:
        *a4 = v21;
        a4[1] = v22;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);

    goto LABEL_21;
  }

  v15 = v59;
  *&v33 = v59;
  v16 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v15 + 2);
  if (v16 != v18)
  {
    if (v16 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v15[16 * v16 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v16)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v15 + 3) >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v15);
      *&v59 = v15;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v16, v16, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v15;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v62 = *a2;
  v63 = v8;
  v64 = v6;
  v9 = v62;
  v10 = WORD2(v6);
  v58 = v6;
  v59 = v7;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v8;
  DWORD1(v58) = DWORD1(v6) & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, v53);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v13 = outlined init with copy of _ViewInputs(v49, v65);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v13, &v33, a3);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v10 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);

        v21 = v46;
        v22 = v47;
LABEL_21:
        *a4 = v21;
        a4[1] = v22;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);

    goto LABEL_21;
  }

  v15 = v59;
  *&v33 = v59;
  v16 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v15 + 2);
  if (v16 != v18)
  {
    if (v16 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v15[16 * v16 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v16)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v15 + 3) >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v15);
      *&v59 = v15;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v16, v16, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v15;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized static LazyLayout._makeView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v63 = *a2;
  v64 = v8;
  v65 = v6;
  v9 = v63;
  v10 = WORD2(v6);
  v59 = v6;
  v60 = v7;
  v61 = *(a2 + 64);
  v62 = *(a2 + 80);
  v57 = v63;
  v58 = v8;
  DWORD1(v59) = DWORD1(v6) | 0xC;
  outlined init with copy of _ViewInputs(a2, v54);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v57 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v57, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v57);
  static CorePlatformProvidersDefinition.providers.getter(v54);
  if (v55)
  {
    (*(v56 + 8))(&v57);
  }

  v50[2] = v59;
  v50[3] = v60;
  v50[4] = v61;
  v51 = v62;
  v50[0] = v57;
  v50[1] = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v39 = v62;
  v34 = v57;
  v35 = v58;
  v13 = outlined init with copy of _ViewInputs(v50, v66);
  a3(v49, v13, &v34);
  v52[2] = v36;
  v52[3] = v37;
  v52[4] = v38;
  v53 = v39;
  v52[0] = v34;
  v52[1] = v35;
  outlined destroy of _ViewInputs(v52);
  LODWORD(v38) = *MEMORY[0x1E698D3F8];
  *(&v38 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v39) = 0;
  v40 = 0;
  v41 = 0;
  swift_weakInit();
  v42 = 0;
  v43 = 0;
  v44 = -1;
  v34 = v63;
  v35 = v64;
  v36 = v65;
  v37 = 0uLL;
  outlined init with copy of _GraphInputs(&v63, v66);
  outlined init with copy of _GraphInputs(&v63, v66);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v34);
  outlined destroy of _ViewListInputs(&v34);
  outlined destroy of _GraphInputs(&v63);
  v15 = v10;
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v66[2] = v59;
    v66[3] = v60;
    v66[4] = v61;
    v67 = v62;
    v66[0] = v57;
    v66[1] = v58;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v66, &v34);
    v21 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v66, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v22 = *(v21 + 120);
    v23 = *(v21 + 128);
    v47 = v22;
    v48 = v23;
    if ((v15 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v34);
      v24 = v45;
      if (v45)
      {
        v25 = v46;
        v26 = *(a2 + 48);
        v32[2] = *(a2 + 32);
        v32[3] = v26;
        v32[4] = *(a2 + 64);
        v33 = *(a2 + 80);
        v27 = *(a2 + 16);
        v32[0] = *a2;
        v32[1] = v27;
        v28 = *(v21 + 148);

        v31 = 0;
        (*(v25 + 8))(&v47, v32, v28, &v31, v24, v25);

        outlined destroy of _ViewListOutputs(v49);
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v39 = v62;
        v34 = v57;
        v35 = v58;
        result = outlined destroy of _ViewInputs(&v34);
        v22 = v47;
        v23 = v48;
LABEL_21:
        *a4 = v22;
        a4[1] = v23;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v49);
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v39 = v62;
    v34 = v57;
    v35 = v58;
    result = outlined destroy of _ViewInputs(&v34);
    goto LABEL_21;
  }

  v16 = v60;
  *&v34 = v60;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v19 = *(v16 + 2);
  if (v17 != v19)
  {
    if (v17 >= v19)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v19 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v16);
      *&v60 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v60 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v63 = *a2;
  v64 = v8;
  v65 = v6;
  v9 = v63;
  v10 = WORD2(v6);
  v59 = v6;
  v60 = v7;
  v61 = *(a2 + 64);
  v62 = *(a2 + 80);
  v57 = v63;
  v58 = v8;
  DWORD1(v59) = DWORD1(v6) & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, v54);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v57 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v57, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v57);
  static CorePlatformProvidersDefinition.providers.getter(v54);
  if (v55)
  {
    (*(v56 + 8))(&v57);
  }

  v50[2] = v59;
  v50[3] = v60;
  v50[4] = v61;
  v51 = v62;
  v50[0] = v57;
  v50[1] = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v39 = v62;
  v34 = v57;
  v35 = v58;
  v13 = outlined init with copy of _ViewInputs(v50, v66);
  a3(v49, v13, &v34);
  v52[2] = v36;
  v52[3] = v37;
  v52[4] = v38;
  v53 = v39;
  v52[0] = v34;
  v52[1] = v35;
  outlined destroy of _ViewInputs(v52);
  LODWORD(v38) = *MEMORY[0x1E698D3F8];
  *(&v38 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v39) = 0;
  v40 = 0;
  v41 = 0;
  swift_weakInit();
  v42 = 0;
  v43 = 0;
  v44 = -1;
  v34 = v63;
  v35 = v64;
  v36 = v65;
  v37 = 0uLL;
  outlined init with copy of _GraphInputs(&v63, v66);
  outlined init with copy of _GraphInputs(&v63, v66);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v34);
  outlined destroy of _ViewListInputs(&v34);
  outlined destroy of _GraphInputs(&v63);
  v15 = v10;
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v66[2] = v59;
    v66[3] = v60;
    v66[4] = v61;
    v67 = v62;
    v66[0] = v57;
    v66[1] = v58;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v66, &v34);
    v21 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v66, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v22 = *(v21 + 120);
    v23 = *(v21 + 128);
    v47 = v22;
    v48 = v23;
    if ((v15 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v34);
      v24 = v45;
      if (v45)
      {
        v25 = v46;
        v26 = *(a2 + 48);
        v32[2] = *(a2 + 32);
        v32[3] = v26;
        v32[4] = *(a2 + 64);
        v33 = *(a2 + 80);
        v27 = *(a2 + 16);
        v32[0] = *a2;
        v32[1] = v27;
        v28 = *(v21 + 148);

        v31 = 0;
        (*(v25 + 8))(&v47, v32, v28, &v31, v24, v25);

        outlined destroy of _ViewListOutputs(v49);
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v39 = v62;
        v34 = v57;
        v35 = v58;
        result = outlined destroy of _ViewInputs(&v34);
        v22 = v47;
        v23 = v48;
LABEL_21:
        *a4 = v22;
        a4[1] = v23;
        return result;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v49);
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v39 = v62;
    v34 = v57;
    v35 = v58;
    result = outlined destroy of _ViewInputs(&v34);
    goto LABEL_21;
  }

  v16 = v60;
  *&v34 = v60;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v19 = *(v16 + 2);
  if (v17 != v19)
  {
    if (v17 >= v19)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v19 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v19 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v16);
      *&v60 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v60 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t _LazyLayout_SizeAndSpacingContext.init(ruleContext:owner:environment:containerSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, _DWORD *a5@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  *a5 = result;
  a5[1] = v5;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double _LazyLayout_PlacementContext.init(base:position:size:transform:layoutDirection:pinnedViews:isAccessibilityEnabled:)@<D0>(uint64_t *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, char *a4@<X3>, int *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v10.f64[0] = a8;
  v103 = a1[1];
  v104 = *a1;
  v12 = *a2;
  v13 = a2[1];
  v15 = a3->f64[0];
  v14 = a3->f64[1];
  v16 = *a4;
  v17 = *a5;
  v121 = 1;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 1;
  v108 = v15;
  v109 = v14;
  v110 = a8;
  v111 = a9;
  v10.f64[1] = a9;
  v86 = vsubq_f64(a3[2], vsubq_f64(v10, a3[1]));
  v112 = v86;
  specialized ViewTransform.forEach(inverted:_:)(0, &v108, &v113);
  v18 = *(&v114 + 1);
  v98 = *&v114;
  v95 = *(&v115 + 1);
  v96 = *&v115;
  v92 = *(&v116 + 1);
  v93 = *&v116;
  v19 = v120;
  v20 = 0.0;
  if (v120)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = *(&v118 + 1);
  }

  if (v120)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *&v118;
  }

  v24 = *(&v117 + 1);
  v23 = *&v117;
  if (v120)
  {
    v23 = v12;
  }

  v105 = v13;
  if (v120)
  {
    v24 = v13;
    v25 = 0.0;
  }

  else
  {
    v25 = *&v113;
  }

  if (v120)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(&v113 + 1);
  }

  v88 = *(&v119 + 1);
  v90 = *&v119;
  v99 = v24;
  v100 = v23;
  v97 = v26;
  if (v16)
  {
    v27 = v25;
    v28 = v26;
    v29 = v12 - CGRectGetMaxX(*(&v23 - 2));
    v101 = v22 + v29 - v25;
    v102 = v21 + v26 - v26;
    v94 = v29;
  }

  else
  {
    v94 = v25;
    v101 = v22;
    v102 = v21;
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v120 = 1;
  v108 = v15;
  v109 = v14;
  v110 = a8;
  v111 = a9;
  v112 = v86;
  v113 = 0u;
  specialized ViewTransform.forEach(inverted:_:)(0, &v108, &v113);
  v30 = v114;
  v32 = *(&v115 + 1);
  v31 = *&v115;
  v34 = *(&v116 + 1);
  v33 = *&v116;
  v35 = v120;
  if (v120)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = *(&v118 + 1);
  }

  if (v120)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = *&v118;
  }

  v39 = *(&v117 + 1);
  v38 = *&v117;
  if (v120)
  {
    v38 = v12;
    v39 = v105;
    v40 = 0.0;
  }

  else
  {
    v40 = *&v113;
  }

  if ((v120 & 1) == 0)
  {
    v20 = *(&v113 + 1);
  }

  v41 = *(&v119 + 1);
  v42 = *&v119;
  v83 = v39;
  v84 = v38;
  v77 = v20;
  if (v16)
  {
    v69 = *(&v119 + 1);
    v71 = *&v119;
    v43 = v40;
    v44 = v20;
    v79 = v12;
    v81 = v18;
    v45 = v36;
    v73 = *(&v116 + 1);
    v46 = *(&v115 + 1);
    v75 = *&v115;
    MaxX = CGRectGetMaxX(*(&v38 - 2));
    v34 = v73;
    v31 = v75;
    v32 = v46;
    v12 = v79;
    v48 = v79 - MaxX;
    v85 = v37 + v48 - v40;
    v87 = v45 + v20 - v20;
    v18 = v81;
    v78 = v48;
    v41 = v69;
    v42 = v71;
  }

  else
  {
    v85 = v37;
    v87 = v36;
    v78 = v40;
  }

  if (v35)
  {
    v49 = v105;
  }

  else
  {
    v49 = v41;
  }

  if (v35)
  {
    v50 = v12;
  }

  else
  {
    v50 = v42;
  }

  v80 = v50;
  v82 = v49;
  if (v35)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v34;
  }

  if (v35)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v33;
  }

  v74 = v52;
  v76 = v51;
  if (v35)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v32;
  }

  if (v35)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v31;
  }

  v70 = v54;
  v72 = v53;
  if (v35)
  {
    v55 = v105;
  }

  else
  {
    v55 = *(&v30 + 1);
  }

  if (v35)
  {
    v56 = v12;
  }

  else
  {
    v56 = *&v30;
  }

  v67 = v56;
  v68 = v55;
  if (v19)
  {
    v57 = v105;
  }

  else
  {
    v57 = v88;
  }

  v58 = v90;
  if (v19)
  {
    v58 = v12;
  }

  v89 = v57;
  v91 = v58;
  if (v19)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v92;
  }

  if (v19)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v93;
  }

  if (v19)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v95;
  }

  if (v19)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v96;
  }

  if (v19)
  {
    v63 = v105;
  }

  else
  {
    v63 = v18;
  }

  v64 = a6 & 1;
  if (v19)
  {
    v65 = v12;
  }

  else
  {
    v65 = v98;
  }

  *a7 = v104;
  *(a7 + 8) = v103;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = v12;
  *(a7 + 40) = v105;
  *(a7 + 48) = v17;
  *(a7 + 56) = v94;
  *(a7 + 64) = v97;
  *(a7 + 72) = v65;
  *(a7 + 80) = v63;
  *(a7 + 88) = v62;
  *(a7 + 96) = v61;
  *(a7 + 104) = v60;
  *(a7 + 112) = v59;
  *(a7 + 120) = v100;
  *(a7 + 128) = v99;
  *(a7 + 136) = v101;
  *(a7 + 144) = v102;
  *(a7 + 152) = v91;
  *(a7 + 160) = v89;
  *(a7 + 168) = v78;
  *(a7 + 176) = v77;
  *(a7 + 184) = v67;
  *(a7 + 192) = v68;
  *(a7 + 200) = v70;
  *(a7 + 208) = v72;
  *(a7 + 216) = v74;
  *(a7 + 224) = v76;
  *(a7 + 232) = v84;
  *(a7 + 240) = v83;
  *(a7 + 248) = v85;
  *(a7 + 256) = v87;
  result = v82;
  *(a7 + 264) = v80;
  *(a7 + 272) = v82;
  *(a7 + 280) = v12;
  *(a7 + 288) = v105;
  *(a7 + 296) = v64;
  return result;
}

double _LazyLayout_PlacementContext.containingVisibleRect.getter()
{
  v2 = *(v0 + 136);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  return *&v2;
}

double _LazyLayout_SizeAndSpacingContext.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

void _LazyLayout_Subview.kind.getter(char *a1@<X8>)
{
  if (*(v1 + 101))
  {
    *a1 = 1;
  }

  else
  {
    if (*(v1 + 102))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *a1 = v2;
  }
}

double _LazyLayout_PlacementContext.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

uint64_t _LazyLayout_Subview.proposeSize(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = LazyLayoutViewCache.item(data:)((v5 + 16));
  v13 = a2 & 1;
  v14 = a4 & 1;
  swift_beginAccess();
  result = swift_unownedRetainStrong();
  if (result)
  {
    v16 = *(result + 228);

    *(v12 + 200) = v16;
    *(v12 + 208) = 0;
    *(v12 + 304) = a1;
    *(v12 + 312) = v13;
    *(v12 + 320) = a3;
    *(v12 + 328) = v14;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
    *(v12 + 368) = 0;
    v17 = *(v6 + 104);
    *a5 = v12;
    *(a5 + 8) = a1;
    *(a5 + 16) = v13;
    *(a5 + 24) = a3;
    *(a5 + 32) = v14;
    *(a5 + 40) = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _LazyLayout_Section.header.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  if (*(v3 + 16))
  {
    v4 = *v1;
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);
    v7 = *(v1 + 6);
    v8 = v1[14];
    v9 = *(v1 + 8);
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v14);
    v10 = v15;
    outlined init with take of _ViewList_Elements(v14, &v16);
    *&v17[24] = v10;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v16, v14);
    outlined init with take of _ViewList_Elements(v14, a1 + 16);
    *&v13[12] = *&v17[12];
    v12 = v16;
    *v13 = *v17;
    *(a1 + 56) = *&v17[24];
    *(a1 + 60) = 0;
    *(a1 + 109) = 0;
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 112) = v5;
    *(a1 + 120) = v6;
    *(a1 + 128) = v4;
    *(a1 + 132) = 0;
    *(a1 + 133) = 1;
    *(a1 + 136) = v9;

    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _LazyLayout_Section.content.getter(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v11 = *v1;
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v10 = v1[7];
    v7 = v1[8];
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v13);
    v8 = v14;
    outlined init with take of _ViewList_Elements(v13, &v20);
    *&v21[24] = v8;
    *&v15 = v11;
    *v16 = *(v1 + 1);
    *(&v15 + 1) = v3;
    *&v16[16] = v4;
    *&v16[24] = v5;
    v17 = v6;
    v18 = v10;
    v19 = v7;
    _LazyLayout_Section.header.getter(v13);
    v12 = 2;
    v9 = _ViewList_Node.estimatedCount(style:)(&v12);
    outlined destroy of _LazyLayout_Subviews(v13);
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v20, v13);
    outlined init with take of _ViewList_Elements(v13, a1 + 16);
    *&v16[12] = *&v21[12];
    v15 = v20;
    *v16 = *v21;
    *(a1 + 56) = *&v21[24];
    *(a1 + 60) = 0;
    *(a1 + 109) = 0;
    if (!__OFADD__(v7, v9))
    {
      *a1 = v6;
      *(a1 + 8) = v10;
      *(a1 + 112) = v4;
      *(a1 + 120) = v5;
      *(a1 + 128) = v11;
      *(a1 + 132) = 0;
      *(a1 + 133) = 0;
      *(a1 + 136) = v7 + v9;

      __swift_destroy_boxed_opaque_existential_1(&v15);
      return;
    }
  }

  __break(1u);
}

void _LazyLayout_Section.footer.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  if (*(v3 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v1;
  v5 = *v1;
  v6 = v1[1];
  v18 = *v1;
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[14];
  v10 = v1[15];
  v15 = *(v1 + 4);
  v16 = *(v1 + 8);
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v20);
  v11 = v21;
  outlined init with take of _ViewList_Elements(v20, &v28);
  *&v29[24] = v11;
  *&v22 = __PAIR64__(v6, v5);
  *v23 = *(v4 + 1);
  *(&v22 + 1) = v3;
  *&v23[16] = v15;
  *&v23[24] = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v16;
  _LazyLayout_Section.header.getter(v20);
  v19 = 2;
  v17 = _ViewList_Node.estimatedCount(style:)(&v19);
  outlined destroy of _LazyLayout_Subviews(v20);
  *&v22 = __PAIR64__(v6, v18);
  *v23 = *(v4 + 1);
  *(&v22 + 1) = v3;
  *&v23[16] = v15;
  *&v23[24] = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v16;
  _LazyLayout_Section.content.getter(v20);
  v19 = 2;
  v12 = _ViewList_Node.estimatedCount(style:)(&v19);
  outlined destroy of _LazyLayout_Subviews(v20);
  v13 = __OFADD__(v17, v12);
  v14 = v17 + v12;
  if (v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v28, v20);
  outlined init with take of _ViewList_Elements(v20, a1 + 16);
  *&v23[12] = *&v29[12];
  v22 = v28;
  *v23 = *v29;
  *(a1 + 56) = *&v29[24];
  *(a1 + 60) = 0;
  *(a1 + 109) = 0;
  if (!__OFADD__(v16, v14))
  {
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 112) = v15;
    *(a1 + 120) = v7;
    *(a1 + 128) = v18;
    *(a1 + 132) = 0;
    *(a1 + 133) = 256;
    *(a1 + 136) = v16 + v14;

    __swift_destroy_boxed_opaque_existential_1(&v22);
    return;
  }

LABEL_7:
  __break(1u);
}

double _LazyLayout_PlacementContext.clampedVisibleRect.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v12 = *(v0 + 136);
  v13 = *(v0 + 152);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  v4 = *(&v12 + 1);
  v3 = v12;
  v6 = *(&v13 + 1);
  v5 = v13;
  v7 = 0;
  v8 = 0;
  v9 = v1;
  v10 = v2;

  *&result = CGRectIntersection(*&v3, *&v7);
  return result;
}

__n128 _LazyLayout_PlacementContext.containingScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 152);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = result;
  return result;
}

BOOL _LazyLayout_PlacementContext.allowsTranslations.getter()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[34];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  if (CGRectGetMinX(v12) <= 0.0)
  {
    v13.origin.x = v3;
    v13.origin.y = v4;
    v13.size.width = v5;
    v13.size.height = v6;
    v7 = CGRectGetMinY(v13) <= 0.0;
  }

  else
  {
    v7 = 0;
  }

  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  if (v2 > CGRectGetMaxX(v14))
  {
    v8 = v2 == 0.0 || v7;
    if (v8)
    {
      return 0;
    }

    return v1 != 0.0;
  }

  v15.origin.x = v3;
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  MaxY = CGRectGetMaxY(v15);
  result = 0;
  v11 = v1 <= MaxY || v7;
  if ((v11 & 1) == 0 && v2 != 0.0)
  {
    return v1 != 0.0;
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyVStackLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static LazyLayout._makeView(root:inputs:body:)(v4, v8, a3, a4);
}

void static LazyLayout.layoutProperties.getter(_WORD *a1@<X8>)
{
  static LazyLayout.layoutProperties.getter(a1);
}

{
  *a1 = 2;
}

double LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(_OWORD *a1@<X8>)
{
  return LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(a1);
}

{
  Array.subscript.getter();
  *&v10[32] = v7;
  *&v10[48] = v8;
  *&v10[64] = v9;
  *v10 = v5;
  *&v10[16] = v6;
  outlined destroy of _LazyLayout_PlacedSubview(v10);
  v2 = *&v10[24];
  *a1 = *&v10[8];
  a1[1] = v2;
  result = *&v10[40];
  v4 = *&v10[56];
  a1[2] = *&v10[40];
  a1[3] = v4;
  return result;
}

uint64_t _LazyLayout_Properties.init(axes:multipleViewAxes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *static LazyLayout.modifyChildInputs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))(&v9, a2, a3);
  v5 = *(a1 + 36);
  v6 = v5 | 0xC;
  v7 = v5 & 0xFFFFFFF3;
  if (v9 == 2)
  {
    v7 |= 4u;
  }

  if (v9 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a1 + 36) = v8;
  return result;
}

double LazyLayout.finalPlacement(at:in:wasRemoved:context:newPlacedSubviews:subviews:cache:)@<D0>(_OWORD *a1@<X8>)
{
  Array.subscript.getter();
  *&v10[32] = v7;
  *&v10[48] = v8;
  *&v10[64] = v9;
  *v10 = v5;
  *&v10[16] = v6;
  outlined destroy of _LazyLayout_PlacedSubview(v10);
  v2 = *&v10[24];
  *a1 = *&v10[8];
  a1[1] = v2;
  result = *&v10[40];
  v4 = *&v10[56];
  a1[2] = *&v10[40];
  a1[3] = v4;
  return result;
}

Swift::Bool __swiftcall _LazyLayout_PrefetchResult.advanceToSome()()
{
  result = *v0 != 0;
  if (*v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *v0 = v2;
  return result;
}

__n128 _LazyLayout_PlacementContext.base.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 _LazyLayout_PlacementContext.base.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 _LazyLayout_Subviews.init(cache:context:node:transform:section:baseIndex:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = *a5;
  v10 = *(a5 + 4);
  v11 = *(a5 + 5);
  v12 = *(a5 + 6);
  *a7 = a1;
  *(a7 + 8) = a2;
  v13 = *(a3 + 48);
  *(a7 + 48) = *(a3 + 32);
  *(a7 + 64) = v13;
  *(a7 + 80) = *(a3 + 64);
  *(a7 + 94) = *(a3 + 78);
  result = *a3;
  v15 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v15;
  *(a7 + 112) = v7;
  *(a7 + 120) = v8;
  *(a7 + 128) = v9;
  *(a7 + 132) = v10;
  *(a7 + 133) = v11;
  *(a7 + 134) = v12;
  *(a7 + 136) = a6;
  return result;
}

uint64_t closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, int *a4, uint64_t a5, void *a6, void *a7, void (*a8)(void, void), void *a9)
{
  v13 = *a2;
  v14 = *a4;
  LODWORD(v50) = *(a4 + 4);
  v15 = *(a4 + 5);
  v48 = v14;
  LODWORD(v49) = v15;
  v52 = *a5;
  LODWORD(v53) = *(a5 + 8);
  v16 = outlined init with copy of _ViewList_Node(a3, &v74);
  if (v79 > 2u)
  {
    v51 = &v46;
    LODWORD(v54) = v74;
    *(&v54 + 1) = *(&v74 + 1);
    *&v55[0] = v75;
    BYTE8(v55[0]) = BYTE8(v75);
    v57 = v13;
    *v71 = v52;
    v71[8] = v53;
    MEMORY[0x1EEE9AC00](v16);
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = a9;
    v28 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v57, v71, closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v41);

    return v28 & 1;
  }

  if (v79 == 1)
  {
    *&v71[32] = v76;
    v72 = v77;
    v73[0] = *v78;
    *(v73 + 13) = *&v78[13];
    *v71 = v74;
    *&v71[16] = v75;
    v17 = *(&v74 + 1);
    if (v13)
    {
      v17 = *(&v74 + 1) * (v13 >> 1);
      if ((*(&v74 + 1) * (v13 >> 1)) >> 64 != v17 >> 63)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v18 = *a1 - v17;
    if (*a1 >= v17)
    {
      outlined destroy of _ViewList_Sublist(v71);
      *a1 = v18;
    }

    else
    {
      v51 = a7;
      v47 = a6;
      *&v54 = v52;
      BYTE8(v54) = v53;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v71);
      v19 = *v71;
      if (*&v71[8] < *v71)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v19 != *(&v19 + 1))
      {
        v20 = 0x80000000;
        if (v19 > 0x80000000)
        {
          v20 = v19;
        }

        v53 = v20;
        v21 = v19;
        v46 = a9;
        while (1)
        {
          v69[0] = 0;
          if (v19 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v53 == v21)
          {
            goto LABEL_35;
          }

          v22 = a8;
          v23 = *&v71[20];
          v24 = *&v71[24];
          outlined init with copy of _ViewList_SubgraphElements(&v71[32], &v57);
          v59 = v21;
          v60 = v23;
          v61 = v24;
          v62 = *&v73[1];
          v63 = DWORD2(v73[1]);
          v64 = BYTE12(v73[1]);
          v65 = v48;
          v66 = 0;
          v67 = v50;
          v68 = v49;
          v25 = *v47;
          v26 = *(v47 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v57, v55);
          v27 = v51[2];
          *&v54 = v25;
          DWORD2(v54) = v26;
          v56 = v27;

          a8 = v22;

          v22(&v54, v69);
          outlined destroy of _LazyLayout_Subview(&v54);
          outlined destroy of _LazyLayout_Subview.Data(&v57);
          ++v51[2];
          if (v69[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v71);
            v28 = 0;
            return v28 & 1;
          }

          if (*(&v19 + 1) == ++v21)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_15:
      outlined destroy of _ViewList_Sublist(v71);
    }

    v28 = 1;
    return v28 & 1;
  }

  v51 = v13;
  if (v79 == 2)
  {
    v47 = &v46;
    MEMORY[0x1EEE9AC00](v16);
    v29 = 0;
    v41[0] = a6;
    v41[1] = a7;
    v42 = a8;
    v43 = a9;
    LODWORD(v44) = v48;
    BYTE4(v44) = 0;
    BYTE5(v44) = v50;
    BYTE6(v44) = v49;
    v49 = v30 + 32;
    v50 = v30;
    v31 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_25:
    v29 = v31;
    memset(v71, 0, 44);
    while (1)
    {
      *(v55 + 12) = *&v71[28];
      v54 = *v71;
      v55[0] = *&v71[16];
      v28 = *&v71[24] == 0;
      if (!*&v71[24] || (v32 = a1, v33 = DWORD2(v55[1]), outlined init with take of _ViewList_Elements(&v54, v71), v34 = *&v71[24], v35 = *&v71[32], __swift_project_boxed_opaque_existential_1(v71, *&v71[24]), v70 = v51, v57 = v52, v58 = v53, v36 = *(v35 + 64), v69[1] = 0, v37 = v33, a1 = v32, v38 = v36(v32, &v70, v37, &v57, closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, &v40, v34, v35), __swift_destroy_boxed_opaque_existential_1(v71), (v38 & 1) == 0))
      {

        return v28 & 1;
      }

      if (v29 == v31)
      {
        goto LABEL_25;
      }

LABEL_22:
      if ((v29 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v29 >= *(v50 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v49 + 48 * v29++, v71);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  LODWORD(v45) = 0;
  v44 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _LazyLayout_Subviews.apply(style:to:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0;
  return _LazyLayout_Subviews.apply(from:style:to:)(&v5, &v4, a2, a3) & 1;
}

Swift::Int _LazyLayout_Section.estimatedCount.getter()
{
  v1 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = v1;
  v3 = 2;
  return _ViewList_Section.estimatedCount(style:)(&v3);
}

uint64_t closure #1 in _LazyLayout_Subviews.firstIndex(of:style:)(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 72);
  v10 = HIDWORD(a3);
  v14 = *(a1 + 64);
  v15 = v9;

  _ViewList_ID.Canonical.init(id:)(&v14, v16);
  v14 = v16[0];
  v15 = v16[1];
  v12[0] = v7;
  v12[1] = v10;
  v13 = a4;
  LOBYTE(a4) = specialized static _ViewList_ID.Canonical.== infix(_:_:)(&v14, v12);

  if (a4)
  {
    *a2 = 1;
  }

  else if (__OFADD__(*a5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a5;
  }

  return result;
}

double _LazyLayout_Subviews.id(at:style:)@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v10 = a1;
  *v13 = 0uLL;
  v6 = *(v3 + 120);
  v9[0] = *(v3 + 112);
  v9[1] = v6;
  v8 = v5;
  v11 = v9;
  v12 = 1;

  specialized _ViewList_Node.applyIDs(from:style:transform:to:)(&v10, &v8, &v11, v3 + 16, v13);

  result = v13[0];
  *a3 = *v13;
  return result;
}

uint64_t _LazyLayout_Subview.Data.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

double _LazyLayout_Subview.Data.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 48) = *a1;
  *(v1 + 56) = v3;
  return result;
}

uint64_t _LazyLayout_Subview.Data.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
  return result;
}

uint64_t _LazyLayout_Subview.Data.list.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

void _LazyLayout_Subview.Data.section.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 84);
  v3 = *(v1 + 85);
  v4 = *(v1 + 86);
  *a1 = *(v1 + 80);
  *(a1 + 4) = v2;
  *(a1 + 5) = v3;
  *(a1 + 6) = v4;
}

uint64_t _LazyLayout_Subview.Data.section.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 5);
  v4 = *(result + 6);
  *(v1 + 80) = *result;
  *(v1 + 84) = v2;
  *(v1 + 85) = v3;
  *(v1 + 86) = v4;
  return result;
}

uint64_t _LazyLayout_Subview.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _LayoutTrait();
  WitnessTable = swift_getWitnessTable();
  return ViewTraitCollection.subscript.getter(v2, WitnessTable, a1);
}

uint64_t _LazyLayout_Subview.layout.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(LazyLayoutViewCache.item(data:)((v1 + 16)) + 44);

  v6 = *MEMORY[0x1E698D3F8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  return result;
}

uint64_t _LazyLayout_Subview.beginPrefetching(at:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  LazyLayoutViewCache.item(data:)((v4 + 16));
  LazyLayoutCacheItem.beginPrefetching(at:)(a1, a2 & 1, a3, a4 & 1);
}

Swift::Int _LazyLayout_Section.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

__n128 _LazyLayout_PlacedSubview.placement.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 _LazyLayout_PlacedSubview.placement.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 40) = result;
  *(v1 + 56) = v4;
  return result;
}

void _LazyLayout_PlacedSubview.accessibilityContext.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  if (*(*v1 + 172))
  {
    v3 = 0;
  }

  v4 = *(v2 + 173);
  v5 = *(v2 + 174);
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 5) = v5;
}

double _LazyLayout_PlacedSubview.origin.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  return v2 - v1 * v3;
}

uint64_t _LazyLayout_Placements.subviews.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void _LazyLayout_Placements.validRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t _LazyLayout_EstimatedPlacements.index.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t _LazyLayout_EstimatedPlacements.subviews.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void _LazyLayout_ProposedSubview.proposal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t _LazyLayout_ProposedSubview.proposal.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t _LazyLayout_ProposedSizes.subviews.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static EnableLazyLayoutReuseLoggingAlways.cachedValue.setter(char a1)
{
  result = swift_beginAccess();
  static EnableLazyLayoutReuseLoggingAlways.cachedValue = a1;
  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance EnableLazyLayoutReuseLoggingAlways(char a1)
{
  result = swift_beginAccess();
  static EnableLazyLayoutReuseLoggingAlways.cachedValue = a1;
  return result;
}

uint64_t specialized LazyLayoutViewCache.init<A>(layout:list:inputs:)(unsigned int a1, int a2, _DWORD *a3)
{
  v143 = a1;
  v189 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  *(v3 + 184) = 0;
  *(v3 + 156) = 0;
  v151 = *MEMORY[0x1E698D3F8];
  *(v3 + 164) = v151;
  *(v3 + 176) = MEMORY[0x1E69E7CC8];
  *(v3 + 192) = xmmword_18DD85520;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  *(v3 + 232) = *MEMORY[0x1E695F050];
  *(v3 + 240) = v7;
  *(v3 + 248) = v8;
  *(v3 + 256) = v9;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = -1;
  *(v3 + 288) = -1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 340) = 16777471;
  *(v3 + 344) = 0;
  *(v3 + 352) = 1;
  swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v10);
  *(v3 + 384) = 0;
  v134 = v3 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v153 = v3;
  swift_weakAssign();

  v11 = *(a3 + 1);
  v186 = *a3;
  v187 = v11;
  v12 = *(a3 + 3);
  v188 = *(a3 + 2);
  v13 = v186;
  v182 = v188;
  v183 = v12;
  v184 = *(a3 + 4);
  v185 = a3[20];
  v180 = v186;
  v181 = v11;
  outlined init with copy of _ViewInputs(a3, v176);
  v149 = v13;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v176);
  if (*&v176[8])
  {
    (*(*(&v176[8] + 1) + 16))(&v180);
  }

  v144 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v149);
  v14 = *(a3 + 6);
  v148 = a3;
  v15 = a3[14];
  v141 = v14;
  v139 = v15;
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v14);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v149);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v183;
    *&v176[0] = v183;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_86;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v183;
      }
    }

    *&v176[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_13:
  v23 = v151;
  if (v144 != v151)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v180, v151);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v180, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v180, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v180, v151);
  }

  v24 = v153;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_88:
    __break(1u);
  }

  *(v153 + 24) = v25;
  v24[34] = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v187;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26);
  swift_endAccess();
  v24[35] = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29);
  swift_endAccess();
  v24[36] = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v149, *&v176[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v24[41] = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33);
  swift_endAccess();
  v24[42] = v34;
  v135 = DWORD2(v187);
  LODWORD(v176[0]) = DWORD2(v187);
  *(&v176[0] + 1) = 0;
  LODWORD(v176[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v147 = Attribute.init<A>(body:value:flags:update:)();
  v157 = 1;
  v156 = 1;
  v142 = v148[18];
  v35 = v148[16];
  v145 = v148[15];
  v146 = v35;
  v140 = v27;
  v36 = *(v27 + 16);
  outlined init with copy of _ViewInputs(v148, v176);
  v37 = 0;
  LODWORD(v27) = 0;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v149) != v151)
  {
    v38 = AGCreateWeakAttribute();
    v37 = v38;
    v27 = HIDWORD(v38);
  }

  v39 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  if ((v39 & 0x100000000) != 0)
  {
    v40 = v151;
  }

  else
  {
    v40 = v39;
  }

  v41 = v148[20];
  outlined init with copy of _GraphInputs(&v186, v176);
  outlined destroy of _ViewInputs(v148);
  *&v179[4] = v186;
  *&v179[36] = v188;
  *&v179[20] = v187;
  *(&v176[2] + 12) = *v179;
  *&v176[0] = __PAIR64__(v142, v143);
  *(&v176[0] + 1) = __PAIR64__(v145, v146);
  *&v176[1] = __PAIR64__(v147, v36);
  v42 = v147;
  *(&v176[1] + 1) = __PAIR64__(v27, v37);
  *&v176[2] = __PAIR64__(v41, v40);
  v137 = v41;
  *(&v176[3] + 12) = *&v179[16];
  *(&v176[4] + 12) = *&v179[32];
  DWORD2(v176[2]) = v151;
  HIDWORD(v176[5]) = HIDWORD(v188);
  *&v176[6] = MEMORY[0x1E69E7CC0];
  *(&v176[6] + 1) = MEMORY[0x1E69E7CC0];
  *&v176[7] = v6;
  *(&v176[7] + 1) = v7;
  *&v176[8] = v8;
  *(&v176[8] + 1) = v9;
  *&v176[9] = v6;
  *(&v176[9] + 1) = v7;
  *&v176[10] = v8;
  *(&v176[10] + 1) = v9;
  *&v176[11] = v6;
  *(&v176[11] + 1) = v7;
  *&v176[12] = v8;
  *(&v176[12] + 1) = v9;
  LODWORD(v176[13]) = 0;
  WORD4(v176[15]) = 0;
  *(&v176[14] + 8) = 0u;
  *(&v176[13] + 8) = 0u;
  *&v176[16] = 0;
  BYTE8(v176[16]) = 0;
  memset(&v176[17], 0, 176);
  LOBYTE(v176[28]) = v157;
  *(&v176[28] + 12) = 0;
  *(&v176[28] + 4) = 0;
  DWORD1(v176[29]) = 0;
  BYTE8(v176[29]) = v156;
  memcpy(v175, v176, 0x1D9uLL);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview]);
  v44 = v43;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  v46 = v45;
  lazy protocol witness table accessor for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>();
  v138 = v46;
  v47 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v176, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  v48 = v153;
  *(v153 + 148) = v47;
  *(v48 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v48 + 156) = AGCreateWeakAttribute();
  LODWORD(v175[0]) = *(v48 + 148);
  DWORD1(v175[0]) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v150 = v44;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v48 + 120) = MEMORY[0x1E69E7CC0];
  v49 = v151;
  *(v48 + 128) = 0;
  *(v48 + 132) = v49;
  v50 = v182;
  v51 = v183;
  v177[2] = v182;
  v177[3] = v183;
  v52 = v184;
  v177[4] = v184;
  v53 = v185;
  v178 = v185;
  v54 = v180;
  v177[0] = v180;
  v177[1] = v181;
  v55 = v180;
  v56 = (v48 + 32);
  *(v48 + 48) = v181;
  *(v48 + 32) = v54;
  *(v48 + 112) = v53;
  *(v48 + 96) = v52;
  *(v48 + 64) = v50;
  *(v48 + 80) = v51;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v57 = *&v175[0];
  outlined init with copy of _ViewInputs(v177, v175);
  v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v55, v57);
  if (v58)
  {
    outlined init with copy of LazyLayoutCacheParent(v58 + 72, &v158);
    v59 = v159;
    if ((v159 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v48, v59);
    }
  }

  else
  {
    swift_weakInit();
    v159 = -1;
  }

  v169 = v182;
  v170 = v183;
  v171 = v184;
  v172 = v185;
  v167 = v180;
  v168 = v181;
  swift_beginAccess();
  v60 = *(v48 + 80);
  v173[2] = *(v48 + 64);
  v173[3] = v60;
  v173[4] = *(v48 + 96);
  v174 = *(v48 + 112);
  v61 = *(v48 + 48);
  v173[0] = *v56;
  v173[1] = v61;
  v62 = v170;
  *(v48 + 64) = v169;
  *(v48 + 80) = v62;
  *(v48 + 96) = v171;
  *(v48 + 112) = v172;
  v63 = v168;
  *v56 = v167;
  *(v48 + 48) = v63;
  outlined init with copy of _ViewInputs(&v167, v175);
  outlined destroy of _ViewInputs(v173);
  v64 = *(v183 + 16);
  v152 = v48 + 120;
  v136 = v183;
  if (v64)
  {
    v65 = ( + 40);
    do
    {
      *&v155 = v64;
      v72 = *(v65 - 1);
      v73 = *v65;
      v74 = *(v48 + 148);
      if (v72 == &type metadata for DisplayList.Key)
      {
        LODWORD(v175[0]) = *(v48 + 148);
        *(&v175[0] + 1) = v48;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v75 = Attribute.init<A>(body:value:flags:update:)();

        v74 = v75;
      }

      v66 = LazyPreference.init(subviews:prefetchItems:cache:)(v74, v151);
      v154 = &v134;
      *&v175[0] = v66;
      *(&v175[0] + 1) = v67;
      MEMORY[0x1EEE9AC00](v66);
      *(&v134 - 4) = swift_getAssociatedTypeWitness();
      v68 = type metadata accessor for LazyPreference();
      *(&v134 - 3) = v68;
      *(&v134 - 2) = swift_getWitnessTable();
      v69 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v175, closure #1 in Attribute.init<A>(_:)partial apply, (&v134 - 6), v68, MEMORY[0x1E69E73E0], v69, MEMORY[0x1E69E7410], v70);

      v71 = v160;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v72, v71, v72, v73);
      swift_endAccess();
      v65 += 2;
      v64 = v155 - 1;
      v48 = v153;
    }

    while (v155 != 1);
  }

  else
  {
  }

  if ((BYTE4(v188) & 2) != 0)
  {
    *&v175[0] = __PAIR64__(*(v140 + 16), v143);
    *(&v175[0] + 1) = __PAIR64__(v137, v147);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer);
    lazy protocol witness table accessor for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>();
    v76 = Attribute.init<A>(body:value:flags:update:)();
    swift_beginAccess();
    *(v48 + 132) = v76;
    v77 = *(v48 + 128);
    if ((v77 & 0x80) == 0)
    {
      *(v48 + 128) = v77 | 0x80;
    }
  }

  v78 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v149);
  if (v78 != v151)
  {
    v79 = v78;
    v80 = *(v140 + 16);
    v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
    *&v175[0] = __PAIR64__(v142, v143);
    *(&v175[0] + 1) = __PAIR64__(v145, v146);
    *&v175[1] = __PAIR64__(v79, v80);
    *(&v175[1] + 1) = __PAIR64__(v137, v147);
    *&v175[2] = 0;
    BYTE8(v175[2]) = 0;
    HIDWORD(v175[2]) = 0;
    *&v175[3] = v81;
    *(&v175[3] + 8) = xmmword_18DD85550;
    BYTE8(v175[4]) = 0;
    v162 = v175[2];
    v163[0] = v175[3];
    *(v163 + 9) = *(&v175[3] + 9);
    v160 = v175[0];
    v161 = v175[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
    lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>();
    Attribute.init<A>(body:value:flags:update:)();
    v48 = v153;
    outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v175, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
    AGGraphAddInput();
    v78 = AGGraphSetFlags();
  }

  MEMORY[0x1EEE9AC00](v78);
  *(&v134 - 2) = closure #1 in LazyLayoutViewCache.init<A>(layout:list:inputs:)partial apply;
  *(&v134 - 1) = v48;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v48 + 148));
  *(&v134 - 2) = partial apply for specialized closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v134 - 1) = v48;
  AGGraphMutateAttribute();
  v82 = *(v183 + 16);
  if (v82)
  {
    v83 = (v183 + 32);

    do
    {
      v155 = *v83;
      swift_beginAccess();
      if ((_ViewOutputs.subscript.getter(v155, v155, *(&v155 + 1)) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v84 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v84);
        *(&v134 - 2) = v155;
        *(&v134 - 2) = v153;
        v85 = type metadata accessor for LazyPreference();
        MEMORY[0x1EEE9AC00](v85);
        *(&v134 - 4) = v86;
        *(&v134 - 3) = closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:)partial apply;
        *(&v134 - 2) = (&v134 - 6);
        AGGraphMutateAttribute();
      }

      ++v83;
      --v82;
    }

    while (v82);
  }

  else
  {
  }

  v87 = v141;
  v88 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v141);
  v89 = v151;
  if ((v88 & 1) == 0 && v144 == v151)
  {
    v90 = v153;
    goto LABEL_69;
  }

  v91 = AGCreateWeakAttribute();
  v92 = v89;
  v93 = v91;
  v94 = HIDWORD(v91);
  v95 = AGCreateWeakAttribute();
  v96 = v95;
  v97 = HIDWORD(v95);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v149) == v92)
  {
    v98 = 0;
    LODWORD(v99) = 0;
  }

  else
  {
    v100 = AGCreateWeakAttribute();
    v98 = v100;
    v99 = HIDWORD(v100);
  }

  swift_beginAccess();
  v101 = v153;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v153 + 120));
  v102 = AGCreateWeakAttribute();
  v165[0] = v93;
  v165[1] = v94;
  v165[2] = v96;
  v165[3] = v97;
  v90 = v101;
  v165[4] = v98;
  v165[5] = v99;
  v166 = v102;
  swift_weakInit();
  if (v88)
  {
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_18DDA6EB0;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
    *(v103 + 56) = v104;
    *(v103 + 64) = &protocol witness table for LazyScrollable<A>;
    v105 = swift_allocObject();
    *(v103 + 32) = v105;
    v90 = v153;
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v165, v105 + 16, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    *&v175[0] = v103;
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v106 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v160) = 0;
    PreferencesOutputs.subscript.setter(v106, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v89 = v151;
  if (v144 != v151)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
    *(&v175[1] + 1) = v107;
    *&v175[2] = &protocol witness table for LazyScrollable<A>;
    *&v175[0] = swift_allocObject();
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v165, *&v175[0] + 16, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v108 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v175);
    swift_beginAccess();
    v109 = v141;
    *&v160 = v141;
    v110 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v111 = *(v109 + 16);
    if (v110 == v111)
    {
      goto LABEL_66;
    }

    if (v110 < v111)
    {
      if (*(v109 + 16 * v110 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v160 = __PAIR64__(v108, v144);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v130 = Attribute.init<A>(body:value:flags:update:)();
        v131 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v90 + 120));
        v132 = v151;
        if ((v131 & 0x100000000) == 0)
        {
          v132 = v131;
        }

        *&v160 = __PAIR64__(v132, v130);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v133 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v160) = 0;
        v90 = v153;
        PreferencesOutputs.subscript.setter(v133, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_67;
      }

LABEL_66:

LABEL_67:
      swift_endAccess();

      *(&v175[6] + 4) = 0u;
      *(&v175[5] + 8) = 0u;
      *(&v175[4] + 8) = 0u;
      *&v175[0] = __PAIR64__(v145, v146);
      *(&v175[0] + 1) = __PAIR64__(v108, v135);
      v112 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v113 = v148;
      outlined init with copy of _ViewInputs(v148, &v160);
      v114 = specialized CachedEnvironment.attribute<A>(id:_:)(v112);
      swift_endAccess();
      LODWORD(v175[1]) = v114;
      outlined init with copy of _GraphInputs(&v186, &v160);
      v115 = v113;
      v87 = v141;
      v116 = outlined destroy of _ViewInputs(v115);
      *(&v175[1] + 8) = v186;
      *(&v175[2] + 8) = v187;
      *(&v175[3] + 8) = v188;
      MEMORY[0x1EEE9AC00](v116);
      *(&v134 - 2) = v175;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v87, v139, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      swift_endAccess();

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v165, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
      outlined destroy of ScrollStateRequestTransform(v175);
      v89 = v151;
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v165, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);

  v87 = v141;
LABEL_69:
  v117 = v148;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v87))
  {
    swift_beginAccess();
    v118 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v90 + 120));
    v119 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v90 + 120));
    v120 = *(v90 + 148);
    if ((v118 & 0x100000000) != 0)
    {
      v121 = v89;
    }

    else
    {
      v121 = v118;
    }

    if ((v119 & 0x100000000) != 0)
    {
      v122 = v89;
    }

    else
    {
      v122 = v119;
    }

    LOBYTE(v160) = 1;
    outlined init with copy of _ViewInputs(v117, v175);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v123 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v124 = specialized CachedEnvironment.attribute<A>(id:_:)(v123);
    swift_endAccess();
    outlined destroy of _ViewInputs(v117);
    *&v175[0] = __PAIR64__(v145, v135);
    *(&v175[0] + 1) = __PAIR64__(v142, v146);
    *&v175[1] = __PAIR64__(v124, v120);
    *(&v175[1] + 1) = __PAIR64__(v122, v121);
    LODWORD(v175[2]) = 0;
    *&v175[3] = 0;
    *(&v175[2] + 1) = 0;
    BYTE8(v175[3]) = v160;
    *&v175[4] = MEMORY[0x1E69E7CC8];
    v162 = *&v175[2];
    v163[0] = v175[3];
    *&v163[1] = MEMORY[0x1E69E7CC8];
    v160 = v175[0];
    v161 = v175[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [FocusableFillerBounds]);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v125 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v175);
    swift_beginAccess();
    v164 = 0;
    PreferencesOutputs.subscript.setter(v125, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
  }

  v126 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v149);
  v128 = v127;
  outlined destroy of LazyLayoutCacheParent(&v158);
  outlined destroy of _ViewInputs(v117);
  v175[2] = v182;
  v175[3] = v183;
  v175[4] = v184;
  LODWORD(v175[5]) = v185;
  v175[0] = v180;
  v175[1] = v181;
  outlined destroy of _ViewInputs(v175);
  if ((v128 & 1) == 0)
  {
    swift_beginAccess();
    *(v90 + 192) = v126;
  }

  return v90;
}

{
  v143 = a1;
  v189 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  *(v3 + 184) = 0;
  *(v3 + 156) = 0;
  v151 = *MEMORY[0x1E698D3F8];
  *(v3 + 164) = v151;
  *(v3 + 176) = MEMORY[0x1E69E7CC8];
  *(v3 + 192) = xmmword_18DD85520;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  *(v3 + 232) = *MEMORY[0x1E695F050];
  *(v3 + 240) = v7;
  *(v3 + 248) = v8;
  *(v3 + 256) = v9;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = -1;
  *(v3 + 288) = -1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 340) = 16777471;
  *(v3 + 344) = 0;
  *(v3 + 352) = 1;
  swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5(MEMORY[0x1E69E7CC0]);
  *(v3 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v10);
  *(v3 + 384) = 0;
  v134 = v3 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v153 = v3;
  swift_weakAssign();

  v11 = *(a3 + 1);
  v186 = *a3;
  v187 = v11;
  v12 = *(a3 + 3);
  v188 = *(a3 + 2);
  v13 = v186;
  v182 = v188;
  v183 = v12;
  v184 = *(a3 + 4);
  v185 = a3[20];
  v180 = v186;
  v181 = v11;
  outlined init with copy of _ViewInputs(a3, v176);
  v149 = v13;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v176);
  if (*&v176[8])
  {
    (*(*(&v176[8] + 1) + 16))(&v180);
  }

  v144 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v149);
  v14 = *(a3 + 6);
  v148 = a3;
  v15 = a3[14];
  v141 = v14;
  v139 = v15;
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v14);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v149);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v183;
    *&v176[0] = v183;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_86;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v183;
      }
    }

    *&v176[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_13:
  v23 = v151;
  if (v144 != v151)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v180, v151);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v180, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v180, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v180, v151);
  }

  v24 = v153;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_88:
    __break(1u);
  }

  *(v153 + 24) = v25;
  v24[34] = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v187;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26);
  swift_endAccess();
  v24[35] = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29);
  swift_endAccess();
  v24[36] = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v149, *&v176[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v24[41] = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33);
  swift_endAccess();
  v24[42] = v34;
  v135 = DWORD2(v187);
  LODWORD(v176[0]) = DWORD2(v187);
  *(&v176[0] + 1) = 0;
  LODWORD(v176[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v147 = Attribute.init<A>(body:value:flags:update:)();
  v157 = 1;
  v156 = 1;
  v142 = v148[18];
  v35 = v148[16];
  v145 = v148[15];
  v146 = v35;
  v140 = v27;
  v36 = *(v27 + 16);
  outlined init with copy of _ViewInputs(v148, v176);
  v37 = 0;
  LODWORD(v27) = 0;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v149) != v151)
  {
    v38 = AGCreateWeakAttribute();
    v37 = v38;
    v27 = HIDWORD(v38);
  }

  v39 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  if ((v39 & 0x100000000) != 0)
  {
    v40 = v151;
  }

  else
  {
    v40 = v39;
  }

  v41 = v148[20];
  outlined init with copy of _GraphInputs(&v186, v176);
  outlined destroy of _ViewInputs(v148);
  *&v179[4] = v186;
  *&v179[36] = v188;
  *&v179[20] = v187;
  *(&v176[2] + 12) = *v179;
  *&v176[0] = __PAIR64__(v142, v143);
  *(&v176[0] + 1) = __PAIR64__(v145, v146);
  *&v176[1] = __PAIR64__(v147, v36);
  v42 = v147;
  *(&v176[1] + 1) = __PAIR64__(v27, v37);
  *&v176[2] = __PAIR64__(v41, v40);
  v137 = v41;
  *(&v176[3] + 12) = *&v179[16];
  *(&v176[4] + 12) = *&v179[32];
  DWORD2(v176[2]) = v151;
  HIDWORD(v176[5]) = HIDWORD(v188);
  *&v176[6] = MEMORY[0x1E69E7CC0];
  *(&v176[6] + 1) = MEMORY[0x1E69E7CC0];
  *&v176[7] = v6;
  *(&v176[7] + 1) = v7;
  *&v176[8] = v8;
  *(&v176[8] + 1) = v9;
  *&v176[9] = v6;
  *(&v176[9] + 1) = v7;
  *&v176[10] = v8;
  *(&v176[10] + 1) = v9;
  *&v176[11] = v6;
  *(&v176[11] + 1) = v7;
  *&v176[12] = v8;
  *(&v176[12] + 1) = v9;
  LODWORD(v176[13]) = 0;
  WORD4(v176[15]) = 0;
  *(&v176[14] + 8) = 0u;
  *(&v176[13] + 8) = 0u;
  *&v176[16] = 0;
  BYTE8(v176[16]) = 0;
  memset(&v176[17], 0, 176);
  LOBYTE(v176[28]) = v157;
  *(&v176[28] + 12) = 0;
  *(&v176[28] + 4) = 0;
  DWORD1(v176[29]) = 0;
  BYTE8(v176[29]) = v156;
  memcpy(v175, v176, 0x1D9uLL);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview]);
  v44 = v43;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  v46 = v45;
  lazy protocol witness table accessor for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>();
  v138 = v46;
  v47 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v176, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  v48 = v153;
  *(v153 + 148) = v47;
  *(v48 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v48 + 156) = AGCreateWeakAttribute();
  LODWORD(v175[0]) = *(v48 + 148);
  DWORD1(v175[0]) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v150 = v44;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v48 + 120) = MEMORY[0x1E69E7CC0];
  v49 = v151;
  *(v48 + 128) = 0;
  *(v48 + 132) = v49;
  v50 = v182;
  v51 = v183;
  v177[2] = v182;
  v177[3] = v183;
  v52 = v184;
  v177[4] = v184;
  v53 = v185;
  v178 = v185;
  v54 = v180;
  v177[0] = v180;
  v177[1] = v181;
  v55 = v180;
  v56 = (v48 + 32);
  *(v48 + 48) = v181;
  *(v48 + 32) = v54;
  *(v48 + 112) = v53;
  *(v48 + 96) = v52;
  *(v48 + 64) = v50;
  *(v48 + 80) = v51;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v57 = *&v175[0];
  outlined init with copy of _ViewInputs(v177, v175);
  v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v55, v57);
  if (v58)
  {
    outlined init with copy of LazyLayoutCacheParent(v58 + 72, &v158);
    v59 = v159;
    if ((v159 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v48, v59);
    }
  }

  else
  {
    swift_weakInit();
    v159 = -1;
  }

  v169 = v182;
  v170 = v183;
  v171 = v184;
  v172 = v185;
  v167 = v180;
  v168 = v181;
  swift_beginAccess();
  v60 = *(v48 + 80);
  v173[2] = *(v48 + 64);
  v173[3] = v60;
  v173[4] = *(v48 + 96);
  v174 = *(v48 + 112);
  v61 = *(v48 + 48);
  v173[0] = *v56;
  v173[1] = v61;
  v62 = v170;
  *(v48 + 64) = v169;
  *(v48 + 80) = v62;
  *(v48 + 96) = v171;
  *(v48 + 112) = v172;
  v63 = v168;
  *v56 = v167;
  *(v48 + 48) = v63;
  outlined init with copy of _ViewInputs(&v167, v175);
  outlined destroy of _ViewInputs(v173);
  v64 = *(v183 + 16);
  v152 = v48 + 120;
  v136 = v183;
  if (v64)
  {
    v65 = ( + 40);
    do
    {
      *&v155 = v64;
      v72 = *(v65 - 1);
      v73 = *v65;
      v74 = *(v48 + 148);
      if (v72 == &type metadata for DisplayList.Key)
      {
        LODWORD(v175[0]) = *(v48 + 148);
        *(&v175[0] + 1) = v48;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v75 = Attribute.init<A>(body:value:flags:update:)();

        v74 = v75;
      }

      v66 = LazyPreference.init(subviews:prefetchItems:cache:)(v74, v151);
      v154 = &v134;
      *&v175[0] = v66;
      *(&v175[0] + 1) = v67;
      MEMORY[0x1EEE9AC00](v66);
      *(&v134 - 4) = swift_getAssociatedTypeWitness();
      v68 = type metadata accessor for LazyPreference();
      *(&v134 - 3) = v68;
      *(&v134 - 2) = swift_getWitnessTable();
      v69 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v175, partial apply for closure #1 in Attribute.init<A>(_:), (&v134 - 6), v68, MEMORY[0x1E69E73E0], v69, MEMORY[0x1E69E7410], v70);

      v71 = v160;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v72, v71, v72, v73);
      swift_endAccess();
      v65 += 2;
      v64 = v155 - 1;
      v48 = v153;
    }

    while (v155 != 1);
  }

  else
  {
  }

  if ((BYTE4(v188) & 2) != 0)
  {
    *&v175[0] = __PAIR64__(*(v140 + 16), v143);
    *(&v175[0] + 1) = __PAIR64__(v137, v147);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer);
    lazy protocol witness table accessor for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>();
    v76 = Attribute.init<A>(body:value:flags:update:)();
    swift_beginAccess();
    *(v48 + 132) = v76;
    v77 = *(v48 + 128);
    if ((v77 & 0x80) == 0)
    {
      *(v48 + 128) = v77 | 0x80;
    }
  }

  v78 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v149);
  if (v78 != v151)
  {
    v79 = v78;
    v80 = *(v140 + 16);
    v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
    *&v175[0] = __PAIR64__(v142, v143);
    *(&v175[0] + 1) = __PAIR64__(v145, v146);
    *&v175[1] = __PAIR64__(v79, v80);
    *(&v175[1] + 1) = __PAIR64__(v137, v147);
    *&v175[2] = 0;
    BYTE8(v175[2]) = 0;
    HIDWORD(v175[2]) = 0;
    *&v175[3] = v81;
    *(&v175[3] + 8) = xmmword_18DD85550;
    BYTE8(v175[4]) = 0;
    v162 = v175[2];
    v163[0] = v175[3];
    *(v163 + 9) = *(&v175[3] + 9);
    v160 = v175[0];
    v161 = v175[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
    lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>();
    Attribute.init<A>(body:value:flags:update:)();
    v48 = v153;
    outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v175, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
    AGGraphAddInput();
    v78 = AGGraphSetFlags();
  }

  MEMORY[0x1EEE9AC00](v78);
  *(&v134 - 2) = partial apply for closure #1 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v134 - 1) = v48;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v48 + 148));
  *(&v134 - 2) = partial apply for specialized closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v134 - 1) = v48;
  AGGraphMutateAttribute();
  v82 = *(v183 + 16);
  if (v82)
  {
    v83 = (v183 + 32);

    do
    {
      v155 = *v83;
      swift_beginAccess();
      if ((_ViewOutputs.subscript.getter(v155, v155, *(&v155 + 1)) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v84 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v84);
        *(&v134 - 2) = v155;
        *(&v134 - 2) = v153;
        v85 = type metadata accessor for LazyPreference();
        MEMORY[0x1EEE9AC00](v85);
        *(&v134 - 4) = v86;
        *(&v134 - 3) = partial apply for closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:);
        *(&v134 - 2) = (&v134 - 6);
        AGGraphMutateAttribute();
      }

      ++v83;
      --v82;
    }

    while (v82);
  }

  else
  {
  }

  v87 = v141;
  v88 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v141);
  v89 = v151;
  if ((v88 & 1) == 0 && v144 == v151)
  {
    v90 = v153;
    goto LABEL_69;
  }

  v91 = AGCreateWeakAttribute();
  v92 = v89;
  v93 = v91;
  v94 = HIDWORD(v91);
  v95 = AGCreateWeakAttribute();
  v96 = v95;
  v97 = HIDWORD(v95);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v149) == v92)
  {
    v98 = 0;
    LODWORD(v99) = 0;
  }

  else
  {
    v100 = AGCreateWeakAttribute();
    v98 = v100;
    v99 = HIDWORD(v100);
  }

  swift_beginAccess();
  v101 = v153;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v153 + 120));
  v102 = AGCreateWeakAttribute();
  v165[0] = v93;
  v165[1] = v94;
  v165[2] = v96;
  v165[3] = v97;
  v90 = v101;
  v165[4] = v98;
  v165[5] = v99;
  v166 = v102;
  swift_weakInit();
  if (v88)
  {
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_18DDA6EB0;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
    *(v103 + 56) = v104;
    *(v103 + 64) = &protocol witness table for LazyScrollable<A>;
    v105 = swift_allocObject();
    *(v103 + 32) = v105;
    v90 = v153;
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v165, v105 + 16, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    *&v175[0] = v103;
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v106 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v160) = 0;
    PreferencesOutputs.subscript.setter(v106, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v89 = v151;
  if (v144 != v151)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
    *(&v175[1] + 1) = v107;
    *&v175[2] = &protocol witness table for LazyScrollable<A>;
    *&v175[0] = swift_allocObject();
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v165, *&v175[0] + 16, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection);
    v108 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v175);
    swift_beginAccess();
    v109 = v141;
    *&v160 = v141;
    v110 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v111 = *(v109 + 16);
    if (v110 == v111)
    {
      goto LABEL_66;
    }

    if (v110 < v111)
    {
      if (*(v109 + 16 * v110 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v160 = __PAIR64__(v108, v144);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v130 = Attribute.init<A>(body:value:flags:update:)();
        v131 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v90 + 120));
        v132 = v151;
        if ((v131 & 0x100000000) == 0)
        {
          v132 = v131;
        }

        *&v160 = __PAIR64__(v132, v130);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]]();
        type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v133 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v160) = 0;
        v90 = v153;
        PreferencesOutputs.subscript.setter(v133, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_67;
      }

LABEL_66:

LABEL_67:
      swift_endAccess();

      *(&v175[6] + 4) = 0u;
      *(&v175[5] + 8) = 0u;
      *(&v175[4] + 8) = 0u;
      *&v175[0] = __PAIR64__(v145, v146);
      *(&v175[0] + 1) = __PAIR64__(v108, v135);
      v112 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v113 = v148;
      outlined init with copy of _ViewInputs(v148, &v160);
      v114 = specialized CachedEnvironment.attribute<A>(id:_:)(v112);
      swift_endAccess();
      LODWORD(v175[1]) = v114;
      outlined init with copy of _GraphInputs(&v186, &v160);
      v115 = v113;
      v87 = v141;
      v116 = outlined destroy of _ViewInputs(v115);
      *(&v175[1] + 8) = v186;
      *(&v175[2] + 8) = v187;
      *(&v175[3] + 8) = v188;
      MEMORY[0x1EEE9AC00](v116);
      *(&v134 - 2) = v175;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v87, v139, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      swift_endAccess();

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v165, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
      outlined destroy of ScrollStateRequestTransform(v175);
      v89 = v151;
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v165, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);

  v87 = v141;
LABEL_69:
  v117 = v148;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v87))
  {
    swift_beginAccess();
    v118 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v90 + 120));
    v119 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v90 + 120));
    v120 = *(v90 + 148);
    if ((v118 & 0x100000000) != 0)
    {
      v121 = v89;
    }

    else
    {
      v121 = v118;
    }

    if ((v119 & 0x100000000) != 0)
    {
      v122 = v89;
    }

    else
    {
      v122 = v119;
    }

    LOBYTE(v160) = 1;
    outlined init with copy of _ViewInputs(v117, v175);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v123 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v124 = specialized CachedEnvironment.attribute<A>(id:_:)(v123);
    swift_endAccess();
    outlined destroy of _ViewInputs(v117);
    *&v175[0] = __PAIR64__(v145, v135);
    *(&v175[0] + 1) = __PAIR64__(v142, v146);
    *&v175[1] = __PAIR64__(v124, v120);
    *(&v175[1] + 1) = __PAIR64__(v122, v121);
    LODWORD(v175[2]) = 0;
    *&v175[3] = 0;
    *(&v175[2] + 1) = 0;
    BYTE8(v175[3]) = v160;
    *&v175[4] = MEMORY[0x1E69E7CC8];
    v162 = *&v175[2];
    v163[0] = v175[3];
    *&v163[1] = MEMORY[0x1E69E7CC8];
    v160 = v175[0];
    v161 = v175[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [FocusableFillerBounds]);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v125 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v175);
    swift_beginAccess();
    v164 = 0;
    PreferencesOutputs.subscript.setter(v125, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
  }

  v126 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v149);
  v128 = v127;
  outlined destroy of LazyLayoutCacheParent(&v158);
  outlined destroy of _ViewInputs(v117);
  v175[2] = v182;
  v175[3] = v183;
  v175[4] = v184;
  LODWORD(v175[5]) = v185;
  v175[0] = v180;
  v175[1] = v181;
  outlined destroy of _ViewInputs(v175);
  if ((v128 & 1) == 0)
  {
    swift_beginAccess();
    *(v90 + 192) = v126;
  }

  return v90;
}

uint64_t specialized _LazyLayoutViewCache.init(layout:list:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = v7;
  v13 = v7 + *(*v7 + 464);
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v13 + 80) = 0u;
  *(v13 + 96) = _Q1;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a4, a5, a6, type metadata accessor for _LazyStack_Cache);
  v20 = (v13 + *(v19 + 60));
  v21 = MEMORY[0x1E69E7CC0];
  *v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v21);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Int]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v9 + 392) = a1;
  return a7(a1, a2, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyLayoutAdaptor_V1<A>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return static LazyLayout._makeView(root:inputs:body:)(a1, a2, a3, a4, WitnessTable, a5);
}

unint64_t lazy protocol witness table accessor for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult()
{
  result = lazy protocol witness table cache variable for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult;
  if (!lazy protocol witness table cache variable for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind()
{
  result = lazy protocol witness table cache variable for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind;
  if (!lazy protocol witness table cache variable for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID()
{
  result = lazy protocol witness table cache variable for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID;
  if (!lazy protocol witness table cache variable for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_PlacementContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 297))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 296);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_PlacementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 296) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for _LazyLayout_Subviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 16);
    if (*(a2 + 109) > 1u)
    {
      if (*(a2 + 109) == 2)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 109) = 2;
LABEL_10:

        goto LABEL_11;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      v9 = 3;
    }

    else
    {
      if (!*(a2 + 109))
      {
        v4 = *(a2 + 40);
        *(a1 + 40) = v4;
        *(a1 + 48) = *(a2 + 48);
        (**(v4 - 8))(a1 + 16, a2 + 16);
        v5 = *(a2 + 60);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 60) = v5;
        *(a1 + 109) = 0;
        goto LABEL_11;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = *(a2 + 40);
      v6 = *(a2 + 72);
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
      v7 = **(v6 - 8);

      v7(a1 + 48, a2 + 48, v6);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v8 = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 104) = v8;
      v9 = 1;
    }

    *(a1 + 109) = v9;

    goto LABEL_10;
  }

LABEL_11:
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  v10 = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 128) = v10;
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_Subviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 16);
    v4 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v4;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 94) = *(a2 + 94);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
  }

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subviews(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subviews(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _LazyLayout_Subviews.Node(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 144);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      goto LABEL_16;
    }

    v5 = *(a1 + 109);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        goto LABEL_14;
      }

      if (v5 == 3)
      {

        goto LABEL_14;
      }
    }

    else if (*(a1 + 109))
    {
      if (v5 == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(a1 + 48);

LABEL_14:
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    }

LABEL_16:
    v6 = *(a2 + 144);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 144) = 1;

      return a1;
    }

    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 109);

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 109) = 2;
LABEL_28:

        goto LABEL_29;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      v13 = 3;
    }

    else
    {
      if (!v7)
      {
        v8 = *(a2 + 40);
        *(a1 + 40) = v8;
        *(a1 + 48) = *(a2 + 48);
        (**(v8 - 8))(a1 + 16, a2 + 16);
        v9 = *(a2 + 60);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 60) = v9;
        *(a1 + 109) = 0;
LABEL_29:
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = *(a2 + 120);
        v14 = *(a2 + 128);
        *(a1 + 131) = *(a2 + 131);
        *(a1 + 128) = v14;
        *(a1 + 136) = *(a2 + 136);
        *(a1 + 144) = 0;

        return a1;
      }

      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 36) = *(a2 + 36);
      *(a1 + 40) = *(a2 + 40);
      v10 = *(a2 + 72);
      *(a1 + 72) = v10;
      *(a1 + 80) = *(a2 + 80);
      v11 = **(v10 - 8);

      v11(a1 + 48, a2 + 48, v10);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v12 = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 104) = v12;
      v13 = 1;
    }

    *(a1 + 109) = v13;

    goto LABEL_28;
  }

  return a1;
}

uint64_t assignWithTake for _LazyLayout_Subviews.Node(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 144);
  if (v4 >= 2)
  {
    v4 = *a1 + 2;
  }

  if (v4 != 1)
  {

    v5 = *(a1 + 109);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        goto LABEL_14;
      }

      if (v5 == 3)
      {

        goto LABEL_14;
      }
    }

    else if (*(a1 + 109))
    {
      if (v5 == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(a1 + 48);

LABEL_14:
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    }

    goto LABEL_16;
  }

LABEL_16:
  v6 = *(a2 + 144);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(a2 + 64);
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v10;
    *(a1 + 128) = *(a2 + 128);
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
  }

  *(a1 + 144) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subviews.Node(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subviews.Node(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 144) = 0;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _LazyLayout_Subviews.Node(uint64_t a1)
{
  result = *(a1 + 144);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for _LazyLayout_Subviews.Node(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    v2 = a2 - 2;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 144) = a2;
  return result;
}

uint64_t assignWithCopy for _LazyLayout_Subview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 88) = v4;
  v5 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v5;
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_Subview(uint64_t a1, uint64_t a2)
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

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 101) = *(a2 + 101);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithCopy for _LazyLayout_Subview.Data(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = v4;
  v5 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v5;
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 86) = *(a2 + 86);
  return a1;
}

__n128 __swift_memcpy87_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _LazyLayout_Subview.Data(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 86) = *(a2 + 86);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subview.Data(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 87))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subview.Data(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 86) = 0;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 87) = 1;
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

    *(result + 87) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for _LazyLayout_Section()
{
}

uint64_t initializeWithCopy for _LazyLayout_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for _LazyLayout_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_Section(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Section(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_Section(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _LazyLayout_PlacedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_PlacedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithCopy for _LazyLayout_Placements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_Placements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Placements(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_Placements(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _LazyLayout_EstimatedPlacements(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = a2[2];

  return a1;
}

uint64_t assignWithTake for _LazyLayout_EstimatedPlacements(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for _LazyLayout_ProposedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for _LazyLayout_ProposedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for _LazyLayout_ProposedSubview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_PlacementContext.Geometry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 241))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 240);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_PlacementContext.Geometry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 241) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 241) = 0;
    }

    if (a2)
    {
      *(result + 240) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>()
{
  result = lazy protocol witness table cache variable for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>;
  if (!lazy protocol witness table cache variable for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>()
{
  result = lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>;
  if (!lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>);
  }

  return result;
}

uint64_t outlined destroy of LazySubviewPlacements<LazyVStackLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of LazyScrollable<LazyHStackLayout>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a3, a4, a5, type metadata accessor for LazyScrollable);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for AnyTrackedValue(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for TypedElement<IsInLazyContainer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>()
{
  result = lazy protocol witness table cache variable for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>;
  if (!lazy protocol witness table cache variable for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>()
{
  result = lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>;
  if (!lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:)(uint64_t a1)
{
  result = swift_beginAccess();
  *(a1 + 40) = *(v1 + 132);
  return result;
}

uint64_t partial apply for closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:)(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 + 32);
  a2();

  return closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:)(a1, v4);
}

void type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>()
{
  result = lazy protocol witness table cache variable for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>;
  if (!lazy protocol witness table cache variable for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(255, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0x1000000000000;
  if (!*(v4 + 54))
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if (!*(v4 + 53))
  {
    v6 = 0;
  }

  return closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v6 | v5 | (*(v4 + 52) << 32) | *(v4 + 48)) & 1;
}

Swift::Bool __swiftcall TextSizeVariant.adjust()()
{
  v1 = *v0;
  if (*v0 && (v2 = __OFSUB__(v1, 1), --v1, v2))
  {
    __break(1u);
  }

  else
  {
    *v0 = v1;
    return v1 == 0;
  }

  return result;
}

uint64_t Date.FormatStyle.Attributed.withSizeVariant(_:)(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.FormatStyle.Attributed();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = *a2;
  v28 = *(v13 + 16);
  if (*a2)
  {
    v80 = v25;
    v67 = v11;
    v72 = v9;
    v73 = v8;
    v77 = v13 + 16;
    v78 = &v65 - v24;
    v75 = v27;
    v76 = v28;
    v71 = a1;
    v83 = v3;
    v28(v22, v3, v12, v26);
    v29 = (v13 + 8);
    v30 = (v13 + 32);
    v31 = 13;
    v32 = &unk_1F00442D8;
    v33 = v82;
    do
    {
      v34 = *(v32 - 1);

      v34(v22);

      v35 = *v29;
      (*v29)(v22, v12);
      v36 = *v30;
      (*v30)(v22, v33, v12);
      v32 += 2;
      --v31;
    }

    while (v31);
    v81 = v29;
    v37 = v78;
    v36(v78, v22, v12);
    v79 = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
    v38 = v83;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (v39 = v67, MEMORY[0x193ABD180](), Date.FormatStyle.Attributed.era(_:)(), v41 = v72 + 8, v40 = *(v72 + 8), v42 = v40(v39, v73), MEMORY[0x193ABD190](v42), Date.FormatStyle.Attributed.era(_:)(), v43 = v39, v38 = v83, v72 = v41, v66 = v40, v40(v43, v73), v35(v80, v12), v44 = dispatch thunk of static Equatable.== infix(_:_:)(), v35(v33, v12), (v44 & 1) == 0))
    {
      v48 = v85;
      v52 = v38;
      v49 = v76;
      v76(v85, v52, v12);
    }

    else
    {
      v45 = v68;
      static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
      v46 = v80;
      Date.FormatStyle.Attributed.year(_:)();
      v47 = v70;
      v69 = *(v69 + 8);
      (v69)(v45, v70);
      static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
      Date.FormatStyle.Attributed.year(_:)();
      (v69)(v45, v47);
      v35(v46, v12);
      v33 = v82;
      LOBYTE(v45) = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v33, v12);
      v48 = v85;
      v49 = v76;
      v50 = (v76)(v85, v83, v12);
      if (v45)
      {
        v51 = v67;
        MEMORY[0x193ABD190](v50);
        Date.FormatStyle.Attributed.era(_:)();
        v66(v51, v73);
        v35(v48, v12);
        v36(v48, v33, v12);
      }
    }

    v80 = v30;
    v49(v84, v48, v12);
    v53 = &unk_1F00442D8;
    v54 = 13;
    v74 = v36;
    while (1)
    {
      v83 = v54;
      v56 = *(v53 - 1);

      v56(v85);
      v57 = v85;
      v35(v85, v12);
      v36(v57, v33, v12);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v58 = v84;
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();

      result = (v35)(v58, v12);
      if (v59)
      {
        v55 = v83;
      }

      else
      {
        v61 = v75 - 1;
        if (__OFSUB__(v75, 1))
        {
          __break(1u);
          return result;
        }

        --v75;
        v55 = v83;
        if (!v61)
        {
          v35(v78, v12);
          v74(v71, v57, v12);
          return 1;
        }
      }

      v76(v84, v57, v12);
      v53 += 2;
      v54 = v55 - 1;
      v37 = v78;
      v33 = v82;
      v36 = v74;
      if (!v54)
      {
        v35(v84, v12);
        v35(v37, v12);
        v62 = v71;
        v63 = v57;
        v64 = v12;
        goto LABEL_21;
      }
    }

    v35(v57, v12);
    v35(v37, v12);
    v62 = v71;
    v63 = v84;
    v64 = v12;
LABEL_21:
    v36(v62, v63, v64);
    return 0;
  }

  v28(a1, v3, v12, v26);
  return 1;
}

uint64_t instantiation function for generic protocol witness table for Date.FormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_0(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  *(a1 + 8) = result;
  return result;
}

uint64_t WhitespaceRemovingFormatStyle<>.withSizeVariant(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v11;
  v13 = (*(v12 + 16))(v10, &v16, v6, v8);
  (*(*(a3 - 8) + 16))(a1, v3, a3);
  (*(v7 + 40))(a1, v10, v6);
  return v13 & 1;
}

uint64_t instantiation function for generic protocol witness table for <> WhitespaceRemovingFormatStyle<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of dateFormatStyleFieldRemovals(uint64_t a1, uint64_t (*a2)(void), void (*a3)(double), void (*a4)(char *))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  a3(v8);
  a4(v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t Date.ISO8601FormatStyle.withSizeVariant(_:)(uint64_t a1, uint64_t *a2)
{
  v37 = a1;
  v3 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ISO8601FormatStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  if (*a2)
  {
    v31 = *a2;
    (*(v9 + 104))(v11, *MEMORY[0x1E6969368], v8, v20);
    Date.ISO8601FormatStyle.dateSeparator(_:)();
    (*(v9 + 8))(v11, v8);
    v24 = v32;
    v23 = v33;
    (*(v32 + 104))(v7, *MEMORY[0x1E6969378], v33);
    Date.ISO8601FormatStyle.timeSeparator(_:)();
    (*(v24 + 8))(v7, v23);
    v25 = *(v13 + 8);
    v25(v15, v12);
    v27 = v34;
    v26 = v35;
    v28 = v36;
    (*(v35 + 104))(v34, *MEMORY[0x1E6969380], v36);
    Date.ISO8601FormatStyle.timeZoneSeparator(_:)();
    (*(v26 + 8))(v27, v28);
    v25(v18, v12);
    (*(v13 + 16))(v37, v22, v12);
    if (v31 == 1)
    {
      lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x1E69693A0]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v29 = 0;
    }

    v25(v22, v12);
  }

  else
  {
    (*(v13 + 16))(v37, v38, v12, v20);
    v29 = 1;
  }

  return v29 & 1;
}

uint64_t instantiation function for generic protocol witness table for Date.ISO8601FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x1E69693A0]);
  *(a1 + 8) = result;
  return result;
}

{
  result = _s10Foundation4DateV11FormatStyleVAeadAWlTm_2(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x1E69693A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t Date.ComponentsFormatStyle.withSizeVariant(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for SizeAdaptiveFormatStyle?(0, &lazy cache variable for type metadata for Date.ComponentsFormatStyle.Style?, MEMORY[0x1E6969488]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v34 - v7;
  v8 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v34 - v14;
  v15 = type metadata accessor for Date.ComponentsFormatStyle();
  v19 = MEMORY[0x1EEE9AC00](v15);
  v20 = *a2;
  v21 = *(v18 + 16);
  if (*a2)
  {
    v34 = v18;
    v35 = v16;
    v36 = a1;
    v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21(v19);
    v22 = (v9 + 8);
    v23 = (v9 + 48);
    v24 = (v9 + 32);
    v25 = (v9 + 16);
    while (1)
    {
      v26 = v39;
      v27 = v40;
      Date.ComponentsFormatStyle.style.getter();
      v28 = v41;
      Date.ComponentsFormatStyle.Style.nextSmaller.getter(v41);
      v29 = v28;
      v30 = *v22;
      (*v22)(v27, v8);
      if ((*v23)(v29, 1, v8) == 1)
      {
        outlined destroy of SizeAdaptiveFormatStyle?(v29, &lazy cache variable for type metadata for Date.ComponentsFormatStyle.Style?, MEMORY[0x1E6969488]);
        (*(v34 + 32))(v36, v26, v35);
        return 0;
      }

      v31 = v37;
      (*v24)(v37, v29, v8);
      (*v25)(v38, v31, v8);
      Date.ComponentsFormatStyle.style.setter();
      result = v30(v31, v8);
      if (__OFSUB__(v20--, 1))
      {
        break;
      }

      if (!v20)
      {
        (*(v34 + 32))(v36, v39, v35);
        return 1;
      }
    }

    __break(1u);
  }

  else
  {
    (v21)(a1, v3, v19);
    return 1;
  }

  return result;
}

uint64_t Date.ComponentsFormatStyle.Style.nextSmaller.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  (*(v5 + 16))(&v19 - v10, v2, v4, v9);
  static Date.ComponentsFormatStyle.Style.spellOut.getter();
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style, MEMORY[0x1E6969488]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v14 = 0;
  }

  else
  {
    static Date.ComponentsFormatStyle.Style.wide.getter();
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v7, v4);
    if (v15)
    {
      v13(v11, v4);
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
      v14 = 0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v7, v4);
      if (v16 & 1) != 0 || (static Date.ComponentsFormatStyle.Style.abbreviated.getter(), v17 = dispatch thunk of static Equatable.== infix(_:_:)(), v13(v7, v4), (v17))
      {
        v13(v11, v4);
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        v14 = 0;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.narrow.getter();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v13(v7, v4);
        v13(v11, v4);
        v14 = 1;
      }
    }
  }

  return (*(v5 + 56))(a1, v14, 1, v4);
}