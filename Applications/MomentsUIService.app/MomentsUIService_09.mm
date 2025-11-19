Swift::Void __swiftcall UILabel.styleDateWithWeekday(weekday:)(Swift::String weekday)
{
  v2 = v1;
  object = weekday._object;
  countAndFlagsBits = weekday._countAndFlagsBits;
  v5 = [v2 attributedText];
  if (!v5)
  {
    return;
  }

  v6 = [v2 attributedText];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];

  v8 = [v2 font];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 fontDescriptor];
  v11 = [v10 fontDescriptorWithSymbolicTraits:2];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  NSMutableAttributedString.setPrefixFont(font:forText:)(v12, v13);

  [v2 setAttributedText:v14];
}

Swift::Void __swiftcall NSMutableAttributedString.setPrefixFont(font:forText:)(UIFont font, Swift::String forText)
{
  v4 = [v2 mutableString];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 rangeOfString:v5 options:1];
  v8 = v7;

  if (v6)
  {
    if (v6 == NSNotFound.getter())
    {
      return;
    }

    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else if (((v6 - 1) & 0x8000000000000000) == 0)
    {
      if (v6 != 0x8000000000000000)
      {
        v9 = NSFontAttributeName;
        v12 = v6;
        v10 = v2;
        isa = font.super.isa;
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v9 = NSFontAttributeName;
  v10 = v2;
  isa = font.super.isa;
  v12 = v8;
LABEL_9:

  [v10 addAttribute:v9 value:isa range:{0, v12}];
}

Swift::String_optional __swiftcall String.firstWord()()
{
  lazy protocol witness table accessor for type String and conformance String();
  v0 = StringProtocol.components<A>(separatedBy:)();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t String.removingNumbers.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = a1;
  v10[1] = a2;
  CharacterSet.init(charactersIn:)();
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.trimmingCharacters(in:)();
  (*(v5 + 8))(v7, v4);
  return v8;
}

id NSMutableAttributedString.setColor(color:forText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = [v4 mutableString];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 rangeOfString:v8 options:1];
  v11 = v10;

  v12 = *a4;

  return [v4 addAttribute:v12 value:a1 range:{v9, v11}];
}

UIFont __swiftcall UIFont.withTraits(traits:)(UIFontDescriptorSymbolicTraits traits)
{
  v2 = *&traits;
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:v2];

  if (v4)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a6];
  v11 = v10;
  if ((a3 & 0x100000000) == 0)
  {
    v12 = [v10 fontDescriptorWithSymbolicTraits:a3];
    if (v12)
    {
      v13 = v12;

      v11 = v13;
    }
  }

  if ((a5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A48B0;
    *(inited + 32) = UIFontDescriptorTraitsAttribute;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1002A48B0;
    *(v15 + 32) = UIFontWeightTrait;
    *(v15 + 40) = a4;
    v16 = UIFontDescriptorTraitsAttribute;
    v17 = UIFontWeightTrait;
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v15);
    swift_setDeallocating();
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v15 + 32, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd);
    *(inited + 40) = v18;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo29UIFontDescriptorAttributeNamea_yptMd);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName, type metadata accessor for UIFontDescriptorAttributeName);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v11 fontDescriptorByAddingAttributes:isa];

    v11 = v20;
  }

  if (a2)
  {
    v21 = [v11 fontDescriptorWithDesign:a2];
    if (v21)
    {
      v22 = v21;

      v11 = v22;
    }
  }

  v23 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  return v23;
}

UIFont_optional __swiftcall UIFont.withSymbolicTraits(_:)(UIFontDescriptorSymbolicTraits a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v1 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits:v5 | a1];
  if (v6)
  {
    v8 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  result.value.super.isa = v9;
  result.is_nil = v7;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(unsigned __int8 a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t (*a1)(void)@<X1>, void (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v7 = a1();
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a2();
      v11 = v13;
    }

    outlined init with take of Any((*(v11 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v8);
  *v3 = v8;
  return v9;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of URLBasedAsset, specialized _NativeDictionary.copy(), a2);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, outlined init with take of URLBasedAsset, specialized _NativeDictionary.copy(), a2);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Decodable & Encodable((*(v10 + 56) + 48 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, void (*a2)(int64_t, uint64_t)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v17 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v17;
    }

    v14 = *(v13 + 48);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v11, v15);
    a2(*(v13 + 56) + 40 * v11, a4);
    specialized _NativeDictionary._delete(at:)(v11, v13);
    *v7 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v19 = *(v12 - 8);
    outlined init with take of Date?(v11 + *(v19 + 72) * v8, a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

{
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void specialized _NativeDictionary._delete(at:)(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v27 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    do
    {
      v29 = v3;
      v8 = 24 * v6;
      v9 = v2;
      v10 = *(v2 + 48) + 24 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v11;
      String.hash(into:)();

      if (v13 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v12);
      }

      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      v3 = v29;
      v2 = v9;
      if (v29 >= v27)
      {
        v4 = v28;
        if (v16 < v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        if (v16 >= v27)
        {
          goto LABEL_13;
        }
      }

      if (v29 >= v16)
      {
LABEL_13:
        v17 = *(v2 + 48);
        v18 = v17 + 24 * v29;
        v19 = (v17 + v8);
        if (24 * v29 < v8 || v18 >= v19 + 24 || v29 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(v2 + 56);
        v22 = (v21 + 8 * v29);
        v23 = (v21 + 8 * v6);
        if (v29 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

double specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = a3;
  v9 = NSFontAttributeName;
  v10 = a3;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo21NSAttributedStringKeya_So6UIFontCtMd);
  v23 = a1;

  String.init<A>(_:)();
  v12 = String._bridgeToObjectiveC()();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v12 boundingRectWithSize:3 options:isa attributes:0 context:{a4, 3.40282347e38, v23, a2}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  return ceil(CGRectGetHeight(v24));
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MOSuggestionPrivacyTipCell.tipModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_tipModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0xB0))(v4);
}

uint64_t (*MOSuggestionPrivacyTipCell.tipModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionPrivacyTipCell.tipModel.modify;
}

uint64_t MOSuggestionPrivacyTipCell.tipModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0xB0))(result);
  }

  return result;
}

void closure #1 in variable initialization expression of MOSuggestionPrivacyTipCell.didDismiss()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 setOnboardingFlowCompletionStatus:3];
}

uint64_t key path setter for MOSuggestionPrivacyTipCell.didDismiss : MOSuggestionPrivacyTipCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0xA0);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t MOSuggestionPrivacyTipCell.didDismiss.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionPrivacyTipCell.didDismiss.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void MOSuggestionPrivacyTipCell.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_tipModel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss);
  *v1 = closure #1 in variable initialization expression of MOSuggestionPrivacyTipCell.didDismiss;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionPrivacyTipCell.init(frame:)()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_tipModel] = 0;
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService26MOSuggestionPrivacyTipCell_didDismiss];
  *v1 = closure #1 in variable initialization expression of MOSuggestionPrivacyTipCell.didDismiss;
  v1[1] = 0;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MOSuggestionPrivacyTipCell();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  v6 = *((swift_isaMask & *v5) + 0xB0);
  v7 = v5;
  v6();

  return v7;
}

Swift::Void __swiftcall MOSuggestionPrivacyTipCell.setUpTip()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakAssign();
    [v3 removeFromSuperview];
  }

  v4 = *((swift_isaMask & *v1) + 0x80);
  v5 = v4();
  if (v5)
  {
    v6 = *(v5 + 48);
    v42 = *(v5 + 40);
  }

  else
  {
    v6 = 0xE600000000000000;
    v42 = 0x74756F79616CLL;
  }

  v7 = (v4)(v5);
  if (v7)
  {
    (*(*v7 + 144))(v45);
    v8 = v45[0];
    v9 = v45[1];
    v10 = v45[2];
    v11 = v45[3];
    v12 = v46;

    if (v9)
    {

      v6 = v9;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = (v4)(v7);
  if (v13)
  {
    v14 = *(v13 + 64);
    v41 = *(v13 + 56);

    outlined consume of MOSuggestionPrivacyTip?(v8, 0);
    v12 = 0;
    v8 = v42;
    v10 = v41;
    v11 = v14;
  }

  else
  {
    outlined consume of MOSuggestionPrivacyTip?(v8, 0);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v8 = v42;
  }

LABEL_13:
  lazy protocol witness table accessor for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip();
  v44 = swift_allocObject();
  *(v44 + 16) = v8;
  *(v44 + 24) = v6;
  *(v44 + 32) = v10;
  *(v44 + 40) = v11;
  *(v44 + 48) = v12 & 1;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = objc_allocWithZone(type metadata accessor for TipUIView());
  v43 = TipUIView.init(_:arrowEdge:actionHandler:)();
  [v1 addSubview:v43];
  v16 = swift_unknownObjectWeakAssign();
  v17 = (v4)(v16);
  v18 = &selRef_systemBlueColor;
  if (v17)
  {
    v19 = *(v17 + 32);

    if (!v19)
    {
      v18 = &selRef_systemIndigoColor;
    }
  }

  v20 = [objc_opt_self() *v18];
  [v43 setTintColor:v20];

  v21 = [v43 superview];
  if (v21)
  {
    v22 = v21;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v43 topAnchor];
    v24 = [v22 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  v26 = [v43 superview];
  if (v26)
  {
    v27 = v26;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [v43 bottomAnchor];
    v29 = [v27 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    if (v30)
    {
      [v30 setConstant:-0.0];
      [v30 setActive:1];
    }
  }

  v31 = [v43 superview];
  if (v31)
  {
    v32 = v31;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v43 leadingAnchor];
    v34 = [v32 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:20.0];
    if (v35)
    {
      [v35 setActive:1];
    }
  }

  v36 = [v43 superview];
  if (v36)
  {
    v37 = v36;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v43 trailingAnchor];
    v39 = [v37 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    [v40 setConstant:-20.0];
    if (v40)
    {
      [v40 setActive:1];
    }
  }

  TipUIView.imageSize.setter();
}

uint64_t outlined consume of MOSuggestionPrivacyTip?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip()
{
  result = lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionPrivacyTip and conformance MOSuggestionPrivacyTip);
  }

  return result;
}

uint64_t sub_1000D5704()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000D5744()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void __swiftcall MOSuggestionPrivacyTip.init(clientId:clientName:wasAvailable:)(MomentsUIService::MOSuggestionPrivacyTip *__return_ptr retstr, Swift::String clientId, Swift::String_optional clientName, Swift::Bool wasAvailable)
{
  retstr->clientId = clientId;
  retstr->clientName = clientName;
  retstr->wasAvailable = wasAvailable;
}

void closure #1 in MOSuggestionPrivacyTipCell.setUpTip()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Tips.Action.id.getter() == 0x6F6D2D6E7261656CLL && v2 == 0xEA00000000006572)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
LABEL_8:

        return;
      }
    }

    v5 = (*((swift_isaMask & *v1) + 0x80))(v3);
    if (v5)
    {
      v6 = (*(*v5 + 120))(v5);

      v6(v7);

      return;
    }

    goto LABEL_8;
  }
}

id MOSuggestionPrivacyTipCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionPrivacyTipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MOSuggestionPrivacyTip.image.getter()
{
  type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return Image.init(_:bundle:)(0xD000000000000019, 0x80000001002AF3B0, v1);
}

uint64_t MOSuggestionPrivacyTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrSayxGAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrSayxGAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO23IgnoresDisplayFrequencyVGMd);
  v8 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v12 = v8;
  v13 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v12 = v4;
  v13 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v10 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t one-time initialization function for $showPrivacyOnboarding()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_allocate_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  v1 = [objc_opt_self() sharedInstance];
  [v1 isOnboarded];

  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t MOSuggestionPrivacyTip.$showPrivacyOnboarding.unsafeMutableAddressor()
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);

  return __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
}

uint64_t static MOSuggestionPrivacyTip.$showPrivacyOnboarding.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MOSuggestionPrivacyTip.$showPrivacyOnboarding.setter(uint64_t a1)
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MOSuggestionPrivacyTip.$showPrivacyOnboarding.modify())()
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  return MOSuggestionMapSnapshotView.platterBlurView.modify;
}

uint64_t key path setter for static MOSuggestionPrivacyTip.$showPrivacyOnboarding : MOSuggestionPrivacyTip.Type(uint64_t a1)
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static MOSuggestionPrivacyTip.showPrivacyOnboarding.getter()
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t key path getter for static MOSuggestionPrivacyTip.showPrivacyOnboarding : MOSuggestionPrivacyTip.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v2, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t key path setter for static MOSuggestionPrivacyTip.showPrivacyOnboarding : MOSuggestionPrivacyTip.Type()
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t static MOSuggestionPrivacyTip.showPrivacyOnboarding.setter()
{
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static MOSuggestionPrivacyTip.showPrivacyOnboarding.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static MOSuggestionOnboardingTip.showSuggestionsOnboarding.modify;
}

uint64_t MOSuggestionPrivacyTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  if (one-time initialization token for $showPrivacyOnboarding != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static MOSuggestionPrivacyTip.$showPrivacyOnboarding);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v5 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v5;
}

uint64_t closure #2 in MOSuggestionPrivacyTip.rules.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.albumTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.albumTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void protocol witness for Identifiable.id.getter in conformance MOSuggestionPrivacyTip(void *a1@<X8>)
{
  String.append(_:)(*v1);
  *a1 = 0xD00000000000001ALL;
  a1[1] = 0x80000001002B4E10;
}

uint64_t key path setter for MOSuggestionPrivacyTipCellModel.presentPrivacyController : MOSuggestionPrivacyTipCellModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 128);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionPrivacyTipCellModel.clientId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MOSuggestionPrivacyTipCellModel.clientName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t MOSuggestionPrivacyTipCellModel.tip.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  result = outlined copy of MOSuggestionPrivacyTip?(v3, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t MOSuggestionPrivacyTipCellModel.tip.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v5;
  *(v1 + 104) = *(a1 + 32);
  return outlined consume of MOSuggestionPrivacyTip?(v3, v4);
}

uint64_t MOSuggestionPrivacyTipCellModel.__allocating_init(publicUI:clientId:clientName:presentPrivacyController:tip:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;
  *(v16 + 72) = 0u;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  swift_beginAccess();
  v17 = *(a8 + 16);
  *(v16 + 72) = *a8;
  *(v16 + 88) = v17;
  *(v16 + 104) = *(a8 + 32);
  return v16;
}

uint64_t MOSuggestionPrivacyTipCellModel.init(publicUI:clientId:clientName:presentPrivacyController:tip:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = 0;
  *(v8 + 88) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  swift_beginAccess();
  v10 = *(a8 + 16);
  *(v8 + 72) = *a8;
  *(v8 + 88) = v10;
  *(v8 + 104) = *(a8 + 32);
  return v8;
}

uint64_t MOSuggestionPrivacyTipCellModel.deinit()
{

  outlined consume of MOSuggestionPrivacyTip?(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t MOSuggestionPrivacyTipCellModel.__deallocating_deinit()
{

  outlined consume of MOSuggestionPrivacyTip?(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t specialized MOSuggestionPrivacyTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B50A0;
  v1._object = 0x80000001002B5080;
  v4._countAndFlagsBits = 0xD000000000000024;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t specialized MOSuggestionPrivacyTip.message.getter(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = objc_opt_self();

    v5 = [v4 mainBundle];
    v13._object = 0x80000001002B5040;
    v6._object = 0x80000001002B4FF0;
    v13._countAndFlagsBits = 0xD00000000000003DLL;
    v6._countAndFlagsBits = 0x1000000000000046;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002A48B0;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v14._object = 0x80000001002B4FB0;
    v10._countAndFlagsBits = 0xD000000000000046;
    v10._object = 0x80000001002B4F60;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000038;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, a1, v9, v11, v14);
  }

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

void *specialized MOSuggestionPrivacyTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002A48B0;
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0x80000001002B4F20;
  v5._countAndFlagsBits = 0x6F4D206E7261654CLL;
  v5._object = 0xEA00000000006572;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9);

  lazy protocol witness table accessor for type String and conformance String();
  Tips.Action.init<A>(id:title:perform:)();
  v7 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v7;
}

uint64_t outlined copy of MOSuggestionPrivacyTip?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000D7478@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1000D74D4(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x88);

  return v2(v3);
}

uint64_t sub_1000D7538@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0x98))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t sub_1000D75E0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + 120))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

double sub_1000D7668@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 144))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000D76D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *(**a2 + 152);
  outlined init with copy of MOSuggestionPrivacyTip?(v6, v5);
  return v3(v6);
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

uint64_t getEnumTagSinglePayload for MOSuggestionPrivacyTip(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for MOSuggestionPrivacyTip(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of MOSuggestionPrivacyTip?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService22MOSuggestionPrivacyTipVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(workoutGroupAsset:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = __chkstk_darwin(v4);
  v128 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v98 - v7;
  v8 = type metadata accessor for Date();
  v130 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v98 - v12;
  v14 = [a1 assetType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  [a1 contentClassType];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (ObjCClassMetadata == type metadata accessor for MOSuggestionGenericFallBackInfo())
  {
LABEL_57:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static MOAngelLogger.shared);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_70;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "[MOSuggestionInterstitialListAssetViewModel.workoutGroupAsset] Mismatched init for asset type";
LABEL_69:
    _os_log_impl(&_mh_execute_header, v79, v80, v82, v81, 2u);

LABEL_70:

    return 0;
  }

  v138 = _swiftEmptyArrayStorage;
  v139 = _swiftEmptyArrayStorage;
  v22 = [a1 metadata];
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v23);

  if (!v24)
  {
LABEL_65:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static MOAngelLogger.shared);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v79, v80))
    {
      goto LABEL_70;
    }

    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "[MOSuggestionInterstitialListAssetViewModel.workoutGroupAsset] Failed to unwrap metadata";
    goto LABEL_69;
  }

  if (!*(v24 + 16) || (v25 = v2, v26 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutGroupStartDates), (v27 & 1) == 0) || (outlined init with copy of Any(*(v24 + 56) + 32 * v26, v137), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DateVGMd), (swift_dynamicCast() & 1) == 0))
  {
LABEL_64:

    goto LABEL_65;
  }

  v28 = v136;
  if (!*(v24 + 16) || (v29 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutGroupEndDates), (v30 & 1) == 0) || (outlined init with copy of Any(*(v24 + 56) + 32 * v29, v137), (swift_dynamicCast() & 1) == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  v31 = v136;
  if (!*(v24 + 16))
  {
    goto LABEL_62;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutGroupTypes);
  if ((v33 & 1) == 0)
  {
    goto LABEL_62;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v32, v137);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  if (!*(v24 + 16))
  {

    goto LABEL_62;
  }

  v125 = v136;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyWorkoutGroupIcons);
  if ((v35 & 1) == 0)
  {

    goto LABEL_62;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v34, v137);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIImageCGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_62:

    goto LABEL_63;
  }

  v36 = *(v28 + 16);
  if (v36 != *(v31 + 16) || (v37 = *(v125 + 16), v118 = *(v28 + 16), v36 != v37))
  {

    goto LABEL_62;
  }

  v119 = v31;
  v123 = v28;
  v117 = v136;
  if (v136 >> 62)
  {
LABEL_79:
    v122 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v118 == _CocoaArrayWrapper.endIndex.getter())
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
      if (v118)
      {
        goto LABEL_27;
      }

LABEL_81:
      v111 = _swiftEmptyArrayStorage;
      v112 = _swiftEmptyArrayStorage;
      v113 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  v122 = v117 & 0xFFFFFFFFFFFFFF8;
  if (v118 != *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_84:

    goto LABEL_64;
  }

  if (!v118)
  {
    goto LABEL_81;
  }

LABEL_27:
  v124 = 0;
  v121 = v117 & 0xC000000000000001;
  v116 = v130 + 16;
  v114 = (v130 + 8);
  v107 = (v130 + 56);
  v109 = v125 + 40;
  v108 = xmmword_1002A48B0;
  v106 = xmmword_1002A4A70;
  v112 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v110 = _swiftEmptyArrayStorage;
  v111 = _swiftEmptyArrayStorage;
  do
  {
    v38 = v124;
    v39 = (v109 + 16 * v124);
    v40 = v117;
    v41 = v118;
    while (1)
    {
      if (v121)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *(v122 + 16))
        {
          goto LABEL_78;
        }

        v42 = *(v40 + 8 * v38 + 32);
      }

      v124 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v38 < *(v123 + 16))
      {
        break;
      }

LABEL_30:
      v39 += 2;
      ++v38;
      if (v124 == v41)
      {
        goto LABEL_82;
      }
    }

    v120 = v42;
    v43 = (*(v130 + 80) + 32) & ~*(v130 + 80);
    v44 = *(v130 + 72) * v38;
    v115 = *(v130 + 16);
    v115(v13, v123 + v43 + v44, v8);
    if (v38 >= *(v119 + 16))
    {

      (*v114)(v13, v8);
      goto LABEL_40;
    }

    v115(v11, v119 + v43 + v44, v8);
    if (v38 >= *(v125 + 16))
    {

      v45 = *v114;
      (*v114)(v11, v8);
      v45(v13, v8);
LABEL_40:
      v40 = v117;
      v41 = v118;
      goto LABEL_30;
    }

    v46 = *v39;
    v105 = *(v39 - 1);
    v110 = v46;
    v47 = v129;
    v48 = v115;
    v115(v129, v13, v8);
    v49 = *(v127 + 20);
    v48(v47 + v49, v11, v8);
    (*v107)(v47 + v49, 0, 1, v8);
    v50 = objc_opt_self();

    v115 = v120;
    v120 = [v50 blackColor];
    type metadata accessor for MOSuggestionSheetImage();
    v51 = swift_allocObject();
    *(v51 + 40) = 0;
    *(v51 + 32) = 0;
    *(v51 + 24) = 0;
    *(v51 + 72) = 0u;
    *(v51 + 56) = 0u;
    v104 = v51 + 56;
    *(v51 + 88) = 1;
    *(v51 + 96) = 0;
    v113 = (v51 + 96);
    *(v51 + 104) = 1;
    *(v51 + 16) = v115;
    swift_beginAccess();
    *(v51 + 24) = 0;
    swift_beginAccess();
    *(v51 + 32) = 0;
    swift_beginAccess();
    v52 = *(v51 + 40);
    *(v51 + 40) = v120;

    *(v51 + 48) = 1;
    v53 = v104;
    swift_beginAccess();
    *(v51 + 72) = 0u;
    *v53 = 0u;
    *(v51 + 88) = 1;
    v54 = v113;
    swift_beginAccess();
    *v54 = 0;
    v120 = v51;
    *(v51 + 104) = 1;
    v55 = [a1 identifier];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v134 = v56;
    v135 = v58;
    v132 = 35;
    v133 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v59 = StringProtocol.components<A>(separatedBy:)();

    if (!v59[2])
    {
      goto LABEL_86;
    }

    v60 = v59[5];
    v113 = v59[4];
    v102 = v60;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
    v61 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v104 = *(v126 + 72);
    v62 = swift_allocObject();
    v101 = v62;
    *(v62 + 16) = v108;
    v103 = v61;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v129, v62 + v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v63 = swift_allocObject();
    v100 = v63;
    *(v63 + 16) = v108;
    v64 = v110;
    *(v63 + 32) = v105;
    *(v63 + 40) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v65 = swift_allocObject();
    v99 = v65;
    *(v65 + 16) = v106;
    *(v65 + 32) = v120;
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    v66 = swift_allocObject();
    *(v66 + 32) = 0u;
    *(v66 + 48) = 0u;
    v98 = (v66 + 48);
    *(v66 + 64) = 0;
    *(v66 + 16) = 0u;
    *(v66 + 90) = 1;

    UUID.init()();
    swift_beginAccess();
    *(v66 + 16) = 0;

    swift_beginAccess();
    *(v66 + 24) = 0;
    *(v66 + 32) = 0;

    swift_beginAccess();
    *(v66 + 40) = v101;

    v67 = v98;
    swift_beginAccess();
    *v67 = v100;

    swift_beginAccess();
    *(v66 + 56) = v99;

    *(v66 + 65) = 7;
    v68 = v102;
    *(v66 + 72) = v113;
    *(v66 + 80) = v68;
    *(v66 + 88) = 0;
    *(v66 + 90) = 0;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v113 = v139;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
    }

    v70 = *(v111 + 2);
    v69 = *(v111 + 3);
    if (v70 >= v69 >> 1)
    {
      v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v111);
    }

    v71 = v111;
    *(v111 + 2) = v70 + 1;
    v72 = &v71[16 * v70];
    v73 = v110;
    *(v72 + 4) = v105;
    *(v72 + 5) = v73;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v110 = v138;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v129, v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112[2] + 1, 1, v112);
    }

    v75 = v112[2];
    v74 = v112[3];
    if (v75 >= v74 >> 1)
    {
      v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v74 > 1, v75 + 1, 1, v112);
    }

    outlined destroy of MOSuggestionSheetAssetDateRange(v129);
    v76 = *v114;
    (*v114)(v11, v8);
    v76(v13, v8);
    v77 = v112;
    v112[2] = v75 + 1;
    outlined init with take of MOSuggestionSheetAssetDateRange(v128, v77 + v103 + v75 * v104);
  }

  while (v124 != v118);
LABEL_82:

  v86 = [a1 identifier];
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  v134 = v87;
  v135 = v89;
  v132 = 35;
  v133 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v90 = StringProtocol.components<A>(separatedBy:)();

  if (v90[2])
  {
    v91 = v90[4];
    v92 = v90[5];

    v84 = (*(v25 + 344))(v91, v92, 0, 0, 0, 0, 0, 0, 266);

    v93 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
    v95 = v94;
    swift_beginAccess();
    v84[3] = v93;
    v84[4] = v95;

    swift_beginAccess();
    v84[6] = v111;

    swift_beginAccess();
    v84[7] = v110;

    swift_beginAccess();
    v84[5] = v112;

    v131[0] = specialized Array._copyToContiguousArray()(v96);
    specialized MutableCollection<>.sort(by:)(v131);

    v97 = v131[0];
    swift_beginAccess();
    v84[2] = v97;

    return v84;
  }

  else
  {
    __break(1u);
LABEL_86:
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.fetchListAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:typeSorted:completion:)(Swift::Bool a1, Swift::Int a2, Swift::Bool typeSorted, uint64_t a4, uint64_t a5)
{
  v7 = MOSuggestionCollectionViewCellViewModel.prioritizedAssetReferences(previewOnly:previewMax:style:typeSorted:)(a1, a2, MomentsUIService_SuggestionCellStyle_list, typeSorted);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v114 = a5;
  v115 = v5;
  if (one-time initialization token for assets != -1)
  {
    goto LABEL_132;
  }

LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static MOAngelLogger.assets);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = v8 >> 62;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    if (!v12)
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }

    goto LABEL_193;
  }

  while (2)
  {
    v120 = _swiftEmptyArrayStorage;
    v16 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v12)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
LABEL_134:
        v95 = _swiftEmptyArrayStorage;
        v112 = _swiftEmptyArrayStorage;
        v113 = _swiftEmptyArrayStorage;
        v99 = _swiftEmptyArrayStorage;
        v98 = _swiftEmptyArrayStorage;
        v13 = _swiftEmptyArrayStorage;
        goto LABEL_135;
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_134;
      }
    }

    v18 = 0;
    v117 = v17;
    v118 = v8 & 0xC000000000000001;
    while (!v118)
    {
      if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        swift_once();
        goto LABEL_3;
      }

      v19 = *(v8 + 8 * v18 + 32);

      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_42;
      }

LABEL_18:
      v21 = (*(*v19 + 120))();
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
      {
        goto LABEL_30;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_31;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {
        goto LABEL_30;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_31;
      }

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
      if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
      {
LABEL_30:

LABEL_31:
        v38 = MOSuggestionAssetsTypePhoto;

        v21 = v38;
        goto LABEL_32;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        goto LABEL_31;
      }

LABEL_32:
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_14:
      ++v18;
      if (v20 == v117)
      {
        goto LABEL_43;
      }
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v20 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_18;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v46 = 0;
    v111 = v120;
    v120 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v118)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_64;
        }

LABEL_47:
        v49 = *(*v47 + 120);
        v50 = v49();
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;
        if (v51 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v53 != v54)
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v56)
          {
            goto LABEL_59;
          }

          v50 = (v49)(v57);
          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;
          if (v58 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v60 != v61)
          {
            v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v63 & 1) == 0)
            {

              goto LABEL_60;
            }

LABEL_59:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
LABEL_60:
            ++v46;
            v16 = v8 & 0xFFFFFFFFFFFFFF8;
            if (v48 == v117)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        goto LABEL_59;
      }

      break;
    }

    if (v46 >= *(v16 + 16))
    {
      goto LABEL_127;
    }

    v47 = *(v8 + 8 * v46 + 32);

    v48 = v46 + 1;
    if (!__OFADD__(v46, 1))
    {
      goto LABEL_47;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v64 = 0;
    v113 = v120;
    v120 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v118)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v66 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_80;
        }

LABEL_72:
        v67 = (*(*v65 + 120))();
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
        if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
        {
        }

        else
        {
          v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v73 & 1) == 0)
          {

LABEL_68:
            ++v64;
            if (v66 == v117)
            {
              goto LABEL_81;
            }

            continue;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_68;
      }

      break;
    }

    if (v64 >= *(v16 + 16))
    {
      goto LABEL_128;
    }

    v65 = *(v8 + 8 * v64 + 32);

    v66 = v64 + 1;
    if (!__OFADD__(v64, 1))
    {
      goto LABEL_72;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    v74 = 0;
    v112 = v120;
    v120 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v118)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v76 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_97;
        }

LABEL_87:
        v77 = (*(*v75 + 120))();
        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
        if (v78 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v80 == v81)
        {
        }

        else
        {
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v83 & 1) == 0)
          {

            goto LABEL_83;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_83:
        ++v74;
        if (v76 == v117)
        {
          goto LABEL_98;
        }

        continue;
      }

      break;
    }

    if (v74 >= *(v16 + 16))
    {
      goto LABEL_129;
    }

    v75 = *(v8 + 8 * v74 + 32);

    v76 = v74 + 1;
    if (!__OFADD__(v74, 1))
    {
      goto LABEL_87;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    v84 = 0;
    v110 = v120;
    v120 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v118)
      {
        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v86 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_113;
        }

LABEL_105:
        v87 = (*(*v85 + 120))();
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v89;
        if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v90 == v91)
        {
        }

        else
        {
          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v93 & 1) == 0)
          {

LABEL_101:
            ++v84;
            if (v86 == v117)
            {
              goto LABEL_114;
            }

            continue;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_101;
      }

      break;
    }

    if (v84 >= *(v16 + 16))
    {
      goto LABEL_130;
    }

    v85 = *(v8 + 8 * v84 + 32);

    v86 = v84 + 1;
    if (!__OFADD__(v84, 1))
    {
      goto LABEL_105;
    }

LABEL_113:
    __break(1u);
LABEL_114:
    v94 = 0;
    v95 = v120;
    v120 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v118)
      {
        v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        goto LABEL_120;
      }

      if (v94 >= *(v16 + 16))
      {
        goto LABEL_131;
      }

      v96 = *(v8 + 8 * v94 + 32);

      v97 = v94 + 1;
      if (!__OFADD__(v94, 1))
      {
LABEL_120:
        v119 = v96;
        if (closure #6 in MOSuggestionCollectionViewCellViewModel.fetchListAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:typeSorted:completion:)(&v119))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v94;
        if (v97 == v117)
        {
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_125:
    v13 = v120;
    v98 = v110;
    v99 = v111;
LABEL_135:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *(v13 + 16);
    }

    v100 = v99 < 0 || (v99 & 0x4000000000000000) != 0;
    if (v100)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 0)
      {
        goto LABEL_153;
      }

LABEL_143:
      v101 = v98;

      v10 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134217984;
        if (v100)
        {
          v104 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v104 = *(v99 + 16);
        }

        v12 = v114;
        v11 = v115;
        *(v103 + 4) = v104;

        _os_log_impl(&_mh_execute_header, v10, v102, "[MOSuggestionCollectionViewCellViewModel.List] photoAssetsCount=%ld", v103, 0xCu);
      }

      else
      {

        v12 = v114;
        v11 = v115;
      }

      MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(v99, v8, a4, v12);

      v15 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
        *(v13 + 4) = v14;

        _os_log_impl(&_mh_execute_header, v10, v11, "[MOSuggestionCollectionViewCellViewModel.List] assetReferencesCount: %ld", v13, 0xCu);

        continue;
      }

      v98 = v101;
      v10 = v113;
      if ((v113 & 0x8000000000000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_160;
    }

    break;
  }

  if (*(v99 + 16) > 0)
  {
    goto LABEL_143;
  }

LABEL_153:

  v15 = v8;
  v12 = v114;
  v11 = v115;
  v10 = v113;
  if ((v113 & 0x8000000000000000) != 0)
  {
LABEL_160:
    v10 = v113;
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_161;
    }

LABEL_156:
    MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(v10, v15, a4, v12);

    v105 = __OFADD__(v15++, 1);
    if (v105)
    {
      goto LABEL_189;
    }

    v10 = v112;
    if ((v112 & 0x8000000000000000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_167;
  }

LABEL_154:
  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_160;
  }

  if (*(v10 + 16) >= 1)
  {
    goto LABEL_156;
  }

LABEL_161:

  v10 = v112;
  if ((v112 & 0x8000000000000000) != 0)
  {
    goto LABEL_167;
  }

LABEL_162:
  if ((v10 & 0x4000000000000000) != 0)
  {
LABEL_167:
    v10 = v112;
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_168;
    }

LABEL_164:
    MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(v10, v15, a4, v12);

    v105 = __OFADD__(v15++, 1);
    if (v105)
    {
      goto LABEL_190;
    }

    if ((v98 & 0x8000000000000000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_174;
  }

  if (*(v10 + 16) >= 1)
  {
    goto LABEL_164;
  }

LABEL_168:

  if ((v98 & 0x8000000000000000) != 0)
  {
    goto LABEL_174;
  }

LABEL_169:
  if ((v98 & 0x4000000000000000) != 0)
  {
LABEL_174:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_175;
    }

LABEL_171:
    MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(v98, v15, a4, v12);

    v105 = __OFADD__(v15++, 1);
    if (v105)
    {
      goto LABEL_191;
    }

    if ((v95 & 0x8000000000000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_185;
  }

  if (*(v98 + 16) >= 1)
  {
    goto LABEL_171;
  }

LABEL_175:

  if ((v95 & 0x8000000000000000) != 0)
  {
    goto LABEL_185;
  }

LABEL_176:
  if ((v95 & 0x4000000000000000) != 0)
  {
LABEL_185:
    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_186;
    }

LABEL_178:
    MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(v95, v15, a4, v12);

    v105 = __OFADD__(v15++, 1);
    if (v105)
    {
      goto LABEL_192;
    }

    if (v8 < 1)
    {
      goto LABEL_181;
    }

LABEL_180:
    MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:)(v13, a4, v12);
    goto LABEL_181;
  }

  if (*(v95 + 16) >= 1)
  {
    goto LABEL_178;
  }

LABEL_186:

  if (v8 >= 1)
  {
    goto LABEL_180;
  }

LABEL_181:

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 134217984;
    *(v108 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v106, v107, "[MOSuggestionCollectionViewCellViewModel.List] finalIndex: %ld", v108, 0xCu);
  }

  return v15;
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionViewAssetPlaceHolderSingleResult.assetViewModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MOAssetAndMediaType.mediaType.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() + 24);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult.uuid.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() + 24);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult.init(assetViewModel:updateIndex:uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  v6 = a5 + *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() + 24);

  return outlined init with take of UUID?(a4, v6);
}

uint64_t static MOSuggestionCollectionViewCellViewModel.PLACEHOLDER_LIST_RESULT.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 90) = 1;
  UUID.init()();
  swift_beginAccess();
  *(v2 + 16) = 0;

  swift_beginAccess();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;

  swift_beginAccess();
  *(v2 + 40) = 0;

  swift_beginAccess();
  *(v2 + 48) = 0;

  swift_beginAccess();
  *(v2 + 56) = 0;

  *(v2 + 65) = 26;
  *(v2 + 72) = 0x6C6F686563616C70;
  *(v2 + 80) = 0xEB00000000726564;
  *(v2 + 88) = 1;
  *(v2 + 90) = 0;
  v3 = *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() + 24);
  v4 = type metadata accessor for UUID();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t static MOSuggestionCollectionViewCellViewModel.fallbackResult(assetType:mediaType:motionType:updateIndex:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1;
  v12 = a4;
  v13 = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(v11, a2, a3 & 1, a4);
  type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
  v14 = swift_allocObject();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 64) = 0;
  *(v14 + 90) = 1;
  UUID.init()();
  swift_beginAccess();
  *(v14 + 16) = 0;

  swift_beginAccess();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;

  swift_beginAccess();
  *(v14 + 40) = 0;

  swift_beginAccess();
  *(v14 + 48) = 0;

  swift_beginAccess();
  *(v14 + 56) = 0;

  *(v14 + 65) = v13;
  *(v14 + 72) = 0x6C6F686563616C70;
  *(v14 + 80) = 0xEB00000000726564;
  *(v14 + 88) = 256;
  *(v14 + 90) = 0;
  v15 = *(type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult() + 24);
  v16 = type metadata accessor for UUID();
  result = (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  *a6 = v14;
  *(a6 + 8) = a5;
  *(a6 + 16) = 0;
  return result;
}

uint64_t closure #6 in MOSuggestionCollectionViewCellViewModel.fetchListAssetsWithPlaceHolderSingleResult(previewOnly:previewMax:typeSorted:completion:)(uint64_t a1)
{
  v1 = *(**a1 + 120);
  v2 = v1();
  v3 = specialized static MOSuggestionAssetReference.consolidatedType(_:)(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_18;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    goto LABEL_19;
  }

  v3 = (v1)(v10);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
    goto LABEL_18;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_19:
    v29 = 0;
    return v29 & 1;
  }

  v3 = (v1)(v17);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
LABEL_18:

    goto LABEL_19;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_19;
  }

  v3 = (v1)(v24);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_18;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_19;
  }

  v3 = (v1)(v32);
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {
    goto LABEL_18;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_19;
  }

  v39 = (v1)(v38);
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {

    v29 = 0;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v29 = v44 ^ 1;
  }

  return v29 & 1;
}

uint64_t MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v13 = result;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(a1 + 8 * v6 + 32);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = static MOSuggestionAssetCacheManager.shared;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002A4A70;
    *(v9 + 32) = v7;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    v11[5] = v17;
    v11[6] = v18;
    v11[7] = a1;
    v11[8] = a2;
    v12 = one-time initialization token for defaultQueue;

    if (v12 != -1)
    {
      swift_once();
    }

    ++v6;
    (*(*v8 + 232))(v9, 0, static MOSuggestionAssetCacheManager.defaultQueue, 9, partial apply for closure #1 in MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:), v11);
  }

  while (v13 != v6);
LABEL_15:
}

unint64_t MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      v15 = v3 & 0xC000000000000001;
      v13 = v3;
      while (v15)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }

LABEL_7:
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v8 = static MOSuggestionAssetCacheManager.shared;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1002A4A70;
        *(v9 + 32) = v6;
        v10 = swift_allocObject();
        swift_weakInit();
        v11 = swift_allocObject();
        v11[2] = v10;
        v11[3] = a2;
        v11[4] = a3;
        v11[5] = v5;
        v11[6] = v6;
        v12 = one-time initialization token for defaultQueue;
        swift_retain_n();

        if (v12 != -1)
        {
          swift_once();
        }

        (*(*v8 + 232))(v9, 0, static MOSuggestionAssetCacheManager.defaultQueue, 3, partial apply for closure #1 in MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:), v11);

        ++v5;
        v3 = v13;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *(v14 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t closure #1 in MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v143 = a8;
  v146 = a7;
  v147 = a6;
  v142 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  __chkstk_darwin(v142);
  v144 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v14 = __chkstk_darwin(v13 - 8);
  v141 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v140 = &v139 - v16;
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v145 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = (&v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for DispatchQoS();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for OS_dispatch_queue();
    v41 = static OS_dispatch_queue.main.getter();
    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    *(v42 + 24) = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:);
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_13;
    v43 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v145 + 8))(v19, v17);
    return (*(v21 + 8))(v23, v20);
  }

  v25 = Strong;
  v26 = a3;
  swift_beginAccess();
  v27 = *(a5 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_49;
  }

  *(a5 + 16) = v29;
  v30 = v147;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_12;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_59;
      }

      v31 = *(a1 + 32);
    }

    v32 = v31;
    swift_beginAccess();
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v30 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

LABEL_12:
  swift_beginAccess();
  a1 = *(a5 + 16);
  a5 = v146;
  if (!(v146 >> 62))
  {
    v34 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 >= v34 && v34)
    {
      goto LABEL_15;
    }
  }

LABEL_49:
  if (a1 < _CocoaArrayWrapper.endIndex.getter() || !_CocoaArrayWrapper.endIndex.getter())
  {
  }

LABEL_15:
  v139 = a4;
  if ((a5 & 0xC000000000000001) != 0)
  {
LABEL_59:
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    a4 = v35;
    goto LABEL_18;
  }

  if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_61:
    v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v86 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  a4 = *(a5 + 32);

LABEL_18:
  v19 = *(*a4 + 120);
  v36 = v19(v35);
  a1 = specialized static MOSuggestionAssetReference.consolidatedType(_:)(v36);

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
  {

LABEL_24:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    swift_beginAccess();

    v47 = MOSuggestionInterstitialListAssetViewModel.__allocating_init(photoAssets:)(v46);
    goto LABEL_25;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {

    goto LABEL_24;
  }

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;
  if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
  {

LABEL_32:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    swift_beginAccess();

    v47 = MOSuggestionInterstitialListAssetViewModel.__allocating_init(mediaAssets:)(v58);
    goto LABEL_25;
  }

  v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v57)
  {

    goto LABEL_32;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {
    goto LABEL_35;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
    goto LABEL_37;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {
LABEL_35:

LABEL_38:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    swift_beginAccess();

    v47 = MOSuggestionInterstitialListAssetViewModel.__allocating_init(motionAssets:)(v64);
    goto LABEL_25;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
LABEL_37:

    goto LABEL_38;
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
  {

LABEL_47:
    v146 = type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    v75 = v147;
    swift_beginAccess();
    v76 = *(v75 + 16);
    v77 = v25[2];

    v78 = [v77 displayStartDate];
    v79 = v140;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = [v25[2] displayEndDate];
    v81 = v141;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = MOSuggestionInterstitialListAssetViewModel.__allocating_init(contactAssets:bundleStartDate:bundleEndDate:)(v76, v79, v81);
    goto LABEL_25;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {

    goto LABEL_47;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  if (v82 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v84 != v85)
  {
    goto LABEL_61;
  }

LABEL_62:
  v146 = type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
  v87 = v147;
  swift_beginAccess();
  v88 = *(v87 + 16);
  v89 = v25[2];

  v90 = [v89 displayStartDate];
  v91 = v140;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v92 = [v25[2] displayEndDate];
  v93 = v141;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = MOSuggestionInterstitialListAssetViewModel.__allocating_init(stateOfMindAssets:bundleStartDate:bundleEndDate:)(v88, v91, v93);
LABEL_25:
  v48 = v47;
  if (!v47)
  {
LABEL_63:
    v94 = v19(v47);
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;
    if (v95 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v97 == v98)
    {
    }

    else
    {
      v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v100 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    v99 = (*(*a4 + 256))(v99);
    if (!v99)
    {
      goto LABEL_74;
    }

    v101 = v99;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v101 + 16))
    {
      v104 = specialized __RawDictionaryStorage.find<A>(_:)(v102, v103);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v101 + 56) + 8 * v104);
        swift_unknownObjectRetain();

        v148 = v107;
        v99 = swift_dynamicCast();
        if (v99)
        {
          v108 = specialized static MOSuggestionAssetMediaCoverArtQueryInput.typeFromBundleId(_:)(v149, v150);

          v110 = v19(v109);
          v111 = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(v110, v108, 0, 0);
          type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
          v112 = swift_allocObject();
          *(v112 + 32) = 0u;
          *(v112 + 48) = 0u;
          *(v112 + 16) = 0u;
          *(v112 + 64) = 0;
          *(v112 + 90) = 1;
          UUID.init()();

          swift_beginAccess();
          *(v112 + 16) = 0;

          swift_beginAccess();
          *(v112 + 24) = 0;
          *(v112 + 32) = 0;

          swift_beginAccess();
          *(v112 + 40) = 0;

          swift_beginAccess();
          *(v112 + 48) = 0;

          swift_beginAccess();
          *(v112 + 56) = 0;

          *(v112 + 65) = v111;
          *(v112 + 72) = 0x6C6F686563616C70;
          *(v112 + 80) = 0xEB00000000726564;
          *(v112 + 88) = 256;
          *(v112 + 90) = 0;
          v113 = *(v142 + 24);
          v114 = type metadata accessor for UUID();
          v115 = v144;
          (*(*(v114 - 8) + 56))(&v144[v113], 1, 1, v114);
          v116 = v143;
          *v115 = v112;
          *(v115 + 1) = v116;
          v115[16] = 0;
          a3(v115);
LABEL_82:

          v132 = v115;
          return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v132);
        }

LABEL_74:
        v117 = v19(v99);
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;
        if (v118 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v120 == v121)
        {
        }

        else
        {
          v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v123 & 1) == 0)
          {
LABEL_81:
            v133 = v19(v122);
            v134 = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(v133, 0, 1, 0);
            type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
            v135 = swift_allocObject();
            *(v135 + 32) = 0u;
            *(v135 + 64) = 0;
            *(v135 + 48) = 0u;
            *(v135 + 16) = 0u;
            *(v135 + 90) = 1;
            UUID.init()();

            swift_beginAccess();
            *(v135 + 16) = 0;

            swift_beginAccess();
            *(v135 + 24) = 0;
            *(v135 + 32) = 0;

            swift_beginAccess();
            *(v135 + 40) = 0;

            swift_beginAccess();
            *(v135 + 48) = 0;

            swift_beginAccess();
            *(v135 + 56) = 0;

            *(v135 + 65) = v134;
            *(v135 + 72) = 0x6C6F686563616C70;
            *(v135 + 80) = 0xEB00000000726564;
            *(v135 + 88) = 256;
            *(v135 + 90) = 0;
            v136 = *(v142 + 24);
            v137 = type metadata accessor for UUID();
            v115 = v144;
            (*(*(v137 - 8) + 56))(&v144[v136], 1, 1, v137);
            v138 = v143;
            *v115 = v135;
            *(v115 + 1) = v138;
            v115[16] = 0;
            a3(v115);
            goto LABEL_82;
          }
        }

        v122 = (*(*a4 + 280))(v122);
        if (v122)
        {
          v124 = v122;
          v125 = v19(v122);
          v126 = v124;
          v127 = v125;
          LOBYTE(v124) = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(v127, 0, 1, v124);
          type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
          v128 = swift_allocObject();
          *(v128 + 32) = 0u;
          *(v128 + 64) = 0;
          *(v128 + 48) = 0u;
          *(v128 + 16) = 0u;
          *(v128 + 90) = 1;
          UUID.init()();

          swift_beginAccess();
          *(v128 + 16) = 0;

          swift_beginAccess();
          *(v128 + 24) = 0;
          *(v128 + 32) = 0;

          swift_beginAccess();
          *(v128 + 40) = 0;

          swift_beginAccess();
          *(v128 + 48) = 0;

          swift_beginAccess();
          *(v128 + 56) = 0;

          *(v128 + 65) = v124;
          *(v128 + 72) = 0x6C6F686563616C70;
          *(v128 + 80) = 0xEB00000000726564;
          *(v128 + 88) = 256;
          *(v128 + 90) = 0;
          v129 = *(v142 + 24);
          v130 = type metadata accessor for UUID();
          v50 = v144;
          (*(*(v130 - 8) + 56))(&v144[v129], 1, 1, v130);
          v131 = v143;
          *v50 = v128;
          *(v50 + 1) = v131;
          v50[16] = 0;
          v26(v50);

          goto LABEL_80;
        }

        goto LABEL_81;
      }
    }

    else
    {
    }

    goto LABEL_74;
  }

  v49 = *(v142 + 24);
  v50 = v144;
  (*(*v25 + 43))(v47);
  v51 = type metadata accessor for UUID();
  (*(*(v51 - 8) + 56))(&v50[v49], 0, 1, v51);
  v52 = v143;
  *v50 = v48;
  *(v50 + 1) = v52;
  v50[16] = 0;
  a3(v50);
LABEL_80:

  v132 = v50;
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v132);
}

uint64_t closure #1 in MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:)(unint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5, uint64_t a6)
{
  v53 = a6;
  v55 = a5;
  v54 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  __chkstk_darwin(v54);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    type metadata accessor for OS_dispatch_queue();
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;
    v63 = partial apply for closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:);
    v64 = v34;
    aBlock = _NSConcreteStackBlock;
    v60 = 1107296256;
    v61 = thunk for @escaping @callee_guaranteed () -> ();
    v62 = &block_descriptor_23_0;
    v35 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v56 + 8))(v13, v11);
    return (*(v15 + 8))(v17, v14);
  }

  v49 = v17;
  v50 = v14;
  v52 = a4;
  v51 = Strong;
  v19 = v56;
  v20 = a1;
  if (a1)
  {
    v21 = v15;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_12;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v23 = *(a1 + 32);
    }

    v24 = v23;
    v25 = specialized MOSuggestionCollectionViewCellViewModel.createListAssetViewModel(for:)(v23);
    if (v25)
    {
      v26 = v25;
      type metadata accessor for OS_dispatch_queue();
      v54 = static OS_dispatch_queue.main.getter();
      v27 = swift_allocObject();
      v28 = v55;
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v51;
      v27[5] = a3;
      v27[6] = v52;
      v63 = partial apply for closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:);
      v64 = v27;
      aBlock = _NSConcreteStackBlock;
      v60 = 1107296256;
      v61 = thunk for @escaping @callee_guaranteed () -> ();
      v62 = &block_descriptor_29;
      v29 = _Block_copy(&aBlock);

      v55 = v24;
      v30 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v31 = v54;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v29);

      (*(v19 + 8))(v13, v11);
      return (*(v21 + 8))(v30, v50);
    }
  }

LABEL_12:
  v36 = (*(*v53 + 120))();
  v37 = specialized MOSuggestionAssetVisualSubType.init(assetType:mediaType:motionActivityType:)(v36, 0, 1, 0);
  type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
  v38 = swift_allocObject();
  *(v38 + 32) = 0u;
  *(v38 + 64) = 0;
  *(v38 + 48) = 0u;
  *(v38 + 16) = 0u;
  *(v38 + 90) = 1;
  UUID.init()();

  swift_beginAccess();
  *(v38 + 16) = 0;

  swift_beginAccess();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;

  swift_beginAccess();
  *(v38 + 40) = 0;

  swift_beginAccess();
  *(v38 + 48) = 0;

  swift_beginAccess();
  *(v38 + 56) = 0;

  *(v38 + 65) = v37;
  *(v38 + 72) = 0x6C6F686563616C70;
  *(v38 + 80) = 0xEB00000000726564;
  *(v38 + 88) = 256;
  *(v38 + 90) = 0;
  v39 = *(v54 + 24);
  v40 = type metadata accessor for UUID();
  (*(*(v40 - 8) + 56))(&v10[v39], 1, 1, v40);
  v41 = v55;
  *v10 = v38;
  *(v10 + 1) = v41;
  v10[16] = 0;
  a3(v10);
  outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v10);
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static MOAngelLogger.assets);

  v15 = Logger.logObject.getter();
  LOBYTE(a3) = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v15, a3))
  {
    goto LABEL_31;
  }

  v22 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v58 = v11;
  *v22 = 136315138;
  if (!v20)
  {
    v45 = 0xE300000000000000;
    v46 = 7104878;
LABEL_30:
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v58);

    *(v22 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v15, a3, "[MOSuggestionCollectionViewCellViewModel.List] failed to generate view model, asset=%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);

LABEL_31:
  }

  a1 = v20 & 0xFFFFFFFFFFFFFF8;
  if (!(v20 >> 62))
  {
    result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_28:
    v44 = 0;
    goto LABEL_29;
  }

LABEL_27:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_18:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (*(a1 + 16))
  {
    v43 = *(v20 + 32);
LABEL_21:
    v44 = v43;
LABEL_29:
    v57 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MOSuggestionAssetCSgMd);
    v46 = Optional.debugDescription.getter();
    v45 = v47;

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in MOSuggestionCollectionViewCellViewModel._fetchGroupedAssets(assetReferences:updateIndex:completion:)(void (*a1)(char *))
{
  v2 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MOSuggestionCollectionViewCellViewModel();
  static MOSuggestionCollectionViewCellViewModel.PLACEHOLDER_LIST_RESULT.getter(v4);
  a1(v4);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v4);
}

uint64_t closure #2 in closure #1 in MOSuggestionCollectionViewCellViewModel._fetchAllOtherAssets(assetReferences:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 32);
  (*(*a3 + 344))();
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v11[v12], 0, 1, v13);
  *v11 = a1;
  *(v11 + 1) = a2;
  v11[16] = 0;

  a4(v11);
  return outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(v11);
}

uint64_t type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult()
{
  result = type metadata singleton initialization cache for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult;
  if (!type metadata singleton initialization cache for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC5BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000DC68C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult()
{
  type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Int?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t sub_1000DC880()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC8C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC900()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000DC96C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionCollectionViewCellViewModel.MOSuggestionCollectionListViewAssetPlaceHolderSingleResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized MOSuggestionCollectionViewCellViewModel.createListAssetViewModel(for:)(void *a1)
{
  v2 = [a1 assetType];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {

LABEL_8:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    return MOSuggestionInterstitialListAssetViewModel.__allocating_init(multiPinMapAsset:)(a1);
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_16;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {

LABEL_16:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    return MOSuggestionInterstitialListAssetViewModel.__allocating_init(workoutAsset:)(a1);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

LABEL_21:
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    return MOSuggestionInterstitialListAssetViewModel.__allocating_init(workoutGroupAsset:)(a1);
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t objectdestroy_16Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MOSuggestionAssetSystemIconImageProvider();
  result = swift_initStaticObject();
  static MOSuggestionAssetSystemIconImageProvider.shared = result;
  return result;
}

{
  type metadata accessor for MOSuggestionAssetSystemSymbolProvider();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  static MOSuggestionAssetSystemSymbolProvider.shared = result;
  return result;
}

{
  type metadata accessor for MOEventBundleStore();
  v0 = swift_allocObject();
  result = MOEventBundleStore.init()();
  static MOEventBundleStore.shared = v0;
  return result;
}

{
  type metadata accessor for MOMusicPlaybackCoordinator();
  v0 = swift_allocObject();
  result = MOMusicPlaybackCoordinator.init()();
  static MOMusicPlaybackCoordinator.shared = v0;
  return result;
}

{
  type metadata accessor for MOLocationShifter();
  v0 = swift_allocObject();
  result = MOLocationShifter.init()();
  static MOLocationShifter.shared = v0;
  return result;
}

uint64_t *MOSuggestionAssetSystemIconImageProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetSystemIconImageProvider.shared;
}

uint64_t static MOSuggestionAssetSystemIconImageProvider.shared.getter()
{
  type metadata accessor for MOSuggestionAssetSystemIconImageProvider();

  return swift_initStaticObject();
}

void MOSuggestionAssetSystemIconImageProvider.getAssetFor(workoutType:size:renderGlyph:isIndoors:completion:)(uint64_t a1, char a2, char a3, char a4, void (*a5)(CGContext *))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static MOAngelLogger.shared);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "[workoutIcon] workoutType=%lu, isIndoor=%{BOOL}d", v13, 0x12u);
  }

  v25 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:a1 isIndoor:a4 & 1 metadata:0];
  v14 = FIUIStaticScalableWorkoutIconImage();
  if (v14)
  {
    v15 = v14;
    if (a2 - 11) < 0xF7u || (a3)
    {
      if (one-time initialization token for exerciseGreen != -1)
      {
        swift_once();
      }

      v16 = static MOSuggestionTheme.Colors.exerciseGreen;
      v17 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
      v18 = UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(v16, v17, a2, 0.0);

      if (v18)
      {

        v15 = v18;
      }

      else
      {
        a5(0);
      }
    }

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[Assets] Packed asset for system image", v24, 2u);
    }

    a5(v15);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Assets] Unable to fetch system image for workoutType:%lu", v21, 0xCu);
    }

    a5(0);
  }
}

void specialized MOSuggestionAssetSystemIconImageProvider.getAssetFor(workoutType:size:renderGlyph:isIndoors:completion:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MOAngelLogger.shared);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = a1;
    *(v15 + 12) = 1024;
    *(v15 + 14) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "[workoutIcon] workoutType=%lu, isIndoor=%{BOOL}d", v15, 0x12u);
  }

  v29 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:a1 isIndoor:a4 & 1 metadata:0];
  v16 = FIUIStaticScalableWorkoutIconImage();
  if (v16)
  {
    v17 = v16;
    if (a2 - 11) < 0xF7u || (a3)
    {
      if (one-time initialization token for exerciseGreen != -1)
      {
        swift_once();
      }

      v21 = static MOSuggestionTheme.Colors.exerciseGreen;
      v22 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
      v23 = UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(v21, v22, a2, 0.0);

      if (v23)
      {

        v17 = v23;
      }

      else
      {
        closure #1 in closure #1 in closure #5 in MOSuggestionAssetCacheManager.fetchAndCacheCombinedWorkoutObjectsFromProviders(_:cacheType:completion:)(0, a5, a6);
      }
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "[Assets] Packed asset for system image", v26, 2u);
    }

    swift_beginAccess();
    v27 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v28 = swift_endAccess();
    a6(v28);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v18, v19, "[Assets] Unable to fetch system image for workoutType:%lu", v20, 0xCu);
    }

    (a6)();
  }
}

Swift::Void __swiftcall UIImageView.blurView()()
{
  v1 = [objc_opt_self() effectWithStyle:8];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];
  [v0 bounds];
  [v2 setFrame:?];
  [v2 setAutoresizingMask:18];
  [v0 addSubview:v2];
}

CGContext *UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:assetSize:)(void *a1, void *a2, char a3, double a4)
{
  v5 = v4;
  if ((a3 - 2) > 8u)
  {
    v9 = 300.0;
  }

  else
  {
    v9 = dbl_1002A7868[(a3 - 2)];
  }

  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = v9 * v12;
  if (!a2 || (v14 = [a2 CGColor]) == 0)
  {
    v15 = [a1 colorWithAlphaComponent:0.18];
    v14 = [v15 CGColor];
  }

  v16 = [v5 imageWithRenderingMode:2];
  [v5 scale];
  v18 = v17;
  v38.width = v13 + 4.0;
  v38.height = v13 + 4.0;
  UIGraphicsBeginImageContextWithOptions(v38, 0, v18);
  result = UIGraphicsGetCurrentContext();
  if (result)
  {
    v20 = result;
    v21 = v13 * 0.5;
    v22 = [objc_opt_self() clearColor];
    [v22 set];

    v39.origin.x = 2.0;
    v39.origin.y = 2.0;
    v39.size.width = v13;
    v39.size.height = v13;
    CGContextFillRect(v20, v39);
    CGContextSetFillColorWithColor(v20, v14);
    v40.origin.x = 2.0;
    v40.origin.y = 2.0;
    v40.size.width = v13;
    v40.size.height = v13;
    CGContextAddEllipseInRect(v20, v40);
    CGContextDrawPath(v20, kCGPathFillStroke);
    [a1 set];
    [(CGContext *)v16 size];
    v24 = v23;
    [(CGContext *)v16 size];
    v26 = v24 / v25;
    [(CGContext *)v16 size];
    v28 = v27;
    [(CGContext *)v16 size];
    v30 = v29;

    if (v30 <= v28)
    {
      v34 = v21;
      v35 = v21 / v26;
    }

    else
    {
      [(CGContext *)v16 size];
      v32 = v31;
      [(CGContext *)v16 size];
      if (v32 >= v33)
      {
        v36 = 0;
        goto LABEL_15;
      }

      v34 = v21 * v26;
      v35 = v21;
    }

    [(CGContext *)v16 drawInRect:v21 - v34 * 0.5 + a4, v21 - v35 * 0.5 + a4];
    result = UIGraphicsGetImageFromCurrentImageContext();
    if (result)
    {
      v36 = result;
      v37 = result;

      UIGraphicsEndImageContext();
      v16 = v37;
LABEL_15:

      return v36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id UIImage.averageColor.getter()
{
  result = [objc_allocWithZone(CIImage) initWithImage:v0];
  if (result)
  {
    v2 = result;
    [result extent];
    v4 = v3;
    [v2 extent];
    v6 = v5;
    [v2 extent];
    v8 = v7;
    [v2 extent];
    v10 = [objc_allocWithZone(CIVector) initWithX:v4 Y:v6 Z:v8 W:v9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v12;
    *(inited + 72) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CIImage);
    *(inited + 48) = v2;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v13;
    *(inited + 120) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for CIVector);
    *(inited + 96) = v10;
    v14 = v10;
    v15 = v2;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    v16 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() filterWithName:v16 withInputParameters:isa];

    if (v18)
    {
      v19 = [v18 outputImage];
      if (v19)
      {
        v20 = v19;
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v21 + 16) = 4;
        *(v21 + 32) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CIContextOptiona_yptGMd);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1002A48B0;
        *(v22 + 32) = kCIContextWorkingColorSpace;
        *(v22 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CFNullRefaSgMd);
        *(v22 + 40) = kCFNull;
        v23 = kCFNull;
        v24 = kCIContextWorkingColorSpace;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(v22);
        swift_setDeallocating();
        outlined destroy of (CIContextOption, Any)(v22 + 32);
        v25 = objc_allocWithZone(CIContext);
        type metadata accessor for CIContextOption(0);
        lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption();
        v26 = Dictionary._bridgeToObjectiveC()().super.isa;

        v27 = [v25 initWithOptions:v26];

        result = [v27 render:v20 toBitmap:v21 + 32 rowBytes:4 bounds:kCIFormatRGBA8 format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
        v29 = *(v21 + 16);
        if (v29)
        {
          if (v29 != 1)
          {
            if (v29 >= 3)
            {
              if (v29 != 3)
              {
                LOBYTE(v28) = *(v21 + 32);
                *&v30 = v28;
                v31 = *&v30 / 255.0;
                LOBYTE(v30) = *(v21 + 33);
                *&v32 = v30;
                v33 = *&v32 / 255.0;
                LOBYTE(v32) = *(v21 + 34);
                *&v34 = v32;
                v35 = *&v34 / 255.0;
                LOBYTE(v34) = *(v21 + 35);
                v36 = [objc_allocWithZone(UIColor) initWithRed:v31 green:v33 blue:v35 alpha:v34 / 255.0];

                return v36;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            return result;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

UIImage_optional __swiftcall UIImage.cropped()()
{
  v1 = [v0 CGImage];
  if (v1)
  {
    v2 = v1;
    CGImageGetWidth(v1);
  }

  v3 = [v0 CGImage];
  if (v3)
  {
    v4 = v3;
    CGImageGetHeight(v3);
  }

  v5 = [v0 CGImage];
  if (v5)
  {
    v7 = v5;
    MOSuggestionInterstitialExpandableListViewCellConstants.init()();
    v8 = CGImageCreateWithImageInRect(v7, v11);

    if (v8)
    {
      v9 = [objc_allocWithZone(UIImage) initWithCGImage:v8 scale:objc_msgSend(v0 orientation:{"imageOrientation"), 0.0}];

      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  result.value.super.isa = v5;
  result.is_nil = v6;
  return result;
}

UIImage_optional __swiftcall UIImage.circular()()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v2, v3}];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v4;
  *(v6 + 4) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in UIImage.circular();
  *(v7 + 24) = v6;
  v13[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v13[3] = &block_descriptor_14;
  v8 = _Block_copy(v13);
  v9 = v0;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v10;
  }

  result.value.super.isa = v11;
  result.is_nil = v12;
  return result;
}

id closure #1 in UIImage.circular()(uint64_t a1, void *a2)
{
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() bezierPathWithOvalInRect:{v3, v5, v7, v9}];
  [v11 addClip];

  return [a2 drawInRect:{v4, v6, v8, v10}];
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t outlined destroy of (CIContextOption, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CIContextOptiona_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CIContextOption and conformance CIContextOption()
{
  result = lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption;
  if (!lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CIContextOption and conformance CIContextOption);
  }

  return result;
}

uint64_t sub_1000DE284()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MOResource.KnownFirstPartyBundleIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000012;
  }

  if (a1 == 1)
  {
    return 0x6C7070612E6D6F63;
  }

  return 0xD000000000000029;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOResource.KnownFirstPartyBundleIds(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF636973754D2E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6C7070612E6D6F63;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (v4 == 1)
  {
    v6 = 0xEF636973754D2E65;
  }

  else
  {
    v6 = 0x80000001002AEB90;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001002AE910;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000029;
    v2 = 0x80000001002AEB90;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001002AE910;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOResource.KnownFirstPartyBundleIds()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOResource.KnownFirstPartyBundleIds()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOResource.KnownFirstPartyBundleIds()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOResource.KnownFirstPartyBundleIds@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOResource.KnownFirstPartyBundleIds.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MOResource.KnownFirstPartyBundleIds(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF636973754D2E65;
  v4 = 0x6C7070612E6D6F63;
  if (v2 != 1)
  {
    v4 = 0xD000000000000029;
    v3 = 0x80000001002AEB90;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001002AE910;
  }

  *a1 = v6;
  a1[1] = v3;
}

id MOResource.mediaSourceBundleIdentifier.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

{
  result = [v0 data];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = 0;
    v8 = [v6 JSONObjectWithData:isa options:0 error:&v16];

    if (v8)
    {
      v9 = v16;
      _bridgeAnyObjectToAny(_:)();
      outlined consume of Data._Representation(v3, v5);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
      if (swift_dynamicCast())
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v15 + 16))
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
          v13 = v12;

          if (v13)
          {
            swift_unknownObjectRetain();

            if (swift_dynamicCast())
            {
              return v16;
            }

            else
            {
              return 0;
            }
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v14 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v3, v5);
    }

    return 0;
  }

  return result;
}

id MOResource.mediaIsFirstParty.getter()
{
  result = [v0 mediaSourceBundleIdentifier];
  if (result)
  {
    v2 = result;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v6 + 1;
    if (v6 >= v5 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7;
    v8 = &_swiftEmptyArrayStorage[2 * v6];
    v8[4] = 0xD000000000000012;
    v8[5] = 0x80000001002AE910;
    v9 = _swiftEmptyArrayStorage[3];
    v10 = v6 + 2;
    if (v7 >= v9 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10, 1);
    }

    _swiftEmptyArrayStorage[2] = v10;
    v11 = &_swiftEmptyArrayStorage[2 * v7];
    v11[4] = 0x6C7070612E6D6F63;
    v11[5] = 0xEF636973754D2E65;
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = 0xD000000000000029;
    v14[5] = 0x80000001002AEB90;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(_swiftEmptyArrayStorage);

    v16 = specialized Set.contains(_:)(v17, v4, v15);

    return (v16 & 1);
  }

  return result;
}

id @objc MOResource.mediaSourceBundleIdentifier.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id MOResource.mediaFirstPartyTrackIdentifier.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

uint64_t MOResource.mediaFirstPartyCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 data];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:0 error:v46];

  if (!v10)
  {
    v22 = v46[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v5, v7);

    goto LABEL_13;
  }

  v11 = v46[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v5, v7);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if (swift_dynamicCast())
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v45[2])
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(v45[7] + 8 * v14);
        swift_unknownObjectRetain();

        v46[0] = v17;
        type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType(0);
        if (swift_dynamicCast())
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
          if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
          {

LABEL_17:
            v26 = &enum case for MediaCategory.song(_:);
LABEL_18:
            v27 = *v26;
            v28 = type metadata accessor for MediaCategory();
            v29 = *(v28 - 8);
            (*(v29 + 104))(a1, v27, v28);
            return (*(v29 + 56))(a1, 0, 1, v28);
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {

            goto LABEL_17;
          }

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
          if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
          {

LABEL_24:
            v26 = &enum case for MediaCategory.songAlbum(_:);
            goto LABEL_18;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {

            goto LABEL_24;
          }

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;
          if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
          {
            goto LABEL_27;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {

            goto LABEL_30;
          }

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
          if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
          {
LABEL_27:

LABEL_30:
            v26 = &enum case for MediaCategory.podcast(_:);
            goto LABEL_18;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v23 = type metadata accessor for MediaCategory();
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

id MOResource.mediaFirstPartyTrackTitle.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

id MOResource.mediaAlbum.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

id MOResource.mediaArtist.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

id MOResource.mediaBackgroundColorString.getter()
{

  return MOResource.mediaSourceBundleIdentifier.getter();
}

uint64_t MOResource.mediaThirdPartyCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 data];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v46[0] = 0;
  v10 = [v8 JSONObjectWithData:isa options:0 error:v46];

  if (!v10)
  {
    v22 = v46[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v5, v7);

    goto LABEL_13;
  }

  v11 = v46[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v5, v7);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if (swift_dynamicCast())
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v45[2])
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(v45[7] + 8 * v14);
        swift_unknownObjectRetain();

        v46[0] = v17;
        type metadata accessor for MOMediaPlayMetaDataKeyPlayerMediaType(0);
        if (swift_dynamicCast())
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
          if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
          {
            goto LABEL_9;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {

            goto LABEL_17;
          }

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
          if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
          {

LABEL_24:
            v26 = &enum case for MediaThirdPartyCategory.album(_:);
            goto LABEL_18;
          }

          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v34)
          {

            goto LABEL_24;
          }

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;
          if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
          {

LABEL_30:
            v26 = &enum case for MediaThirdPartyCategory.artist(_:);
            goto LABEL_18;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {

            goto LABEL_30;
          }

          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
          if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
          {
LABEL_9:

LABEL_17:
            v26 = &enum case for MediaThirdPartyCategory.unknown(_:);
LABEL_18:
            v27 = *v26;
            v28 = type metadata accessor for MediaThirdPartyCategory();
            v29 = *(v28 - 8);
            (*(v29 + 104))(a1, v27, v28);
            return (*(v29 + 56))(a1, 0, 1, v28);
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v44)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v23 = type metadata accessor for MediaThirdPartyCategory();
  return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
}

unint64_t specialized MOResource.KnownFirstPartyBundleIds.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOResource.KnownFirstPartyBundleIds.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type MOResource.KnownFirstPartyBundleIds and conformance MOResource.KnownFirstPartyBundleIds()
{
  result = lazy protocol witness table cache variable for type MOResource.KnownFirstPartyBundleIds and conformance MOResource.KnownFirstPartyBundleIds;
  if (!lazy protocol witness table cache variable for type MOResource.KnownFirstPartyBundleIds and conformance MOResource.KnownFirstPartyBundleIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOResource.KnownFirstPartyBundleIds and conformance MOResource.KnownFirstPartyBundleIds);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MOResource.KnownFirstPartyBundleIds] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MOResource.KnownFirstPartyBundleIds] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MOResource.KnownFirstPartyBundleIds] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo10MOResourceC16MomentsUIServiceE24KnownFirstPartyBundleIdsOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MOResource.KnownFirstPartyBundleIds] and conformance [A]);
  }

  return result;
}

double MOMapAnnotation.coordinate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate;
  swift_beginAccess();
  return *v1;
}

uint64_t MOMapAnnotation.coordinate.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MOMapAnnotation.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOMapAnnotation.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id MOMapAnnotation.__allocating_init(coordinate:title:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate];
  *v11 = a3;
  v11[1] = a4;
  swift_beginAccess();
  *v10 = a1;
  *(v10 + 1) = a2;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id MOMapAnnotation.init(coordinate:title:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = &v4[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate];
  *v8 = a3;
  v8[1] = a4;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MOMapAnnotation();
  return objc_msgSendSuper2(&v10, "init");
}

id MOMapAnnotation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOMapAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id MOSuggestionAssetMapSnapshotProvider.targetQueue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void MOSuggestionAssetMapSnapshotProvider.targetQueue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t MOSuggestionAssetMapSnapshotProvider.__allocating_init(targetQueue:)(void *a1)
{
  v2 = swift_allocObject();
  MOSuggestionAssetMapSnapshotProvider.init(targetQueue:)(a1);
  return v2;
}

uint64_t MOSuggestionAssetMapSnapshotProvider.init(targetQueue:)(void *a1)
{
  v12 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v11[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v13 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0x3F40624DD2F1A9FCLL;
  *(v1 + 40) = [objc_allocWithZone(NSCache) init];
  v8 = [objc_allocWithZone(GEOMapService) init];
  v9 = v12;
  *(v1 + 48) = v8;
  if (!v9)
  {
    v9 = *(v1 + 16);
  }

  *(v1 + 24) = v9;
  [*(v1 + 40) setCountLimit:30];
  return v1;
}

uint64_t MOSuggestionAssetMapSnapshotProvider.getMapItem(resource:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  v11 = __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(*v3 + 120))(v11);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = partial apply for closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapItem(resource:completion:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v9, v7);
  (*(v10 + 8))(v13, v21);
}

uint64_t sub_1000E06F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapItem(resource:completion:)(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 40);

    v10 = [a2 identifier];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = [v9 objectForKey:v10];

    if (v12)
    {
      v13 = swift_unknownObjectRetain();
      a3(v13);
      swift_unknownObjectRelease_n();
      return;
    }
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 48);

    v16 = [a2 data];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v18, v20);
    }

    else
    {
      v21.super.isa = 0;
    }

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a4;
    v25[4] = partial apply for closure #1 in closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapItem(resource:completion:);
    v25[5] = v22;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed GEOMapItem?, @guaranteed Error?) -> ();
    v25[3] = &block_descriptor_42;
    v23 = _Block_copy(v25);

    v24 = a2;

    [v15 resolveMapItemFromHandle:v21.super.isa completionHandler:v23];
    _Block_release(v23);
  }
}

id closure #1 in closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapItem(resource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  if (!a2)
  {
LABEL_6:
    if (a1)
    {
      goto LABEL_7;
    }

    return a5(0);
  }

  swift_errorRetain();
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static MOAngelLogger.assets);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v22 = a5;
    v11 = swift_slowAlloc();
    v12 = a4;
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v23);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[MOPOIAnnotationView]  %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    a4 = v12;

    a5 = v22;

    goto LABEL_6;
  }

  if (!a1)
  {
    return a5(0);
  }

LABEL_7:
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  v18 = *(Strong + 40);
  swift_unknownObjectRetain();
  v19 = v18;

  result = [a4 identifier];
  if (result)
  {
    v21 = result;
    [v19 setObject:a1 forKey:result];

LABEL_13:
    a5(a1);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed GEOMapItem?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2)
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

uint64_t MOSuggestionAssetMapSnapshotProvider.getMapFor(locations:size:completion:)(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4)
{
  if ((a2 - 2) > 8u)
  {
    return a3(0);
  }

  v7 = (*(*v4 + 192))();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(*v4 + 200);

  v9(v7, partial apply for closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapFor(locations:size:completion:), v8);
}

void closure #1 in MOSuggestionAssetMapSnapshotProvider.getMapFor(locations:size:completion:)(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = MOSuggestionAssetsTypeMultiPinMap;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage);
    v5 = objc_allocWithZone(MOSuggestionAsset);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = a1;
    v8 = [v5 init:v7 type:v4 contentClassType:ObjCClassFromMetadata];
    a2();
  }

  else
  {
    a2();
  }
}

id MOSuggestionAssetMapSnapshotProvider.makeOptions(for:size:)(void *a1, unsigned __int8 a2)
{
  v4 = a1;
  v5 = *v2;
  if (a2 == 3)
  {
    v6 = (*(v5 + 208))(a1);
  }

  else
  {
    v6 = (*(v5 + 216))(a1);
  }

  v7 = v6;
  v128 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  if (a2 == 8 || (v9 = specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)(), v9 != 2) && (v9 & 1) != 0)
  {
    v8 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v8 = &selRef_filterExcludingAllCategories;
  }

  v10 = [objc_opt_self() *v8];
  [v128 setPointOfInterestFilter:v10];

  if (v4 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v13 = v7 >> 62;
  v14 = _swiftEmptyArrayStorage;
  if (v11 != 1)
  {
    v126 = 0;
    v16 = a2 == 8 || (a2 - 5) < 2u;
    v124 = v16;
    goto LABEL_38;
  }

  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v4 = v17;
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_154:
      v119 = v12;
      v18 = swift_once();
      v12 = v119;
      goto LABEL_30;
    }

    v4 = *(v4 + 32);
  }

  if ((*(*v4 + 360))(v17) > 0.9 && (*(*v4 + 288))())
  {
    v18 = swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v18 = (*(*v4 + 456))();
  if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
  {
    goto LABEL_154;
  }

LABEL_30:
  if (*&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD < v12)
  {
LABEL_35:

    goto LABEL_37;
  }

LABEL_31:
  v19 = (*(*v4 + 288))(v18);
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v19 isPlaceHolderPlace:1];
  if (v20)
  {
    if ((a2 - 2) >= 9u)
    {
      v22 = 300.0;
      v23 = 300.0;
    }

    else
    {
      v21 = (a2 - 2);
      v22 = dbl_1002A7A88[v21];
      v23 = dbl_1002A7AD0[v21];
    }

    v125 = v20;
    v70 = [objc_opt_self() cameraLookingAtMapItem:v20 forViewSize:1 allowPitch:{v22, v23}];
    v71 = (*(*v4 + 240))();
    [v70 setCenterCoordinate:{v71, (*(*v4 + 264))()}];
    v123 = v70;
    [v127 setCamera:v70];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A70;
    *(inited + 32) = v4;
    v73 = inited & 0xC000000000000001;

    if (v73)
    {
      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {

      v75 = v4;
    }

    v76 = (*(*v75 + 240))(v74);
    v77 = (*(*v75 + 264))();
    v78 = (*(*v75 + 456))();
    v79 = (*(*v75 + 312))();
    if ((v80 & 1) != 0 || v79 < 2)
    {
      if (v78 > 0.0)
      {
        if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
        {
          swift_once();
        }

        v82 = *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;

        v83 = v78 / 111000.0;
        if (v78 >= v82)
        {
          v84 = v83 * 3.0 + 0.003;
          if (v84 > 0.1)
          {
            v81 = 0.14;
            goto LABEL_110;
          }
        }

        else
        {
          v84 = v83 + v83 + 0.003;
        }

        v81 = fmin(v84 * 1.4, 180.0);
        goto LABEL_110;
      }

      v81 = 0.056;
    }

    else
    {

      v81 = 0.014;
    }

LABEL_110:
    v24 = 1;
    [v127 region];
    v87 = v86;
    v89 = v88;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static MOAngelLogger.assets);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 134545921;
      *(v93 + 4) = v81;
      *(v93 + 12) = 2053;
      *(v93 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v91, v92, "[MapSnapshot] naive region region=%{sensitive}f, %{sensitive}f", v93, 0x16u);
    }

    v94 = v127;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134545921;
      [v94 region];
      *(v97 + 4) = v98;
      *(v97 + 12) = 2053;
      [v94 region];
      *(v97 + 14) = v99;
      _os_log_impl(&_mh_execute_header, v95, v96, "[MapSnapshot] options.camera region=%{sensitive}f, %{sensitive}f", v97, 0x16u);
    }

    if (v87 >= v81 || v89 >= v81)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      [v94 setRegion:{v76, v77, v81, v81}];
      v100 = v94;
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 134545921;
        [v100 region];
        *(v103 + 4) = v104;
        *(v103 + 12) = 2053;
        [v100 region];
        *(v103 + 14) = v105;
        _os_log_impl(&_mh_execute_header, v101, v102, "[MapSnapshot] using naive region region=%{sensitive}f, %{sensitive}f", v103, 0x16u);
      }

      swift_unknownObjectRelease();
    }

    v63 = v127;
    goto LABEL_129;
  }

  swift_unknownObjectRelease();
LABEL_37:
  v124 = 0;
  v126 = a2 == 4;
LABEL_38:
  v24 = v11;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static MOAngelLogger.assets);
  swift_bridgeObjectRetain_n();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v26, v27))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_45;
  }

  v120 = a2 & 0xFD;
  v3 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v132 = v14;
  *v3 = 136316162;
  v28 = MOSuggestionAssetTileSize.description.getter(a2);
  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v132);

  *(v3 + 4) = v30;
  *(v3 + 12) = 2048;
  v121 = v7 >> 62;
  if (v13)
  {
    goto LABEL_151;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    *(v3 + 14) = i;

    *(v3 + 22) = 1024;
    *(v3 + 24) = v124;
    *(v3 + 28) = 1024;
    *(v3 + 30) = v126;
    *(v3 + 34) = 1024;
    *(v3 + 36) = v120 == 4;
    _os_log_impl(&_mh_execute_header, v26, v27, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v3, 0x28u);
    __swift_destroy_boxed_opaque_existential_0(v14);

    v13 = v121;
    v14 = _swiftEmptyArrayStorage;
LABEL_45:
    if (v13)
    {
      break;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_125;
    }

LABEL_47:
    if ((v7 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = v33;
LABEL_50:
      v34 = (*(*v32 + 240))(v33);
      longitude = (*(*v32 + 264))();
      v36 = (*(*v32 + 456))();
      v37 = (*(*v32 + 312))();
      v39 = v38;
      if (v13)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v40 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v40 > 1)
      {
        v122 = v13;
        v132 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
        v41 = 0;
        v42 = v132;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v43 = *(v7 + 8 * v41 + 32);
          }

          v44 = (*(*v43 + 240))();
          v45 = (*(*v43 + 264))();

          v132 = v42;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            v42 = v132;
          }

          ++v41;
          *(v42 + 16) = v47 + 1;
          v48 = (v42 + 32 + 16 * v47);
          *v48 = v44;
          v48[1] = v45;
        }

        while (v40 != v41);
        v50 = [objc_opt_self() polygonWithCoordinates:v42 + 32 count:v40];

        [v50 boundingMapRect];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v133.origin.x = v52;
        v133.origin.y = v54;
        v133.size.width = v56;
        v133.size.height = v58;
        v134 = MKCoordinateRegionForMapRect(v133);
        latitude = v134.center.latitude;
        longitude = v134.center.longitude;
        latitudeDelta = v134.span.latitudeDelta;
        longitudeDelta = v134.span.longitudeDelta;

        v62 = latitude;
        v63 = v127;
        v13 = v122;
        v64 = &unk_1002A4000;
        goto LABEL_66;
      }

      if ((v39 & 1) != 0 || v37 < 2)
      {
        if (v36 > 0.0)
        {
          if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
          {
            swift_once();
          }

          v66 = *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD;

          v67 = v36 / 111000.0;
          if (v36 >= v66)
          {
            v85 = v67 * 3.0 + 0.003;
            if (v85 <= 0.1)
            {
              longitudeDelta = v85;
            }

            else
            {
              longitudeDelta = 0.1;
            }
          }

          else
          {
            longitudeDelta = v67 + v67 + 0.003;
          }

          latitudeDelta = longitudeDelta;
          v62 = v34;
          v63 = v127;
          v64 = &unk_1002A4000;
LABEL_66:
          v49 = latitudeDelta * 1.4;
          v65 = longitudeDelta * 1.4;
          if (!v124)
          {
LABEL_77:
            if ((a2 | 2) != 6)
            {
              goto LABEL_79;
            }

            goto LABEL_78;
          }

LABEL_76:
          v49 = v49 * 1.4;
          v65 = v65 * 0.9;
          v62 = v62 + v49 / -12.0;
          goto LABEL_77;
        }

        if (v124)
        {
          v49 = 0.056;
          goto LABEL_75;
        }

        v62 = v34;
        v63 = v127;
        if ((a2 | 2) == 6)
        {
          v65 = 0.056;
          goto LABEL_101;
        }

        v49 = 0.056;
      }

      else
      {

        if (v124)
        {
          v49 = 0.014;
LABEL_75:
          v65 = v49;
          v62 = v34;
          v63 = v127;
          v64 = &unk_1002A4000;
          goto LABEL_76;
        }

        v62 = v34;
        v63 = v127;
        if ((a2 | 2) == 6)
        {
          v65 = 0.014;
LABEL_101:
          v49 = v65;
          v64 = &unk_1002A4000;
LABEL_78:
          v49 = v49 * v64[330];
LABEL_79:
          if (!v126)
          {
LABEL_81:
            v68 = fmin(v65, 180.0);
            v69 = fmin(v49, 180.0);
            goto LABEL_128;
          }

LABEL_80:
          v65 = v65 * v64[330];
          goto LABEL_81;
        }

        v49 = 0.014;
      }

      v65 = v49;
      v64 = &unk_1002A4000;
      if (!v126)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v7 + 32);

      goto LABEL_50;
    }

    __break(1u);
LABEL_151:
    ;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_125:
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v106, v107, "[MapSnapshot] makeRegion failed with 0 locations", v108, 2u);
  }

  v135.origin.x = MKMapRectNull.origin.x;
  v135.origin.y = MKMapRectNull.origin.y;
  v135.size.width = MKMapRectNull.size.width;
  v135.size.height = MKMapRectNull.size.height;
  *&v62 = MKCoordinateRegionForMapRect(v135);
  longitude = v109;
  v63 = v127;
LABEL_128:
  [v63 setRegion:{v62, longitude, v69, v68}];
LABEL_129:
  [v63 setShowsBuildings:1];
  [v63 setPreferredConfiguration:v128];
  [v63 _setAllowsSimultaneousLightDarkSnapshots:1];
  [v63 _setUseSnapshotService:1];
  if ((a2 - 2) > 8u)
  {
    v111 = 300.0;
    v112 = 300.0;
  }

  else
  {
    v110 = (a2 - 2);
    v111 = dbl_1002A7A88[v110];
    v112 = dbl_1002A7AD0[v110];
  }

  [v63 setSize:{v111, v112}];
  v132 = _swiftEmptyArrayStorage;
  if (v13)
  {
    goto LABEL_147;
  }

  v113 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v113)
  {
LABEL_134:
    v114 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v116 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_145;
        }
      }

      else
      {
        if (v114 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v115 = *(v7 + 8 * v114 + 32);

        v116 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          v113 = _CocoaArrayWrapper.endIndex.getter();
          if (!v113)
          {
            break;
          }

          goto LABEL_134;
        }
      }

      v131 = v115;
      closure #1 in MOSuggestionAssetMapSnapshotProvider.makeOptions(for:size:)(&v131, a2, v24 == 1, &v130);

      if (v130)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v114;
    }

    while (v116 != v113);
  }

  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MKAnnotationView);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v127 setAnnotationViews:isa];

  return v127;
}

uint64_t closure #1 in MOSuggestionAssetMapSnapshotProvider.makeOptions(for:size:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X8>)
{
  v4 = *a1;
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static MOAngelLogger.assets);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    v9 = *(*v4 + 360);
    *(v8 + 4) = v9();
    *(v8 + 12) = 2048;
    *(v8 + 14) = (*(*v4 + 456))();
    *(v8 + 22) = 1024;
    if (v9() > 0.9 && (*(*v4 + 288))())
    {
      swift_unknownObjectRelease();
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    *(v8 + 24) = v10;

    _os_log_impl(&_mh_execute_header, v6, v7, "[MapSnapshot] confidenceLevel=%f, unc=%f, shouldUseSpecificPlaceName=%{BOOL}d", v8, 0x1Cu);
  }

  else
  {
  }

  v12 = (*v4 + 360);
  v13 = *v12;
  if ((*v12)(v11) > 0.9 && (v14 = (*v4 + 288), v15 = *v14, (*v14)()))
  {
    v16 = swift_unknownObjectRelease();
    v39 = (v15)(v16);
  }

  else
  {
    v39 = 0;
  }

  v38 = (*(*v4 + 384))();
  v17 = (*(*v4 + 312))();
  v19 = v18;
  if (v13() > 0.9 && (v20 = (*(*v4 + 288))()) != 0)
  {
    v20 = swift_unknownObjectRelease();
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(*v4 + 480))(v20);
  if (v13() > 0.9 && (*(*v4 + 288))())
  {
    v23 = swift_unknownObjectRelease();
    v24 = 0;
  }

  else
  {
    v23 = (*(*v4 + 456))();
    if (one-time initialization token for LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD != -1)
    {
      v37 = v25;
      v23 = swift_once();
      v25 = v37;
    }

    v24 = *&static MOMapLocation.LOW_CONFIDENCE_HIGH_CERTAINTITY_THRESHOLD < v25;
  }

  if (v19)
  {
    v26 = 1;
  }

  else
  {
    v26 = v17;
  }

  v44 = v39;
  v45 = a2;
  v46 = v38 & 1;
  v47 = v26;
  v48 = (a3 & 1) == 0;
  v49 = v21;
  v50 = v22 & 1;
  v51 = v24;
  v52 = 0x4000000000000000;
  v27 = (*(*v4 + 240))(v23);
  v28 = (*(*v4 + 264))();
  v29 = type metadata accessor for MOMapAnnotation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v30[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate];
  *v32 = v27;
  v32[1] = v28;
  swift_beginAccess();
  *v31 = 0;
  *(v31 + 1) = 0;
  v43.receiver = v30;
  v43.super_class = v29;
  v33 = objc_msgSendSuper2(&v43, "init");
  v34 = objc_allocWithZone(type metadata accessor for MOPOIAnnotationView());
  v35 = specialized MOPOIAnnotationView.init(annotation:configuration:)(v33, &v44);

  result = swift_unknownObjectRelease();
  *a4 = v35;
  return result;
}

void MOSuggestionAssetMapSnapshotProvider.snapshot(options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:a1];
  v7 = (*(*v3 + 120))();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = partial apply for closure #1 in MOSuggestionAssetMapSnapshotProvider.snapshot(options:completion:);
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_12_0;
  v9 = _Block_copy(v10);

  [v6 startWithQueue:v7 completionHandler:v9];
  _Block_release(v9);
}

void closure #1 in MOSuggestionAssetMapSnapshotProvider.snapshot(options:completion:)(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v15 = [v4 image];
    a3();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static MOAngelLogger.shared);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;
      }

      else
      {
        v13 = 0xE500000000000000;
        v11 = 0x3E6C696E3CLL;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "[Assets] MKMapSnapshotter: Unable to create Map Snapshot. error=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    (a3)(0);
  }
}

void *MOSuggestionAssetMapSnapshotProvider.consolidatedClusterPin(locations:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v2;
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (v16 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v16;
  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (v17)
  {
    v3 = v17;
    if (v17 >= 1)
    {
LABEL_3:
      v4 = 0;
      v5 = 0;
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(a1 + 8 * v5 + 32);
        }

        v11 = (*(*v10 + 240))();
        v12 = (*(*v10 + 264))();
        v13 = *(*v10 + 360);
        if (v6 < v13())
        {
          v6 = v13();
        }

        v14 = (*(*v10 + 288))();
        if (v14)
        {
          v15 = v14;
          swift_unknownObjectRelease();
          v4 = v15;
        }

        ++v5;
        v8 = v8 + v11;
        v7 = v7 + v12;
        v9 = (*(*v10 + 384))();
      }

      while (v3 != v5);
      goto LABEL_18;
    }

    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  v9 = 0;
  v4 = 0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
LABEL_18:
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1002A4A70;
  v19 = v8 / v2;
  v20 = v7 / v2;
  type metadata accessor for MOMapLocation();
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v24(v21 + v22, 1, 1, v23);
  v24(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v23);
  v25 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
  v26 = v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
  v28 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
  v29 = (v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
  v34 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
  v31 = (v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = v19;
  *(v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = v20;
  v32 = (v21 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  swift_beginAccess();
  *v26 = v33;
  *(v26 + 8) = 0;
  swift_beginAccess();
  *(v21 + v25) = v4;
  swift_beginAccess();
  *(v21 + v27) = v6;
  swift_beginAccess();
  *(v21 + v28) = v9 & 1;
  swift_beginAccess();
  *v29 = 0;
  v29[1] = 0;
  swift_beginAccess();
  *(v21 + v30) = 0;
  swift_beginAccess();
  *(v21 + v34) = 0;
  swift_beginAccess();
  result = v35;
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v35 + 32) = v21;
  return result;
}

void *MOSuggestionAssetMapSnapshotProvider.clusteredPinsUsingHierachicalDendogram(locations:)(unint64_t a1)
{
  v6 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v86 = _CocoaArrayWrapper.endIndex.getter();
    if (v86 >= 3)
    {
      v10 = v86;
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        v107 = v7;
        v94 = v9;
        if (one-time initialization token for assets == -1)
        {
          goto LABEL_43;
        }

        goto LABEL_54;
      }

      goto LABEL_3;
    }

LABEL_46:

    return a1;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10 <= 2)
  {
    goto LABEL_46;
  }

LABEL_3:
  v94 = v9;
  v107 = v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v11 = v12;
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_24;
    }

    v11 = *(a1 + 32);
  }

  v13 = (*(*v11 + 240))(v12);
  v14 = (*(*v11 + 264))(v13);
  v15 = (*(*v11 + 456))(v14);
  (*(*v11 + 312))(v15);
  v108 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v16 = 0;
  v17 = v108;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a1 + 8 * v16 + 32);
    }

    v19 = (*(*v18 + 240))();
    v20 = (*(*v18 + 264))();

    v108 = v17;
    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v17 = v108;
    }

    ++v16;
    v17[2] = v22 + 1;
    v23 = &v17[2 * v22 + 4];
    *v23 = v19;
    v23[1] = v20;
  }

  while (v10 != v16);
  v24 = [objc_opt_self() polygonWithCoordinates:v17 + 4 count:v10];

  [v24 boundingMapRect];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v110.origin.x = v26;
  v110.origin.y = v28;
  v110.size.width = v30;
  v110.size.height = v32;
  v111 = MKCoordinateRegionForMapRect(v110);
  latitude = v111.center.latitude;
  longitude = v111.center.longitude;
  latitudeDelta = v111.span.latitudeDelta;
  longitudeDelta = v111.span.longitudeDelta;

  v4 = latitudeDelta * 1.4;
  v3 = fmin(longitudeDelta * 1.4, 180.0);
  if (v4 >= 180.0)
  {
    v4 = 180.0;
    goto LABEL_17;
  }

  while (1)
  {
    if (v4 <= 0.0005)
    {
      v7 = 1;
      goto LABEL_23;
    }

LABEL_17:
    v35 = specialized static MOAngelDefaultsManager.doubleValueFor(_:)();
    if (v36)
    {
      v7 = 5;
      goto LABEL_23;
    }

    v37 = round(*&v35);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v37 <= -9.22337204e18)
    {
      goto LABEL_52;
    }

    if (v37 < 9.22337204e18)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
LABEL_43:
    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static MOAngelLogger.assets);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "[MapSnapshot] makeRegion failed with 0 locations", v90, 2u);
    }

    v112.origin.x = MKMapRectNull.origin.x;
    v112.origin.y = MKMapRectNull.origin.y;
    v112.size.width = MKMapRectNull.size.width;
    v112.size.height = MKMapRectNull.size.height;
    v113 = MKCoordinateRegionForMapRect(v112);
    latitude = v113.center.latitude;
    longitude = v113.center.longitude;
    v4 = v113.span.latitudeDelta;
    v3 = v113.span.longitudeDelta;
  }

  v7 = v37;
LABEL_23:
  if (one-time initialization token for assets != -1)
  {
    goto LABEL_50;
  }

LABEL_24:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static MOAngelLogger.assets);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v39, v40, "[MOSuggestionAssetMapsClusterer] using numBuckets: %ld", v41, 0xCu);
  }

  v42 = specialized static MOSuggestionAssetMapsClusterer.clusteredPins(locations:targetRegion:numBuckets:)(a1, v7, latitude, longitude, v4, v3);
  v43 = specialized static MOAngelDefaultsManager.BOOLeanValueFor(_:)();
  if (v43 == 2 || (v43 & 1) == 0)
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v49, 2u);
    }

    v50 = objc_allocWithZone(type metadata accessor for MOSuggestionAssetMapsClusterer());

    v52 = MOSuggestionAssetMapsClusterer.init(mapLocations:separationThreshold:)(v51, 1.0);
    v53 = (*((swift_isaMask & *v52) + 0xF8))();
    v54 = (*((swift_isaMask & *v52) + 0x100))(v53);
    v55 = *(v54 + 16);
    if (v55)
    {
      v93 = v52;
      v109 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v56 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v92[1] = v54;
      v57 = v54 + v56;
      v95 = *(v107 + 72);
      v58 = v94;
      v96 = v6;
      do
      {
        v107 = v57;
        v106 = v55;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v57, v58);
        v60 = *v58;
        v59 = v58[1];
        v61 = v6[12];
        v62 = (v58 + v6[11]);
        v63 = v58[3];
        v103 = v63 < 2;
        if (v63 < 2)
        {
          v63 = 0;
        }

        v102 = v63;
        v64 = v6[9];
        v65 = *(v58 + v6[10]);
        v66 = v6[13];
        v67 = *(v58 + v6[14]);
        v69 = *v62;
        v68 = v62[1];
        v101 = v69;
        v98 = v68;
        v97 = *(v58 + v64);
        v104 = *(v58 + v61);
        v105 = *(v58 + v66);
        type metadata accessor for MOMapLocation();
        v70 = swift_allocObject();
        v71 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
        v72 = type metadata accessor for Date();
        v73 = *(*(v72 - 8) + 56);
        v73(v70 + v71, 1, 1, v72);
        v73(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v72);
        v74 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
        v75 = v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
        *v75 = 0;
        *(v75 + 8) = 1;
        v76 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
        v77 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
        v78 = (v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
        *v78 = 0;
        v78[1] = 0;
        v99 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
        v79 = (v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
        v100 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
        v80 = v97;
        swift_unknownObjectRetain();
        v81 = v98;

        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v58);
        *v79 = 0;
        v79[1] = 0xE000000000000000;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = v60;
        *(v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = v59;
        v82 = (v70 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
        *v82 = v101;
        v82[1] = v81;
        swift_beginAccess();
        *v75 = v102;
        *(v75 + 8) = v103;
        swift_beginAccess();
        *(v70 + v74) = v80;
        swift_unknownObjectRelease();
        swift_beginAccess();
        *(v70 + v76) = v65;
        swift_beginAccess();
        *(v70 + v77) = v104;
        swift_beginAccess();
        *v78 = 0;
        v78[1] = 0;

        v83 = v99;
        swift_beginAccess();
        *(v70 + v83) = v67;
        v6 = v96;
        v84 = v100;
        swift_beginAccess();
        *(v70 + v84) = v105;
        swift_beginAccess();
        *v79 = 0;
        v79[1] = 0xE000000000000000;

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v85 = v106;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v57 = v107 + v95;
        v55 = v85 - 1;
      }

      while (v55);

      return v109;
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "[MOSuggestionAssetMapsClusterer] Skipping dendrogram", v46, 2u);
    }

    return v42;
  }
}

uint64_t MOSuggestionAssetMapSnapshotProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:)(unint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  v58 = a2;
  v57 = a3;
  if (v11)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    v4 = aBlock;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_28:
      v36 = a4;
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_24;
    }

    v55 = v10;
    v13 = 0;
    v12 = aBlock[0];
    v4 = v56;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      [v14 coordinate];
      v17 = v16;
      v19 = v18;

      aBlock[0] = v12;
      v21 = *(v12 + 2);
      v20 = *(v12 + 3);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v4 = v56;
        v12 = aBlock[0];
      }

      ++v13;
      *(v12 + 2) = v21 + 1;
      v22 = &v12[2 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
    }

    while (v11 != v13);
    a2 = v58;
    v10 = v55;
  }

  v23 = specialized MOSuggestionAssetMapSnapshotProvider.makeRouteRect(_:size:)(v12, a2);
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v12 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v30 = [objc_opt_self() filterExcludingAllCategories];
  [v12 setPointOfInterestFilter:v30];

  v31 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v5 = v31;
  if ((a2 - 2) >= 9u)
  {
    v33 = 300.0;
    v34 = 300.0;
  }

  else
  {
    v32 = (a2 - 2);
    v33 = dbl_1002A7A88[v32];
    v34 = dbl_1002A7AD0[v32];
  }

  [v31 setSize:{v33, v34}];
  [v5 setMapRect:{v23, v25, v27, v29}];
  [v5 setPreferredConfiguration:v12];
  v35 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  [v5 setTraitCollection:v35];

  [v5 _setUseSnapshotService:1];
  if (v11 != 1)
  {
    goto LABEL_25;
  }

  if (v10)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_25:
      v51 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v5];
      v52 = (*(*v4 + 120))();
      v53 = swift_allocObject();
      *(v53 + 16) = a3;
      *(v53 + 24) = a4;
      *(v53 + 32) = a1;
      *(v53 + 40) = a2;
      aBlock[4] = partial apply for closure #2 in MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:);
      aBlock[5] = v53;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_18;
      v54 = _Block_copy(aBlock);

      [v51 startWithQueue:v52 completionHandler:v54];
      _Block_release(v54);

      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = a4;
    v37 = *(a1 + 32);
LABEL_24:
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1002A4A70;
    [v38 coordinate];
    v41 = v40;
    v43 = v42;
    v44 = type metadata accessor for MOMapAnnotation();
    v45 = objc_allocWithZone(v44);
    v46 = &v45[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_title];
    *v46 = 0;
    *(v46 + 1) = 0;
    v47 = &v45[OBJC_IVAR____TtC16MomentsUIService15MOMapAnnotation_coordinate];
    *v47 = v41;
    *(v47 + 1) = v43;
    swift_beginAccess();
    *v46 = 0;
    *(v46 + 1) = 0;
    v59.receiver = v45;
    v59.super_class = v44;
    v48 = objc_msgSendSuper2(&v59, "init");
    v49 = objc_allocWithZone(type metadata accessor for WorkoutLocationAnnotationView());
    *(v39 + 32) = specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(v48, 0, v49);
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MKAnnotationView);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setAnnotationViews:isa];

    a4 = v36;
    a2 = v58;
    a3 = v57;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t closure #2 in MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = v18;
    v41 = v17;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v21 = a1;
    v39 = v13;
    v22 = a4;
    v23 = v21;
    v38 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = a5;
    *(v24 + 24) = a6;
    *(v24 + 32) = v23;
    *(v24 + 40) = a3;
    *(v24 + 48) = v22;
    aBlock[4] = partial apply for closure #1 in closure #2 in MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:);
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_36_0;
    v25 = _Block_copy(aBlock);
    v26 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v38;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v39 + 8))(v15, v12);
    return (*(v40 + 8))(v20, v41);
  }

  else
  {
    if (a2)
    {
      v29 = a3;
      swift_errorRetain();
      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static MOAngelLogger.assets);
      swift_errorRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136315138;
        swift_getErrorValue();
        v35 = Error.localizedDescription.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, aBlock);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "[RouteSnapshot] snapshot error %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
      }

      else
      {
      }

      a3 = v29;
    }

    return a3(0);
  }
}

uint64_t MOSuggestionAssetMapSnapshotProvider.getGenericMapFor(location:size:completion:)(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void), uint64_t a4)
{
  if ((a2 - 2) > 8u)
  {
    return a3(0);
  }

  v7 = specialized MOSuggestionAssetMapSnapshotProvider.makeOptionsForArea(for:size:)(a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(*v4 + 200);

  v9(v7, partial apply for closure #1 in MOSuggestionAssetMapSnapshotProvider.getGenericMapFor(location:size:completion:), v8);
}

void closure #1 in MOSuggestionAssetMapSnapshotProvider.getGenericMapFor(location:size:completion:)(id a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = a1;
    v4 = MOSuggestionAssetsTypeGenericMap;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage);
    a1 = [objc_allocWithZone(MOSuggestionAsset) init:v3 type:v4 contentClassType:swift_getObjCClassFromMetadata()];
  }

  v5 = a1;
  a2();
}

double specialized MOSuggestionAssetMapSnapshotProvider.makeRouteRect(_:size:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = [objc_opt_self() polylineWithCoordinates:a1 + 32 count:*(a1 + 16)];
  [v3 boundingMapRect];
  v7 = v6;
  v8 = v4;
  if (v4 > v5)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (v2 == 3)
  {
    v10 = v9 * 2.75;
  }

  else
  {
    v10 = v9 * 2.5;
  }

  return v7 + v8 * 0.5 - v10 * 0.5;
}

uint64_t sub_1000E4A8C()
{

  return _swift_deallocObject(v0, 41, 7);
}

void *specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(void *a1, char a2, void *a3)
{
  v18.receiver = a3;
  v18.super_class = type metadata accessor for WorkoutLocationAnnotationView();
  v5 = objc_msgSendSuper2(&v18, "initWithAnnotation:reuseIdentifier:", a1, 0);

  v6 = v5;
  [v6 setFrame:{0.0, 0.0, 15.0, 15.0}];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor:v9];

  [v8 setCanShowCallout:1];
  (*((swift_isaMask & *v8) + 0x58))(a2 & 1);
  [v8 setIsAccessibilityElement:1];
  v10 = UIAccessibilityTraitImage;
  v11 = [v8 accessibilityTraits];
  if ((v10 & ~v11) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v8 setAccessibilityTraits:v12 | v11];
  v13 = [objc_opt_self() mainBundle];
  v19._object = 0x80000001002B3520;
  v14._countAndFlagsBits = 0x6E73206574756F52;
  v14._object = 0xEE00746F68737061;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000033;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v19);

  v16 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v16];

  return v8;
}

void specialized static MOSuggestionAssetMapSnapshotProvider.routeImage(locations:size:lineWidth:snapshot:)(unint64_t a1, id a2, double a3)
{
  v6 = [a2 image];
  [v6 size];
  v8 = v7;
  v10 = v9;

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v66.width = v8;
  v66.height = v10;
  UIGraphicsBeginImageContextWithOptions(v66, 0, v13);
  v14 = [a2 image];
  [v14 size];
  v16 = v15;

  v17 = [a2 image];
  [v17 size];
  v19 = v18;

  v20 = [a2 image];
  [v20 drawInRect:{0.0, 0.0, v16, v19}];

  v21 = UIGraphicsGetCurrentContext();
  if (v21)
  {
    v22 = v21;
    v23 = objc_allocWithZone(type metadata accessor for MOSuggestionAssetGradientRouteRenderer());

    v25 = MOSuggestionAssetGradientRouteRenderer.init(routeLocations:)(v24);
    v26 = &v64;
    v27 = __chkstk_darwin(v25);
    (*((swift_isaMask & *v27) + 0x78))(v22, partial apply for closure #1 in static MOSuggestionAssetMapSnapshotProvider.routeImage(locations:size:lineWidth:snapshot:), a3);
    CGContextStrokePath(v22);
    if (a1 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (v28)
      {
LABEL_4:
        if ((a1 & 0xC000000000000001) == 0)
        {
          v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
            v30 = v28 - 1;
            if (!__OFSUB__(v28, 1))
            {
              if (v30 < v29)
              {
                v31 = *(a1 + 32 + 8 * v30);
                v26 = *(a1 + 32);
                v32 = v31;
                goto LABEL_9;
              }

              __break(1u);
LABEL_23:
              __break(1u);
              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_21;
        }

        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!__OFSUB__(v28, 1))
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
          v65 = v32;
          if (one-time initialization token for assets == -1)
          {
LABEL_10:
            v33 = type metadata accessor for Logger();
            __swift_project_value_buffer(v33, static MOAngelLogger.assets);
            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v34, v35, "[RouteSnapshot] Rendering valid start and stop pins", v36, 2u);
            }

            v37 = [objc_allocWithZone(MKPointAnnotation) init];
            v38 = type metadata accessor for WorkoutLocationAnnotationView();
            v39 = specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)(v37, 0, objc_allocWithZone(v38));
            [v26 coordinate];
            [a2 pointForCoordinate:?];
            v41 = v40;
            v43 = v42;
            [v39 bounds];
            v44 = v41 - CGRectGetMidX(v67);
            [v39 centerOffset];
            v46 = v44 + v45;
            [v39 bounds];
            v47 = v43 - CGRectGetMidY(v68);
            [v39 centerOffset];
            v49 = v47 + v48;
            CGContextSaveGState(v22);
            CGContextTranslateCTM(v22, v46, v49);
            [v39 prepareForSnapshotting];
            v50 = [v39 layer];
            [v50 renderInContext:v22];

            CGContextRestoreGState(v22);
            v51 = specialized WorkoutLocationAnnotationView.init(annotation:type:tileSize:)([objc_allocWithZone(MKPointAnnotation) init], 1, objc_allocWithZone(v38));
            v52 = v65;
            [v65 coordinate];
            [a2 pointForCoordinate:?];
            v54 = v53;
            v56 = v55;
            [v51 bounds];
            v57 = v54 - CGRectGetMidX(v69);
            [v51 centerOffset];
            v59 = v57 + v58;
            [v51 bounds];
            v60 = v56 - CGRectGetMidY(v70);
            [v51 centerOffset];
            v62 = v60 + v61;
            CGContextSaveGState(v22);
            CGContextTranslateCTM(v22, v59, v62);
            [v51 prepareForSnapshotting];
            v63 = [v51 layer];
            [v63 renderInContext:v22];

            CGContextRestoreGState(v22);
            goto LABEL_13;
          }

LABEL_21:
          swift_once();
          goto LABEL_10;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_4;
      }
    }

LABEL_13:
    UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }
}

id specialized MOSuggestionAssetMapSnapshotProvider.makeOptionsForArea(for:size:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = (*(*a1 + 456))(a1) / 111000.0 * 1.5;
  if (v4 == 3)
  {
    v5 = v5 + v5;
  }

  v6 = fmin(v5, 180.0);
  v7 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  v8 = (*(*a1 + 240))();
  [v7 setRegion:{v8, (*(*a1 + 264))(), v6, v6}];
  [v7 setShowsBuildings:1];
  [v7 _setAllowsSimultaneousLightDarkSnapshots:1];
  if ((a2 - 2) > 8u)
  {
    v10 = 300.0;
    v11 = 300.0;
  }

  else
  {
    v9 = (a2 - 2);
    v10 = dbl_1002A7A88[v9];
    v11 = dbl_1002A7AD0[v9];
  }

  [v7 setSize:{v10, v11}];
  return v7;
}

uint64_t sub_1000E5490()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E5584@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000E55E0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x80);

  return v4(v2, v3);
}

uint64_t sub_1000E5658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1000E571C()
{

  return _swift_deallocObject(v0, 56, 7);
}

void partial apply for closure #1 in closure #2 in MOSuggestionAssetMapSnapshotProvider.getRouteMapFor(_:size:completion:)()
{
  v1 = *(v0 + 40);
  specialized static MOSuggestionAssetMapSnapshotProvider.routeImage(locations:size:lineWidth:snapshot:)(*(v0 + 16), *(v0 + 32), 3.0);
  v3 = v2;
  v1();
}

id partial apply for closure #1 in static MOSuggestionAssetMapSnapshotProvider.routeImage(locations:size:lineWidth:snapshot:)(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = MKCoordinateForMapPoint(*&a1);

  return [v3 pointForCoordinate:{v4.latitude, v4.longitude}];
}

uint64_t objectdestroy_2Tm_0()
{

  return _swift_deallocObject(v0, 48, 7);
}

void *MOSuggestionActivityRouteAssetView.__allocating_init(routeMap:name:assignedTileSize:frame:calories:duration:distance:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = objc_allocWithZone(v13);
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink] = v30;
  v31 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.exerciseNameLabel();
  *&v23[v31] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.workoutDataLabel();
  *&v23[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack;
  v36 = [objc_allocWithZone(UIStackView) init];
  [v36 setAxis:1];
  [v36 setDistribution:4];
  [v36 setAlignment:1];
  [v36 setSpacing:2.0];
  *&v23[v35] = v36;
  *&v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_routeMap] = a1;
  v37 = &v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_name];
  *v37 = a2;
  v37[1] = a3;
  v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize] = a4;
  *&v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_duration] = a13;
  v38 = &v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_calories];
  *v38 = a5;
  v38[1] = a6;
  v39 = &v23[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
  *v39 = a7;
  v39[1] = a8;
  v49.receiver = v23;
  v49.super_class = v13;
  v40 = a1;
  v41 = objc_msgSendSuper2(&v49, "initWithFrame:", a9, a10, a11, a12);
  [v41 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002A48B0;
  *(v42 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v42 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v41) + 0xB8))(v43);

  return v41;
}

void closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.exerciseNameLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() whiteColor];
    [v0 setTextColor:v6];

    [v0 setTextAlignment:0];
    [v0 setLineBreakMode:0];
    [v0 setAdjustsFontForContentSizeCategory:1];
    [v0 setNumberOfLines:2];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.workoutDataLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v3 = [v2 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  if (v4)
  {
    v5 = [v1 fontWithDescriptor:v4 size:0.0];

    [v0 setFont:v5];
    v6 = [objc_opt_self() tertiaryLabelColor];
    [v0 setTextColor:v6];

    [v0 setLineBreakMode:0];
    [v0 setTextAlignment:0];
    [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    [v0 setAdjustsFontForContentSizeCategory:1];
  }

  else
  {
    __break(1u);
  }
}

void *MOSuggestionActivityRouteAssetView.init(routeMap:name:assignedTileSize:frame:calories:duration:distance:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v24 = String._bridgeToObjectiveC()();
  v25 = objc_opt_self();
  v26 = [v25 colorNamed:v24];

  if (!v26)
  {
    v26 = [v25 systemBlueColor];
  }

  *&v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 colorNamed:v27];

  if (!v28)
  {
    v28 = [v25 systemYellowColor];
  }

  *&v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow] = v28;
  v29 = String._bridgeToObjectiveC()();
  v30 = [v25 colorNamed:v29];

  if (!v30)
  {
    v30 = [v25 systemPinkColor];
  }

  *&v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink] = v30;
  v31 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.exerciseNameLabel();
  *&v13[v31] = v32;
  v33 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel;
  closure #1 in variable initialization expression of MOSuggestionActivityRouteAssetView.workoutDataLabel();
  *&v13[v33] = v34;
  v35 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack;
  v36 = [objc_allocWithZone(UIStackView) init];
  [v36 setAxis:1];
  [v36 setDistribution:4];
  [v36 setAlignment:1];
  [v36 setSpacing:2.0];
  *&v13[v35] = v36;
  *&v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_routeMap] = a1;
  v37 = &v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_name];
  *v37 = a2;
  v37[1] = a3;
  v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize] = a4;
  *&v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_duration] = a13;
  v38 = &v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_calories];
  *v38 = a5;
  v38[1] = a6;
  v39 = &v13[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
  *v39 = a7;
  v39[1] = a8;
  v48.receiver = v13;
  v48.super_class = type metadata accessor for MOSuggestionActivityRouteAssetView();
  v40 = a1;
  v41 = objc_msgSendSuper2(&v48, "initWithFrame:", a9, a10, a11, a12);
  [v41 setContentMode:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1002A48B0;
  *(v42 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v42 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v41) + 0xB8))(v43);

  return v41;
}

Swift::Void __swiftcall MOSuggestionActivityRouteAssetView.makeUIView()()
{
  v556 = type metadata accessor for CharacterSet();
  v554 = *(v556 - 8);
  __chkstk_darwin(v556);
  v553 = &v540 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v0 setBackgroundColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_exerciseNameLabel];
  v7 = String._bridgeToObjectiveC()();
  v552 = v6;
  [v6 setText:v7];

  p_align = &stru_100327FE8.align;
  [v0 frame];
  if (v9 <= 0.0 || ([v0 frame], v10 <= 0.0))
  {
    [v0 frame];
    [v0 setFrame:?];
  }

  v11 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_workoutDataLabel;
  [v0 frame];
  Width = CGRectGetWidth(v609);
  v13 = *&v0[v11];
  v14 = [v13 font];
  if (!v14)
  {
    __break(1u);
    goto LABEL_144;
  }

  v15 = v14;
  [v14 pointSize];
  v17 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_So6UIFontCtGMd);
  inited = swift_initStackObject();
  v564 = xmmword_1002A48B0;
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v19 = objc_opt_self();
  v20 = NSFontAttributeName;
  v550 = v19;
  *(inited + 40) = [v19 systemFontOfSize:v17 weight:UIFontWeightBold];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(inited + 32, &_sSo21NSAttributedStringKeya_So6UIFontCtMd);
  aBlock = 0;
  v567 = 0xE000000000000000;
  String.init<A>(_:)();
  v22 = String._bridgeToObjectiveC()();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v21);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v22 boundingRectWithSize:3 options:isa attributes:0 context:{Width, 3.40282347e38}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v610.origin.x = v25;
  v610.origin.y = v27;
  v610.size.width = v29;
  v610.size.height = v31;
  Height = CGRectGetHeight(v610);
  v33 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_calories + 8];
  v561 = *&v0[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_calories];
  v562 = v33;
  v572 = 0;
  v573 = 0xE000000000000000;
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v34 = static MOSuggestionAssetWorkoutProvider.queue;
  v35 = swift_allocObject();
  *(v35 + 16) = &v572;
  *(v35 + 24) = v0;
  v36 = swift_allocObject();
  v37 = v36;
  *(v36 + 16) = partial apply for closure #1 in MOSuggestionActivityRouteAssetView.makeUIView();
  *(v36 + 24) = v35;
  v558 = v35;
  v570 = partial apply for thunk for @callee_guaranteed () -> ();
  v571 = v36;
  aBlock = _NSConcreteStackBlock;
  v567 = 1107296256;
  v568 = thunk for @escaping @callee_guaranteed () -> ();
  v569 = &block_descriptor_16;
  v38 = _Block_copy(&aBlock);
  v39 = v571;
  v565 = v0;

  dispatch_sync(v34, v38);
  _Block_release(v38);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_142:
    swift_once();
    goto LABEL_43;
  }

  v41 = [v4 systemWhiteColor];
  [v13 setTextColor:v41];

  v42 = v565;
  [v565 frame];
  v44 = (v43 + -16.0) * 0.5;
  v25 = v44 + v44;
  v34 = objc_opt_self();
  v38 = &stru_100327FE8.align;
  v563 = [v34 bezierPathWithRoundedRect:8.0 cornerRadius:8.0, v44 + v44, v44 + v44, v44];
  v45 = [objc_allocWithZone(UIImageView) initWithImage:*&v42[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_routeMap]];
  v46 = [objc_allocWithZone(UIView) init];
  v39 = v45;
  [v42 addSubview:v39];
  v557 = v46;
  [v42 addSubview:v46];
  v37 = v42[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize];
  *&v47 = 200.0;
  v27 = 300.0;
  if (v37 > 5)
  {
    if ((v37 - 9) < 2)
    {
      goto LABEL_17;
    }

    if (v37 == 6)
    {
      v27 = 400.0;
      goto LABEL_36;
    }

    if (v37 == 7)
    {
      v29 = 100.0;
      v27 = 400.0;
LABEL_29:
      *&v50 = 100.0;
LABEL_37:
      v48 = *&v50;
      *&v47 = 400.0;
      goto LABEL_38;
    }
  }

  else
  {
    if (v42[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize] <= 3u)
    {
      if (v37 == 2)
      {
        *&v47 = 100.0;
        v48 = 100.0;
        v27 = 100.0;
        v29 = 100.0;
        goto LABEL_38;
      }

      if (v37 != 3)
      {
        goto LABEL_18;
      }

LABEL_17:
      v27 = 50.0;
      goto LABEL_18;
    }

    if (v37 == 4)
    {
      v48 = 98.0;
      v27 = 200.0;
      v29 = 98.0;
      goto LABEL_38;
    }

    if (v37 == 5)
    {
      goto LABEL_25;
    }
  }

LABEL_18:
  v48 = 300.0;
  if (v42[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_assignedTileSize] > 5u)
  {
    if ((v37 - 9) < 2)
    {
      goto LABEL_30;
    }

    if (v37 != 6)
    {
      v29 = v27;
      v49 = 300.0;
      if (v37 != 7)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    *&v47 = v27;
LABEL_36:
    v29 = *&v47;
    *&v50 = 200.0;
    goto LABEL_37;
  }

  if (v37 == 3)
  {
LABEL_30:
    v48 = 50.0;
    v29 = v27;
    v49 = 50.0;
    goto LABEL_39;
  }

  if (v37 == 4)
  {
    v48 = 98.0;
    *&v47 = 200.0;
    v29 = v27;
    goto LABEL_38;
  }

  *&v47 = v27;
  v29 = v27;
  v49 = 300.0;
  if (v37 == 5)
  {
LABEL_25:
    v27 = *&v47;
    *&v47 = 200.0;
    v48 = 200.0;
    v29 = v27;
LABEL_38:
    v49 = *&v47;
  }

LABEL_39:
  v2 = 1.0 / (v48 / v49);
  v51 = v565;
  [v565 frame];
  v52 = CGRectGetWidth(v611);
  [v51 frame];
  v1 = v52 / CGRectGetHeight(v612);
  [v51 frame];
  if (v1 >= v2)
  {
    v27 = CGRectGetWidth(*&v53);
    v57 = 1;
  }

  else
  {
    v29 = CGRectGetHeight(*&v53);
    v57 = 2;
  }

  v559 = v20;
  v555 = v13;
  [v39 setContentMode:v57];

  if (one-time initialization token for assets != -1)
  {
    goto LABEL_142;
  }

LABEL_43:
  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static MOAngelLogger.assets);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 67109632;
    *(v61 + 4) = v1 < v2;
    *(v61 + 8) = 2048;
    *(v61 + 10) = v2;
    *(v61 + 18) = 2048;
    *(v61 + 20) = v1;
    _os_log_impl(&_mh_execute_header, v59, v60, "[MOSuggestionActivityRouteAssetView] isElongated=%{BOOL}d, assignedRatio=%f, frameRatio=%f", v61, 0x1Cu);
  }

  v560 = v39;
  if (v37 > 4)
  {
    if ((v37 - 6) < 2)
    {
      v551 = v34;
      v108 = [v39 superview];
      if (v108)
      {
        v109 = v108;
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        v110 = [v39 leadingAnchor];
        v111 = [v109 leadingAnchor];
        v112 = [v110 constraintEqualToAnchor:v111];

        [v112 setConstant:0.0];
        if (v112)
        {
          [v112 setActive:1];
        }
      }

      v113 = [v39 superview];
      if (v113)
      {
        v114 = v113;
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        v115 = [v39 centerYAnchor];
        v116 = [v114 centerYAnchor];
        v117 = [v115 constraintEqualToAnchor:v116];

        [v117 setConstant:0.0];
        if (v117)
        {
          [v117 setActive:1];
        }
      }

      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v118 = [v39 widthAnchor];
      v119 = [v118 constraintEqualToConstant:v27];

      [v119 setActive:1];
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v120 = [v39 heightAnchor];
      v121 = [v120 constraintEqualToConstant:v29];

      [v121 setActive:1];
      v122 = v565;
      (*((swift_isaMask & *v565) + 0xC0))();
      v550 = objc_opt_self();
      v123 = [v550 mainBundle];
      v580._object = 0x80000001002B54C0;
      v124._object = 0xAE00402520B7C220;
      v580._countAndFlagsBits = 0xD00000000000002CLL;
      v124._countAndFlagsBits = 0x402520B7C2204025;
      v125._countAndFlagsBits = 0;
      v125._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v124, 0, v123, v125, v580);

      v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_1002A55C0;
      v127 = &v122[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
      v128 = *&v122[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
      v129 = *(v127 + 1);
      *(v126 + 56) = &type metadata for String;
      v130 = lazy protocol witness table accessor for type String and conformance String();
      *(v126 + 32) = v128;
      *(v126 + 40) = v129;
      v131 = v572;
      v132 = v573;
      *(v126 + 96) = &type metadata for String;
      *(v126 + 104) = v130;
      *(v126 + 64) = v130;
      *(v126 + 72) = v131;
      *(v126 + 80) = v132;
      *(v126 + 136) = &type metadata for String;
      *(v126 + 144) = v130;
      v549 = v130;
      v133 = v561;
      v134 = v562;
      *(v126 + 112) = v561;
      *(v126 + 120) = v134;
      swift_bridgeObjectRetain_n();

      static String.localizedStringWithFormat(_:_:)();

      v135 = HIBYTE(v129) & 0xF;
      v546 = v128;
      v545 = v129;
      if ((v129 & 0x2000000000000000) == 0)
      {
        v135 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (!v135)
      {

        if ((v134 & 0x2000000000000000) != 0)
        {
          v136 = HIBYTE(v134) & 0xF;
        }

        else
        {
          v136 = v133 & 0xFFFFFFFFFFFFLL;
        }

        v137 = [v550 mainBundle];
        if (v136)
        {
          v138 = v134;
          v139 = v133;
          v581._object = 0x80000001002B55A0;
          v581._countAndFlagsBits = 0xD000000000000021;
          v140._countAndFlagsBits = 0x402520B7C2204025;
          v140._object = 0xA800000000000000;
          v141._countAndFlagsBits = 0;
          v141._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v140, 0, v137, v141, v581);

          v142 = swift_allocObject();
          *(v142 + 16) = xmmword_1002A4A00;
          v143 = v572;
          v144 = v573;
          v145 = v549;
          *(v142 + 56) = &type metadata for String;
          *(v142 + 64) = v145;
          *(v142 + 32) = v143;
          *(v142 + 40) = v144;
          *(v142 + 96) = &type metadata for String;
          *(v142 + 104) = v145;
          *(v142 + 72) = v139;
          *(v142 + 80) = v138;
        }

        else
        {
          v590._object = 0x80000001002B5580;
          v590._countAndFlagsBits = 0xD000000000000014;
          v283._countAndFlagsBits = 16421;
          v283._object = 0xE200000000000000;
          v284._countAndFlagsBits = 0;
          v284._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v283, 0, v137, v284, v590);

          v285 = swift_allocObject();
          *(v285 + 16) = v564;
          v287 = v572;
          v286 = v573;
          v288 = v549;
          *(v285 + 56) = &type metadata for String;
          *(v285 + 64) = v288;
          *(v285 + 32) = v287;
          *(v285 + 40) = v286;
        }

        static String.localizedStringWithFormat(_:_:)();
      }

      v289 = v550;
      v290 = objc_allocWithZone(NSMutableAttributedString);
      v291 = String._bridgeToObjectiveC()();

      v292 = [v290 initWithString:v291];

      v543 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue];
      v544 = 0x80000001002B54F0;
      v293 = [v289 mainBundle];
      v591._object = 0x80000001002B54F0;
      v294._countAndFlagsBits = 16421;
      v294._object = 0xE200000000000000;
      v295._countAndFlagsBits = 0;
      v295._object = 0xE000000000000000;
      v591._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v294, 0, v293, v295, v591);

      v296 = swift_allocObject();
      *(v296 + 16) = v564;
      v297 = v549;
      *(v296 + 56) = &type metadata for String;
      *(v296 + 64) = v297;
      v298 = v545;
      *(v296 + 32) = v546;
      *(v296 + 40) = v298;
      static String.localizedStringWithFormat(_:_:)();

      *&v548 = v292;
      v299 = [v292 mutableString];
      v300 = String._bridgeToObjectiveC()();

      [v299 rangeOfString:v300 options:1];

      v542 = NSForegroundColorAttributeName;
      [v292 addAttribute:? value:? range:?];
      v301 = v565;
      v543 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow];
      v302 = [v289 mainBundle];
      v592._object = 0x80000001002B5510;
      v303._countAndFlagsBits = 16421;
      v303._object = 0xE200000000000000;
      v304._countAndFlagsBits = 0;
      v304._object = 0xE000000000000000;
      v592._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v303, 0, v302, v304, v592);

      v305 = swift_allocObject();
      *(v305 + 16) = v564;
      v307 = v572;
      v306 = v573;
      *(v305 + 56) = &type metadata for String;
      *(v305 + 64) = v297;
      v308 = v297;
      *(v305 + 32) = v307;
      *(v305 + 40) = v306;

      static String.localizedStringWithFormat(_:_:)();

      v309 = v548;
      v310 = [v548 mutableString];
      v311 = String._bridgeToObjectiveC()();

      v312 = [v310 rangeOfString:v311 options:1];
      v314 = v313;

      [v309 addAttribute:NSForegroundColorAttributeName value:v543 range:{v312, v314}];
      v541 = *&v301[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink];
      v543 = 0x80000001002B5530;
      v315 = v550;
      v316 = [v550 mainBundle];
      v593._object = 0x80000001002B5530;
      v317._countAndFlagsBits = 16421;
      v317._object = 0xE200000000000000;
      v318._countAndFlagsBits = 0;
      v318._object = 0xE000000000000000;
      v593._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v317, 0, v316, v318, v593);

      v319 = swift_allocObject();
      *(v319 + 16) = v564;
      *(v319 + 56) = &type metadata for String;
      *(v319 + 64) = v308;
      *(v319 + 32) = v561;
      *(v319 + 40) = v562;

      static String.localizedStringWithFormat(_:_:)();

      v320 = v548;
      v321 = [v548 mutableString];
      v322 = String._bridgeToObjectiveC()();

      v323 = [v321 rangeOfString:v322 options:1];
      v325 = v324;

      [v320 addAttribute:v542 value:v541 range:{v323, v325}];
      v542 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v326 = [v315 mainBundle];
      v594._object = v544;
      v327._countAndFlagsBits = 16421;
      v327._object = 0xE200000000000000;
      v328._countAndFlagsBits = 0;
      v328._object = 0xE000000000000000;
      v594._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v327, 0, v326, v328, v594);

      v329 = swift_allocObject();
      *(v329 + 16) = v564;
      aBlock = v546;
      v567 = v545;
      v330 = v553;
      CharacterSet.init(charactersIn:)();
      v546 = lazy protocol witness table accessor for type String and conformance String();
      v331 = StringProtocol.trimmingCharacters(in:)();
      v333 = v332;
      v554 = *(v554 + 8);
      (v554)(v330, v556);
      v334 = v549;
      *(v329 + 56) = &type metadata for String;
      *(v329 + 64) = v334;
      *(v329 + 32) = v331;
      *(v329 + 40) = v333;
      static String.localizedStringWithFormat(_:_:)();

      v335 = [v320 mutableString];
      v336 = String._bridgeToObjectiveC()();

      v337 = [v335 rangeOfString:v336 options:1];
      v339 = v338;

      v340 = v542;
      [v320 addAttribute:v559 value:v542 range:{v337, v339}];

      v341 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v342 = [v550 mainBundle];
      v595._object = v543;
      v343._countAndFlagsBits = 16421;
      v343._object = 0xE200000000000000;
      v344._countAndFlagsBits = 0;
      v344._object = 0xE000000000000000;
      v595._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v343, 0, v342, v344, v595);

      v345 = swift_allocObject();
      *(v345 + 16) = v564;
      aBlock = v561;
      v567 = v562;
      CharacterSet.init(charactersIn:)();
      v346 = StringProtocol.trimmingCharacters(in:)();
      v348 = v347;
      v349 = v330;
      v350 = v565;
      (v554)(v349, v556);
      v351 = v549;
      *(v345 + 56) = &type metadata for String;
      *(v345 + 64) = v351;
      *(v345 + 32) = v346;
      *(v345 + 40) = v348;
      static String.localizedStringWithFormat(_:_:)();

      v352 = [v320 mutableString];
      v353 = String._bridgeToObjectiveC()();

      v354 = [v352 rangeOfString:v353 options:1];
      v356 = v355;

      [v320 addAttribute:v559 value:v341 range:{v354, v356}];
      v357 = v555;
      [v555 setAttributedText:v320];
      v358 = *&v350[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack];
      [v358 addArrangedSubview:v552];
      [v358 addArrangedSubview:v357];
      [v350 addSubview:v358];
      v359 = [v358 superview];
      if (v359)
      {
        v360 = v359;
        [v358 setTranslatesAutoresizingMaskIntoConstraints:0];
        v361 = [v358 leadingAnchor];
        v362 = [v360 leadingAnchor];
        v363 = [v361 constraintEqualToAnchor:v362];

        [v363 setConstant:v25 + 24.0];
        [v363 setActive:1];
      }

      v364 = [v358 superview];
      p_align = (&stru_100327FE8 + 24);
      v39 = v560;
      if (v364)
      {
        v365 = v364;
        [v358 setTranslatesAutoresizingMaskIntoConstraints:0];
        v366 = [v358 trailingAnchor];
        v367 = [v365 trailingAnchor];
        v368 = [v366 constraintEqualToAnchor:v367];

        [v368 setConstant:-12.0];
        [v368 setActive:1];
      }

      v369 = [v358 superview];
      if (v369)
      {
        v258 = v369;
        [v358 setTranslatesAutoresizingMaskIntoConstraints:0];
        v370 = [v358 centerYAnchor];
        v371 = [v258 centerYAnchor];
        v261 = [v370 constraintEqualToAnchor:v371];

        [v261 setConstant:0.0];
        v38 = (&stru_100327FE8 + 24);
        if (v261)
        {
          [v261 setActive:1];
          v262 = v575;
          goto LABEL_122;
        }

        v264 = v575;
LABEL_126:

        goto LABEL_127;
      }

      v263 = v575;
      goto LABEL_124;
    }

    if (v37 != 8)
    {
      if (v37 != 5)
      {
        goto LABEL_135;
      }

      v89 = ceil(Height) + 12.0 + 5.0;
      v90 = v565;
      [v565 frame];
      v92 = v38[451];
      v551 = v34;
      v93 = (v91 - (v89 + v89)) * 0.5 + (v91 - (v89 + v89)) * 0.5;
      v549 = [v34 v92];

      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

      (*((swift_isaMask & *v90) + 0xC0))(v94);
      v95 = objc_opt_self();
      v96 = [v95 mainBundle];
      v579._object = 0x80000001002B5610;
      v579._countAndFlagsBits = 0xD000000000000021;
      v97._countAndFlagsBits = 0x402520B7C2204025;
      v97._object = 0xA800000000000000;
      v98._countAndFlagsBits = 0;
      v98._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v579);

      v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v99 = swift_allocObject();
      v548 = xmmword_1002A4A00;
      *(v99 + 16) = xmmword_1002A4A00;
      v100 = v90 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance;
      v102 = *(v90 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance);
      v101 = *(v100 + 1);
      *(v99 + 56) = &type metadata for String;
      v103 = lazy protocol witness table accessor for type String and conformance String();
      *(v99 + 32) = v102;
      *(v99 + 40) = v101;
      v104 = v572;
      v105 = v573;
      *(v99 + 96) = &type metadata for String;
      *(v99 + 104) = v103;
      v563 = v103;
      *(v99 + 64) = v103;
      *(v99 + 72) = v104;
      *(v99 + 80) = v105;
      swift_bridgeObjectRetain_n();

      static String.localizedStringWithFormat(_:_:)();

      v106 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v106 = v102 & 0xFFFFFFFFFFFFLL;
      }

      v550 = v101;
      if (v106)
      {
        v107 = v95;
      }

      else
      {

        v265 = v562;
        v266 = v561;
        if ((v562 & 0x2000000000000000) != 0)
        {
          v267 = HIBYTE(v562) & 0xF;
        }

        else
        {
          v267 = v561 & 0xFFFFFFFFFFFFLL;
        }

        v268 = [v95 mainBundle];
        v107 = v95;
        if (v267)
        {
          v588._object = 0x80000001002B5550;
          v588._countAndFlagsBits = 0xD000000000000021;
          v269._countAndFlagsBits = 0x402520B7C2204025;
          v269._object = 0xA800000000000000;
          v270._countAndFlagsBits = 0;
          v270._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v269, 0, v268, v270, v588);

          v271 = swift_allocObject();
          *(v271 + 16) = v548;
          v272 = v563;
          *(v271 + 56) = &type metadata for String;
          *(v271 + 64) = v272;
          *(v271 + 32) = v266;
          *(v271 + 40) = v265;
          v273 = v572;
          v274 = v573;
          *(v271 + 96) = &type metadata for String;
          *(v271 + 104) = v272;
          *(v271 + 72) = v273;
          *(v271 + 80) = v274;

          v107 = v95;
        }

        else
        {
          v596._object = 0x80000001002B5580;
          v596._countAndFlagsBits = 0xD000000000000014;
          v372._countAndFlagsBits = 16421;
          v372._object = 0xE200000000000000;
          v373._countAndFlagsBits = 0;
          v373._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v372, 0, v268, v373, v596);

          v374 = swift_allocObject();
          *(v374 + 16) = v564;
          v376 = v572;
          v375 = v573;
          v377 = v563;
          *(v374 + 56) = &type metadata for String;
          *(v374 + 64) = v377;
          *(v374 + 32) = v376;
          *(v374 + 40) = v375;
        }

        static String.localizedStringWithFormat(_:_:)();
      }

      v378 = objc_allocWithZone(NSMutableAttributedString);
      v379 = String._bridgeToObjectiveC()();

      v380 = [v378 initWithString:v379];

      v381 = v565;
      v546 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue];
      *&v548 = 0x80000001002B54F0;
      v382 = [v107 mainBundle];
      v597._object = 0x80000001002B54F0;
      v383._countAndFlagsBits = 16421;
      v383._object = 0xE200000000000000;
      v384._countAndFlagsBits = 0;
      v384._object = 0xE000000000000000;
      v597._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v383, 0, v382, v384, v597);

      v385 = swift_allocObject();
      *(v385 + 16) = v564;
      v386 = v563;
      *(v385 + 56) = &type metadata for String;
      *(v385 + 64) = v386;
      v547 = v102;
      v387 = v550;
      *(v385 + 32) = v102;
      *(v385 + 40) = v387;
      static String.localizedStringWithFormat(_:_:)();

      v388 = v380;
      v542 = v380;
      v389 = [v380 mutableString];
      v390 = String._bridgeToObjectiveC()();

      v391 = [v389 rangeOfString:v390 options:1];
      v393 = v392;

      v544 = NSForegroundColorAttributeName;
      [v388 addAttribute:NSForegroundColorAttributeName value:v546 range:{v391, v393}];
      v546 = *&v381[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow];
      v394 = [v107 mainBundle];
      v598._object = 0x80000001002B5510;
      v395._countAndFlagsBits = 16421;
      v395._object = 0xE200000000000000;
      v396._countAndFlagsBits = 0;
      v396._object = 0xE000000000000000;
      v598._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v395, 0, v394, v396, v598);

      v397 = swift_allocObject();
      *(v397 + 16) = v564;
      v399 = v572;
      v398 = v573;
      v400 = v563;
      *(v397 + 56) = &type metadata for String;
      *(v397 + 64) = v400;
      *(v397 + 32) = v399;
      *(v397 + 40) = v398;

      static String.localizedStringWithFormat(_:_:)();

      v401 = v542;
      v402 = [v542 mutableString];
      v403 = String._bridgeToObjectiveC()();

      v404 = [v402 rangeOfString:v403 options:1];
      v406 = v405;

      [v401 addAttribute:NSForegroundColorAttributeName value:v546 range:{v404, v406}];
      v543 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink];
      v546 = 0x80000001002B5530;
      v545 = v107;
      v407 = [v107 mainBundle];
      v599._object = 0x80000001002B5530;
      v408._countAndFlagsBits = 16421;
      v408._object = 0xE200000000000000;
      v409._countAndFlagsBits = 0;
      v409._object = 0xE000000000000000;
      v599._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v408, 0, v407, v409, v599);

      v410 = swift_allocObject();
      *(v410 + 16) = v564;
      *(v410 + 56) = &type metadata for String;
      *(v410 + 64) = v400;
      *(v410 + 32) = v561;
      *(v410 + 40) = v562;

      static String.localizedStringWithFormat(_:_:)();

      v411 = [v401 mutableString];
      v412 = String._bridgeToObjectiveC()();

      v413 = [v411 rangeOfString:v412 options:1];
      v415 = v414;

      [v401 addAttribute:v544 value:v543 range:{v413, v415}];
      v416 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v417 = [v107 mainBundle];
      v600._object = v548;
      v418._countAndFlagsBits = 16421;
      v418._object = 0xE200000000000000;
      v419._countAndFlagsBits = 0;
      v419._object = 0xE000000000000000;
      v600._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v418, 0, v417, v419, v600);

      v420 = swift_allocObject();
      *(v420 + 16) = v564;
      aBlock = v547;
      v567 = v550;
      v421 = v553;
      CharacterSet.init(charactersIn:)();
      v550 = lazy protocol witness table accessor for type String and conformance String();
      v422 = StringProtocol.trimmingCharacters(in:)();
      v424 = v423;
      v554 = *(v554 + 8);
      (v554)(v421, v556);
      v425 = v563;
      *(v420 + 56) = &type metadata for String;
      *(v420 + 64) = v425;
      *(v420 + 32) = v422;
      *(v420 + 40) = v424;
      static String.localizedStringWithFormat(_:_:)();

      v426 = [v401 mutableString];
      v427 = String._bridgeToObjectiveC()();

      v428 = [v426 rangeOfString:v427 options:1];
      v430 = v429;

      [v401 addAttribute:v559 value:v416 range:{v428, v430}];
      v431 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v432 = [v545 mainBundle];
      v601._object = v546;
      v433._countAndFlagsBits = 16421;
      v433._object = 0xE200000000000000;
      v434._countAndFlagsBits = 0;
      v434._object = 0xE000000000000000;
      v601._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v433, 0, v432, v434, v601);

      v435 = swift_allocObject();
      *(v435 + 16) = v564;
      aBlock = v561;
      v567 = v562;
      CharacterSet.init(charactersIn:)();
      v436 = StringProtocol.trimmingCharacters(in:)();
      v438 = v437;
      (v554)(v421, v556);
      v439 = v563;
      *(v435 + 56) = &type metadata for String;
      *(v435 + 64) = v439;
      *(v435 + 32) = v436;
      *(v435 + 40) = v438;
      static String.localizedStringWithFormat(_:_:)();

      v440 = [v401 mutableString];
      v441 = String._bridgeToObjectiveC()();

      v442 = [v440 rangeOfString:v441 options:1];
      v444 = v443;

      [v401 addAttribute:v559 value:v431 range:{v442, v444}];
      [v555 setAttributedText:v401];

      v445 = &v576;
LABEL_134:
      v563 = *(v445 - 32);
      p_align = &stru_100327FE8.align;
      v39 = v560;
      v34 = v551;
      v38 = &stru_100327FE8.align;
      goto LABEL_135;
    }

    v551 = v34;
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v149 = [objc_allocWithZone(UILabel) init];
    [v565 frame];
    v150 = CGRectGetWidth(v613);
    v151 = v550;
    v152 = [v550 preferredFontForTextStyle:UIFontTextStyleBody];
    v153 = [v152 fontDescriptor];
    v154 = [v153 fontDescriptorWithSymbolicTraits:2];

    if (v154)
    {
      v155 = [v151 fontWithDescriptor:v154 size:0.0];

      v156 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, v155, v150);
      v157 = v156 + 12.0 + 5.0;
      v158 = v565;
      [v565 frame];
      v160 = (v159 - (v157 + v157)) * 0.5 + (v159 - (v157 + v157)) * 0.5;
      v161 = [v551 bezierPathWithRoundedRect:v157 cornerRadius:v157, v160, v160];

      (*((swift_isaMask & *v158) + 0xC0))();
      v162 = [v151 preferredFontForTextStyle:UIFontTextStyleBody];
      v163 = [v162 fontDescriptor];
      v164 = [v163 fontDescriptorWithSymbolicTraits:2];

      if (v164)
      {
        v547 = v161;
        v165 = [v151 fontWithDescriptor:v164 size:0.0];

        [v552 setFont:v165];
        v166 = [v151 preferredFontForTextStyle:UIFontTextStyleBody];
        v167 = [v166 fontDescriptor];
        v168 = [v167 fontDescriptorWithSymbolicTraits:2];

        if (v168)
        {
          v169 = [v151 fontWithDescriptor:v168 size:0.0];

          [v555 setFont:v169];
          v170 = objc_opt_self();
          v171 = [v170 mainBundle];
          v582._object = 0x80000001002B54C0;
          v172._object = 0xAE00402520B7C220;
          v582._countAndFlagsBits = 0xD00000000000002CLL;
          v172._countAndFlagsBits = 0x402520B7C2204025;
          v173._countAndFlagsBits = 0;
          v173._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v172, 0, v171, v173, v582);

          v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v174 = swift_allocObject();
          *(v174 + 16) = xmmword_1002A55C0;
          v176 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
          v175 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance + 8];
          *(v174 + 56) = &type metadata for String;
          v177 = lazy protocol witness table accessor for type String and conformance String();
          *(v174 + 32) = v176;
          *(v174 + 40) = v175;
          v178 = v572;
          v179 = v573;
          *(v174 + 96) = &type metadata for String;
          *(v174 + 104) = v177;
          *(v174 + 64) = v177;
          *(v174 + 72) = v178;
          *(v174 + 80) = v179;
          *(v174 + 136) = &type metadata for String;
          *(v174 + 144) = v177;
          v563 = v177;
          v180 = v561;
          v181 = v562;
          *(v174 + 112) = v561;
          *(v174 + 120) = v181;
          swift_bridgeObjectRetain_n();

          static String.localizedStringWithFormat(_:_:)();

          v182 = (v175 >> 56) & 0xF;
          v550 = v176;
          v549 = v175;
          if ((v175 & 0x2000000000000000) == 0)
          {
            v182 = v176 & 0xFFFFFFFFFFFFLL;
          }

          *&v548 = v170;
          if (v182)
          {
            v183 = v170;
            v184 = v550;
          }

          else
          {

            if ((v181 & 0x2000000000000000) != 0)
            {
              v275 = HIBYTE(v181) & 0xF;
            }

            else
            {
              v275 = v180 & 0xFFFFFFFFFFFFLL;
            }

            v276 = [v170 mainBundle];
            if (v275)
            {
              v589._object = 0x80000001002B5550;
              v589._countAndFlagsBits = 0xD000000000000021;
              v277._countAndFlagsBits = 0x402520B7C2204025;
              v277._object = 0xA800000000000000;
              v278._countAndFlagsBits = 0;
              v278._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v277, 0, v276, v278, v589);

              v279 = swift_allocObject();
              *(v279 + 16) = xmmword_1002A4A00;
              v280 = v563;
              *(v279 + 56) = &type metadata for String;
              *(v279 + 64) = v280;
              *(v279 + 32) = v180;
              *(v279 + 40) = v181;
              v281 = v572;
              v282 = v573;
              *(v279 + 96) = &type metadata for String;
              *(v279 + 104) = v280;
              *(v279 + 72) = v281;
              *(v279 + 80) = v282;
            }

            else
            {
              v602._object = 0x80000001002B5580;
              v602._countAndFlagsBits = 0xD000000000000014;
              v446._countAndFlagsBits = 16421;
              v446._object = 0xE200000000000000;
              v447._countAndFlagsBits = 0;
              v447._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v446, 0, v276, v447, v602);

              v448 = swift_allocObject();
              *(v448 + 16) = v564;
              v450 = v572;
              v449 = v573;
              v451 = v563;
              *(v448 + 56) = &type metadata for String;
              *(v448 + 64) = v451;
              *(v448 + 32) = v450;
              *(v448 + 40) = v449;
            }

            static String.localizedStringWithFormat(_:_:)();
            v184 = v550;

            v183 = v548;
          }

          v452 = objc_allocWithZone(NSMutableAttributedString);
          v453 = String._bridgeToObjectiveC()();

          v454 = [v452 initWithString:v453];

          v545 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue];
          v546 = 0x80000001002B54F0;
          v455 = [v183 mainBundle];
          v603._object = 0x80000001002B54F0;
          v456._countAndFlagsBits = 16421;
          v456._object = 0xE200000000000000;
          v457._countAndFlagsBits = 0;
          v457._object = 0xE000000000000000;
          v603._countAndFlagsBits = 0xD000000000000010;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v456, 0, v455, v457, v603);

          v458 = swift_allocObject();
          *(v458 + 16) = v564;
          v459 = v563;
          *(v458 + 56) = &type metadata for String;
          *(v458 + 64) = v459;
          v460 = v183;
          v461 = v459;
          v462 = v549;
          *(v458 + 32) = v184;
          *(v458 + 40) = v462;
          static String.localizedStringWithFormat(_:_:)();

          v463 = [v454 mutableString];
          v464 = String._bridgeToObjectiveC()();

          v465 = [v463 rangeOfString:v464 options:1];
          v467 = v466;

          [v454 addAttribute:NSForegroundColorAttributeName value:v545 range:{v465, v467}];
          v468 = v565;
          v545 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_timeYellow];
          v469 = [v460 mainBundle];
          v604._object = 0x80000001002B5510;
          v470._countAndFlagsBits = 16421;
          v470._object = 0xE200000000000000;
          v471._countAndFlagsBits = 0;
          v471._object = 0xE000000000000000;
          v604._countAndFlagsBits = 0xD000000000000010;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v470, 0, v469, v471, v604);

          v472 = swift_allocObject();
          *(v472 + 16) = v564;
          v474 = v572;
          v473 = v573;
          *(v472 + 56) = &type metadata for String;
          *(v472 + 64) = v461;
          *(v472 + 32) = v474;
          *(v472 + 40) = v473;

          static String.localizedStringWithFormat(_:_:)();

          v475 = [v454 mutableString];
          v476 = String._bridgeToObjectiveC()();

          v477 = [v475 rangeOfString:v476 options:1];
          v479 = v478;

          [v454 addAttribute:NSForegroundColorAttributeName value:v545 range:{v477, v479}];
          v544 = *&v468[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink];
          v545 = 0x80000001002B5530;
          v480 = [v460 mainBundle];
          v605._object = 0x80000001002B5530;
          v481._countAndFlagsBits = 16421;
          v481._object = 0xE200000000000000;
          v482._countAndFlagsBits = 0;
          v482._object = 0xE000000000000000;
          v605._countAndFlagsBits = 0xD000000000000010;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v481, 0, v480, v482, v605);

          v483 = swift_allocObject();
          *(v483 + 16) = v564;
          *(v483 + 56) = &type metadata for String;
          *(v483 + 64) = v461;
          *(v483 + 32) = v561;
          *(v483 + 40) = v562;

          static String.localizedStringWithFormat(_:_:)();

          v484 = [v454 mutableString];
          v485 = String._bridgeToObjectiveC()();

          v486 = [v484 rangeOfString:v485 options:1];
          v488 = v487;

          [v454 addAttribute:NSForegroundColorAttributeName value:v544 range:{v486, v488}];
          v489 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
          v490 = [v460 mainBundle];
          v606._object = v546;
          v491._countAndFlagsBits = 16421;
          v491._object = 0xE200000000000000;
          v492._countAndFlagsBits = 0;
          v492._object = 0xE000000000000000;
          v606._countAndFlagsBits = 0xD000000000000010;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v491, 0, v490, v492, v606);

          v493 = swift_allocObject();
          *(v493 + 16) = v564;
          aBlock = v550;
          v567 = v549;
          v494 = v553;
          CharacterSet.init(charactersIn:)();
          v550 = lazy protocol witness table accessor for type String and conformance String();
          v495 = StringProtocol.trimmingCharacters(in:)();
          v497 = v496;
          v554 = *(v554 + 8);
          (v554)(v494, v556);
          v498 = v563;
          *(v493 + 56) = &type metadata for String;
          *(v493 + 64) = v498;
          *(v493 + 32) = v495;
          *(v493 + 40) = v497;
          static String.localizedStringWithFormat(_:_:)();

          v499 = [v454 mutableString];
          v500 = String._bridgeToObjectiveC()();

          v501 = [v499 rangeOfString:v500 options:1];
          v503 = v502;

          [v454 addAttribute:v559 value:v489 range:{v501, v503}];
          v504 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
          v505 = [v548 mainBundle];
          v607._object = v545;
          v506._countAndFlagsBits = 16421;
          v506._object = 0xE200000000000000;
          v507._countAndFlagsBits = 0;
          v507._object = 0xE000000000000000;
          v607._countAndFlagsBits = 0xD000000000000010;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v506, 0, v505, v507, v607);

          v508 = swift_allocObject();
          *(v508 + 16) = v564;
          aBlock = v561;
          v567 = v562;
          CharacterSet.init(charactersIn:)();
          v509 = StringProtocol.trimmingCharacters(in:)();
          v511 = v510;
          (v554)(v494, v556);
          v512 = v563;
          *(v508 + 56) = &type metadata for String;
          *(v508 + 64) = v512;
          *(v508 + 32) = v509;
          *(v508 + 40) = v511;
          static String.localizedStringWithFormat(_:_:)();

          v513 = [v454 mutableString];
          v514 = String._bridgeToObjectiveC()();

          v515 = [v513 rangeOfString:v514 options:1];
          v517 = v516;

          [v454 addAttribute:v559 value:v504 range:{v515, v517}];
          [v555 setAttributedText:v454];

          v445 = &v574;
          goto LABEL_134;
        }

LABEL_146:
        __break(1u);
        return;
      }

LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  switch(v37)
  {
    case 2:
LABEL_85:
      UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

      break;
    case 3:
      [v565 frame];
      v147 = (v146 + -8.0) * 0.5 + (v146 + -8.0) * 0.5;
      v148 = [v34 v38[451]];

      v563 = v148;
      goto LABEL_85;
    case 4:
      v551 = v34;
      v62 = [v39 superview];
      if (v62)
      {
        v63 = v62;
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        v64 = [v39 leadingAnchor];
        v65 = [v63 leadingAnchor];
        v66 = [v64 constraintEqualToAnchor:v65];

        [v66 setConstant:0.0];
        if (v66)
        {
          [v66 setActive:1];
        }
      }

      v67 = [v39 superview];
      if (v67)
      {
        v68 = v67;
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        v69 = [v39 centerYAnchor];
        v70 = [v68 centerYAnchor];
        v71 = [v69 constraintEqualToAnchor:v70];

        [v71 setConstant:0.0];
        if (v71)
        {
          [v71 setActive:1];
        }
      }

      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v72 = [v39 widthAnchor];
      v73 = [v72 constraintEqualToConstant:v27];

      [v73 setActive:1];
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v74 = [v39 heightAnchor];
      v75 = [v74 constraintEqualToConstant:v29];

      [v75 setActive:1];
      v76 = v565;
      (*((swift_isaMask & *v565) + 0xC0))();
      v77 = objc_opt_self();
      v78 = [v77 mainBundle];
      v578._object = 0x80000001002B55D0;
      v578._countAndFlagsBits = 0xD000000000000018;
      v79._countAndFlagsBits = 16421;
      v79._object = 0xE200000000000000;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v578);

      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v82 = swift_allocObject();
      *(v82 + 16) = v564;
      v84 = *&v76[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance];
      v83 = *&v76[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distance + 8];
      *(v82 + 56) = &type metadata for String;
      v85 = lazy protocol witness table accessor for type String and conformance String();
      *(v82 + 64) = v85;
      *(v82 + 32) = v84;
      *(v82 + 40) = v83;
      swift_bridgeObjectRetain_n();
      static String.localizedStringWithFormat(_:_:)();

      v86 = HIBYTE(v83) & 0xF;
      v549 = v84;
      if ((v83 & 0x2000000000000000) == 0)
      {
        v86 = v84 & 0xFFFFFFFFFFFFLL;
      }

      if (v86)
      {
        v87 = v77;
        v88 = &selRef_isLocationShiftRequiredForCoordinate_;
      }

      else
      {

        v88 = &selRef_isLocationShiftRequiredForCoordinate_;
        v185 = [v77 mainBundle];
        v583._object = 0x80000001002B55F0;
        v583._countAndFlagsBits = 0xD000000000000018;
        v186._countAndFlagsBits = 16421;
        v186._object = 0xE200000000000000;
        v187._countAndFlagsBits = 0;
        v187._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v186, 0, v185, v187, v583);

        v188 = swift_allocObject();
        *(v188 + 16) = v564;
        *(v188 + 56) = &type metadata for String;
        *(v188 + 64) = v85;
        *(v188 + 32) = v561;
        *(v188 + 40) = v562;

        static String.localizedStringWithFormat(_:_:)();

        v87 = v77;
      }

      v189 = objc_allocWithZone(NSMutableAttributedString);
      v190 = String._bridgeToObjectiveC()();

      v191 = [v189 initWithString:v190];

      v547 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_distanceBlue];
      v546 = 0x80000001002B54F0;
      v192 = [v87 v88[233]];
      v584._object = 0x80000001002B54F0;
      v193._countAndFlagsBits = 16421;
      v193._object = 0xE200000000000000;
      v194._countAndFlagsBits = 0;
      v194._object = 0xE000000000000000;
      v584._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v193, 0, v192, v194, v584);
      v195 = v87;

      v196 = swift_allocObject();
      *(v196 + 16) = v564;
      *(v196 + 56) = &type metadata for String;
      *(v196 + 64) = v85;
      *&v548 = v85;
      *(v196 + 32) = v549;
      *(v196 + 40) = v83;
      static String.localizedStringWithFormat(_:_:)();
      v545 = v83;

      v197 = [v191 mutableString];
      v198 = String._bridgeToObjectiveC()();

      v199 = [v197 rangeOfString:v198 options:1];
      v201 = v200;

      [v191 addAttribute:NSForegroundColorAttributeName value:v547 range:{v199, v201}];
      v542 = *&v565[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_movePink];
      v547 = 0x80000001002B5530;
      v544 = v195;
      v202 = [(NSString *)v195 mainBundle];
      v585._object = 0x80000001002B5530;
      v203._countAndFlagsBits = 16421;
      v203._object = 0xE200000000000000;
      v204._countAndFlagsBits = 0;
      v204._object = 0xE000000000000000;
      v585._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v203, 0, v202, v204, v585);

      v205 = swift_allocObject();
      *(v205 + 16) = v564;
      *(v205 + 56) = &type metadata for String;
      *(v205 + 64) = v85;
      *(v205 + 32) = v561;
      *(v205 + 40) = v562;

      static String.localizedStringWithFormat(_:_:)();
      v543 = v81;

      v550 = v191;
      v206 = [v191 mutableString];
      v207 = String._bridgeToObjectiveC()();

      v208 = [v206 rangeOfString:v207 options:1];
      v210 = v209;

      [v191 addAttribute:NSForegroundColorAttributeName value:v542 range:{v208, v210}];
      v211 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v212 = [(NSString *)v195 mainBundle];
      v586._object = v546;
      v213._countAndFlagsBits = 16421;
      v213._object = 0xE200000000000000;
      v214._countAndFlagsBits = 0;
      v214._object = 0xE000000000000000;
      v586._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v213, 0, v212, v214, v586);

      v215 = swift_allocObject();
      *(v215 + 16) = v564;
      aBlock = v549;
      v567 = v545;
      v216 = v553;
      CharacterSet.init(charactersIn:)();
      v549 = lazy protocol witness table accessor for type String and conformance String();
      v217 = StringProtocol.trimmingCharacters(in:)();
      v219 = v218;
      v554 = *(v554 + 8);
      v220 = v556;
      (v554)(v216, v556);
      v221 = v548;
      *(v215 + 56) = &type metadata for String;
      *(v215 + 64) = v221;
      *(v215 + 32) = v217;
      *(v215 + 40) = v219;
      static String.localizedStringWithFormat(_:_:)();

      v222 = v550;
      v223 = [v550 mutableString];
      v224 = String._bridgeToObjectiveC()();

      v225 = [v223 rangeOfString:v224 options:1];
      v227 = v226;

      [v222 addAttribute:v559 value:v211 range:{v225, v227}];
      v228 = specialized static MOSuggestionTheme.Fonts.footnoteEmphFontSmallCaps()();
      v229 = [(NSString *)v544 mainBundle];
      v587._object = v547;
      v230._countAndFlagsBits = 16421;
      v230._object = 0xE200000000000000;
      v231._countAndFlagsBits = 0;
      v231._object = 0xE000000000000000;
      v587._countAndFlagsBits = 0xD000000000000010;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v230, 0, v229, v231, v587);

      v232 = swift_allocObject();
      *(v232 + 16) = v564;
      aBlock = v561;
      v567 = v562;
      CharacterSet.init(charactersIn:)();
      v233 = StringProtocol.trimmingCharacters(in:)();
      v235 = v234;
      v236 = v220;
      v237 = v565;
      (v554)(v216, v236);
      v238 = v548;
      *(v232 + 56) = &type metadata for String;
      *(v232 + 64) = v238;
      *(v232 + 32) = v233;
      *(v232 + 40) = v235;
      static String.localizedStringWithFormat(_:_:)();

      v239 = v550;
      v240 = [v550 mutableString];
      v241 = String._bridgeToObjectiveC()();

      v242 = [v240 rangeOfString:v241 options:1];
      v244 = v243;

      [v239 addAttribute:v559 value:v228 range:{v242, v244}];
      v245 = v555;
      [v555 setAttributedText:v239];
      v246 = *&v237[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionActivityRouteAssetView_labelStack];
      [v246 addArrangedSubview:v552];
      [v246 addArrangedSubview:v245];
      [v237 addSubview:v246];
      v247 = [v246 superview];
      if (v247)
      {
        v248 = v247;
        [v246 setTranslatesAutoresizingMaskIntoConstraints:0];
        v249 = [v246 leadingAnchor];
        v250 = [v248 leadingAnchor];
        v251 = [v249 constraintEqualToAnchor:v250];

        [v251 setConstant:v25 + 24.0];
        [v251 setActive:1];
      }

      v252 = [v246 superview];
      p_align = (&stru_100327FE8 + 24);
      if (v252)
      {
        v253 = v252;
        [v246 setTranslatesAutoresizingMaskIntoConstraints:0];
        v254 = [v246 trailingAnchor];
        v255 = [v253 trailingAnchor];
        v256 = [v254 constraintEqualToAnchor:v255];

        [v256 setConstant:-12.0];
        [v256 setActive:1];
      }

      v257 = [v246 superview];
      v39 = v560;
      if (v257)
      {
        v258 = v257;
        [v246 setTranslatesAutoresizingMaskIntoConstraints:0];
        v259 = [v246 centerYAnchor];
        v260 = [v258 centerYAnchor];
        v261 = [v259 constraintEqualToAnchor:v260];

        [v261 setConstant:0.0];
        v38 = (&stru_100327FE8 + 24);
        if (v261)
        {
          [v261 setActive:1];
          v262 = &v577;
LABEL_122:

LABEL_127:
          v34 = v551;
          break;
        }

        v264 = &v577;
        goto LABEL_126;
      }

      v263 = &v577;
LABEL_124:

      v34 = v551;
      v38 = (&stru_100327FE8 + 24);
      break;
  }

LABEL_135:
  v518 = v565;
  [v565 *(p_align + 266)];
  v520 = v519;
  [v518 *(p_align + 266)];
  v521 = [v34 v38[451]];
  [v521 appendPath:v563];
  [v521 setUsesEvenOddFillRule:1];
  v522 = [objc_allocWithZone(CAShapeLayer) init];
  v523 = [v521 CGPath];
  [v522 setPath:v523];

  [v522 setFillRule:kCAFillRuleEvenOdd];
  v524 = [v518 backgroundColor];
  if (v524)
  {
    v525 = v524;
    v526 = [v524 CGColor];
  }

  else
  {
    v526 = 0;
  }

  v527 = v557;
  [v522 setFillColor:v526];

  LODWORD(v528) = 1057803469;
  [v522 setOpacity:v528];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v529 = [v527 superview];
  if (v529)
  {
    v530 = v529;
    [v527 setTranslatesAutoresizingMaskIntoConstraints:0];
    v531 = [v527 centerYAnchor];
    v532 = [v530 centerYAnchor];
    v533 = [v531 constraintEqualToAnchor:v532];

    [v533 setConstant:0.0];
    [v533 setActive:1];

    v39 = v560;
  }

  v534 = [v527 layer];
  [v534 addSublayer:v522];

  v535 = v565;
  [v565 setIsAccessibilityElement:1];
  [v535 setAccessibilityIgnoresInvertColors:1];
  v536 = [objc_opt_self() mainBundle];
  v608._object = 0x80000001002B5490;
  v537._countAndFlagsBits = 0x2074756F6B726F57;
  v537._object = 0xED00006574756F72;
  v608._countAndFlagsBits = 0xD00000000000002CLL;
  v538._countAndFlagsBits = 0;
  v538._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v537, 0, v536, v538, v608);

  v539 = String._bridgeToObjectiveC()();

  [v535 setAccessibilityLabel:v539];

  (*((swift_isaMask & *v535) + 0xC8))();
}