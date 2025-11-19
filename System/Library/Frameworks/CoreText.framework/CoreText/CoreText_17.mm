const __CFDictionary *TSplicedFontDict::FindLocalizedName(atomic_ullong *this, int a2, const __CFString **a3)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  CopyPreferredAndSystemLanguages(&v17);
  v6 = atomic_load_explicit(&v17, memory_order_acquire);
  if (!v6)
  {

    goto LABEL_10;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);

  if (!Count)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  explicit = atomic_load_explicit(&v17, memory_order_acquire);
  if (explicit && (v10 = CFArrayGetCount(explicit)) != 0)
  {
    v11 = v10;
    v12 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(explicit, v12);
      FontName = TSplicedFontDict::FindFontName(this, a2, ValueAtIndex);
      if (FontName)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_8;
      }
    }

    v15 = FontName;
    if (a3)
    {
      *a3 = ValueAtIndex;
    }
  }

  else
  {
LABEL_8:
    v15 = TSplicedFontDict::FindFontName(this, a2, 0);
  }

LABEL_11:

  return v15;
}

const __CFDictionary *TSplicedFontDict::CopyName@<X0>(atomic_ullong *this@<X0>, const __CFString *key@<X1>, const __CFDictionary **a3@<X8>)
{
  v5 = FontNameCodeForKey(key);
  result = TSplicedFontDict::FindFontName(this, v5, 0);
  *a3 = result;
  return result;
}

double TSplicedFontDict::GetSlantAngle(atomic_ullong *this, double a2, const CGAffineTransform *a3)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (!explicit)
  {
    return a2;
  }

  Value = CFDictionaryGetValue(explicit, @"FontMetrics");
  if (!Value)
  {
    return a2;
  }

  v6 = Value;
  if (CFDictionaryGetCount(Value) < 1)
  {
    return a2;
  }

  v7 = CFDictionaryGetValue(v6, @"italicAngle");
  if (!v7)
  {
    return a2;
  }

  return CFStringGetDoubleValue(v7);
}

double TSplicedFontDict::ModifyRawBoundingBox(atomic_ullong *this, CGRect a2)
{
  x = a2.origin.x;
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"FontMetrics");
    if (Value)
    {
      v5 = Value;
      if (CFDictionaryGetCount(Value) >= 1)
      {
        v6 = CFDictionaryGetValue(v5, @"xMin");
        if (v6)
        {
          DoubleValue = CFStringGetDoubleValue(v6);
          v8 = CFDictionaryGetValue(v5, @"yMin");
          if (v8)
          {
            CFStringGetDoubleValue(v8);
            v9 = CFDictionaryGetValue(v5, @"xMax");
            if (v9)
            {
              CFStringGetDoubleValue(v9);
              v10 = CFDictionaryGetValue(v5, @"yMax");
              if (v10)
              {
                CFStringGetDoubleValue(v10);
                return DoubleValue;
              }
            }
          }
        }
      }
    }
  }

  return x;
}

__CFString *FindSerifWithTraits(unint64_t a1, char a2, char a3)
{
  v5 = a1 - 254;
  if (a1 >= 0xFE && v5 <= 0xB && (IndexWithTraits = FindIndexWithTraits(&kOtherSerifSpec, v5, a2, a3), IndexWithTraits <= 0xB))
  {
    return kSystemUIFontSerifNames[IndexWithTraits];
  }

  else
  {
    return 0;
  }
}

__CFString *FindMonospacedWithTraits(unint64_t a1, char a2, char a3)
{
  v5 = a1 - 266;
  if (a1 >= 0x10A && v5 <= 0xB && (IndexWithTraits = FindIndexWithTraits(&kOtherMonospacedSpec, v5, a2, a3), IndexWithTraits <= 0xB))
  {
    return kSystemUIFontMonospacedNames[IndexWithTraits];
  }

  else
  {
    return 0;
  }
}

TDescriptorSource *TDescriptorSource::CreateVariableSizeTextStyle@<X0>(TDescriptorSource *this@<X0>, CFDictionaryRef theDict@<X1>, TDescriptorSource **a3@<X8>)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"NSFontSizeAttribute");
  }

  else
  {
    Value = 0;
  }

  [Value doubleValue];
  if (v7 <= 0.0)
  {
    result = this;
  }

  else
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%@", this, [objc_msgSend(MEMORY[0x1E696AD98] "numberWithDouble:"stringValue"")]);
  }

  *a3 = result;
  return result;
}

__CFString *CTFontDescriptorCopyNameForSystemFontOfWeight(__CFString *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFString **a6)
{
  NameForSystemFontOfWeight = TDescriptorSource::GetNameForSystemFontOfWeight(@"NSCTFontUIFontDesignDefault", a1, a2, 0, 0, a6);

  return NameForSystemFontOfWeight;
}

uint64_t TDescriptorSource::UIFontNameForFullName(uint64_t this, const __CFString *a2)
{
  if (this)
  {
    return [&unk_1EF275D40 objectForKeyedSubscript:this];
  }

  return this;
}

uint64_t CTFontSetAltTextStyleSpec()
{
  _MergedGlobals_76 = 1;
  kFont2X = &kFont2XCompact;
  _MergedGlobals_2 = &kTypeHierarchySpecWatch;
  qword_1ED566F08 = kFontSoftCompact;
  result = _os_feature_enabled_impl();
  v1 = &kFontJapaneseWatch;
  if (result)
  {
    v1 = &kFontJapaneseAltWatch;
  }

  qword_1ED567480 = v1;
  off_1ED566F10[0] = &kFontKoreanWatch;
  qword_1ED566F18 = kFontCompactRounded;
  off_1ED566F20[0] = kFallbacksCompact;
  gDisableLooseFontNameMatchingOverride = 1;
  return result;
}

double CTFontGetExuberatedLineHeightForLineHeight(double a1)
{
  if (CurrentLocaleIsExuberated())
  {
    v2 = kFont2X[15];
    v10 = NAN;
    v11 = NAN;
    v8 = NAN;
    v9 = NAN;
    if (GetLanguageAwareOutsetIndexForFontName(v2, &v11, &v10, &v9, &v8, 0))
    {
      v3 = *(kFont2X + 6);
      v4 = -*(kFont2X + 7);
      v5 = *(kFont2X + 1);
      LanguageAwareAdjustRatio = GetLanguageAwareAdjustRatio();
      return (v3 + LanguageAwareAdjustRatio * v10 * v5 + v4 + LanguageAwareAdjustRatio * v8 * v5) / (v3 + v4) * a1;
    }
  }

  return a1;
}

void CreateTrimmedCharacterSetForKey(const __CFCharacterSet *a1@<X0>, const __CFString *a2@<X1>, CFCharacterSetRef *a3@<X8>)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableCharacterSet::TCFMutableCharacterSet(&v16, a1);
  if (a2 != @"system-ui")
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    if (!CFEqual(a2, @"system-ui"))
    {
      if (a2 == @"zh" || CFEqual(a2, @"zh"))
      {
        v17.location = 8853;
        v17.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v17);
        v18.location = 9792;
        v18.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v18);
        v19.location = 9794;
        v19.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v19);
        v20.location = 12951;
        v20.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v20);
        v21.location = 12953;
        v21.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v21);
        v22.location = 127514;
        v22.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v22);
        v23.location = 127535;
        v23.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v23);
        v24.location = 127538;
        v24.length = 9;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v24);
        explicit = atomic_load_explicit(&v16, memory_order_acquire);
        v8.location = 127568;
        v8.length = 2;
      }

      else if (a2 == @"ja" || CFEqual(a2, @"ja"))
      {
        v25.location = 8252;
        v25.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v25);
        v26.location = 8265;
        v26.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v26);
        v27.location = 9642;
        v27.length = 2;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v27);
        v28.location = 9728;
        v28.length = 4;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v28);
        v29.location = 9742;
        v29.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v29);
        v30.location = 9757;
        v30.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v30);
        v31.location = 9792;
        v31.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v31);
        v32.location = 9794;
        v32.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v32);
        v33.location = 9824;
        v33.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v33);
        v34.location = 9827;
        v34.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v34);
        v35.location = 9829;
        v35.length = 2;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v35);
        v36.location = 9832;
        v36.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v36);
        v37.location = 9851;
        v37.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v37);
        v38.location = 9918;
        v38.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v38);
        v39.location = 9986;
        v39.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v39);
        v40.location = 10145;
        v40.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v40);
        v41.location = 11013;
        v41.length = 3;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v41);
        v42.location = 12336;
        v42.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v42);
        v43.location = 12349;
        v43.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v43);
        v44.location = 12951;
        v44.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v44);
        v45.location = 12953;
        v45.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v45);
        v46.location = 127490;
        v46.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v46);
        explicit = atomic_load_explicit(&v16, memory_order_acquire);
        v8.location = 127543;
        v8.length = 1;
      }

      else
      {
        if (a2 != @"ko" && !CFEqual(a2, @"ko"))
        {
          goto LABEL_23;
        }

        v47.location = 8252;
        v47.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v47);
        v48.location = 8265;
        v48.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v48);
        v49.location = 8597;
        v49.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v49);
        v50.location = 9723;
        v50.length = 2;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v50);
        v51.location = 9742;
        v51.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v51);
        v52.location = 9757;
        v52.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v52);
        v53.location = 9775;
        v53.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v53);
        v54.location = 9792;
        v54.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v54);
        v55.location = 9794;
        v55.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v55);
        v56.location = 9824;
        v56.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v56);
        v57.location = 9827;
        v57.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v57);
        v58.location = 9829;
        v58.length = 2;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v58);
        v59.location = 9832;
        v59.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v59);
        v60.location = 10006;
        v60.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v60);
        v61.location = 10055;
        v61.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v61);
        v62.location = 10145;
        v62.length = 1;
        CFCharacterSetRemoveCharactersInRange(atomic_load_explicit(&v16, memory_order_acquire), v62);
        explicit = atomic_load_explicit(&v16, memory_order_acquire);
        v8.location = 11013;
        v8.length = 3;
      }

      CFCharacterSetRemoveCharactersInRange(explicit, v8);
      goto LABEL_23;
    }
  }

  v15 = 0;
  if (GetLocalizedTrimSetKey(0, &v15) && v15)
  {
    if (v15 == 32)
    {
      CFCharacterSetRemoveCharactersInString(atomic_load_explicit(&v16, memory_order_acquire), @"'()°‘’“”");
      TrimStringForNumberingSystem = GetTrimStringForNumberingSystem();
      if (TrimStringForNumberingSystem)
      {
        v5 = TrimStringForNumberingSystem;
        v6 = atomic_load_explicit(&v16, memory_order_acquire);
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 == 64)
      {
        v5 = GetTrimStringForNumberingSystem();
        v6 = atomic_load_explicit(&v16, memory_order_acquire);
LABEL_15:
        CFCharacterSetRemoveCharactersInString(v6, v5);
        goto LABEL_23;
      }

      v10 = &dword_184766B44;
      v11 = 9;
      do
      {
        if ((v15 & *(v10 - 1)) != 0)
        {
          v12.location = *v10;
          v13 = v10[1];
          v14 = atomic_load_explicit(&v16, memory_order_acquire);
          if (v13)
          {
            v12.length = v13 - v12.location + 1;
          }

          else
          {
            v12.location = LODWORD(v12.location);
            v12.length = 1;
          }

          CFCharacterSetRemoveCharactersInRange(v14, v12);
        }

        v10 += 3;
        --v11;
      }

      while (v11);
    }
  }

LABEL_23:
  AddSynthesizedCharactersToCharacterSet(&v16, 0);
  *a3 = CFCharacterSetCreateCopy(*MEMORY[0x1E695E480], atomic_load_explicit(&v16, memory_order_acquire));
}

__CFString *GetTrimStringForNumberingSystem(void)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  CopyPreferredNumberingSystem(&v7);
  v0 = atomic_load_explicit(&v7, memory_order_acquire);
  v1 = v0;
  if (v0 == @"arab" || v0 && CFStringHasPrefix(v0, @"arab"))
  {
    goto LABEL_9;
  }

  v2 = atomic_load_explicit(&v7, memory_order_acquire);
  if (v2 == @"deva")
  {

LABEL_9:
    goto LABEL_10;
  }

  v3 = v2;
  if (!v2)
  {

LABEL_13:
    v5 = 0;
    goto LABEL_11;
  }

  v4 = CFEqual(v2, @"deva");

  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_10:
  v5 = @":";
LABEL_11:

  return v5;
}

double CTFontGetAccessibilityBoldWeightOfWeight(double a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = xmmword_18475CD50;
  v3[1] = xmmword_18475CD60;
  v4 = 8;
  v1 = *(v3 + IndexesBracketing<double const*,double>(kCTFontDefaultWeights, &kCTFontWeightRegular, a1, 0.001));
  if (v1 <= 0x10 && ((0x1FEFFu >> v1) & 1) != 0)
  {
    v1 = dword_184773744[v1];
  }

  return GetWeightForLocalTrait(v1);
}

__CFString *TDescriptorSource::GetUIFontFamilyNameForDesign(CFTypeRef cf2, const __CFString *a2)
{
  v3 = 0;
  v7[18] = *MEMORY[0x1E69E9840];
  v4 = @".AppleSystemUIFont";
  v7[2] = @"NSCTFontUIFontDesignCompact";
  v7[3] = @".AppleSystemUIFontCompact";
  v7[4] = @"NSCTFontUIFontDesignCore";
  v7[5] = @".AppleSystemUIFontCore";
  v7[6] = @"NSCTFontUIFontDesignRounded";
  v7[7] = @".AppleSystemUIFontRounded";
  v7[8] = @"NSCTFontUIFontDesignCompactRounded";
  v7[9] = @".AppleSystemUIFontCompactRounded";
  v7[10] = @"NSCTFontUIFontDesignMonospaced";
  v7[11] = @".AppleSystemUIFontMonospaced";
  v7[12] = @"NSCTFontUIFontDesignSerif";
  v7[13] = @".AppleSystemUIFontSerif";
  v7[14] = @"NSCTFontUIFontDesignSoft";
  v7[15] = @".AppleSystemUIFontSoft";
  v7[16] = @"NSCTFontUIFontDesignCompactSoft";
  v7[17] = @".AppleSystemUIFontCompactSoft";
  v7[0] = @"NSCTFontUIFontDesignDefault";
  v7[1] = @".AppleSystemUIFont";
  while (1)
  {
    v5 = v7[v3];
    if (v5 == cf2 || cf2 && v5 && CFEqual(v5, cf2))
    {
      break;
    }

    v3 += 2;
    if (v3 == 18)
    {
      return v4;
    }
  }

  return v7[v3 + 1];
}

__CFString *FullNameForSynthetic(__CFString *cf1)
{
  if (cf1 == @".AppleSystemUIFont")
  {
    return @".AppleSystemUIFontRegular";
  }

  v1 = cf1;
  if (cf1)
  {
    if (CFEqual(cf1, @".AppleSystemUIFont"))
    {
      return @".AppleSystemUIFontRegular";
    }
  }

  return v1;
}

void ___Z20MakeSpliceDescriptorPK10__CFStringmS1_S1_PK10__CFNumberS4_j23CTFontTextStylePlatformjS4_S4_22CTFontLegibilityWeightPK11__CFBooleanPKvS1__block_invoke()
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = @"NSCTFontUIFontDesignSerif";
  keys[1] = @"NSCTFontUIFontDesignMonospaced";
  keys[2] = @"NSCTFontUIFontDesignCompact";
  keys[3] = @"NSCTFontUIFontDesignCore";
  values[0] = &kFontSerif;
  values[1] = &kFontMono;
  values[2] = &kFont2XCompact;
  values[3] = &kFont2XPro;
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 4, MEMORY[0x1E695E9D8], 0);
  qword_1ED567490 = atomic_exchange(&v0, 0);
}

void addComponentsWithTrimCharacterSet(const void **a1, const void *a2, atomic_ullong *a3, int a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v11, @"name", *a1);
  if (a2)
  {
    CFDictionaryAddValue(v11, @"UnicodeCharSetTrim", a2);
  }

  if (a4)
  {
    CFDictionaryAddValue(v11, @"needsScriptAnalysis", *MEMORY[0x1E695E4D0]);
  }

  CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v11);
  if (a5)
  {
    (*(a5 + 16))(a5, &Mutable);
  }

  CFDictionaryAddValue(atomic_load_explicit(a3, memory_order_acquire), @"Components", atomic_load_explicit(&Mutable, memory_order_acquire));
}

void addComponentsForChinese(atomic_ullong *a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = *(kChineseRegionCodes + (a3 & 0xFFFFFFFFFFFFFFF8));
  v10 = MEMORY[0x1E695E9D8];
  v11 = MEMORY[0x1E695E9E8];
  v12 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v12, @"name", *(a2 + 40 * a3));
  CFDictionaryAddValue(v12, @"UnicodeCharSetTrim", @"zh");
  CFDictionaryAddValue(v12, @"languagePropertiesCacheKey", a4);
  CFArrayAppendValue(Mutable, v12);
  v13 = CFDictionaryCreateMutable(v7, 0, v10, v11);
  CFDictionaryAddValue(v13, @"languagePropertiesCacheKey", @".CJKSymbolsFallback");
  CFDictionaryAddValue(v13, @"name", [MEMORY[0x1E696AEC0] stringWithFormat:@".CJKSymbolsFallback%@-%@", v9, off_1E6E3D8E0[a3 & 7]]);
  CFArrayAppendValue(Mutable, v13);
  v14 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], v11);
  v15 = v14;
  if (a3 <= 7)
  {
    v16 = @".AppleTraditionalChineseFont";
  }

  else
  {
    v16 = @".AppleSimplifiedChineseFont";
  }

  if (a3 <= 7)
  {
    v17 = a3 | 8;
  }

  else
  {
    v17 = a3 & 7;
  }

  CFDictionaryAddValue(v14, @"languagePropertiesCacheKey", v16);
  CFDictionaryAddValue(v15, @"name", *(a2 + 40 * v17));
  CFDictionaryAddValue(v15, @"UnicodeCharSetTrim", @"zh");
  CFArrayAppendValue(Mutable, v15);
  CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"Components", Mutable);
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  CFDictionaryAddValue(explicit, @"hasVariations", *MEMORY[0x1E695E4D0]);
}

void addComponentsForJapanese(atomic_ullong *a1, uint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v7 = a2 + 40 * a3;
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"name", *v7);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"version", @"1.0");
  Length = CFStringGetLength(*v7);
  location = CFStringFind(*v7, @"-", 0).location;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableString::TCFMutableString(&v29, *v7);
  v36.length = CFStringGetLength(atomic_load_explicit(&v29, memory_order_acquire)) - location;
  v36.location = location;
  CFStringReplace(atomic_load_explicit(&v29, memory_order_acquire), v36, &stru_1EF25C610);
  v38.length = CFStringGetLength(atomic_load_explicit(&v29, memory_order_acquire));
  v38.location = 0;
  CFStringFindAndReplace(atomic_load_explicit(&v29, memory_order_acquire), @"UIOptical", @" UI Optical ", v38, 0);
  v10 = CFArrayCreateMutable(v5, 0, v6);
  explicit = atomic_load_explicit(&v29, memory_order_acquire);
  v31 = @"type";
  v32 = @"string";
  v33 = @"1";
  v34 = explicit;
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  v12 = atomic_load_explicit(&v29, memory_order_acquire);
  v31 = @"type";
  v32 = @"string";
  v33 = @"16";
  v34 = v12;
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  v37.location = location + 1;
  v37.length = Length - (location + 1);
  v13 = CFStringCreateWithSubstring(v5, *v7, v37);
  v14 = CFStringCreateWithFormat(v5, 0, @"%@ %@", atomic_load_explicit(&v29, memory_order_acquire), v13);
  v31 = @"type";
  v32 = @"string";
  v33 = @"4";
  v34 = v14;
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  v31 = @"type";
  v32 = @"string";
  v33 = @"18";
  v34 = v14;
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  v31 = @"type";
  v32 = @"string";
  v33 = @"2";
  v34 = v13;
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  v31 = @"type";
  v32 = @"string";
  v33 = @"7";
  v34 = @"Apple Inc.";
  CFArrayAppendValue(v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v31 count:2]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"familyName", atomic_load_explicit(&v29, memory_order_acquire));
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontNames", v10);

  v15 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = CFStringCreateWithFormat(v5, 0, @"W%d", *(v7 + 16));
  CFDictionaryAddValue(v15, @"weightClass", v16);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontMetrics", v15);

  v33 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v31 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableString::TCFMutableString(&v31, *v7);
  v39.length = CFStringGetLength(atomic_load_explicit(&v31, memory_order_acquire));
  v39.location = 0;
  CFStringFindAndReplace(atomic_load_explicit(&v31, memory_order_acquire), @"Optical", @"Text", v39, 0);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableString::TCFMutableString(&v28, atomic_load_explicit(&v29, memory_order_acquire));
  v40.length = CFStringGetLength(atomic_load_explicit(&v28, memory_order_acquire));
  v40.location = 0;
  CFStringFindAndReplace(atomic_load_explicit(&v28, memory_order_acquire), @"Optical", @"Text", v40, 0);
  insertOpticalSizeComponent(v7, atomic_load_explicit(&v31, memory_order_acquire), 0xFFFFFFFFLL, 0, 0, &v33, @"ja", atomic_load_explicit(&v28, memory_order_acquire), 0.0, 0);
  ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&v33, memory_order_acquire), 0);
  CFDictionaryAddValue(ValueAtIndex, @"languagePropertiesCacheKey", atomic_load_explicit(&v29, memory_order_acquire));
  v27 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableString::TCFMutableString(&v27, *v7);
  v41.length = CFStringGetLength(atomic_load_explicit(&v27, memory_order_acquire));
  v41.location = 0;
  CFStringFindAndReplace(atomic_load_explicit(&v27, memory_order_acquire), @"Optical", @"Display", v41, 0);
  v26 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableString::TCFMutableString(&v26, atomic_load_explicit(&v29, memory_order_acquire));
  v42.length = CFStringGetLength(atomic_load_explicit(&v26, memory_order_acquire));
  v42.location = 0;
  CFStringFindAndReplace(atomic_load_explicit(&v26, memory_order_acquire), @"Optical", @"Display", v42, 0);
  insertOpticalSizeComponent(v7, atomic_load_explicit(&v27, memory_order_acquire), 0xFFFFFFFFLL, 0, 0, &v33, @"ja", atomic_load_explicit(&v26, memory_order_acquire), 20.0, 0);
  v18 = CFArrayGetValueAtIndex(atomic_load_explicit(&v33, memory_order_acquire), 0);
  CFDictionaryAddValue(v18, @"languagePropertiesCacheKey", atomic_load_explicit(&v29, memory_order_acquire));
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", atomic_load_explicit(&v33, memory_order_acquire));

  v19 = atomic_load_explicit(&Mutable, memory_order_acquire);
  CFDictionaryAddValue(v19, @"hasVariations", *MEMORY[0x1E695E4D0]);
  v20 = atomic_exchange(&Mutable, 0);

  v21 = v20;
  CFArrayAppendValue(theArray, v21);

  v22 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v22, @"languagePropertiesCacheKey", @".CJKSymbolsFallback");
  CFDictionaryAddValue(v22, @"name", [MEMORY[0x1E696AEC0] stringWithFormat:@".CJKSymbolsFallback%@-%@", @"JA", off_1E6E3D8E0[a3 % 9]]);
  CFArrayAppendValue(theArray, v22);
  CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"Components", theArray);
}

void ___Z20MakeSpliceDescriptorPK10__CFStringmS1_S1_PK10__CFNumberS4_j23CTFontTextStylePlatformjS4_S4_22CTFontLegibilityWeightPK11__CFBooleanPKvS1__block_invoke_2()
{
  MainBundle = CFBundleGetMainBundle();
  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  if (InfoDictionary && (v2 = CFDictionaryGetValue(InfoDictionary, @"CTUseSukhumvitSetAsCompactThaiFallback")) != 0 && CFBooleanGetValue(v2))
  {
    qword_1ED566F28 = &kFontThaiSukhumvit;
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(@"CTUseSukhumvitSetAsCompactThaiFallback", *MEMORY[0x1E695E8A8]);
    v4 = v3;
    if (v4)
    {
      v5 = v4;
      Value = CFBooleanGetValue(v4);

      if (Value)
      {
        qword_1ED566F28 = &kFontThaiSukhumvit;
      }
    }

    else
    {
    }
  }
}

void ___Z20MakeSpliceDescriptorPK10__CFStringmS1_S1_PK10__CFNumberS4_j23CTFontTextStylePlatformjS4_S4_22CTFontLegibilityWeightPK11__CFBooleanPKvS1__block_invoke_3(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  AppleInternalFontsPath = GetAppleInternalFontsPath();
  v4 = CFStringCreateWithFormat(v2, 0, @"%@SFTamilAlt.otf", AppleInternalFontsPath);
  v5 = CFURLCreateWithFileSystemPath(v2, v4, kCFURLPOSIXPathStyle, 0);
  v6 = v5;
  if (v5 && _CTFontManagerRegisterActionFontsForURL(v5, 1, 1, 0))
  {
    qword_1ED566F30 = &kFontIndicTamilAlt;
    *(*(*(a1 + 32) + 8) + 24) = @".SF Tamil Alt";
  }
}

unint64_t CreateSyntheticAppleSymbolsSplicedFont(void)
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"name", @".AppleSymbolsFB");
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"version", @"1.0");
  v3 = MEMORY[0x1E695E9C0];
  v4 = CFArrayCreateMutable(v0, 0, MEMORY[0x1E695E9C0]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"1";
  v21 = @".Apple Symbols Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"16";
  v21 = @".Apple Symbols Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"4";
  v21 = @".Apple Symbols Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"18";
  v21 = @".Apple Symbols Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"2";
  v21 = @"Regular";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"7";
  v21 = @"Apple Inc.";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"familyName", @".Apple Symbols Fallback");
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontNames", v4);

  v5 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionaryAddValue(v5, @"weightClass", @"w4");
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontMetrics", v5);

  v6 = CFArrayCreateMutable(v0, 0, v3);
  v7 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionaryAddValue(v7, @"name", @"AppleSymbols");
  v8 = CFCharacterSetCreateMutable(v0);
  v23.location = 8505;
  v23.length = 1;
  CFCharacterSetAddCharactersInRange(v8, v23);
  v24.location = 8196;
  v24.length = 7;
  CFCharacterSetAddCharactersInRange(v8, v24);
  v25.location = 8704;
  v25.length = 239;
  CFCharacterSetAddCharactersInRange(v8, v25);
  v26.location = 8944;
  v26.length = 16;
  CFCharacterSetAddCharactersInRange(v8, v26);
  v27.location = 9744;
  v27.length = 3;
  CFCharacterSetAddCharactersInRange(v8, v27);
  v28.location = 10176;
  v28.length = 5;
  CFCharacterSetAddCharactersInRange(v8, v28);
  v29.location = 10183;
  v29.length = 4;
  CFCharacterSetAddCharactersInRange(v8, v29);
  v30.location = 10192;
  v30.length = 28;
  CFCharacterSetAddCharactersInRange(v8, v30);
  v31.location = 10240;
  v31.length = 256;
  CFCharacterSetAddCharactersInRange(v8, v31);
  v32.location = 10624;
  v32.length = 144;
  CFCharacterSetAddCharactersInRange(v8, v32);
  v33.location = 10769;
  v33.length = 1;
  CFCharacterSetAddCharactersInRange(v8, v33);
  v34.location = 10774;
  v34.length = 234;
  CFCharacterSetAddCharactersInRange(v8, v34);
  v35.location = 127760;
  v35.length = 1;
  CFCharacterSetAddCharactersInRange(v8, v35);
  v36.location = 127908;
  v36.length = 1;
  CFCharacterSetAddCharactersInRange(v8, v36);
  Copy = CFCharacterSetCreateCopy(v0, v8);
  CFDictionaryAddValue(v7, @"UnicodeCharSet", Copy);

  CFArrayAppendValue(v6, v7);
  v10 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionaryAddValue(v10, @"name", @"ZapfDingbatsITC");
  v11 = CFCharacterSetCreateMutable(v0);
  v37.location = 9985;
  v37.length = 4;
  CFCharacterSetAddCharactersInRange(v11, v37);
  v38.location = 9996;
  v38.length = 28;
  CFCharacterSetAddCharactersInRange(v11, v38);
  v39.location = 10025;
  v39.length = 35;
  CFCharacterSetAddCharactersInRange(v11, v39);
  v40.location = 10061;
  v40.length = 1;
  CFCharacterSetAddCharactersInRange(v11, v40);
  v41.location = 10063;
  v41.length = 4;
  CFCharacterSetAddCharactersInRange(v11, v41);
  v42.location = 10070;
  v42.length = 1;
  CFCharacterSetAddCharactersInRange(v11, v42);
  v43.location = 10072;
  v43.length = 7;
  CFCharacterSetAddCharactersInRange(v11, v43);
  v44.location = 10081;
  v44.length = 52;
  CFCharacterSetAddCharactersInRange(v11, v44);
  v45.location = 10136;
  v45.length = 24;
  CFCharacterSetAddCharactersInRange(v11, v45);
  v46.location = 10161;
  v46.length = 14;
  CFCharacterSetAddCharactersInRange(v11, v46);
  v12 = CFCharacterSetCreateCopy(v0, v11);
  CFDictionaryAddValue(v10, @"UnicodeCharSet", v12);

  CFArrayAppendValue(v6, v10);
  v13 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  CFDictionaryAddValue(v13, @"name", @"Symbol");
  v47.location = 63743;
  v47.length = 1;
  v14 = CFCharacterSetCreateWithCharactersInRange(v0, v47);
  CFDictionaryAddValue(v13, @"UnicodeCharSet", v14);
  CFArrayAppendValue(v6, v13);

  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", v6);
  v15 = atomic_exchange(&Mutable, 0);

  return v15;
}

unint64_t CreateSyntheticAppleTimesSplicedFont(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"name", kTimesFBNames[a1]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"version", @"1.0");
  v3 = MEMORY[0x1E695E9C0];
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"1";
  v21 = @".Times Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"16";
  v21 = @".Times Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v5 = &kTimesFBSpliceFontInfo[2 * a1];
  v6 = v5[1];
  v7 = [@".Times Fallback" stringByAppendingFormat:@" %@", v6];
  v18 = @"type";
  v19 = @"string";
  v20 = @"4";
  v21 = v7;
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"18";
  v21 = @".Times Fallback";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"2";
  v21 = v6;
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  v18 = @"type";
  v19 = @"string";
  v20 = @"7";
  v21 = @"Apple Inc.";
  CFArrayAppendValue(v4, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v18 count:2]);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"familyName", @".Times Fallback");
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontNames", v4);

  v8 = CFArrayCreateMutable(v2, 0, v3);
  v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = *v5;
  CFDictionaryAddValue(v9, @"name", *v5);
  CharacterSetForFont = CreateCharacterSetForFont(v10);
  if (CharacterSetForFont)
  {
    v12 = CharacterSetForFont;
    MutableCopy = CFCharacterSetCreateMutableCopy(v2, CharacterSetForFont);
    v23.location = 1536;
    v23.length = 256;
    CFCharacterSetRemoveCharactersInRange(MutableCopy, v23);
    v24.location = 1872;
    v24.length = 48;
    CFCharacterSetRemoveCharactersInRange(MutableCopy, v24);
    v25.location = 8204;
    v25.length = 2;
    CFCharacterSetRemoveCharactersInRange(MutableCopy, v25);
    v26.location = 64336;
    v26.length = 688;
    CFCharacterSetRemoveCharactersInRange(MutableCopy, v26);
    v27.location = 65136;
    v27.length = 144;
    CFCharacterSetRemoveCharactersInRange(MutableCopy, v27);
    Copy = CFCharacterSetCreateCopy(v2, MutableCopy);
    CFDictionaryAddValue(v9, @"UnicodeCharSet", Copy);

    CFDictionaryAddValue(v9, @"needsScriptAnalysis", *MEMORY[0x1E695E4D0]);
    CFArrayAppendValue(v8, v9);

    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", v8);
    v15 = atomic_exchange(&Mutable, 0);
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

void GetLocalizedTrimCharacterSet(const __CFString *a1, __CFString *a2)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  LanguageNormalizedForPresetFallbacks(a2, &v17);
  if (a2)
  {
    memset(v16, 170, sizeof(v16));
    CreateLocalizedTrimCharacterSet(v16, atomic_load_explicit(&v17, memory_order_acquire), &v16[2], &v16[1]);
    v4 = atomic_exchange(v16, 0);
    v5 = v16[1];
    v6 = v16[2];
    a1->isa = v4;
    a1->info = v6;
    v7 = atomic_exchange(&v17, 0);
    a1->data = v5;
    a1->length = v7;
    v8 = v16[0];
  }

  else
  {
    v9 = dword_1ED567470;
    if (v9 != GetLocaleChangedCount())
    {
      v16[2] = 0xAAAAAAAAAAAAAAAALL;
      CreateLocalizedTrimCharacterSet(&v16[2], atomic_load_explicit(&v17, memory_order_acquire), &qword_1ED567530, &qword_1ED567538);
      v10 = atomic_exchange(&v16[2], 0);
      v11 = qword_1ED567528;
      qword_1ED567528 = v10;

      dword_1ED567470 = GetLocaleChangedCount();
    }

    v16[2] = qword_1ED567528;
    v12 = atomic_exchange(&v16[2], 0);
    v13 = qword_1ED567530;
    v14 = qword_1ED567538;
    a1->isa = v12;
    a1->info = v13;
    v15 = atomic_exchange(&v17, 0);
    a1->data = v14;
    a1->length = v15;
    v8 = v16[2];
  }
}

BOOL HasPingFangUIPrefix(CFStringRef theString)
{
  if (qword_1ED567518 != -1)
  {
    dispatch_once(&qword_1ED567518, &__block_literal_global_3603);
  }

  if (qword_1ED566F38 == &kFontChineseUI)
  {
    v2 = @".PingFangUI";
  }

  else
  {
    v2 = @".PingFang";
  }

  return CFStringHasPrefix(theString, v2) != 0;
}

__CFString *RegionCodeFromPingFangUI(__CFString *a1)
{
  if (!HasPingFangUIPrefix(a1))
  {
    return &stru_1EF25C610;
  }

  v2 = [(__CFString *)a1 rangeOfString:@"-"];
  if (!v3)
  {
    return &stru_1EF25C610;
  }

  return [(__CFString *)a1 substringWithRange:v2 - 2, 2];
}

uint64_t FindIndexWithTraits(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = 0;
  v6 = (a1 + 16 * a2);
  v7 = *v6;
  if (a4)
  {
    v8 = a3 & 1;
  }

  else
  {
    v8 = v6[1];
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  if (v7 <= 6)
  {
    v10 = 6;
  }

  else
  {
    v10 = v7;
  }

  if ((a3 & 2) != 0)
  {
    v9 = v10;
  }

  if ((a4 & 2) == 0)
  {
    v9 = v7;
  }

  for (i = (a1 + 4); *(i - 1) != v9 || *i != v8; i += 4)
  {
    if (++result == 12)
    {
      return -1;
    }
  }

  return result;
}

void TCFMutableCharacterSet::TCFMutableCharacterSet(TCFMutableCharacterSet *this, const __CFCharacterSet *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (a2)
  {
    MutableCopy = CFCharacterSetCreateMutableCopy(v3, a2);
  }

  else
  {
    MutableCopy = CFCharacterSetCreateMutable(v3);
  }

  *this = MutableCopy;
}

void ___ZL20FontInfoForChineseUIv_block_invoke()
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x40) == 0 && (_CFAppVersionCheckLessThan() || _CFAppVersionCheckLessThan()))
  {
LABEL_7:
    qword_1ED566F38 = &kFontChineseUIOld;
  }
}

void ___ZL21FontInfoForJapaneseUIv_block_invoke()
{
  if (!qword_1ED567480)
  {
    v0 = _os_feature_enabled_impl();
    v1 = &kFontJapanese0;
    if (v0)
    {
      v1 = &kFontJapaneseAlt0;
    }

    qword_1ED567480 = v1;
  }
}

void TCFMutableString::TCFMutableString(TCFMutableString *this, CFStringRef theString)
{
  v3 = *MEMORY[0x1E695E480];
  if (theString)
  {
    MutableCopy = CFStringCreateMutableCopy(v3, 0, theString);
  }

  else
  {
    MutableCopy = CFStringCreateMutable(v3, 0);
  }

  *this = MutableCopy;
}

void CreateLocalizedTrimCharacterSet(unint64_t *a1, __CFString *cf1, void *a3, void *a4)
{
  v16 = 0;
  SFTrimCharacterSetForChineseOrJapanese = 0;
  if (!GetLocalizedTrimSetKeyForNormalizedLanguage(cf1, &v16))
  {
    goto LABEL_33;
  }

  v8 = v16;
  if (v16 <= 15)
  {
    if (v16 - 1 < 2 || v16 == 4 || v16 == 8)
    {
      SFTrimCharacterSetForChineseOrJapanese = CreateSFTrimCharacterSetForChineseOrJapanese(kFont2X[15], v16);
      *a4 = 8;
      if (qword_1ED567518 != -1)
      {
        dispatch_once(&qword_1ED567518, &__block_literal_global_3603);
      }

      v11 = qword_1ED566F38;
      if (v8 == 4)
      {
        v11 = qword_1ED566F38 + 640;
      }

      else if (v8 == 2)
      {
        v11 = qword_1ED566F38 + 320;
      }

      else if (v8 != 1)
      {
        v11 = qword_1ED566F38 + 960;
      }

      *a3 = v11;
    }

    goto LABEL_33;
  }

  switch(v16)
  {
    case 0x40u:
      Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
      TrimStringForNumberingSystem = GetTrimStringForNumberingSystem();
      if (TrimStringForNumberingSystem)
      {
        CFCharacterSetAddCharactersInString(atomic_load_explicit(&Mutable, memory_order_acquire), TrimStringForNumberingSystem);
      }

      SFTrimCharacterSetForChineseOrJapanese = atomic_exchange(&Mutable, 0);
      _CFCharacterSetCompact();
      v13 = &kFontIndicDevanagari;
      goto LABEL_32;
    case 0x20u:
      Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
      CFCharacterSetAddCharactersInString(atomic_load_explicit(&Mutable, memory_order_acquire), @"'()°‘’“”");
      v14 = GetTrimStringForNumberingSystem();
      if (v14)
      {
        CFCharacterSetAddCharactersInString(atomic_load_explicit(&Mutable, memory_order_acquire), v14);
      }

      SFTrimCharacterSetForChineseOrJapanese = atomic_exchange(&Mutable, 0);
      _CFCharacterSetCompact();
      v13 = &kFontSFArabic;
LABEL_32:
      *a3 = v13;
      *a4 = 9;

      break;
    case 0x10u:
      SFTrimCharacterSetForChineseOrJapanese = CreateSFTrimCharacterSetForChineseOrJapanese(kFont2X[15], 16);
      if (qword_1ED567520 != -1)
      {
        dispatch_once(&qword_1ED567520, &__block_literal_global_3846);
      }

      *a3 = qword_1ED567480;
      *a4 = 9;
      break;
  }

LABEL_33:
  *a1 = SFTrimCharacterSetForChineseOrJapanese;
}

unint64_t CreateSFTrimCharacterSetForChineseOrJapanese(const __CFString *a1, int a2)
{
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v4 = &dword_184766B44;
  v5 = 9;
  do
  {
    if ((*(v4 - 1) & a2) != 0)
    {
      v6.location = *v4;
      v7 = v4[1];
      explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (v7)
      {
        v6.length = v7 - v6.location + 1;
      }

      else
      {
        v6.location = LODWORD(v6.location);
        v6.length = 1;
      }

      CFCharacterSetAddCharactersInRange(explicit, v6);
    }

    v4 += 3;
    --v5;
  }

  while (v5);
  CharacterSetForFont = CreateCharacterSetForFont(a1);
  if (CharacterSetForFont)
  {
    v10 = CharacterSetForFont;
    CFCharacterSetIntersect(atomic_load_explicit(&Mutable, memory_order_acquire), CharacterSetForFont);
    CFRelease(v10);
  }

  v11 = atomic_exchange(&Mutable, 0);
  _CFCharacterSetCompact();

  return v11;
}

uint64_t TJustEngine::ApplyTrackingToRun(TJustEngine *this, TRunGlue *a2, unint64_t a3, uint64_t a4, double a5)
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v98 = unk_18477382C;
  v100 = unk_184773840;
  v88 = xmmword_184773790;
  memset(&v90[8], 170, 24);
  *v90 = 0;
  v89 = 0u;
  v91 = &v90[8];
  BYTE8(v100) = 0;
  v95 = 0;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  memset(v97, 0, sizeof(v97));
  LOBYTE(v100) = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0uLL;
  v96 = 0xFFEFFFFFFFFFFFFFLL;
  v7 = *(v6 + 16);
  v8 = *(v6 + 24) - v7;
  v88 = 0u;
  if (a3 >= v8 >> 3)
  {
    goto LABEL_47;
  }

  (*(*(v7 + 8 * a3) + 56))(&v71);
  p_src = atomic_exchange(&v71, 0);
  v13 = atomic_exchange(&p_src, 0);
  __src = v13;
  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](&v89, &__src);
  TLine::UpdateCachedMetricsForRun(&v88, v13[5]);

  v92 = *(v6 + 72);
  if (*(&v89 + 1) - v89 == 8 && *&v97[8] >= 1)
  {
    v60 = v6;
    v14 = a2;
    v59 = this;
    memset(v86, 170, sizeof(v86));
    __src = 0;
    v84 = 0;
    v85 = 0;
    v87 = v86;
    if (*&v97[8] > 0xAAAAAAAAAAAAAAAuLL)
    {
LABEL_57:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v61 = a3;
    v79[1] = v86;
    v15 = std::allocator_traits<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>(v86, *&v97[8]);
    v17 = &v15[24 * v16];
    v18 = &v15[-(v84 - __src)];
    memcpy(v18, __src, v84 - __src);
    v19 = __src;
    v20 = v85;
    __src = v18;
    v84 = v15;
    v85 = v17;
    v78 = v19;
    v79[0] = v20;
    v77 = v19;
    p_src = v19;
    std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&p_src);
    v21 = v89;
    if (*(&v89 + 1) == v89)
    {
      goto LABEL_47;
    }

    v22 = v14;
    do
    {
      v23 = *(*v21 + 48);
      v24 = [*(v23 + 216) copyWithRange:{*(v23 + 200), *(v23 + 208)}];

      *(v23 + 216) = v24;
      *(v23 + 200) = 0;
      v25 = *(v23 + 208);
      if (v25 < 0)
      {
        goto LABEL_48;
      }

      v62 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = **(v24 + 40) & 1;
      do
      {
        if (v28 >= v25 || (v29 & 1) != (*(*(*(v23 + 216) + 40) + 4 * *(v23 + 200) + 4 * v28) & 1))
        {
          v63 = v29;
          v105.length = v28 - v26;
          v105.location = v26;
          Width = TStorageRange::GetWidth((v23 + 192), v105);
          v31 = 0.0;
          v66 = v28;
          v64 = v26;
          v65 = v28 - v26;
          if (v28 > v26)
          {
            v32 = 0;
            v67 = v27 - a4;
            do
            {
              v77 = 0xAAAAAAAAAAAAAAAALL;
              p_src = 0xAAAAAAAAAAAAAAAALL;
              TLine::GetClusterRange(v60, v22, v61, a4, *(*(*(v23 + 216) + 48) + 8 * *(v23 + 200) + 8 * v26), 2, &p_src, 0, 0);
              v33 = &v77[p_src + v67];
              v34 = v64 >= v33 || v28 < v33;
              if (!v34)
              {
                ++v32;
              }

              if (v33 <= v26 + 1)
              {
                ++v26;
              }

              else
              {
                v26 = &v77[p_src + v67];
              }
            }

            while (v26 < v28);
            v31 = v32;
          }

          *&v35 = 0xAAAAAAAAAAAAAAAALL;
          *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v81[13] = v35;
          v81[14] = v35;
          v81[11] = v35;
          v81[12] = v35;
          v81[9] = v35;
          v81[10] = v35;
          v81[7] = v35;
          v81[8] = v35;
          v81[5] = v35;
          v81[6] = v35;
          v81[3] = v35;
          v81[4] = v35;
          v81[1] = v35;
          v81[2] = v35;
          v81[0] = v35;
          memset(v80, 0, sizeof(v80));
          v82 = v81;
          v69[0] = 0.0;
          v69[1] = 0.0;
          v36 = v84;
          v37 = v84 - __src;
          v38 = 0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 3);
          v39 = v89;
          v40 = v66 - v38;
          if (v66 <= v38)
          {
            v28 = v66;
            if (v66 < v38)
            {
              v84 = __src + 24 * v66;
            }
          }

          else if (0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3) >= v40)
          {
            bzero(v84, 24 * ((24 * v40 - 24) / 0x18) + 24);
            v84 = &v36[24 * ((24 * v40 - 24) / 0x18) + 24];
            v28 = v66;
          }

          else
          {
            if (v66 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_57;
            }

            v41 = 0x5555555555555556 * ((v85 - __src) >> 3);
            if (v41 <= v66)
            {
              v41 = v66;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v85 - __src) >> 3) >= 0x555555555555555)
            {
              v42 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v42 = v41;
            }

            v79[1] = v86;
            v43 = std::allocator_traits<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>(v86, v42);
            v44 = (v43 + v37);
            v46 = v43 + 24 * v45;
            bzero(v44, 24 * ((24 * v40 - 24) / 0x18) + 24);
            v47 = &v44[24 * ((24 * v40 - 24) / 0x18) + 24];
            v48 = &v44[-(v84 - __src)];
            memcpy(v48, __src, v84 - __src);
            v49 = __src;
            v50 = v85;
            __src = v48;
            v84 = v47;
            v28 = v66;
            v85 = v46;
            v78 = v49;
            v79[0] = v50;
            v77 = v49;
            p_src = v49;
            std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&p_src);
          }

          v51 = Width + a5 * v31 - Width;
          memset(v79, 170, 0x2D0uLL);
          p_src = 0;
          v77 = 0;
          v78 = 0;
          v79[90] = v79;
          TJustEngine::GenerateMaximaList(&v88, v22, v64, v65, 1, 0, &__src, &p_src, v51);
          std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(v80, v28);
          TJustEngine::DistributeGap(v39, *(&v39 + 1), v64, v65, 1, 0, __src, v84, v51, v80[0], v69);
          if (p_src == v77)
          {
            v54 = v63;
          }

          else
          {
            v68 = 0xAAAAAAAAAAAAAAAALL;
            *&v52 = 0xAAAAAAAAAAAAAAAALL;
            *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v74[28] = v52;
            v74[29] = v52;
            v74[26] = v52;
            v74[27] = v52;
            v74[24] = v52;
            v74[25] = v52;
            v74[22] = v52;
            v74[23] = v52;
            v74[20] = v52;
            v74[21] = v52;
            v74[18] = v52;
            v74[19] = v52;
            v74[16] = v52;
            v74[17] = v52;
            v74[14] = v52;
            v74[15] = v52;
            v74[12] = v52;
            v74[13] = v52;
            v74[10] = v52;
            v74[11] = v52;
            v74[8] = v52;
            v74[9] = v52;
            v74[6] = v52;
            v74[7] = v52;
            v74[4] = v52;
            v74[5] = v52;
            v74[2] = v52;
            v74[3] = v52;
            v74[0] = v52;
            v74[1] = v52;
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v75 = v74;
            v53 = TPostcompEngine::DoActions(v39, *(&v39 + 1), v64, v65, &p_src, v80[0], &v68, &v71);
            v54 = v63;
            if (v68 >= 1)
            {
              *&v97[8] += v68;
              v27 += v68;
              v65 += v68;
              v66 += v68;
            }

            if (v71 != v72)
            {
              TAATPostcompEngine::ApplyKashidas(v39, *(&v39 + 1), &v71, v80[0]);
              v68 = v55;
              if (v55 >= 1)
              {
                *&v97[8] += v55;
                v65 += v55;
                v27 += v55;
                v66 += v55;
                ApplyArabicLowConnections<std::__wrap_iter<CTRun **>>(v39, *(&v39 + 1));
              }
            }

            v62 |= v53;
            v70 = &v71;
            std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v70);
            v28 = v66;
          }

          v71 = &p_src;
          std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v71);
          v26 = v65 + v64;
          v29 = v54 ^ 1;
          p_src = v80;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_src);
          v25 = *(v23 + 208);
        }

        v34 = v28++ < v25;
      }

      while (v34);
      if ((v62 & 1) == 0)
      {
        goto LABEL_48;
      }

      TLine::ResetLine(&v88, v22);
      v21 = v89;
    }

    while (*(&v89 + 1) != v89);
    while (1)
    {
      do
      {
LABEL_47:
        __break(1u);
LABEL_48:
        ;
      }

      while (*(&v89 + 1) == v89);
      v80[0] = *v89;
      v71 = atomic_exchange(v80, 0);
      if (!*(v59 + 18))
      {
        break;
      }

      p_src = 0xAAAAAAAAAAAAAAAALL;
      TLine::ReplaceRun(*v59, v61, &v71, &p_src);
      if (*(atomic_load_explicit(&p_src, memory_order_acquire) + 40) != *(v59 + 18))
      {
        goto LABEL_53;
      }

      v56 = *(*v59 + 16);
      if (v61 < (*(*v59 + 24) - v56) >> 3)
      {
        *(v59 + 18) = *(*(v56 + 8 * v61) + 48);
        TRunGlue::UpdateForCurrentRealRun(v59);
LABEL_53:

        break;
      }
    }

    p_src = &__src;
    std::vector<JustLeftRightMaxima,TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_src);
    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  TLine::~TLine(&v88);
  return v57;
}

void ApplyArabicLowConnections<std::__wrap_iter<CTRun **>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v41 = *MEMORY[0x1E69E9840];
  if (v2 != v3)
  {
    v4 = v3;
    v5 = v2;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    do
    {
      v7 = *(*v5 + 48);
      if (*(v7 + 304) == 2)
      {
        v8 = *(atomic_load_explicit((v7 + 56), memory_order_acquire) + 40);
        CommonTable = TBaseFont::GetCommonTable(*(v8 + 408), 1196643650, 0);
        if (CommonTable)
        {
          v23 = 0xAAAAAAAAAAAAAAAALL;
          *&v10 = 0xAAAAAAAAAAAAAAAALL;
          *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v22[3] = v10;
          v22[4] = v10;
          v22[1] = v10;
          v22[2] = v10;
          v22[0] = v10;
          v32 = 0;
          v31 = 0;
          v33 = &OTL::GDEF::kNullClassDefTable;
          v34[0] = &OTL::GDEF::kNullClassDefTable;
          v34[1] = &OTL::GDEF::kNullMarkGlyphSets;
          memset(&v34[2], 0, 48);
          OTL::GCommon::GCommon(v22, 0, v8, CommonTable, &v31, 1634885986, 0);
          *&v22[0] = &unk_1EF258990;
          v39 = 0xAAAAAAAAAAAAAAAALL;
          *&v11 = 0xAAAAAAAAAAAAAAAALL;
          *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v38[5] = v11;
          v38[6] = v11;
          v38[3] = v11;
          v38[4] = v11;
          v38[1] = v11;
          v38[2] = v11;
          v38[0] = v11;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v40 = v38;
          LODWORD(v26) = 1280268099;
          OTL::FeatureBuffer::FeatureBuffer(&v31, &v26, 1);
          SingleSubstLookups = OTL::GSUB::GetSingleSubstLookups(v22, &v31, &v35);
          __dst[0] = &v31;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
          if (SingleSubstLookups)
          {
            v13 = *(v7 + 208);
            memset(v34, 170, 0xC30uLL);
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34[390] = v34;
            v15 = v35;
            v14 = v36;
            while (v15 != v14)
            {
              v16 = *v15++;
              v6 = v6 & 0xFFFFFFFF00000000 | v16;
              OTL::GlyphLookups::SetLookupInRange<false>(&v31, v6, 0, v13);
            }

            v17 = *(v7 + 216);
            *&v18 = 0xAAAAAAAAAAAAAAAALL;
            *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[28] = v18;
            v29[29] = v18;
            v29[26] = v18;
            v29[27] = v18;
            v29[24] = v18;
            v29[25] = v18;
            v29[22] = v18;
            v29[23] = v18;
            v29[20] = v18;
            v29[21] = v18;
            v29[18] = v18;
            v29[19] = v18;
            v29[16] = v18;
            v29[17] = v18;
            v29[14] = v18;
            v29[15] = v18;
            v29[12] = v18;
            v29[13] = v18;
            v29[10] = v18;
            v29[11] = v18;
            v29[8] = v18;
            v29[9] = v18;
            v29[6] = v18;
            v29[7] = v18;
            v29[4] = v18;
            v29[5] = v18;
            v29[2] = v18;
            v29[3] = v18;
            v29[0] = v18;
            v29[1] = v18;
            v27 = 0;
            v26 = 0;
            v28 = 0;
            v30 = v29;
            if (v13)
            {
              std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v26, v13);
              v19 = v27;
              bzero(v27, 16 * v13);
              v27 = &v19[16 * v13];
            }

            memcpy(__dst, &unk_1847738B0, sizeof(__dst));
            explicit = atomic_load_explicit((v7 + 56), memory_order_acquire);
            TRunGlue::TRunGlue(__dst, explicit, *(v17 + 16), v26, v13, 0, 0, 0);
            LOBYTE(v24) = 0;
            if (*(v7 + 224))
            {
              v21 = -1;
            }

            else
            {
              v21 = 1;
            }

            OTL::GSUB::ApplyLookups(v22, __dst, v21, &v31, &v24, 0, 0);
            std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&__dst[56]);
            v24 = &__dst[32];
            std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
            v24 = &__dst[27];
            std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
            v24 = &__dst[7];
            std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
            __dst[0] = &v26;
            std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
            __dst[0] = &v31;
            std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](__dst);
            v6 = 0xAAAAAAAAAAAAAAAALL;
          }

          v31 = &v35;
          std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v31);
        }
      }

      v5 += 8;
    }

    while (v5 != v4);
  }
}

uint64_t TJustEngine::ZeroRange(uint64_t this, TLine *a2, CFRange a3)
{
  v3 = this;
  v4 = *(this + 16);
  v5 = *(this + 24);
  if (v4 == v5)
  {
    v10 = 0;
    v7 = *(this + 16);
  }

  else
  {
    v6 = 0;
    v7 = *(this + 16);
    v8 = v7;
    while (1)
    {
      v9 = *(*(*v8 + 40) + 208) + v6;
      if (v9 > a2)
      {
        break;
      }

      v8 += 8;
      v7 += 8;
      v6 = v9;
      if (v8 == v5)
      {
        v10 = 0;
        v7 = *(this + 24);
        goto LABEL_8;
      }
    }

    v10 = a2 - v6;
  }

LABEL_8:
  v11 = v7 - v4;
  v12 = v11 >> 3;
  v13 = v5 - v4;
  if (v11 >> 3 < v13 >> 3)
  {
    if (v13 >> 3 <= v12)
    {
LABEL_21:
      __break(1u);
    }

    else if (a3.location >= 1)
    {
      v14 = *(*(v4 + v11) + 48);
      v15 = (v14 + 24);
      v16 = v14[26];
      v17 = a3.location + 1;
      v18 = MEMORY[0x1E695F060];
      while (v10 != v16)
      {
        if (!v10)
        {
          goto LABEL_17;
        }

LABEL_19:
        this = TStorageRange::SetAdvance(v15, v10++, *v18);
        if (--v17 <= 1)
        {
          return this;
        }
      }

      ++v12;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24) - v19;
      if (v12 >= v20 >> 3)
      {
        return this;
      }

      if (v20 >> 3 <= v12)
      {
        goto LABEL_21;
      }

      v14 = *(*(v19 + 8 * v12) + 48);
      v16 = v14[26];
      v15 = (v14 + 24);
LABEL_17:
      v21 = v14[39];
      v10 = 0;
      if (v21)
      {
        *v21 = *v18;
      }

      goto LABEL_19;
    }
  }

  return this;
}

void std::__destroy_at[abi:fn200100]<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,0>(uint64_t a1)
{
  v4 = *(a1 + 8);
  v3 = (a1 + 8);
  v2 = v4;
  *v3 = 0;
  if (v4)
  {

    std::default_delete<std::vector<unsigned short>>::operator()[abi:fn200100](v3, v2);
  }
}

void std::default_delete<std::vector<unsigned short>>::operator()[abi:fn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1865F22D0);
  }
}

void *std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__emplace_back_slow_path<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>(void *a1, uint64_t *a2, uint64_t *a3, atomic_ullong *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = a1[93];
    v9 = v8 + 24 * v7;
    if (v9 > (a1 + 93))
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    a1[93] = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = (v8 + 24 * v4);
  v11 = v8 + 24 * v7;
  v12 = *a2;
  v13 = *a3;
  *a3 = 0;
  *v10 = v12;
  v10[1] = v13;
  v10[2] = atomic_exchange(a4, 0);
  v14 = v10 + 3;
  v15 = *a1;
  v16 = a1[1];
  v17 = v10 + *a1 - v16;
  if (*a1 != v16)
  {
    v18 = *a1;
    v19 = (v10 + *a1 - v16);
    do
    {
      v20 = *v18;
      v21 = v18[1];
      v18[1] = 0;
      *v19 = v20;
      v19[1] = v21;
      v19[2] = atomic_exchange(v18 + 2, 0);
      v18 += 3;
      v19 += 3;
    }

    while (v18 != v16);
    do
    {
      std::__destroy_at[abi:fn200100]<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,0>(v15);
      v15 += 3;
    }

    while (v15 != v16);
    v15 = *a1;
  }

  *a1 = v17;
  a1[1] = v14;
  v22 = a1[2];
  a1[2] = v11;
  if (v15)
  {
    v23 = a1 + 93;
    if (a1 + 3 <= v15 && v23 > v15)
    {
      if (v22 == *v23)
      {
        *v23 = v15;
      }
    }

    else
    {
      operator delete(v15);
    }
  }

  return v14;
}

void TAATJustEngine::PostcompTable(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v3 = [atomic_load_explicit(this + 2 memory:"subdataWithRange:" order:{this[6] - CFDataGetBytePtr(atomic_load_explicit(this + 2, memory_order_acquire)), this[4] - this[6]}acquire)];
  *a2 = atomic_exchange(&v3, 0);
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2, __int16 *a3)
{
  v3 = (a1[1] - *a1) >> 1;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 1)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 2 * a2;
      v17 = *a3;
      v18 = v14 + 8;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_18475A340)));
        if (vuzp1_s8(vuzp1_s16(v21, *v15.i8), *v15.i8).u8[0])
        {
          *(v19 - 4) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v15), *&v15).i8[1])
        {
          *(v19 - 3) = v17;
        }

        if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_18475AAF0)))), *&v15).i8[2])
        {
          *(v19 - 2) = v17;
          *(v19 - 1) = v17;
        }

        v22 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_18475AAE0)));
        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i32[1])
        {
          *v19 = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(v22, *&v15)).i8[5])
        {
          v19[1] = v17;
        }

        if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_18475AAD0))))).i8[6])
        {
          v19[2] = v17;
          v19[3] = v17;
        }

        v12 += 8;
        v19 += 8;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    if ((a2 + (v7 >> 1)) < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v7 >> 1;
    v9 = v5 - *a1;
    if (v9 <= a2 + (v7 >> 1))
    {
      v10 = a2 + (v7 >> 1);
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, v11);
    }

    v23 = 0;
    v24 = 2 * v8;
    v25 = 2 * v8 + 2 * a2;
    v26 = *a3;
    v27 = (a2 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v27 - ((a2 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8;
    v29 = vdupq_n_s64(v27);
    v30 = (v24 + 8);
    do
    {
      v31 = vdupq_n_s64(v23);
      v32 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_18475A340)));
      if (vuzp1_s8(vuzp1_s16(v32, *v29.i8), *v29.i8).u8[0])
      {
        *(v30 - 4) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v29), *&v29).i8[1])
      {
        *(v30 - 3) = v26;
      }

      if (vuzp1_s8(vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_18475AAF0)))), *&v29).i8[2])
      {
        *(v30 - 2) = v26;
        *(v30 - 1) = v26;
      }

      v33 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_18475AAE0)));
      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i32[1])
      {
        *v30 = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(v33, *&v29)).i8[5])
      {
        v30[1] = v26;
      }

      if (vuzp1_s8(*&v29, vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, vorrq_s8(v31, xmmword_18475AAD0))))).i8[6])
      {
        v30[2] = v26;
        v30[3] = v26;
      }

      v23 += 8;
      v30 += 8;
    }

    while (v28 != v23);
    v34 = *(a1 + 8) - *a1;
    v35 = v24 - v34;
    memcpy((v24 - v34), *a1, v34);
    v36 = *a1;
    *a1 = v35;
    *(a1 + 8) = v25;
    *(a1 + 16) = 0;
    if (v36)
    {

      operator delete(v36);
    }
  }
}

void std::allocator<unsigned short>::allocate_at_least[abi:fn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

uint64_t TPostcompEngine::DoActions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v63[129] = *MEMORY[0x1E69E9840];
  v8 = *a5;
  v45 = *(a5 + 8);
  if (*a5 == v45)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v51 = a8 + 24;
  v14 = (a8 + 504);
  while (1)
  {
    v15 = *v8 - v12;
    if (*v8 > v12)
    {
      v16 = (a1 + 8 * v12);
      do
      {
        v17 = *v16++;
        v18 = *(*(v17 + 40) + 208);
        a3 -= v18;
        v13 += v18;
        a6 += 8 * v18;
        --v15;
      }

      while (v15);
      v12 = *v8;
    }

    v19 = *(*(a1 + 8 * v12) + 48);
    v20 = *(v19 + 208);
    v21 = v20 >= a3 + a4 ? a3 + a4 : *(v19 + 208);
    v49 = v12;
    v52 = *(*(a1 + 8 * v12) + 48);
    if (a3 > 0 || a3 + a4 < 1)
    {
      v22 = 0;
      v23 = 0;
      if ((a3 & 0x8000000000000000) == 0 && a3 < v20)
      {
        v23 = v21 - a3;
        v22 = a3;
      }
    }

    else
    {
      v22 = 0;
      v23 = v21;
    }

    memset(v63, 170, 0x3E8uLL);
    memset(v62, 0, sizeof(v62));
    v63[60] = v63;
    LOWORD(v63[61]) = -1;
    memset(&v63[62], 0, 24);
    v63[125] = &v63[65];
    v63[126] = v52;
    v63[127] = v22;
    v63[128] = v23;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v60[28] = v24;
    v60[29] = v24;
    v60[26] = v24;
    v60[27] = v24;
    v60[24] = v24;
    v60[25] = v24;
    v60[22] = v24;
    v60[23] = v24;
    v60[20] = v24;
    v60[21] = v24;
    v60[18] = v24;
    v60[19] = v24;
    v60[16] = v24;
    v60[17] = v24;
    v60[14] = v24;
    v60[15] = v24;
    v60[12] = v24;
    v60[13] = v24;
    v60[10] = v24;
    v60[11] = v24;
    v60[8] = v24;
    v60[9] = v24;
    v60[6] = v24;
    v60[7] = v24;
    v60[4] = v24;
    v60[5] = v24;
    v60[2] = v24;
    v60[3] = v24;
    v60[0] = v24;
    v60[1] = v24;
    v57 = 0;
    v58 = 0;
    v50 = v8;
    v59 = 0;
    v61 = v60;
    explicit = atomic_load_explicit(v8 + 2, memory_order_acquire);
    if (explicit)
    {
      BytePtr = CFDataGetBytePtr(explicit);
      v27 = CFDataGetBytePtr(explicit);
      if (v27)
      {
        v28 = &v27[CFDataGetLength(explicit)];
        goto LABEL_21;
      }
    }

    else
    {
      BytePtr = 0;
    }

    v28 = 0;
LABEL_21:
    if (TAATPostcompEngine::DoActions(v62, v50[1], BytePtr, v28, a6, a7, &v57))
    {
      break;
    }

    v29 = v57;
    v30 = v58;
    if (v57 != v58)
    {
      v31 = *(a8 + 8);
      do
      {
        *v29 += v13;
        v32 = *(a8 + 16);
        if (v31 >= v32)
        {
          v56 = 0xAAAAAAAAAAAAAAAALL;
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v54 = v33;
          v55 = v33;
          v34 = (v31 - *a8) >> 4;
          v35 = v34 + 1;
          if ((v34 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v36 = v32 - *a8;
          if (v36 >> 3 > v35)
          {
            v35 = v36 >> 3;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF0)
          {
            v37 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          *(&v55 + 1) = 0;
          v56 = v51;
          if (v37)
          {
            v38 = *v14;
            v39 = *v14 + 16 * v37;
            if (v39 > v14)
            {
              if (!(v37 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            *v14 = v39;
          }

          else
          {
            v38 = 0;
          }

          *&v54 = v38;
          *(&v54 + 1) = v38 + 16 * v34;
          *&v55 = *(&v54 + 1);
          *(&v55 + 1) = v38 + 16 * v37;
          **(&v54 + 1) = *v29;
          *&v55 = v55 + 16;
          v40 = *(a8 + 8) - *a8;
          v41 = *(&v54 + 1) - v40;
          memcpy((*(&v54 + 1) - v40), *a8, v40);
          v42 = *a8;
          *a8 = v41;
          v43 = *(a8 + 16);
          v53 = v55;
          *(a8 + 8) = v55;
          *&v55 = v42;
          *(&v55 + 1) = v43;
          *&v54 = v42;
          *(&v54 + 1) = v42;
          std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(&v54);
          v31 = v53;
        }

        else
        {
          *v31++ = *v29;
        }

        *(a8 + 8) = v31;
        v29 += 16;
      }

      while (v29 != v30);
    }

    *&v54 = &v57;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v54);
    v57 = &v63[62];
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v57);
    std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](v62);
    v8 = v50 + 3;
    v12 = v49;
    if (v50 + 3 == v45)
    {
      return 0;
    }
  }

  *&v54 = &v57;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v54);
  v57 = &v63[62];
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v57);
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](v62);
  return 1;
}

uint64_t TAATPostcompEngine::DoActions(uint64_t *a1, void *a2, SFNTLookupTable *a3, SFNTLookupTable *a4, uint64_t a5, void *a6, char **a7)
{
  *a6 = 0;
  if (!a3)
  {
    return 0;
  }

  v11 = a1;
  v12 = a1[129];
  v13 = *(*(v12 + 216) + 16);
  v14 = *(v12 + 200);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v187 = v15;
  v188 = 0xAAAAAAAAAAAAAAAALL;
  v185 = TAATLookupTable::BadTable;
  v186 = 0;
  v189 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v185, a3, a4);
  v16 = v11[131];
  v184 = v11;
  if (v16 < 1)
  {
LABEL_123:
    v112 = 0;
    goto LABEL_124;
  }

  v181 = v13 + 2 * v14;
  v182 = a5;
  v17 = v11[130];
  v179 = a3;
  v180 = v16 + v17;
  v178 = (v11 + 68);
  v172 = (v11 + 3);
  v173 = (v11 + 63);
  while (1)
  {
    v18 = *(v181 + 2 * v17);
    GlyphIndexForChar = 0xAAAAAAAAAAAAAAAALL;
    v19 = v185;
    v20 = (&v185 + (v186 >> 1));
    if (v186)
    {
      v19 = *(*v20 + v185);
    }

    v21 = v19(v20, v18, &GlyphIndexForChar);
    if (v21)
    {
      if (v21 < v179 || v21 + 1 > a4)
      {
        goto LABEL_123;
      }

      v23 = bswap32(*v21) >> 16;
      if ((v23 + 1) >= 2u)
      {
        v24 = (&v179->format + v23);
        v25 = (v24 + 1);
        if (v24 + 1 > a4)
        {
          goto LABEL_123;
        }

        if (*v24)
        {
          break;
        }
      }
    }

LABEL_122:
    if (++v17 >= v180)
    {
      goto LABEL_123;
    }
  }

  v26 = bswap32(*v24);
  while (1)
  {
    v27 = (v25 + 4);
    if (v25 + 2 < v24 || v27 > a4)
    {
      goto LABEL_122;
    }

    if (v17 >= (a2[1] - *a2) >> 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*a2 + 2 * v17);
    }

    v30 = *(v25 + 1);
    if (v29 != bswap32(*v25) >> 16)
    {
      goto LABEL_110;
    }

    v31 = *(a5 + 8 * v17);
    v32 = bswap32(v25[1]) >> 16;
    if (v32 > 1)
    {
      break;
    }

    if (!v32)
    {
      v50 = v184[129];
      v51 = *(*(*(v50 + 216) + 48) + 8 * *(v50 + 200) + 8 * v17);
      GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v50, v51);
      v52 = v50;
      v11 = v184;
      v53 = TRun::GetNextChar(v52, v51, &GlyphIndexForChar) - v51;
      a5 = v182;
      if (v53 >= 2)
      {
        explicit = atomic_load_explicit((v184[129] + 56), memory_order_acquire);
        if (v25 + 11 <= a4)
        {
          v55 = *(*(explicit + 40) + 24);
          if (v55 * vcvts_n_f32_s32(bswap32(*v27), 0x10uLL) > v31 || v55 * vcvts_n_f32_s32(bswap32(*(v25 + 3)), 0x10uLL) < v31)
          {
            v56 = bswap32(v25[8]) >> 16;
            v57 = *(v184 + 256);
            if (v56 <= v57)
            {
              if (v56 < v57)
              {
                *(v184 + 256) = v56;
              }

              v59 = v184[1];
              v58 = v184[2];
              if (v59 >= v58)
              {
                v92 = *v184;
                v93 = v59 - *v184;
                v94 = (v93 >> 4) + 1;
                if (v94 >> 60)
                {
                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                v95 = v58 - v92;
                if (v95 >> 3 > v94)
                {
                  v94 = v95 >> 3;
                }

                if (v95 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v96 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  v97 = *v173;
                  v98 = *v173 + 16 * v96;
                  if (v98 > v173)
                  {
                    if (!(v96 >> 60))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:fn200100]();
                  }

                  *v173 = v98;
                }

                else
                {
                  v97 = 0;
                }

                v107 = &v97[16 * (v93 >> 4)];
                v108 = &v97[16 * v96];
                *v107 = v17;
                v107[1] = v27;
                v60 = v107 + 2;
                v109 = v97;
                memcpy(v97, v92, v93);
                v110 = *v184;
                *v184 = v109;
                v184[1] = v60;
                v111 = v184[2];
                v184[2] = v108;
                v11 = v184;
                if (v110)
                {
                  a5 = v182;
                  if (v172 > v110 || v173 <= v110)
                  {
                    operator delete(v110);
                  }

                  else if (v111 == *v173)
                  {
                    *v173 = v110;
                  }
                }

                else
                {
                  a5 = v182;
                }
              }

              else
              {
                *v59 = v17;
                v59[1] = v27;
                v60 = v59 + 2;
              }

              v11[1] = v60;
            }
          }
        }
      }

      goto LABEL_110;
    }

    if (v32 == 1 && v31 > 0.0 && v25 + 5 <= a4)
    {
      v38 = bswap32(*v27) >> 16;
      v39 = v11[66];
      v40 = v11[67];
      if (v39 < v40)
      {
        *v39 = v17;
        *(v39 + 8) = v38;
        v36 = v39 + 16;
        *(v39 + 12) = 1;
        goto LABEL_109;
      }

      v65 = v11[65];
      v66 = v39 - v65;
      v67 = (v39 - v65) >> 4;
      v68 = v67 + 1;
      if ((v67 + 1) >> 60)
      {
        goto LABEL_206;
      }

      v69 = v40 - v65;
      if (v69 >> 3 > v68)
      {
        v68 = v69 >> 3;
      }

      if (v69 >= 0x7FFFFFFFFFFFFFF0)
      {
        v68 = 0xFFFFFFFFFFFFFFFLL;
      }

      v195 = v178;
      if (v68)
      {
        v70 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<KashidaEntry,30ul>>(v178, v68);
        v68 = v71;
        v65 = v11[65];
        v66 = v11[66] - v65;
        v72 = v66 >> 4;
      }

      else
      {
        v70 = 0;
        v72 = v67;
      }

      v99 = v70 + 16 * v67;
      v176 = v70 + 16 * v68;
      *v99 = v17;
      *(v99 + 8) = v38;
      *(v99 + 12) = 1;
LABEL_108:
      v36 = v99 + 16;
      v104 = (v99 - 16 * v72);
      memcpy(v104, v65, v66);
      v105 = v11[65];
      v11[65] = v104;
      v11[66] = v36;
      v106 = v11[67];
      v11[67] = v176;
      v193 = v105;
      v194 = v106;
      GlyphIndexForChar = v105;
      v192 = v105;
      std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(&GlyphIndexForChar);
      a5 = v182;
      goto LABEL_109;
    }

LABEL_110:
    v25 = (v25 + bswap32(v30));
    if (!--v26)
    {
      goto LABEL_122;
    }
  }

  if (v32 != 2)
  {
    if (v32 != 3)
    {
      if (v32 != 5 || v31 <= 0.0 || (*(v11[129] + 90) & 1) != 0 || v25 + 6 > a4)
      {
        goto LABEL_110;
      }

      v33 = bswap32(v25[5]) >> 16;
      v34 = v11[66];
      v35 = v11[67];
      if (v34 < v35)
      {
        *v34 = v17;
        *(v34 + 8) = v33;
        v36 = v34 + 16;
        *(v34 + 12) = 0;
LABEL_109:
        v11[66] = v36;
        goto LABEL_110;
      }

      v65 = v11[65];
      v66 = v34 - v65;
      v87 = (v34 - v65) >> 4;
      v88 = v87 + 1;
      if ((v87 + 1) >> 60)
      {
        goto LABEL_206;
      }

      v89 = v35 - v65;
      if (v89 >> 3 > v88)
      {
        v88 = v89 >> 3;
      }

      if (v89 >= 0x7FFFFFFFFFFFFFF0)
      {
        v88 = 0xFFFFFFFFFFFFFFFLL;
      }

      v195 = v178;
      if (v88)
      {
        v90 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<KashidaEntry,30ul>>(v178, v88);
        v88 = v91;
        v65 = v11[65];
        v66 = v11[66] - v65;
        v72 = v66 >> 4;
      }

      else
      {
        v90 = 0;
        v72 = v87;
      }

      v99 = v90 + 16 * v87;
      v176 = v90 + 16 * v88;
      *v99 = v17;
      *(v99 + 8) = v33;
      *(v99 + 12) = 0;
      goto LABEL_108;
    }

    if (v31 > 0.0)
    {
      v46 = v11[129];
      v47 = v46[27];
      v48 = *(v47 + 32);
      if (v48 || (v81 = *(v47 + 24)) == 0)
      {
        v49 = (v48 + 16 * v46[25] + 16 * v17);
      }

      else
      {
        v49 = (v81 + 8 * v46[25] + 8 * v17);
      }

      v82 = *v49;
      v83 = *(atomic_load_explicit(v46 + 7, memory_order_acquire) + 40);
      v190 = *(*(v46[27] + 16) + 2 * v46[25] + 2 * v17);
      GlyphIndexForChar = -1;
      TFont::GetUnsummedAdvancesForGlyphs(v83, &v190, &GlyphIndexForChar, 1, 1, 0, 0);
      v84 = GlyphIndexForChar;
      v85 = v11[129];
      TRun::InitStretchFactors(v85);
      v86 = *(*(v85 + 39) + 56);
      if (v17 >= (*(*(v85 + 39) + 64) - v86) >> 4)
      {
        __break(1u);
        return 0;
      }

      *(v86 + 16 * v17) = v82 / *&v84;
      a5 = v182;
    }

    goto LABEL_110;
  }

  if (v31 <= 0.0 || v25 + 8 > a4)
  {
    goto LABEL_110;
  }

  v42 = v25[6];
  v43 = v25[7];
  v44 = *(*(atomic_load_explicit((v11[129] + 56), memory_order_acquire) + 40) + 24) * vcvts_n_f32_s32(bswap32(*(v25 + 2)), 0x10uLL);
  if (v44 > v31)
  {
    a5 = v182;
    if (v42 != 0xFFFF)
    {
      goto LABEL_63;
    }

    goto LABEL_110;
  }

  v45 = v11[129];
  [*(v45 + 216) setGlyph:__rev16(v43) atIndex:*(v45 + 200) + v17];
  if (v43 == 0xFFFF && (*(v45 + 225) & 2) != 0)
  {
    *(v45 + 225) |= 8u;
  }

  a5 = v182;
  v11 = v184;
  if (v42 == 0xFFFF)
  {
    goto LABEL_181;
  }

LABEL_63:
  v61 = __rev16(v42);
  v62 = v11[66];
  v63 = v11[67];
  if (v62 >= v63)
  {
    v73 = v11[65];
    v74 = v62 - v73;
    v75 = (v62 - v73) >> 4;
    v76 = v75 + 1;
    if ((v75 + 1) >> 60)
    {
      goto LABEL_206;
    }

    v77 = v63 - v73;
    if (v77 >> 3 > v76)
    {
      v76 = v77 >> 3;
    }

    if (v77 >= 0x7FFFFFFFFFFFFFF0)
    {
      v76 = 0xFFFFFFFFFFFFFFFLL;
    }

    v195 = v178;
    if (v76)
    {
      v78 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<KashidaEntry,30ul>>(v178, v76);
      v76 = v79;
      v73 = v11[65];
      v74 = v11[66] - v73;
      v80 = v74 >> 4;
    }

    else
    {
      v78 = 0;
      v80 = v75;
    }

    v100 = v78 + 16 * v75;
    v177 = v78 + 16 * v76;
    *v100 = v17;
    *(v100 + 8) = v61;
    *(v100 + 12) = 1;
    v64 = v100 + 16;
    v101 = (v100 - 16 * v80);
    memcpy(v101, v73, v74);
    v102 = v11[65];
    v11[65] = v101;
    v11[66] = v64;
    v103 = v11[67];
    v11[67] = v177;
    v193 = v102;
    v194 = v103;
    GlyphIndexForChar = v102;
    v192 = v102;
    std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(&GlyphIndexForChar);
    a5 = v182;
  }

  else
  {
    *v62 = v17;
    *(v62 + 8) = v61;
    v64 = v62 + 16;
    *(v62 + 12) = 1;
  }

  v11[66] = v64;
  if (v44 > v31)
  {
    goto LABEL_110;
  }

LABEL_181:
  v112 = 1;
LABEL_124:
  v113 = *v11;
  v114 = v11[1];
  if (*v11 == v114)
  {
    v135 = v11[65];
    v136 = v11[66];
    if (v135 == v136)
    {
      return v112;
    }

    v137 = v136 - v135;
    v138 = a7[2];
    v139 = *a7;
    if (v138 - *a7 >= (v136 - v135))
    {
      v160 = a7[1];
      v161 = v160 - v139;
      if (v160 - v139 >= v137)
      {
        memmove(*a7, v11[65], v136 - v135);
        v166 = &v139[v137];
      }

      else
      {
        if (v160 != v139)
        {
          memmove(*a7, v11[65], v160 - v139);
          v160 = a7[1];
        }

        v162 = &v135[v161];
        v163 = v160;
        if (&v135[v161] != v136)
        {
          v163 = v160;
          v164 = v160;
          do
          {
            v165 = *v162;
            v162 += 16;
            *v164 = v165;
            v164 += 16;
            v163 += 16;
          }

          while (v162 != v136);
        }

        v166 = v163;
      }

      a7[1] = v166;
      return v112;
    }

    v140 = v137 >> 4;
    if (v139)
    {
      a7[1] = v139;
      if (a7 + 3 > v139 || (v141 = a7 + 63, a7 + 63 <= v139))
      {
        operator delete(v139);
      }

      else if (v138 == *v141)
      {
        *v141 = v139;
      }

      v138 = 0;
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
    }

    if (!(v140 >> 60))
    {
      v167 = v138 >> 3;
      if (v138 >> 3 <= v140)
      {
        v167 = v137 >> 4;
      }

      v168 = v138 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v167;
      if (!(v168 >> 60))
      {
        v169 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<KashidaEntry,30ul>>((a7 + 3), v168);
        *a7 = v169;
        a7[1] = v169;
        a7[2] = &v169[16 * v170];
        do
        {
          v171 = *v135;
          v135 += 16;
          *v169 = v171;
          v169 += 16;
        }

        while (v135 != v136);
        a7[1] = v169;
        return v112;
      }
    }

LABEL_206:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v115 = (v114 - v113) >> 4;
  v116 = v11[129];
  v183 = *(v116 + 208) % v115;
  v117 = (v113 + 16 * v183);
  while (2)
  {
    v118 = *v117;
    v119 = v117[1];
    v120 = *(*(*(v116 + 216) + 48) + 8 * *(v116 + 200) + 8 * *v117);
    v121 = v184[129];
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v121, v120);
    NextChar = TRun::GetNextChar(v121, v120, &GlyphIndexForChar);
    v123 = bswap32(*(v119 + 10)) >> 16;
    v124 = v119 + 12 + 2 * v123;
    if (v119 + 14 <= a4)
    {
      v125 = (a4 - (v119 + 12)) >> 1;
    }

    else
    {
      v125 = 0;
    }

    if (v124 <= a4 && v124 >= v119 + 12)
    {
      v127 = v123;
    }

    else
    {
      v127 = v125;
    }

    if (NextChar - v120 < v127)
    {
      v183 = (v183 + 1) % ((v184[1] - *v184) >> 4);
      v117 = (*v184 + 16 * v183);
LABEL_141:
      if (!--v115)
      {
        v134 = 0;
        v112 = 0;
        goto LABEL_179;
      }

      continue;
    }

    break;
  }

  v128 = NextChar;
  v129 = v127;
  v130 = [*(v116 + 216) attachmentCountAtIndex:*(v116 + 200) + v118];
  v131 = v184[129];
  if (v130 >= 1)
  {
    v142 = *(v131 + 224);
    v134 = v129 - 1;
    if (v129 >= 2)
    {
      v143 = 2 - v129;
      if ((*(v131 + 224) & 1) == 0)
      {
        v143 = 1;
      }

      v196.location = *v117 + v143;
      v196.length = v129 - 1;
      TStorageRange::InsertGlyphs((v116 + 192), v196);
      v118 += v134;
    }

    [*(v116 + 216) setAttachmentCount:v130 - v134 atIndex:*(v116 + 200) + v118];
    if (v129)
    {
      v144 = *(*(*(v116 + 216) + 48) + 8 * *(v116 + 200) + 8 * v118);
      if (v142)
      {
        v145 = -1;
      }

      else
      {
        v145 = 1;
      }

      v146 = (v119 + 12);
      do
      {
        v147 = *v146++;
        [*(v116 + 216) setGlyph:__rev16(v147) atIndex:v118 + *(v116 + 200)];
        v148 = *(v116 + 225);
        if (v147 == 0xFFFF && (v148 & 2) != 0)
        {
          *(v116 + 225) = v148 | 8;
        }

        [*(v116 + 216) setStringIndex:v144 atIndex:v118 + *(v116 + 200)];
        v118 += v145;
        ++v144;
        --v129;
      }

      while (v129);
    }

    goto LABEL_178;
  }

  v132 = TRun::GetGlyphIndexForCharIndex<false>(v131, v128);
  v133 = v132 - v118;
  if (v132 - v118 < 0)
  {
    v133 = v118 - v132;
  }

  if (v133 != v129)
  {
    goto LABEL_141;
  }

  v112 = 1;
  if (*(v184[129] + 224))
  {
    v150 = -1;
  }

  else
  {
    v150 = 1;
  }

  if (v129)
  {
    v151 = *(v116 + 216);
    v152 = *(v116 + 200);
    v153 = *(v151 + 40) + 4 * v152;
    v154 = *(*(v151 + 48) + 8 * v152 + 8 * v118);
    v155 = (v119 + 12);
    do
    {
      v156 = *v155++;
      [*(v116 + 216) setGlyph:__rev16(v156) atIndex:v118 + *(v116 + 200)];
      v157 = *(v116 + 225);
      if (v156 == 0xFFFF && (v157 & 2) != 0)
      {
        *(v116 + 225) = v157 | 8;
      }

      [*(v116 + 216) setProps:*(v153 + 4 * v118) & 0xFFFFFFDF atIndex:v118 + *(v116 + 200)];
      [*(v116 + 216) setStringIndex:v154 atIndex:v118 + *(v116 + 200)];
      v118 += v150;
      v154 += v150;
      --v129;
    }

    while (v129);
    v134 = 0;
LABEL_178:
    v112 = 1;
    goto LABEL_179;
  }

  v134 = 0;
LABEL_179:
  *a6 = v134;
  return v112;
}

void TAATPostcompEngine::ApplyKashidas(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 == v5)
  {
    return;
  }

  v7 = a1;
  v8 = 0;
  v9 = a2 - a1;
  v56 = a3[1];
  v57 = a2 - a1;
  v53 = a1;
  while (1)
  {
    if (a2 == v7)
    {
      goto LABEL_53;
    }

    v10 = 0;
    v11 = *v4;
    v12 = *(v4 + 4);
    v13 = *(v4 + 3);
    v14 = *v4 + v8;
    v15 = v9;
    v16 = v7;
    while (1)
    {
      v17 = *(*(*v16 + 40) + 208) + v10;
      if (v17 > v14)
      {
        break;
      }

      v16 += 8;
      v15 -= 8;
      v10 = v17;
      if (v16 == a2)
      {
        goto LABEL_53;
      }
    }

    if (!v15)
    {
      goto LABEL_53;
    }

    v18 = v14 - v10;
    v19 = *(*v16 + 48);
    v20 = *(v19 + 216);
    v21 = *(v19 + 200);
    v22 = v20[4];
    if (v22 || (v25 = v20[3]) == 0)
    {
      v23 = (v22 + 16 * v21 + 16 * v18);
      v24 = v23[1];
    }

    else
    {
      v23 = (v25 + 8 * v21 + 8 * v18);
      v24 = 0.0;
    }

    v26 = v20[5] + 4 * v21;
    v60 = *(v20[6] + 8 * v21 + 8 * v18);
    v27 = *v23;
    v28 = *(atomic_load_explicit((v19 + 56), memory_order_acquire) + 40);
    v29 = *(a4 + 8 * v11);
    if (!v13)
    {
      break;
    }

    v62 = v12;
    v61 = NAN;
    TFont::GetUnsummedAdvancesForGlyphs(v28, &v62, &v61, 1, 1, 0, 0);
    if (v29 <= 0.0)
    {
      goto LABEL_52;
    }

    v30 = v61;
    if (v61 <= 0.0)
    {
      goto LABEL_52;
    }

    v31 = v8;
    v65.width = v27 - *(a4 + 8 * v11);
    v65.height = 0.0;
    TStorageRange::SetAdvance((v19 + 192), v18, v65);
    [*(v19 + 216) setProps:*(v26 + 4 * v18) | 0x80u atIndex:*(v19 + 200) + v18];
    v32 = v18 + 1;
    v63.location = v18 + 1;
    v63.length = 1;
    TStorageRange::InsertGlyphs((v19 + 192), v63);
    TRun::InitStretchFactors(v19);
    v33 = *(*(v19 + 312) + 56);
    if (v18 + 1 >= ((*(*(v19 + 312) + 64) - v33) >> 4))
    {
      goto LABEL_56;
    }

    v34 = v29 / v30;
    *(v33 + 16 * v32) = v34;
    [*(v19 + 216) setGlyph:v12 atIndex:*(v19 + 200) + v32];
    if (v12 == 0xFFFF && (*(v19 + 225) & 2) != 0)
    {
      *(v19 + 225) |= 8u;
    }

    v66.width = v30 * v34;
    v66.height = v24;
    TStorageRange::SetAdvance((v19 + 192), v18 + 1, v66);
    [*(v19 + 216) setStringIndex:v60 atIndex:*(v19 + 200) + v32];
    [*(v19 + 216) setProps:256 atIndex:*(v19 + 200) + v32];
    [*(v19 + 216) setAttachmentCount:0 atIndex:*(v19 + 200) + v32];
    v35 = MEMORY[0x1E695EFF8];
    v37 = *MEMORY[0x1E695EFF8];
    v36 = *(MEMORY[0x1E695EFF8] + 8);
    [*(v19 + 216) setOrigin:*(v19 + 200) + v32 atIndex:{*MEMORY[0x1E695EFF8], v36}];
    v9 = v57;
    if (v37 != *v35 || v36 != *(MEMORY[0x1E695EFF8] + 8))
    {
      *(v19 + 225) |= 0x10u;
    }

    v8 = v31 + 1;
    if (*(v19 + 256) <= 1)
    {
      v38 = (v19 + 256);
      v5 = v56;
LABEL_50:
      *v38 = 1;
      goto LABEL_53;
    }

    v5 = v56;
LABEL_53:
    v4 += 2;
    if (v4 == v5)
    {
      return;
    }
  }

  v62 = v12;
  v61 = NAN;
  TFont::GetUnsummedAdvancesForGlyphs(v28, &v62, &v61, 1, 1, 0, 0);
  if (v29 < 0.0 || v61 <= 0.0)
  {
    goto LABEL_52;
  }

  v39 = v29 / v61;
  if (v29 / v61 <= 1.0)
  {
    v54 = v8;
    if (v61 < v29)
    {
      v29 = v61;
    }

    v42 = 1;
  }

  else
  {
    v40 = ceil(v39);
    v41 = llround(v40);
    if (v41 > 32766)
    {
      goto LABEL_52;
    }

    v54 = v8;
    v29 = v29 / v40;
    v39 = v29 / v61;
    v42 = v41;
  }

  v67.width = v27 - *(a4 + 8 * v11);
  v67.height = 0.0;
  TStorageRange::SetAdvance((v19 + 192), v18, v67);
  [*(v19 + 216) setProps:*(v26 + 4 * v18) | 0x80u atIndex:*(v19 + 200) + v18];
  v43 = v18 + 1;
  v64.location = v43;
  v64.length = v42;
  TStorageRange::InsertGlyphs((v19 + 192), v64);
  v55 = v42;
  v59 = v42 - 1;
  if (v42 < 1)
  {
LABEL_48:
    v8 = v55 + v54;
    if (*(v19 + 256) >= 2)
    {
      v7 = v53;
      v5 = v56;
LABEL_52:
      v9 = v57;
      goto LABEL_53;
    }

    v38 = (v19 + 256);
    v7 = v53;
    v5 = v56;
    v9 = v57;
    goto LABEL_50;
  }

  v44 = 0;
  v45 = v42 + v43;
  v46 = 16 * v43;
  v47 = 0.0;
  while (1)
  {
    TRun::InitStretchFactors(v19);
    v48 = *(*(v19 + 312) + 56);
    if (v43 + v44 >= ((*(*(v19 + 312) + 64) - v48) >> 4))
    {
      break;
    }

    if (v59 == v44)
    {
      v47 = v24 + v47;
    }

    *(v48 + v46) = v39;
    v68.width = v29;
    v68.height = v47;
    TStorageRange::SetAdvance((v19 + 192), v43 + v44, v68);
    [*(v19 + 216) setGlyph:v12 atIndex:v43 + v44 + *(v19 + 200)];
    if (v12 == 0xFFFF && (*(v19 + 225) & 2) != 0)
    {
      *(v19 + 225) |= 8u;
    }

    [*(v19 + 216) setStringIndex:v60 atIndex:{v43 + v44 + *(v19 + 200), v53}];
    [*(v19 + 216) setProps:256 atIndex:v43 + v44 + *(v19 + 200)];
    [*(v19 + 216) setAttachmentCount:0 atIndex:v43 + v44 + *(v19 + 200)];
    v49 = MEMORY[0x1E695EFF8];
    v50 = *MEMORY[0x1E695EFF8];
    v51 = *(MEMORY[0x1E695EFF8] + 8);
    [*(v19 + 216) setOrigin:v43 + v44 + *(v19 + 200) atIndex:{*MEMORY[0x1E695EFF8], v51}];
    if (v50 != *v49 || v51 != v49[1])
    {
      *(v19 + 225) |= 0x10u;
    }

    ++v44;
    v46 += 16;
    if (v43 + v44 >= v45)
    {
      goto LABEL_48;
    }
  }

LABEL_56:
  __break(1u);
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<KashidaEntry,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 480);
  result = *(a1 + 480);
  v4 = result + 16 * a2;
  if (v4 > v2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

BOOL DecomposeInitialChar(void *a1, uint64_t *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  unorm2_getNFDInstance();
  if (!unorm2_isNormalized())
  {
    v8 = *a1;
    if ((**a1 & 0xFC00) == 0xD800 && a1[1] - v8 != 2)
    {
      if ((v8[1] & 0xFC00) == 0xDC00)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }

    Decomposition = unorm2_getDecomposition();
    v11 = 0;
    v6 = Decomposition >= v9;
    if (Decomposition >= v9)
    {
      v12 = Decomposition;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30[2] = v13;
      v30[3] = v13;
      v30[0] = v13;
      v30[1] = v13;
      v14 = Decomposition;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v31 = v30;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v27, Decomposition);
      v15 = v28;
      bzero(v28, 2 * v12);
      v28 = &v15[2 * v12];
      unorm2_getDecomposition();
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(a3, *(a3 + 8), v27, v28, (v28 - v27) >> 1);
      v16 = *a2;
      v17 = a2[1];
      v18 = &v17[4 * (*a1 - a1[1]) - *a2] & 0xFFFFFFFFFFFFFFF8;
      v19 = (v18 + *a2);
      if (v17 == v19)
      {
        goto LABEL_21;
      }

      v20 = (v16 + v18);
      v21 = (v16 + v18 + 8);
      v22 = v17 - v21;
      if (v17 != v21)
      {
        memmove(v20, v21, v17 - v21);
        v19 = (v18 + *a2);
      }

      a2[1] = &v20[v22];
      v26 = 0;
      std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(a2, v19, v14, &v26);
      v26 = &v27;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v26);
      v11 = v9;
    }

    v23 = a1[1] - *a1;
    if (v11 == v23 >> 1)
    {
      return v6;
    }

    v24 = v23 >> 1;
    v25 = 2 * v11;
    while (v11 < (a1[1] - *a1) >> 1)
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](a3, (*a1 + v25));
      ++v11;
      v25 += 2;
      if (v24 == v11)
      {
        return v6;
      }
    }

LABEL_21:
    __break(1u);
  }

  return 0;
}

uint64_t ComposeArabicDecompositions(__int16 **a1, void *a2, __int16 **a3)
{
  result = unorm2_getNFDInstance();
  if ((a1[1] - *a1) <= 2)
  {
    goto LABEL_17;
  }

  result = unorm2_composePair();
  if (WORD1(result))
  {
    return 0;
  }

  v7 = result;
  if (a1 != a3)
  {
    result = std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, *a1, a1[1], a1[1] - *a1);
  }

  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9 || (*v8 = v7, v9 == v8 + 1))
  {
LABEL_17:
    __break(1u);
  }

  else
  {
    v10 = v8 + 1;
    v11 = v9 - (v8 + 2);
    if (v9 != v8 + 2)
    {
      memmove(v8 + 1, v8 + 2, v9 - (v8 + 2));
    }

    a3[1] = (v10 + v11);
    v12 = a2[1];
    v13 = v12 - *a2;
    if (v12 != *a2)
    {
      v14 = 0;
      v15 = v13 >> 3;
      while (v14 == *(*a2 + 8 * v14))
      {
        if (v15 == ++v14)
        {
          return 1;
        }
      }

      AdjustIndexesForPairwiseComposition(a2);
    }

    return 1;
  }

  return result;
}

uint64_t TCombiningEngine::ComposeHebrewPresentationForms(__int16 **a1, __int16 **a2, uint64_t a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if ((a1[1] - *a1) < 3)
  {
    return 0;
  }

  v6 = 0;
  v18 = 95684057;
  v19 = -1251;
  v20 = 95880690;
  v21 = -1249;
  v22 = 96536041;
  v23 = -1238;
  v24 = 96601577;
  v25 = -1237;
  v26 = 96598857;
  v27 = -1236;
  v29 = -1236;
  v28 = 96271146;
  v30 = 96664393;
  v31 = -1235;
  v32 = 96271147;
  v33 = -1235;
  v34 = 95880656;
  v35 = -1234;
  v36 = 95946192;
  v37 = -1233;
  v38 = 96208336;
  v39 = -1232;
  v40 = 96208337;
  v41 = -1231;
  v42 = 96208338;
  v43 = -1230;
  v44 = 96208339;
  v45 = -1229;
  v46 = 96208340;
  v47 = -1228;
  v48 = 96208341;
  v49 = -1227;
  v50 = 96208342;
  v51 = -1226;
  v52 = 96208344;
  v53 = -1224;
  v54 = 96208345;
  v55 = -1223;
  v56 = 96208346;
  v57 = -1222;
  v58 = 96208347;
  v59 = -1221;
  v60 = 96208348;
  v61 = -1220;
  v62 = 96208350;
  v63 = -1218;
  v64 = 96208352;
  v65 = -1216;
  v66 = 96208353;
  v67 = -1215;
  v68 = 96208355;
  v69 = -1213;
  v70 = 96208356;
  v71 = -1212;
  v72 = 96208358;
  v73 = -1210;
  v74 = 96208359;
  v75 = -1209;
  v76 = 96208360;
  v77 = -1208;
  v78 = 96208361;
  v79 = -1207;
  v80 = 96208362;
  v81 = -1206;
  v82 = 96011733;
  v83 = -1205;
  v84 = 96404945;
  v85 = -1204;
  v86 = 96404955;
  v87 = -1203;
  v88 = 96404964;
  v89 = -1202;
  v7 = *v3;
  v8 = v3[1];
  while (*(&v18 + v6) != v7 || *(&v18 + v6 + 2) != v8)
  {
    v6 += 6;
    if (v6 == 216)
    {
      return 0;
    }
  }

  v12 = *(&v18 + v6 + 4);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a3 + 184))(&v17, a3);
  if (atomic_load_explicit(&v17, memory_order_acquire) && CFCharacterSetIsCharacterMember(atomic_load_explicit(&v17, memory_order_acquire), v12))
  {
    if (a1 != a2)
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a2, *a1, a1[1], a1[1] - *a1);
    }

    v13 = *a2;
    v14 = a2[1];
    if (*a2 == v14 || (*v13 = v12, v14 == (v13 + 1)))
    {
      __break(1u);
    }

    v15 = v13 + 1;
    v16 = v14 - (v13 + 2);
    if (v14 != (v13 + 2))
    {
      memmove(v13 + 1, v13 + 2, v14 - (v13 + 2));
    }

    a2[1] = (v15 + v16);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *AdjustIndexesForPairwiseComposition(void *result)
{
  v2 = *result;
  v1 = result[1];
  if (&v1[-*result] <= 8)
  {
    goto LABEL_23;
  }

  v3 = result;
  v4 = (v2 + 8);
  v5 = *(v2 + 8);
  if ((v2 + 8) == v1)
  {
LABEL_6:
    v6 = result[1];
  }

  else
  {
    v6 = v2 + 8;
    v7 = (v2 + 8);
    while (*v7)
    {
      v7 += 8;
      v6 += 8;
      if (v7 == v1)
      {
        goto LABEL_6;
      }
    }
  }

  if (v1 != v6)
  {
    v8 = &v1[-v6 - 8];
    if (v1 != (v6 + 8))
    {
      result = memmove(v6, (v6 + 8), &v1[-v6 - 8]);
    }

    v3[1] = &v8[v6];
    return result;
  }

  if (v1 == v4)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v9 = &v1[-v2 - 16];
  if (v1 != (v2 + 16))
  {
    result = memmove((v2 + 8), (v2 + 16), &v1[-v2 - 16]);
  }

  v10 = &v9[v4];
  v3[1] = &v9[v4];
  if (v4 != &v9[v4])
  {
    while (*v4 != v5)
    {
      v4 += 8;
      if (v4 == v10)
      {
        goto LABEL_19;
      }
    }
  }

  if (v10 == v4)
  {
LABEL_19:
    v11 = *v3;
    while (++v11 != v10)
    {
      if (*v11 > v5)
      {
        --*v11;
      }
    }
  }

  return result;
}

char *std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  v4 = __src;
  if (!a3)
  {
    return v4;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 > (v9 - v8) >> 3)
  {
    v10 = *a1;
    v11 = a3 + (&v8[-*a1] >> 3);
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v12 = __src - v10;
    v13 = v9 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v16 = (a1 + 3);
    v52[4] = a1 + 3;
    if (v14)
    {
      v17 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v36 = 0;
    v37 = v17 + 8 * v15;
    v38 = *v5;
    v39 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = v39 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v41 = vdupq_n_s64(v39);
    v42 = (v37 + 8);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v36), xmmword_18475A340)));
      if (v43.i8[0])
      {
        *(v42 - 1) = v38;
      }

      if (v43.i8[4])
      {
        *v42 = v38;
      }

      v36 += 2;
      v42 += 2;
    }

    while (v40 != v36);
    v44 = v17 + 8 * v14;
    memcpy((v37 + 8 * a3), v4, a1[1] - v4);
    v45 = *a1;
    v46 = v37 + 8 * a3 + a1[1] - v4;
    a1[1] = v4;
    v47 = v4 - v45;
    v48 = (v37 - (v4 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    v50 = a1[2];
    a1[2] = v44;
    v52[2] = v49;
    v52[3] = v50;
    v52[0] = v49;
    v52[1] = v49;
    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v52);
    return v37;
  }

  v18 = v8 - __src;
  if (a3 <= (v8 - __src) >> 3)
  {
    v21 = a1[1];
    v20 = a3;
LABEL_21:
    v26 = &__src[8 * a3];
    v27 = &v21[-8 * a3];
    v28 = v21;
    if (v27 < v8)
    {
      v28 = v21;
      do
      {
        v29 = *v27;
        v27 += 8;
        *v28 = v29;
        v28 += 8;
      }

      while (v27 < v8);
    }

    a1[1] = v28;
    if (v21 != v26)
    {
      memmove(&__src[8 * a3], __src, v21 - v26);
    }

    if (v4 <= v5)
    {
      if (a1[1] <= v5)
      {
        v30 = 0;
      }

      else
      {
        v30 = a3;
      }

      v5 += 8 * v30;
    }

    v31 = 0;
    v32 = *v5;
    v33 = vdupq_n_s64(v20 - 1);
    v34 = v4 + 8;
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_18475A340)));
      if (v35.i8[0])
      {
        *(v34 - 1) = v32;
      }

      if (v35.i8[4])
      {
        *v34 = v32;
      }

      v31 += 2;
      v34 += 2;
    }

    while (((v20 + 1) & 0xFFFFFFFFFFFFFFFELL) != v31);
    return v4;
  }

  v19 = 0;
  v20 = v18 >> 3;
  v21 = &v8[8 * (a3 - (v18 >> 3))];
  v22 = *a4;
  v23 = (8 * a3 - v18 - 8) >> 3;
  v24 = vdupq_n_s64(v23);
  do
  {
    v25 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v19), xmmword_18475A340)));
    if (v25.i8[0])
    {
      *&v8[8 * v19] = v22;
    }

    if (v25.i8[4])
    {
      *&v8[8 * v19 + 8] = v22;
    }

    v19 += 2;
  }

  while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v19);
  a1[1] = v21;
  if (v8 != __src)
  {
    goto LABEL_21;
  }

  return v4;
}

unint64_t TRunGlue::InsertedGlyphsAtCharIndex(unint64_t this, uint64_t a2, uint64_t a3)
{
  v4 = this;
  *(*this + 144) += a2;
  v5 = *(this + 144);
  v6 = *(v5 + 8);
  if (v6 <= a3)
  {
    if (*(v5 + 16) + v6 > a3)
    {
      this = TRunGlue::UpdateForCurrentRealRun(this);
      *(v4 + 20) += a2;
    }
  }

  else
  {
    v7 = *(this + 120);
    *(this + 120) = 0;
    this = TRunGlue::PhysicalRunIndexFromLogical(this, 0);
    v8 = *(*v4 + 16);
    if (this >= (*(*v4 + 24) - v8) >> 3)
    {
      __break(1u);
      return this;
    }

    v9 = *(*(v8 + 8 * this) + 48);
    *(v4 + 18) = v9;
    *(v4 + 19) = 0;
    *(v4 + 20) = *(v9 + 208);
    this = TRunGlue::SelectRun(v4, v7);
  }

  v10 = *(v4 + 4);
  if (v10 != -1)
  {
    *(v4 + 4) = v10 + a2;
  }

  return this;
}

uint64_t ApplyModifiedCombiningClasses(__int16 **a1, char a2, void *a3, __int16 **a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if ((**a1 & 0xFC00) != 0xD800 || v8 == 2)
  {
    v10 = 1;
  }

  else if ((v6[1] & 0xFC00) == 0xDC00)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = v8 >> 1;
  if (v8 >> 1 < v10 + 2)
  {
    v12 = 0;
    return v12 & 1;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[0] = v13;
  v66[1] = v13;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v67 = v66;
  if (v7 != v6)
  {
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,30ul>>::__vallocate[abi:fn200100](&v63, v11);
    v14 = v64;
    bzero(v64, v11);
    v64 = &v14[v11];
  }

  v15 = 0;
  v57 = v10;
  do
  {
    v16 = *a1;
    v17 = v10 + 1;
    v18 = (*a1)[v10];
    if ((v18 & 0xFC00) == 0xD800 && v17 != a1[1] - v16)
    {
      v19 = v16[v17];
      v20 = (v19 & 0xFC00) == 56320;
      v21 = v19 + (v18 << 10) - 56613888;
      v17 = v20 ? v10 + 2 : v10 + 1;
      if (v20)
      {
        v18 = v21;
      }
    }

    *v69 = 0;
    v68 = 0;
    *&v69[2] = xmmword_184773AD0;
    *&v69[18] = 0x1B21201F1E1D1C00;
    CombiningClass = u_getCombiningClass(v18);
    v23 = 0;
    if (CombiningClass <= 0x21)
    {
      v23 = v69[CombiningClass - 8];
    }

    v24 = v23 != 0;
    if (!v23)
    {
      LOBYTE(v23) = CombiningClass;
    }

    if (v10 != v17)
    {
      while (v64 - v63 > v10)
      {
        *(v63 + v10++) = v23;
        if (v17 == v10)
        {
          v10 = v17;
          goto LABEL_31;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      v12 = 0;
      goto LABEL_94;
    }

LABEL_31:
    v15 |= v24;
  }

  while (v10 != v11);
  if ((a2 & 1) == 0)
  {
    v25 = a3;
    if (v15)
    {
      goto LABEL_37;
    }

    goto LABEL_93;
  }

  v25 = a3;
  if (ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::once != -1)
  {
    dispatch_once_f(&ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::once, 0, ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::$_0::__invoke);
  }

  v62 = -86;
  v61 = 0;
  v60 = a1[1] - *a1;
  v68 = &v60;
  *v69 = &v63;
  *&v69[8] = &v62;
  *&v69[16] = a1;
  *&v69[24] = &v61;
  ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::$_1::operator()(&v68, 230, 26);
  ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::$_1::operator()(&v68, 220, 25);
LABEL_37:
  if (a1 != a4)
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a4, *a1, a1[1], a1[1] - *a1);
  }

  v26 = v63;
  v27 = v64;
  v28 = v64;
  if ((v57 + v63) != v64)
  {
    v28 = (v57 + v63);
    while (!*v28)
    {
      if (++v28 == v64)
      {
        v28 = v64;
        break;
      }
    }
  }

  if (v64 == v28)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v29 = v27;
      if (v28 + 1 != v27)
      {
        v29 = v28 + 1;
        while (*v29)
        {
          if (++v29 == v27)
          {
            v29 = v27;
            break;
          }
        }
      }

      if (v28 != v29)
      {
        v30 = 0;
        v31 = *v25 + 8 * &v28[-v26] - 8 * v28 + 8 * (v29 - 1) - 8;
        v32 = &(*a4)[&v28[-v26] - v28 + (v29 - 1)];
        do
        {
          if (v28 != v29 - 1)
          {
            v33 = v29 - 2;
            v34 = v32;
            v35 = v31;
            v36 = v29 - 1;
            do
            {
              v37 = *v36;
              v38 = *v33;
              if (v37 < v38)
              {
                *v36 = v38;
                *v33 = v37;
                *v35 = vextq_s8(*v35, *v35, 8uLL);
                HIDWORD(v39) = *(v34 - 2);
                LODWORD(v39) = HIDWORD(v39);
                *(v34 - 2) = v39 >> 16;
                v30 = 1;
              }

              --v36;
              v35 = (v35 - 8);
              v34 -= 2;
              --v33;
            }

            while (v36 != v28);
          }

          ++v28;
        }

        while (v28 != v29);
        v12 |= v30;
      }

      v28 = v27;
      if (v29 != v27)
      {
        v28 = v29;
        while (!*v28)
        {
          if (++v28 == v27)
          {
            v28 = v27;
            break;
          }
        }
      }
    }

    while (v27 != v28);
  }

  if (v11 >= 4 && (a2 & 1) == 0)
  {
    v40 = 0;
    v41 = *a1;
    v42 = a1[1] - *a1;
    v43 = v64 - v63;
    if (v42 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = a1[1] - *a1;
    }

    if (v42 <= 2)
    {
      v45 = 2;
    }

    else
    {
      v45 = a1[1] - *a1;
    }

    v46 = 3;
    if (v42 > 3)
    {
      v46 = a1[1] - *a1;
    }

    v47 = v63 + 3;
    v48 = v46 - 3;
    v49 = v45 - 2;
    v50 = v44 - 1;
    v51 = 16;
    while (v50 != v40 && v49 != v40 && v48 != v40)
    {
      v52 = &v41[v40];
      if (v52[1] - 1463 <= 1 && (v52[2] & 0xFFFB) == 0x5B0)
      {
        v53 = v40 + 3;
        if (v52[3] == 1469)
        {
          goto LABEL_98;
        }

        if (v43 <= v53)
        {
          goto LABEL_92;
        }

        if (*(v47 + v40) == 220)
        {
LABEL_98:
          if (v53 >= (v25[1] - *v25) >> 3)
          {
            goto LABEL_92;
          }

          *(*v25 + v51) = vextq_s8(*(*v25 + v51), *(*v25 + v51), 8uLL);
          if (v53 >= a4[1] - *a4)
          {
            goto LABEL_92;
          }

          v54 = &(*a4)[v40];
          HIDWORD(v55) = *(v54 + 4);
          LODWORD(v55) = HIDWORD(v55);
          *(v54 + 4) = v55 >> 16;
          v12 = 1;
        }
      }

      ++v40;
      v51 += 8;
      if (v11 - 3 == v40)
      {
        goto LABEL_94;
      }
    }

    goto LABEL_92;
  }

LABEL_94:
  v68 = &v63;
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v68);
  return v12 & 1;
}

uint64_t std::vector<unsigned char,TInlineBufferAllocator<unsigned char,30ul>>::__vallocate[abi:fn200100](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = a1[7];
  if (result + a2 > a1 + 54)
  {
    operator new();
  }

  a1[7] = result + a2;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + a2;
  return result;
}

unint64_t **ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::$_1::operator()(unint64_t **result, int a2, char a3)
{
  v3 = **result;
  if (v3 >= 2)
  {
    v6 = result;
    v7 = *result[1];
    v8 = result[1][1] - v7;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 1;
    while (1)
    {
      if (v8 == v9)
      {
        goto LABEL_21;
      }

      if (*(v7 + v9) == a2)
      {
        break;
      }

      if (v3 == ++v9)
      {
        return result;
      }
    }

    v10 = *result[3];
    if (v9 >= (result[3][1] - v10) >> 1)
    {
      goto LABEL_21;
    }

    result = MEMORY[0x1865F3040](ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::sMCMSet, *(v10 + 2 * v9));
    if (!result)
    {
      return result;
    }

    v11 = *v6[1];
    if (v6[1][1] - v11 <= v9)
    {
LABEL_21:
      __break(1u);
      return result;
    }

    *(v11 + v9) = a3;
    *v6[4] = 1;
    while (++v9 < **v6)
    {
      v12 = *v6[1];
      if (v6[1][1] - v12 <= v9)
      {
        goto LABEL_21;
      }

      if (*(v12 + v9) != a2)
      {
        break;
      }

      v13 = *v6[3];
      if (v9 >= (v6[3][1] - v13) >> 1)
      {
        goto LABEL_21;
      }

      result = MEMORY[0x1865F3040](ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::sMCMSet, *(v13 + 2 * v9));
      if (!result)
      {
        break;
      }

      v14 = *v6[1];
      if (v6[1][1] - v14 <= v9)
      {
        goto LABEL_21;
      }

      *(v14 + v9) = a3;
    }
  }

  return result;
}

const USet *ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::$_0::__invoke()
{
  pErrorCode = U_ZERO_ERROR;
  result = u_getBinaryPropertySet(UCHAR_BINARY_LIMIT|UCHAR_BIDI_MIRRORED, &pErrorCode);
  ModifyArabicCombiningClasses(TInlineVector<unsigned short,30ul> const&,TInlineVector&<unsigned char,30ul>)::sMCMSet = result;
  return result;
}

BOOL OTL::GCommon::HasFeature(OTL::GCommon *this, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  __dst[0] = a2;
  __dst[1] = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[7] = v2;
  v7[6] = v2;
  v7[5] = v2;
  v7[4] = v2;
  v7[3] = v2;
  v7[2] = v2;
  v7[1] = v2;
  v7[0] = v2;
  memset(v6, 0, sizeof(v6));
  v8 = v7;
  v3 = 0;
  if (OTL::GCommon::GetFeatures(this, v6))
  {
    v3 = OTL::FeatureList::StripMissingFeaturesFrom(v6, __dst);
  }

  v5 = v6;
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](&v5);
  return v3;
}

void *std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(void *result, __int16 *__src, __int16 *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 1)
  {
    v11 = result[1];
    v12 = v11 - v9;
    if (a4 <= (v11 - v9) >> 1)
    {
      v18 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v18);
      }

      i = &v9[v18];
    }

    else
    {
      if (v11 != v9)
      {
        result = memmove(*result, __src, v11 - v9);
        v11 = v7[1];
      }

      v13 = (v6 + v12);
      v14 = v11;
      if ((v6 + v12) != a3)
      {
        v14 = v11;
        v15 = v11;
        do
        {
          v16 = *v13++;
          *v15 = v16;
          v15 += 2;
          v14 += 2;
        }

        while (v13 != a3);
      }

      i = v14;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      if (result + 3 <= v9 && result + 84 > v9)
      {
        if (v8 == result[11])
        {
          result[11] = v9;
        }
      }

      else
      {
        operator delete(v9);
      }

      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    if (v8 <= a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    result = std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](v7, v20);
    for (i = v7[1]; v6 != a3; i += 2)
    {
      v21 = *v6++;
      *i = v21;
    }
  }

  v7[1] = i;
  return result;
}

uint64_t TCharComposer::ComposeChars(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  if (a4)
  {
    unorm2_getNFDInstance();
  }

  else
  {
    unorm2_getNFCInstance();
  }

  if (unorm2_isNormalized())
  {
    return 0;
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(a3, a2);
  v7 = unorm2_normalize();
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::resize(a3, v7);
  return 1;
}

BOOL TGlyphComposer::ComposeGlyphs(unint64_t *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a2;
  v248[2] = *MEMORY[0x1E69E9840];
  RunWithCharIndex = TLine::FindRunWithCharIndex(*a1, a2, 1);
  v8 = *(*a1 + 16);
  if (RunWithCharIndex >= (*(*a1 + 24) - v8) >> 3)
  {
    goto LABEL_251;
  }

  v9 = *(*(v8 + 8 * RunWithCharIndex) + 48);
  v198 = *(v9 + 224);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v9, v5);
  [*(v9 + 216) setProps:*(*(*(v9 + 216) + 40) + 4 * *(v9 + 200) + 4 * GlyphIndexForChar) & 0xFFFFFFF6 | 8 atIndex:*(v9 + 200) + GlyphIndexForChar];
  v12 = *(atomic_load_explicit((v9 + 56), memory_order_acquire) + 40);
  GlyphCount = TBaseFont::GetGlyphCount(v12[51]);
  v217 = 0xAAAAAAAAAAAAAAAALL;
  v14.x = -3.72066208e-103;
  v14.y = -3.72066208e-103;
  v215 = v14;
  v216 = v14;
  v213.size = v14;
  v214 = v14;
  v213.origin = v14;
  CommonTable = TBaseFont::GetCommonTable(v12[51], 1195656518, 0);
  OTL::GDEF::GDEF(&v213, CommonTable);
  v16 = *(a3 + 8);
  v202 = *a3;
  if ((*(*v12[51] + 720))() & 1) != 0 || ((*(*v12[51] + 696))(v12[51]))
  {
    return 0;
  }

  v196 = a1;
  v19 = v11 + v10;
  v20 = v16 - v202;
  v21 = 1;
  if ((*v202 & 0xFC00) == 0xD800 && v20 != 2)
  {
    if ((v202[1] & 0xFC00) == 0xDC00)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  v199 = v20 >> 1;
  if (*(v9 + 90) == 1)
  {
    v22 = *a4;
    v23 = a4[1];
    v24 = *a4;
    if (*a4 != v23)
    {
      while (*v24 != v5)
      {
        v24 += 8;
        if (v24 == v23)
        {
          return 0;
        }
      }
    }

    if (v24 == v23)
    {
      return 0;
    }

    v34 = TRun::GetGlyphIndexForCharIndex<false>(v9, v5);
    v35 = *(v9 + 216);
    v36 = *(v35 + 32);
    if (v36 || (v57 = *(v35 + 24)) == 0)
    {
      v37 = (v36 + 16 * *(v9 + 200) + 16 * v34);
    }

    else
    {
      v37 = (v57 + 8 * *(v9 + 200) + 8 * v34);
    }

    v17 = 0;
    v58 = -*v37;
    v59 = MEMORY[0x1E695F060];
    while (1)
    {
      *v218 = TRun::GetGlyphIndexForCharIndex<false>(v9, v5);
      NextChar = TRun::GetNextChar(v9, v5, v218);
      v5 = NextChar;
      if (v24 != v23)
      {
        while (*v24 != NextChar)
        {
          v24 += 8;
          if (v24 == v23)
          {
            return v17;
          }
        }
      }

      if (v24 == v23)
      {
        return v17;
      }

      v61 = (v202 + ((v24 - v22) >> 2));
      v62 = *v61;
      if ((v62 & 0xF800) == 0xD800)
      {
        if ((v62 & 0x400) != 0)
        {
          if (v24 == v22)
          {
            goto LABEL_68;
          }

          v67 = *(v61 - 1);
          v65 = (v67 & 0xFC00) == 55296;
          v66 = v62 + (v67 << 10);
        }

        else
        {
          v63 = ((v24 - v22) >> 3) + 1;
          if (v63 == v199)
          {
            goto LABEL_68;
          }

          v64 = v202[v63];
          v65 = (v64 & 0xFC00) == 56320;
          v66 = v64 + (v62 << 10);
        }

        v68 = v66 - 56613888;
        if (v65)
        {
          v62 = v68;
        }
      }

LABEL_68:
      if (u_charType(v62) != 7)
      {
        return v17;
      }

      if (v19 <= v5)
      {
        while (1)
        {
          v9 = *(v9 + 24);
          if (!v9)
          {
            return v17;
          }

          v19 = *(v9 + 16) + *(v9 + 8);
          if (v19 > v5)
          {
            if (*(v9 + 90) != 1)
            {
              return v17;
            }

            break;
          }
        }
      }

      v69 = TRun::GetGlyphIndexForCharIndex<false>(v9, v5);
      TStorageRange::SetAdvance((v9 + 192), v69, *v59);
      [*(v9 + 216) setOrigin:*(v9 + 200) + v69 atIndex:{v58, 0.0}];
      if (*MEMORY[0x1E695EFF8] == v58)
      {
        v17 = 1;
        if (*(MEMORY[0x1E695EFF8] + 8) == 0.0)
        {
          continue;
        }
      }

      *(v9 + 225) |= 0x10u;
      v17 = 1;
    }
  }

  *v210 = 0u;
  *__p = 0u;
  v212 = 0xAAAAAAAA3F800000;
  std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__rehash<true>(v210, v20 >> 1);
  v25 = v199;
  if (v21 >= v199)
  {
    v26 = v21;
  }

  else
  {
    while (1)
    {
      v26 = v21 + 1;
      v27 = v202[v21];
      if (v21 + 1 != v25 && (v27 & 0xFC00) == 0xD800)
      {
        v28 = v202[v26];
        v29 = (v28 & 0xFC00) == 56320;
        v30 = (v27 << 10) - 56613888 + v28;
        v26 = v29 ? v21 + 2 : v21 + 1;
        if (v29)
        {
          v27 = v30;
        }
      }

      if (u_hasBinaryProperty(v27, UCHAR_DEFAULT_IGNORABLE_CODE_POINT))
      {
        break;
      }

      if (v27 >= 0x590)
      {
        if (v27 < 0x700)
        {
          break;
        }

        v31 = ScriptCodeForLongCharacter(v27);
        if (v31)
        {
          v32 = 0;
          while (IsPossiblyAcceptable(UScriptCode)::kExcludedScripts[v32] != v31)
          {
            if (++v32 == 9)
            {
              v33 = ScriptTagForScriptCode(v31);
              FirstBlockForScript(0, v33, v218);
              if (*v218)
              {
                goto LABEL_42;
              }

              goto LABEL_35;
            }
          }

          break;
        }
      }

LABEL_35:
      if (v21 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_251;
      }

      v204.origin.x = *&(*a4)[8 * v21];
      *v218 = &v204;
      *(std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v210, *&v204.origin.x) + 3) = *MEMORY[0x1E695EFF8];
      v21 = v26;
      v25 = v199;
      if (v26 >= v199)
      {
        goto LABEL_43;
      }
    }

LABEL_42:
    v25 = v21;
  }

LABEL_43:
  v38 = v196;
  if (!__p[1] || (v200 = v25, v39 = TRun::GetGlyphIndexForCharIndex<false>(v9, v5), v40 = *(v9 + 216), v41 = *(v9 + 200), (*(v40[5] + 4 * v41 + 4 * v39) & 0x380) != 0))
  {
    v17 = 0;
    goto LABEL_247;
  }

  v42 = *(v40[2] + 2 * v41 + 2 * v39);
  if ((*(v9 + 225) & 0x10) != 0)
  {
    [v40 originAtIndex:v41 + v39];
    v44 = v45;
    v43 = v46;
  }

  else
  {
    v44 = *MEMORY[0x1E695EFF8];
    v43 = *(MEMORY[0x1E695EFF8] + 8);
  }

  LOWORD(v204.origin.x) = v42;
  *&v47 = -1;
  *(&v47 + 1) = -1;
  *v218 = v47;
  *&v218[16] = v47;
  BoundingBoxesForGlyphs = TFont::GetBoundingBoxesForGlyphs(v12, &v204, v218, 1, kCTFontOrientationDefault);
  height = v51;
  v53 = *(v9 + 216);
  v54 = *(v53 + 32);
  if (v54 || (v70 = *(v53 + 24)) == 0)
  {
    v55 = (v54 + 16 * *(v9 + 200) + 16 * v39);
    v56 = v55[1];
  }

  else
  {
    v55 = (v70 + 8 * *(v9 + 200) + 8 * v39);
    v56 = 0.0;
  }

  v71 = v200;
  x = v44 + BoundingBoxesForGlyphs;
  r2 = v43 + v49;
  v73 = *v55;
  v75 = *MEMORY[0x1E695EFF8];
  v74 = *(MEMORY[0x1E695EFF8] + 8);
  if (v50 == 0.0)
  {
    v76 = *v55;
  }

  else
  {
    v76 = v50;
  }

  rect = v76;
  v209 = v5;
  v77 = v26 + v5;
  BoundingBoxForGlyph = NAN;
  v182 = NAN;
  if ((v26 + v5) >= *(*v196 + 80) + *(*v196 + 72))
  {
    v82 = 0;
LABEL_100:
    v178 = NAN;
    v179 = NAN;
  }

  else
  {
    v79 = v9;
    while (1)
    {
      v80 = *(v79 + 8);
      if (v80 <= v77 && *(v79 + 16) + v80 > v77)
      {
        break;
      }

      v79 = *(v79 + 24);
      if (!v79)
      {
        goto LABEL_99;
      }
    }

    if (v9 != v79)
    {
      if (*(v9 + 224) != *(v79 + 224) || *(v9 + 90) != *(v79 + 90))
      {
        goto LABEL_99;
      }

      v83 = *(v9 + 160);
      v84 = 0.0;
      v85 = 0.0;
      if (v83)
      {
        v85 = *(v83 + 48);
      }

      v86 = *(v79 + 160);
      if (v86)
      {
        v84 = *(v86 + 48);
      }

      v29 = v85 == v84;
      BoundingBoxForGlyph = NAN;
      if (!v29)
      {
LABEL_99:
        v82 = 0;
        goto LABEL_100;
      }
    }

    v87 = TRun::GetGlyphIndexForCharIndex<false>(v79, v77);
    v88 = *(atomic_load_explicit((v79 + 56), memory_order_acquire) + 40);
    v89 = *(*(*(v79 + 216) + 16) + 2 * *(v79 + 200) + 2 * v87);
    if (v88 == v12 && v89 == v42)
    {
      v82 = 1;
      v182 = height;
      v178 = r2;
      v179 = rect;
      BoundingBoxForGlyph = x;
    }

    else
    {
      BoundingBoxForGlyph = TFont::GetBoundingBoxForGlyph(v88, v89);
      v178 = v91;
      v179 = v92;
      v182 = v93;
      v82 = 1;
    }

    v71 = v200;
  }

  v94 = 1;
  v180 = BoundingBoxForGlyph;
  if (v71 != 1)
  {
    v71 = v200;
    if ((*v202 & 0xFC00) == 0xD800)
    {
      v94 = 1;
      if ((v202[1] & 0xFC00) == 0xDC00)
      {
        v94 = 2;
      }
    }
  }

  *&v95 = 0xAAAAAAAAAAAAAAAALL;
  *(&v95 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v246 = v95;
  v247 = v95;
  v244 = v95;
  v245 = v95;
  v242 = v95;
  v243 = v95;
  v240 = v95;
  v241 = v95;
  v238 = v95;
  v239 = v95;
  v236 = v95;
  v237 = v95;
  v234 = v95;
  v235 = v95;
  v233 = v95;
  v232 = v95;
  v231 = v95;
  v230 = v95;
  v229 = v95;
  v228 = v95;
  v227 = v95;
  v226 = v95;
  v225 = v95;
  v224 = v95;
  v223 = v95;
  v222 = v95;
  v221 = v95;
  v220 = v95;
  v219 = v95;
  *&v218[24] = v95;
  memset(v218, 0, 24);
  v248[0] = &v218[24];
  if (v94 >= v71)
  {
    v192 = 0;
    v194 = 0.0;
    goto LABEL_207;
  }

  v192 = 0;
  v96 = v9;
  v194 = 0.0;
  while (1)
  {
    v97 = v94 + 1;
    v98 = v202[v94];
    if (v94 + 1 != v71 && (v98 & 0xFC00) == 0xD800)
    {
      v99 = v202[v97];
      v100 = (v99 & 0xFC00) == 56320;
      v101 = v99 + (v98 << 10) - 56613888;
      v97 = v100 ? v94 + 2 : v94 + 1;
      if (v100)
      {
        v98 = v101;
      }
    }

    if (v94 >= (a4[1] - *a4) >> 3)
    {
      goto LABEL_251;
    }

    v102 = *&(*a4)[8 * v94];
    v209 = v102;
    if (v19 <= v102)
    {
      do
      {
        v96 = *(v96 + 24);
        if (!v96)
        {
          goto LABEL_207;
        }

        v19 = *(v96 + 16) + *(v96 + 8);
        v12 = *(atomic_load_explicit((v96 + 56), memory_order_acquire) + 40);
        GlyphCount = TBaseFont::GetGlyphCount(v12[51]);
        v103 = TBaseFont::GetCommonTable(v12[51], 1195656518, 0);
        OTL::GDEF::GDEF(&v204, v103);
        v214 = v205;
        v215 = v206;
        v216 = v207;
        v217 = v208;
        v213 = v204;
      }

      while (v19 <= v209);
      if ((*(*v12[51] + 720))(v12[51]) & 1) != 0 || ((*(*v12[51] + 696))(v12[51]) & 1) != 0 || *(v96 + 224) != v198 || (*(v96 + 90))
      {
        goto LABEL_207;
      }

      v102 = v209;
    }

    v104 = TRun::GetGlyphIndexForCharIndex<false>(v96, v102);
    v105 = *(*(*(v96 + 216) + 16) + 2 * *(v96 + 200) + 2 * v104);
    if (GlyphCount > v105)
    {
      break;
    }

    v38 = v196;
    v71 = v200;
LABEL_191:
    v94 = v97;
    if (v97 >= v71)
    {
      goto LABEL_207;
    }
  }

  v187 = x;
  v188 = height;
  v183 = (v96 + 192);
  v184 = v104;
  v203[0] = *(*(*(v96 + 216) + 16) + 2 * *(v96 + 200) + 2 * v104);
  v106.width = NAN;
  v106.height = NAN;
  v204.origin = v106;
  v204.size = v106;
  v107 = TFont::GetBoundingBoxesForGlyphs(v12, v203, &v204, 1, kCTFontOrientationDefault);
  v109 = v108;
  v185 = v110;
  v186 = v111;
  *v203 = 1;
  v112 = OTL::ClassDefTable::ClassOf(*&v213.size.width, v105);
  if (v112)
  {
    v113 = v112 == 3;
  }

  else
  {
    v113 = 1;
  }

  v190 = v73;
  v181 = v97;
  if (v113)
  {
    CombiningClass = u_getCombiningClass(v98);
    v177 = v44;
    if (CombiningClass)
    {
      v38 = v196;
      if (CombiningClass >= 0x85)
      {
        if (CombiningClass == 240)
        {
          v117 = -36;
        }

        else
        {
          v117 = CombiningClass;
        }
      }

      else
      {
        v117 = TGlyphComposer::GetResolvedCombiningClass::kCombiningClassResolveTable[CombiningClass];
        if (!v117)
        {
LABEL_140:
          v119 = v43;
          if (u_getIntPropertyValue(v98, UCHAR_GRAPHEME_CLUSTER_BREAK) == 10)
          {
            *v203 = 0;
            MaxX = *MEMORY[0x1E695EFF8];
LABEL_163:
            v126 = v194;
            if (v194 < v190 + MaxX)
            {
              v126 = v190 + MaxX;
            }

            v194 = v126;
            v127 = v190 + v107;
            v128 = v56 + v109;
LABEL_166:
            v43 = v119;
            v252.origin.x = v127;
            v252.origin.y = v128;
            v252.size.width = v185;
            v252.size.height = v186;
            v258.origin.x = v187;
            v258.size.height = v188;
            v258.origin.y = r2;
            v258.size.width = rect;
            v253 = CGRectUnion(v252, v258);
            x = v253.origin.x;
            r2 = v253.origin.y;
            rect = v253.size.width;
            height = v253.size.height;
            v71 = v200;
            v73 = v190;
LABEL_167:
            v129 = *&v218[8];
            if (*&v218[8] >= *&v218[16])
            {
              v191 = v82;
              v131 = *v218;
              v132 = *&v218[8] - *v218;
              v133 = ((*&v218[8] - *v218) >> 4) + 1;
              if (v133 >> 60)
              {
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v134 = *&v218[16] - *v218;
              if ((*&v218[16] - *v218) >> 3 > v133)
              {
                v133 = v134 >> 3;
              }

              if (v134 >= 0x7FFFFFFFFFFFFFF0)
              {
                v135 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v135 = v133;
              }

              if (v135)
              {
                v136 = v248[0];
                v137 = v184;
                if (v248[0] + 16 * v135 > v248)
                {
                  if (!(v135 >> 60))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                v248[0] += 16 * v135;
                v138 = v132 >> 4;
              }

              else
              {
                v136 = 0;
                v138 = v132 >> 4;
                v137 = v184;
              }

              v140 = (v136 + 16 * ((*&v218[8] - *v218) >> 4));
              v141 = v136 + 16 * v135;
              *v140 = v183;
              v140[1] = v137;
              v130 = v140 + 2;
              v142 = &v140[-2 * v138];
              memcpy(v142, v131, v132);
              v143 = *v218;
              *v218 = v142;
              *&v218[8] = v130;
              v144 = *&v218[16];
              *&v218[16] = v141;
              if (v143)
              {
                v38 = v196;
                v82 = v191;
                if (&v218[24] > v143 || v248 <= v143)
                {
                  operator delete(v143);
                  v71 = v200;
                }

                else
                {
                  v71 = v200;
                  if (v144 == v248[0])
                  {
                    v248[0] = v143;
                  }
                }
              }

              else
              {
                v71 = v200;
                v38 = v196;
                v82 = v191;
              }
            }

            else
            {
              **&v218[8] = v183;
              *(v129 + 8) = v184;
              v130 = (v129 + 16);
            }

            *&v218[8] = v130;
            v97 = v181;
            goto LABEL_191;
          }

          if (CFUniCharIsMemberOf())
          {
            v139 = r2;
            MaxX = v187;
          }

          else
          {
            v254.origin.x = v187;
            v254.size.height = v188;
            v254.origin.y = r2;
            v254.size.width = rect;
            MaxX = CGRectGetMaxX(v254);
            v139 = 0.0;
          }

LABEL_196:
          v145 = v194;
          if (v194 < MaxX)
          {
            v145 = MaxX;
          }

          v194 = v145;
          *&v204.origin.x = &v209;
          v146 = std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v210, v209);
          v146[3] = MaxX;
          v146[4] = v139;
          TStorageRange::SetAdvance(v183, v184, *MEMORY[0x1E695F060]);
          TRun::NoteCrossStreamPosition(v96, v139);
          v127 = v107 + MaxX;
          v128 = v109 + v139;
          if (*v203 == 1)
          {
            v255.origin.x = v127;
            v255.origin.y = v128;
            v255.size.height = v186;
            v255.size.width = v185;
            v147 = CGRectGetMaxX(v255);
            v256.origin.x = v187;
            v256.size.height = v188;
            v256.origin.y = r2;
            v256.size.width = rect;
            v148 = v147 - CGRectGetMaxX(v256);
            if (v148 < 0.0)
            {
              v148 = 0.0;
            }

            v149 = v190 + v148;
            v257.origin.x = v127;
            v257.origin.y = v128;
            v257.size.width = v185;
            v257.size.height = v186;
            v150 = v75 + CGRectGetMinX(v257);
            v44 = v177;
            if (v150 >= 0.0)
            {
              v190 = v149;
            }

            else
            {
              v190 = v149 - v150;
              v75 = v75 - v150;
            }
          }

          else
          {
            v44 = v177;
          }

          goto LABEL_166;
        }
      }

      if ((v117 + 23) > 1u)
      {
        v121 = v73;
        v119 = v43;
      }

      else
      {
        v119 = v43;
        if (v82)
        {
          v250.origin.x = v187;
          v250.size.height = v188;
          v122 = r2;
          v250.origin.y = r2;
          v250.size.width = rect;
          MaxY = CGRectGetMaxY(v250);
          v251.size.width = v179;
          v251.origin.x = v180;
          v251.origin.y = v178;
          v251.size.height = v182;
          v123 = CGRectGetMaxY(v251);
          if (MaxY >= v123)
          {
            v123 = MaxY;
          }

          if (v178 < r2)
          {
            v122 = v178;
          }

          r2 = v122;
          v188 = v123 - v122;
        }

        v204.origin.x = NAN;
        TAttributes::GetKernSetting((v9 + 40), &v204.origin.x, 0);
        v121 = v190 + v204.origin.x * 0.5;
      }
    }

    else
    {
      v38 = v196;
      if ((v98 - 8413) > 7 || v98 == 8417)
      {
        goto LABEL_140;
      }

      v121 = v73;
      v119 = v43;
      v117 = 1;
    }

    TGlyphComposer::GetPositionForGlyph(v12, v117, v203, *&v115, v107, v109, v185, v186, v187, r2, rect, v188, v121);
    if (*v203 == 3)
    {
      v71 = v200;
      v44 = v177;
      v43 = v119;
      height = v188;
      v73 = v190;
      x = v187;
      goto LABEL_167;
    }

    MaxX = v124;
    if (!*v203)
    {
      v44 = v177;
      goto LABEL_163;
    }

    v139 = v125;
    goto LABEL_196;
  }

  v119 = v43;
  v120 = std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::find<long>(v210[0], v210[1], v209);
  if (v120)
  {
    MaxX = *MEMORY[0x1E695EFF8];
    std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::erase(v210, v120);
    v192 = 1;
    v38 = v196;
    goto LABEL_163;
  }

  v38 = v196;
  v73 = v190;
LABEL_207:
  v152 = *&v218[8];
  v151 = *v218;
  v153 = (*&v218[8] - 16);
  v154 = MEMORY[0x1E695EFF8];
  if (*v218 != *&v218[8] && v153 > *v218)
  {
    do
    {
      v156 = *v151;
      *v151 = *v153;
      *v153 = v156;
      v157 = v151[1];
      v151[1] = v153[1];
      v153[1] = v157;
      v151 += 2;
      v153 -= 2;
    }

    while (v151 < v153);
    v152 = *&v218[8];
    v151 = *v218;
  }

  if (v151 != v152)
  {
    v158 = 0;
    do
    {
      if (v158)
      {
        [*(*v151 + 24) setProps:*(*(*(*v151 + 24) + 40) + 4 * *(*v151 + 8) + 4 * v151[1]) | 8u atIndex:*(*v151 + 8) + v151[1]];
      }

      v151 += 2;
      v158 = 1;
    }

    while (v151 != v152);
  }

  v17 = __p[1] != 0;
  if (__p[1])
  {
    v159 = v194;
    if (v73 >= v194)
    {
      v159 = v73;
    }

    if (!((v209 != *(*v38 + 72) + *(*v38 + 80) - 1) | v192 & 1))
    {
      v73 = v159;
    }

    v249.width = v73;
    v249.height = v56;
    TStorageRange::SetAdvance((v9 + 192), GlyphIndexForChar, v249);
    [*(v9 + 216) setOrigin:*(v9 + 200) + GlyphIndexForChar atIndex:{v44 + v75, v43 + v74}];
    if (v44 + v75 != *v154 || v43 + v74 != v154[1])
    {
      *(v9 + 225) |= 0x10u;
    }

    v161 = (v198 & 1) != 0 ? *MEMORY[0x1E695F060] : v73;
    v162 = (v198 & 1) != 0 ? *(MEMORY[0x1E695F060] + 8) : v56;
    v163 = __p[0];
    if (__p[0])
    {
      while (1)
      {
        v164 = *(v163 + 2);
        v165 = *(v163 + 3);
        v166 = *(v163 + 4);
        v167 = *v38;
        v168 = TLine::FindRunWithCharIndex(*v38, v164, 1);
        v169 = *(v167 + 16);
        if (v168 >= (*(v167 + 24) - v169) >> 3)
        {
          break;
        }

        v170 = v75 + v165 - v161;
        v171 = v74 + v166 - v162;
        v172 = *(*(v169 + 8 * v168) + 48);
        [*(v172 + 216) setOrigin:*(v172 + 200) + TRun::GetGlyphIndexForCharIndex<false>(v172 atIndex:{v164), v170, v171}];
        if (v170 != *v154 || v171 != v154[1])
        {
          *(v172 + 225) |= 0x10u;
        }

        v163 = *v163;
        if (!v163)
        {
          goto LABEL_243;
        }
      }

LABEL_251:
      __break(1u);
    }
  }

LABEL_243:
  if (*v218)
  {
    *&v218[8] = *v218;
    if (&v218[24] > *v218 || v248 <= *v218)
    {
      operator delete(*v218);
    }
  }

LABEL_247:
  v174 = __p[0];
  if (__p[0])
  {
    do
    {
      v175 = *v174;
      operator delete(v174);
      v174 = v175;
    }

    while (v175);
  }

  v176 = v210[0];
  v210[0] = 0;
  if (v176)
  {
    operator delete(v176);
  }

  return v17;
}

double TFont::GetBoundingBoxForGlyph(TFont *this, unsigned __int16 a2)
{
  v5 = a2;
  v2.width = NAN;
  v2.height = NAN;
  v4.origin = v2;
  v4.size = v2;
  return TFont::GetBoundingBoxesForGlyphs(this, &v5, &v4, 1, kCTFontOrientationDefault);
}

void TGlyphComposer::GetPositionForGlyph(uint64_t a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X2>, CGPoint a4@<X4:X3>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, CGFloat a9@<D4>, CGFloat a10@<D5>, CGFloat a11@<D6>, CGFloat a12@<D7>, double a13)
{
  v21 = a8;
  v23 = a6;
  v25 = a2;
  v26 = a13;
  if (a2 >= 0xDA)
  {
    if (a2 == 224 || a2 == 226)
    {
      goto LABEL_9;
    }

    v28 = *(a1 + 408);
    TFont::GetScaledMatrix(a1, &v45);
    v29 = (*(*v28 + 616))(v28, &v45);
    v30 = v29;
    v31 = a1 + 56;
    if (!*(a1 + 56))
    {
      v32 = v29;
      TFont::InitStrikeMetrics(a1);
      v30 = v32;
    }

    v33 = *(v31 + 32);
    if ((v30 == 0.0 || (v46.origin.x = a9, v46.origin.y = a10, v46.size.width = a11, v46.size.height = a12, CGRectGetMaxY(v46) >= v33)) && v33 == 0.0)
    {
      if (!*(a1 + 56))
      {
        TFont::InitStrikeMetrics(a1);
      }

      v21 = a8;
    }

    else
    {
      v21 = a8;
    }

    if ((v25 + 23) <= 1u)
    {
      *a3 = 2;
      v42 = a7 * 0.5;
      v23 = a6;
      if (a13 >= 0.0)
      {
        v39 = a13;
      }

      else
      {
        v39 = 0.0;
      }

      v37 = v39 - a13;
      if (v25 == 234)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      v38 = a10;
      v40 = a12;
      v41 = a5;
      v35 = 4;
      goto LABEL_26;
    }

    v26 = a13;
    v23 = a6;
    if (v25 > 0xDF)
    {
LABEL_9:
      LOBYTE(v25) = v25 - 16;
    }

    else
    {
      LOBYTE(v25) = v25 - 18;
    }
  }

  switch(v25)
  {
    case 1u:
      v35 = 2;
      v34 = 3;
      break;
    case 0xD2u:
      v34 = 0;
      v35 = 4;
      break;
    case 0xD0u:
      v34 = 0;
      v35 = 0;
      break;
    default:
      if (v25 >= 0xD0u)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      if (v25 >= 0xD0u)
      {
        v36 = v25 - 12;
      }

      else
      {
        v36 = v25;
      }

      v35 = v36 - 200;
      if (v36 == 202)
      {
        *a3 = 2;
        v35 = 2;
        if (v26 > 0.0)
        {
          a9 = 0.0;
          a11 = v26;
        }
      }

      break;
  }

  v37 = a9;
  v38 = a10;
  v39 = a11;
  v40 = a12;
  v41 = a5;
  v42 = a7;
LABEL_26:
  TGlyphComposer::PositionBaseOtherTopCenteringGap(v35, *&v37, *(&v23 - 1), v34, a3, a4);
}

void *std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::find<long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<long,CGPoint>,std::__unordered_map_hasher<long,std::__hash_value_type<long,CGPoint>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,CGPoint>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,CGPoint>>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v3 = *__p;
  v4 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v10 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *__p;
  }

LABEL_27:
  *v7 = v3;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void ZapfTable::ZapfTable(ZapfTable *this, id a2, uint64_t a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 5) = TAATLookupTable::BadTable;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 44) = -1;
  if (a2)
  {
    BytePtr = CFDataGetBytePtr(a2);
    v7 = CFDataGetBytePtr(a2);
    if (v7)
    {
      v8 = &v7[CFDataGetLength(a2)];
      v9 = (BytePtr + 8);
      if (BytePtr + 8 <= v8)
      {
        v10 = bswap32(*BytePtr) >> 16;
        *(this + 3) = v10;
        if (v10 == 2)
        {
          TAATLookupTable::SetTable(this + 40, v9, v8);
        }

        else
        {
          if (v10 != 1 || ((v11 = v9 + 4 * a3, v11 < v9) || v11 > v8) && (BytePtr + 12 <= v8 ? (v12 = (v8 - v9) >> 2) : (v12 = 0), v12 != a3))
          {
            *(this + 3) = 0;
            return;
          }

          *(this + 4) = v9;
        }

        *(this + 1) = BytePtr;
        *(this + 2) = v8;
      }
    }
  }
}

unsigned __int8 *ZapfTable::GlyphInfoForGlyph(ZapfTable *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (v3 == 1)
  {
    v7 = bswap32(*(*(this + 4) + 4 * a2));
    goto LABEL_14;
  }

  if (v3 != 2)
  {
    return 0;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(this + 5);
  v5 = *(this + 6);
  v6 = (this + (v5 >> 1) + 40);
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  result = v4(v6, a2, &v14);
  if (result)
  {
    v9 = v14;
    if (v14)
    {
      v7 = 0;
      do
      {
        v10 = *result++;
        v7 = v10 | (v7 << 8);
        --v9;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

LABEL_14:
    v11 = *(this + 1);
    v12 = v11 + v7;
    if (v12 + 10 > *(this + 2) || v11 > v12 + 9)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

void ZapfTable::AppendVariants(uint64_t a1, unsigned __int16 *a2, atomic_ullong *a3)
{
  v5 = bswap32(*a2);
  v6 = HIWORD(v5) & 0x3FFF;
  if ((v5 & 0x80000000) != 0)
  {
    if (v6)
    {
      v20 = 0;
      v21 = a2 + 1;
      do
      {
        v22 = *(a1 + 8);
        v23 = *(a1 + 16);
        v24 = v21 + 3;
        if (v22 > v21 || v21 > 0xFFFFFFFFFFFFFFF9 || v24 > v23)
        {
          v27 = v22 > v21 || (v21 + 1) > v23;
          if (v27 || ((v23 - v21) & 0xFFFFFFFFFFFFFFFELL) != 6)
          {
            break;
          }
        }

        v29 = *v21;
        v30 = v21[2];
        v31 = __rev16(v30);
        v32 = &v24[v31];
        v33 = v22 <= v24 && v32 >= v24;
        if (!v33 || v32 > v23)
        {
          v35 = (v21 + 4) > v23 || v22 > v24;
          v36 = (v23 - v24) >> 1;
          if (v35)
          {
            v36 = 0;
          }

          if (v36 != v31)
          {
            break;
          }
        }

        if (v30)
        {
          v37 = 0;
          do
          {
            v38 = *v24;
            if (v38 != 0xFFFF)
            {
              TCFNumber::TCFNumber<int>(&v40, __rev16(v38));
              CFArrayAppendValue(atomic_load_explicit(a3, memory_order_acquire), atomic_load_explicit(&v40, memory_order_acquire));
            }

            ++v37;
            ++v24;
          }

          while (v31 > v37);
        }

        v21 = ((v24 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        if ((v24 & 3) == 0)
        {
          v21 = v24;
        }

        if ((v29 & 0x80) == 0)
        {
          v21 = v24;
        }

        ++v20;
      }

      while (v6 > v20);
    }
  }

  else if (v6)
  {
    v7 = 0;
    v8 = a2 + 2;
    do
    {
      v9 = *(a1 + 16);
      v10 = v8 + 1;
      if (*(a1 + 8) > v8 || v10 > v9)
      {
        break;
      }

      v12 = *v8;
      v13 = __rev16(v12);
      v14 = &v10[v13];
      v15 = (v8 + 2) <= v9 ? (v9 - v10) >> 1 : 0;
      v16 = v14 <= v9 && v14 >= v10;
      if (!v16 && v15 != v13)
      {
        break;
      }

      if (v12)
      {
        v18 = 0;
        do
        {
          v19 = *v10;
          if (v19 != 0xFFFF)
          {
            TCFNumber::TCFNumber<int>(&v39, __rev16(v19));
            CFArrayAppendValue(atomic_load_explicit(a3, memory_order_acquire), atomic_load_explicit(&v39, memory_order_acquire));
          }

          ++v18;
          ++v10;
        }

        while (v13 > v18);
      }

      ++v7;
      v8 = v10;
    }

    while (v6 > v7);
  }
}

void ZapfTable::VariantsForGlyph(ZapfTable *this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = ZapfTable::GlyphInfoForGlyph(this, a2);
  if (!v5 || *v5 == -1 || (v6 = *(this + 1), v7 = bswap32(*(v6 + 4)), v8 = (v6 + v7 + bswap32(*v5)), (v8 + 1) > *(this + 2)))
  {
    *a3 = 0;
    return;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v9 = bswap32(*v8) >> 16;
  if ((v9 & 0x4000) != 0)
  {
    v10 = (v8 + 2);
    v11 = v9 & 0x3FFF;
    v12 = *(this + 1);
    v13 = *(this + 2);
    v14 = &v8[2 * v11 + 2];
    if (v12 > (v8 + 2) || v14 < v10 || v14 > v13)
    {
      v17 = (v8 + 4) > v13 || v12 > v10;
      v18 = (v13 - v10) >> 2;
      if (v17)
      {
        v18 = 0;
      }

      if (v18 != v11)
      {
LABEL_29:
        v22 = 0;
        goto LABEL_28;
      }
    }

    if (v11)
    {
      do
      {
        v20 = *v10++;
        v19 = v20;
        if (v20 != -1)
        {
          v21 = (*(this + 1) + bswap32(v19) + v7);
          if ((v21 + 1) > *(this + 2))
          {
            goto LABEL_29;
          }

          ZapfTable::AppendVariants(this, v21, &Mutable);
        }

        --v11;
      }

      while (v11);
    }
  }

  else
  {
    ZapfTable::AppendVariants(this, v8, &Mutable);
  }

  v22 = atomic_exchange(&Mutable, 0);
LABEL_28:
  *a3 = v22;
}

CFTypeID CTTextTabGetTypeID(void)
{
  if (TCFBase<TNativeTextTab>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TNativeTextTab>::GetTypeID(void)::once, 0, TCFBase<TNativeTextTab>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TNativeTextTab>::fTypeID;
}

CTTextTabRef CTTextTabCreate(CTTextAlignment alignment, double location, CFDictionaryRef options)
{
  if (alignment > kCTTextAlignmentNatural)
  {
    return 0;
  }

  v6 = TCFBase<TNativeTextTab>::Allocate();
  v7 = v6;
  if (v6)
  {
    *(v6 + 48) = location;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = v6 + 48;
    *(v6 + 56) = alignment;
    *(v6 + 64) = options;
    if (options)
    {
      CFRetain(options);
    }
  }

  v10 = v7;
  v8 = atomic_exchange(&v10, 0);

  return v8;
}

CTTextAlignment CTTextTabGetAlignment(CTTextTabRef tab)
{
  if (tab)
  {
    v2 = -1;
    v3 = 0xAAAAAAAAAAAAAAAALL;
    v4 = 0xAAAAAAAAAAAAAAAALL;
    TTextTab::SetTabRef(&v2, tab);
    LOBYTE(tab) = v3;
  }

  return tab;
}

double CTTextTabGetLocation(CTTextTabRef tab)
{
  if (!tab)
  {
    return 0.0;
  }

  v2[0] = -1;
  v2[1] = 0xAAAAAAAAAAAAAAAALL;
  v2[2] = 0xAAAAAAAAAAAAAAAALL;
  TTextTab::SetTabRef(v2, tab);
  return *v2;
}

CFDictionaryRef CTTextTabGetOptions(CFDictionaryRef tab)
{
  if (tab)
  {
    v1[0] = -1;
    v1[1] = 0xAAAAAAAAAAAAAAAALL;
    v2 = 0xAAAAAAAAAAAAAAAALL;
    TTextTab::SetTabRef(v1, tab);
    return v2;
  }

  return tab;
}

uint64_t TCFBase<TNativeTextTab>::CreateTypeID()
{
  {
    TCFBase<TNativeTextTab>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED5670B8 = "CTTextTab";
    qword_1ED5670C0 = 0;
    unk_1ED5670C8 = 0;
    qword_1ED5670D0 = TCFBase<TNativeTextTab>::ClassDestruct;
    qword_1ED5670D8 = TCFBase<TNativeTextTab>::ClassEqual;
    qword_1ED5670E0 = TCFBase<TNativeTextTab>::ClassHash;
    unk_1ED5670E8 = 0;
    qword_1ED5670F0 = TCFBase<TNativeTextTab>::ClassDebug;
    unk_1ED5670F8 = 0;
    qword_1ED567100 = 0;
    unk_1ED567108 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TNativeTextTab>::fTypeID = result;
  return result;
}

void *TCFBase<TNativeTextTab>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

CFStringRef TCFBase<TNativeTextTab>::ClassDebug(uint64_t a1)
{
  result = TNativeTextTab::DebugDescription(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTTextTab", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t TCallbackBidiLevelsProvider::GetLevels(TCallbackBidiLevelsProvider *this, CFRange a2, CTWritingDirection a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    return v3 + a2.location - *(this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t TCallbackBidiLevelsProvider::GetDefaultParagraphDirection(TCallbackBidiLevelsProvider *this)
{
  if (*(this + 25) == 1)
  {
    return *(this + 24);
  }

  else
  {
    return 0;
  }
}

void TICUBidiLevelsProvider::~TICUBidiLevelsProvider(TICUBidiLevelsProvider *this)
{
  v2 = 0;
  *this = &unk_1EF258348;
  atomic_compare_exchange_strong(&gBidiEngineRetired, &v2, *(this + 2));
  if (v2)
  {
    ubidi_close();
  }

  v3 = (this + 40);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
}

{
  TICUBidiLevelsProvider::~TICUBidiLevelsProvider(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TICUBidiLevelsProvider::GetLevels(TICUBidiLevelsProvider *this, CFRange a2, CTWritingDirection a3)
{
  v4 = TICUBidiLevelsProvider::ConfigureBidiEngine(this, a2, a3);
  if (v4 > 0)
  {
    return 0;
  }

  result = ubidi_getLevels();
  if (v4 >= 1)
  {
    return 0;
  }

  return result;
}

uint64_t TICUBidiLevelsProvider::ConfigureBidiEngine(TICUBidiLevelsProvider *this, CFRange a2, CTWritingDirection a3)
{
  if (a2.location != *(this + 3) || a2.length != *(this + 4))
  {
    length = a2.length;
    location = a2.location;
    TCharStream::LazyCopyChars(*(this + 1), a2.location, a2.length);
    ubidi_setPara();
    *(this + 3) = location;
    *(this + 4) = length;
  }

  return 0;
}

uint64_t TICUBidiLevelsProvider::GetDefaultParagraphDirection(TICUBidiLevelsProvider *this)
{
  v2.length = *(*(this + 1) + 16);
  v2.location = 0;
  TICUBidiLevelsProvider::ConfigureBidiEngine(this, v2, kCTWritingDirectionNatural);
  ubidi_getParagraph();
  return 0;
}

void TAttributes::TAttributes(TAttributes *this, const TAttributes *a2, const __CTFont *a3)
{
  *this = atomic_load_explicit(a2, memory_order_acquire);
  *(this + 1) = atomic_load_explicit(a2 + 1, memory_order_acquire);
  *(this + 2) = a3;
  *(this + 3) = atomic_load_explicit(a2 + 3, memory_order_acquire);
  *(this + 4) = atomic_load_explicit(a2 + 4, memory_order_acquire);
  *(this + 5) = atomic_load_explicit(a2 + 5, memory_order_acquire);
  *(this + 24) = 1;
  *(this + 25) = *(a2 + 25);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 13);
  *(this + 56) = *(a2 + 56);
  *(this + 13) = v8;
  *(this + 88) = v7;
  *(this + 72) = v6;
  *(this + 112) = *(a2 + 112);
  if (*(a2 + 15))
  {
    operator new();
  }

  *(this + 15) = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 68) = *(a2 + 68);
  *(this + 69) = *(a2 + 69) & 0xF9FF;
  if (*(a2 + 18))
  {
    operator new();
  }

  v11 = 0;
  v12.location = 0;
  v12.length = 0;
  TAttributes::ApplyFont(this, atomic_load_explicit(this, memory_order_acquire), atomic_load_explicit(this + 2, memory_order_acquire), 0, v12, &v11);
  CompositionLanguage = TAttributes::GetCompositionLanguage(this, v9);
  *(this + 112) = CompositionLanguage;
  if (CompositionLanguage >= 2 && CJKCompositionEngine::IsEnabled(CompositionLanguage, this))
  {
    *(this + 69) |= 0x100u;
  }

  else
  {
    *(this + 112) = 1;
  }

  TAttributes::SetLayoutAttributesForFont(this);
}

CFStringRef TAttributes::DebugDescription(atomic_ullong *this)
{
  Dictionary = TAttributes::GetDictionary(this);
  if (!Dictionary)
  {
    return @"NULL";
  }

  return CFCopyDescription(Dictionary);
}

void TAttributes::SetVerticalFont(TAttributes *this, const __CTFont *a2)
{
  TAttributes::ApplyTextTransform(this, a2);
  if (*(this + 104))
  {
    v4 = (this + 56);
  }

  else
  {
    v4 = MEMORY[0x1E695EFD0];
  }

  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = vdupq_n_s64(0x3CB0000000000000uLL);
  v9 = vandq_s8(vandq_s8(vcgeq_f64(v8, vabsq_f64(vaddq_f64(v6, xmmword_18475B150))), vcgeq_f64(v8, vabsq_f64(vaddq_f64(*v4, xmmword_18475B140)))), vcgeq_f64(v8, vabsq_f64(v7)));
  if ((vandq_s8(vdupq_laneq_s64(v9, 1), v9).u64[0] & 0x8000000000000000) == 0)
  {
    v10 = -v6.f64[0];
    v11 = vdupq_lane_s64(*&v5.f64[0], 0);
    *&v5.f64[0] = vdupq_laneq_s64(v6, 1).u64[0];
    v12 = -v5.f64[1];
    v5.f64[1] = v10;
    *v11.i64 = v12;
    v6 = v11;
  }

  *&t1.a = v5;
  *&t1.c = v6;
  *&t1.tx = v7;
  t2 = *kRotateLeftTransform;
  CGAffineTransformConcat(&v14, &t1, &t2);
  v13 = *&v14.c;
  *(this + 56) = *&v14.a;
  *(this + 72) = v13;
  *(this + 88) = *&v14.tx;
  *(this + 104) = 1;
  *&t1.a = a2;
  if (atomic_load_explicit(&t1, memory_order_acquire))
  {

    *(this + 48) = 1;
  }

  *(this + 50) = 1;
  TAttributes::ApplyTateChuYoko(this);
}

void TAttributes::ApplyTateChuYoko(TAttributes *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    v2 = *(v1 + 64);
    if (*(v1 + 64))
    {
      explicit = atomic_load_explicit(this + 2, memory_order_acquire);
      if (explicit)
      {
        v5 = *(*(explicit + 40) + 408);
        if (v5)
        {
          if (TBaseFont::HasFeature(v5, 0x16, v2))
          {
            if (v2 != 1)
            {
              *(this + 69) |= 0x1000u;
            }

            CreateCopyOfFontWithFeature(explicit, 22, v2, &v7);
            if (atomic_load_explicit(&v7, memory_order_acquire))
            {

              *(this + 48) = 1;
            }

            v6 = *(this + 15);
            if (*(v6 + 24) == 1)
            {
              *(v6 + 24) = 0;
            }
          }
        }
      }
    }
  }
}

uint64_t TAttributes::HandleBackgroundCGColorAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 137) |= 1u;
  }

  return result;
}

void TAttributes::HandleBackgroundNSColorAttribute(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) != 0)
    {
      *(*a2 + 137) |= 1u;
    }
  }
}

uint64_t TAttributes::HandleStrikethroughAttribute(uint64_t result, TAttributes **a2)
{
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      result = CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      v5 = valuePtr;
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      result = CFStringGetIntValue(v3);
      v5 = result;
      valuePtr = result;
    }

    if (v5)
    {
      result = TAttributes::EnsureRareData(*a2);
      *(result + 60) = v5;
      *(*a2 + 137) |= 0x10u;
    }
  }

  return result;
}

CFTypeID TAttributes::HandleLigatureAttribute(CFTypeID result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      valuePtr = -1431655766;
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      result = valuePtr;
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      result = CFStringGetIntValue(v3);
    }

    if (result >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = result;
    }

    *(a2 + 56) = v5 | 0x100;
  }

  return result;
}

const __CFNumber *TAttributes::HandleCTBaselineOffsetAttribute(const __CFNumber *result, TAttributes **a2)
{
  if (result)
  {
    v3 = result;
    valuePtr = NAN;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
LABEL_5:
      result = TAttributes::EnsureRareData(*a2);
      *(result + 5) = @"CTBaselineOffset";
      *(result + 6) = valuePtr;
      return result;
    }

    result = CFStringGetTypeID();
    if (v4 == result)
    {
      valuePtr = CFStringGetDoubleValue(v3);
      goto LABEL_5;
    }
  }

  return result;
}

const __CFNumber *TAttributes::HandleSuperscriptAttribute(const __CFNumber *result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      IntValue = valuePtr;
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      IntValue = CFStringGetIntValue(v3);
      valuePtr = IntValue;
    }

    v6 = IntValue != 0;
    if (IntValue < 0)
    {
      v6 = 2;
    }

    v8 = &unk_1EF2584A0;
    v9 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v9) = v6;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = &v8;
    std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](*(a2 + 48), &v8);
    return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&v8);
  }

  return result;
}

void std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    if ((v6 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = v4 - *a1;
    v8 = v7 >> 4;
    if (v7 >> 4 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = a1[123];
      v11 = v10 + 32 * v9;
      if (v11 > (a1 + 123))
      {
        if (!(v9 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      a1[123] = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10 + 32 * v6;
    v13 = v10 + 32 * v9;
    std::__function::__value_func<void ()(TAttributes &)>::__value_func[abi:fn200100](v12, a2);
    v5 = v12 + 32;
    v14 = *a1;
    v15 = a1[1];
    v16 = v12 + *a1 - v15;
    if (v15 != *a1)
    {
      v17 = *a1;
      v18 = v12 + *a1 - v15;
      do
      {
        v19 = v17[3];
        if (v19)
        {
          if (v17 == v19)
          {
            *(v18 + 24) = v18;
            (*(*v17[3] + 24))(v17[3], v18);
          }

          else
          {
            *(v18 + 24) = v19;
            v17[3] = 0;
          }
        }

        else
        {
          *(v18 + 24) = 0;
        }

        v17 += 4;
        v18 += 32;
      }

      while (v17 != v15);
      do
      {
        std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](v14);
        v14 += 4;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = v5;
    v20 = a1[2];
    a1[2] = v13;
    if (v14)
    {
      v21 = a1 + 123;
      if (a1 + 3 <= v14 && v21 > v14)
      {
        if (v20 == *v21)
        {
          *v21 = v14;
        }
      }

      else
      {
        operator delete(v14);
      }
    }
  }

  else
  {
    v5 = std::__function::__value_func<void ()(TAttributes &)>::__value_func[abi:fn200100](v3, a2) + 32;
  }

  a1[1] = v5;
}

const __CFNumber *TAttributes::HandleCharacterShapeAttribute(const __CFNumber *result, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      LOWORD(IntValue) = valuePtr;
LABEL_5:
      v7 = &unk_1EF2584E8;
      v8 = 0xAAAAAAAAAAAAAAAALL;
      LOWORD(v8) = IntValue - 1;
      v9 = 0xAAAAAAAAAAAAAAAALL;
      v10 = &v7;
      std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](*(a2 + 48), &v7);
      return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&v7);
    }

    result = CFStringGetTypeID();
    if (v4 == result)
    {
      IntValue = CFStringGetIntValue(v3);
      valuePtr = IntValue;
      goto LABEL_5;
    }
  }

  return result;
}

const __CFBoolean *TAttributes::HandleVerticalFormsAttribute(const __CFBoolean *result, uint64_t a2)
{
  if (result)
  {
    result = CFBooleanGetValue(result);
    v3 = result != 0;
  }

  else
  {
    v3 = 0;
  }

  *(*a2 + 50) = v3;
  return result;
}

void CreateCopyOfFontWithFeature(TFont **a1@<X0>, int a2@<W1>, int a3@<W2>, CTFontRef *a4@<X8>)
{
  if (a1)
  {
    TFont::CopyDescriptor(a1[5], 0, &v13);
    v7 = atomic_exchange(&v13, 0);

    v13 = v7;
    explicit = atomic_load_explicit(&v13, memory_order_acquire);
    LODWORD(CopyWithFeature) = a2;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &CopyWithFeature);
    LODWORD(CopyWithFeature) = a3;
    v11 = CFNumberCreate(v9, kCFNumberIntType, &CopyWithFeature);
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(explicit, v10, v11);

    *a4 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v13, memory_order_acquire), 0.0, 0);
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t TAttributes::HandleHorizontalInVerticalFormsAttribute(uint64_t result, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      result = valuePtr;
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      result = CFStringGetIntValue(v3);
      valuePtr = result;
    }

    if ((result - 5) >= 0xFFFFFFFC)
    {
      if (*(a2 + 32) < result)
      {
        valuePtr = *(a2 + 32);
      }

      v5 = *(a2 + 16);
      if (v5)
      {
        v15 = *(a2 + 16);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v27 = 0;
        v26 = 0u;
        *&v26 = *(v5 + 16);
        Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
        v7 = *(a2 + 24);
        v14 = v7;
        v8 = valuePtr;
        if (valuePtr >= 1)
        {
          v9 = Predefined;
          v10 = v7 + valuePtr;
          while (1)
          {
            FullChar = TCharStreamIterator::GetFullChar(&v15, &v14, 0);
            if (!CFCharacterSetIsLongCharacterMember(v9, FullChar))
            {
              break;
            }

            if (++v14 >= v10)
            {
              v8 = valuePtr;
              goto LABEL_17;
            }
          }

          v8 = 1;
          valuePtr = 1;
        }

LABEL_17:
        v14 = 0x4000300020001;
        v12 = *(&v14 + v8 - 1);
        *(TAttributes::EnsureRareData(*a2) + 64) = v12;
      }

      v15 = &unk_1EF258530;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v17 = &v15;
      std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](*(a2 + 48), &v15);
      return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&v15);
    }
  }

  return result;
}

uint64_t TAttributes::HandleGlyphInfoAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 0x20u;
  }

  return result;
}

void TAttributes::ApplyBaselineInfoValue(TAttributes *this, const __CFString *a2, TAttributes **a3, void *a4)
{
  v6 = TAttributes::EnsureBaselineAttributes(*a3);
  v8 = v6;
  if ((*(v6 + 128) & 1) == 0)
  {
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    v9 = (v6 + 8);
    v10 = 128;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    do
    {
      *(v9 - 8) = 0;
      *v9 = 0;
      v9 += 16;
      v10 -= 16;
    }

    while (v10);
    *(v6 + 128) = 1;
  }

  v11 = TBaselineAttributes::BaselineClassFromName(this, v7);
  if ((v11 & 0x100) != 0)
  {
    valuePtr = NAN;
    if (a2)
    {
      v12 = v11;
      v13 = CFGetTypeID(a2);
      if (v13 == CFNumberGetTypeID() || v13 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
      }

      else
      {
        if (v13 != CFStringGetTypeID())
        {
          return;
        }

        valuePtr = CFStringGetDoubleValue(a2);
      }

      if ((v12 & 0xF8) != 0)
      {
        __break(1u);
      }

      else
      {
        v14 = v8 + 16 * (v12 & 7);
        *v14 = valuePtr;
        *(v14 + 8) = 1;
      }
    }
  }
}

uint64_t TAttributes::EnsureBaselineAttributes(TAttributes *this)
{
  result = *(this + 18);
  if (!result)
  {
    operator new();
  }

  return result;
}

void TAttributes::HandleBaselineInfoAttribute(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {

      CFDictionaryApplyFunction(a1, TAttributes::ApplyBaselineInfoValue, a2);
    }
  }
}

void TAttributes::ApplyBaselineReferenceInfoValue(TAttributes *this, __CFString *a2, TAttributes **a3, void *a4)
{
  v6 = TAttributes::EnsureBaselineAttributes(*a3);
  v7 = v6;
  v8 = (v6 + 136);
  if ((*(v6 + 264) & 1) == 0)
  {
    *(v6 + 232) = 0u;
    *(v6 + 248) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    v9 = (v6 + 144);
    v10 = 128;
    *v8 = 0u;
    *(v6 + 152) = 0u;
    do
    {
      *(v9 - 8) = 0;
      *v9 = 0;
      v9 += 16;
      v10 -= 16;
    }

    while (v10);
    *(v6 + 264) = 1;
  }

  if (CFEqual(this, @"CTBaselineReferenceFont"))
  {
    if ((*(v7 + 264) & 1) == 0)
    {
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      v12 = (v7 + 144);
      v13 = 128;
      *v8 = 0u;
      v8[1] = 0u;
      do
      {
        *(v12 - 8) = 0;
        *v12 = 0;
        v12 += 16;
        v13 -= 16;
      }

      while (v13);
      *(v7 + 264) = 1;
    }

    TCFRef<__CTFont const*>::Retain((v7 + 272), a2);
  }

  else
  {
    v14 = TBaselineAttributes::BaselineClassFromName(this, v11);
    if ((v14 & 0x100) != 0)
    {
      valuePtr = NAN;
      if (a2)
      {
        v15 = v14;
        v16 = CFGetTypeID(a2);
        if (v16 == CFNumberGetTypeID() || v16 == CFBooleanGetTypeID())
        {
          CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
        }

        else
        {
          if (v16 != CFStringGetTypeID())
          {
            return;
          }

          valuePtr = CFStringGetDoubleValue(a2);
        }

        if ((v15 & 0xF8) != 0)
        {
          __break(1u);
        }

        else
        {
          v17 = &v8[v15 & 7];
          *v17 = valuePtr;
          *(v17 + 8) = 1;
        }
      }
    }
  }
}

void TAttributes::HandleBaselineReferenceInfoAttribute(const void *a1, void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {

      CFDictionaryApplyFunction(a1, TAttributes::ApplyBaselineReferenceInfoValue, a2);
    }
  }
}

uint64_t TAttributes::HandleBaselineClassAttribute(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    result = TBaselineAttributes::BaselineClassFromName(result, a2);
    if ((result & 0x100) != 0)
    {
      v3 = result;
      result = TAttributes::EnsureBaselineAttributes(a2->isa);
      *(result + 280) = v3;
    }
  }

  return result;
}

uint64_t TAttributes::HandleWritingDirectionAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 8u;
  }

  return result;
}

uint64_t TAttributes::HandleRenderingStyleAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 0x80u;
  }

  return result;
}

uint64_t TAttributes::HandleRubyAnnotationAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 0x800u;
  }

  return result;
}

const void *TAttributes::HandleTextEncapsulationAttribute(const void *result, uint64_t **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      v5 = *a2;
      *(v5 + 69) = *(*a2 + 69) | 0x8000;
      v6 = TAttributes::EnsureRareData(v5);
      *(v6 + 72) = v3;
      v7 = *(v6 + 80);
      if (!v7)
      {
        operator new();
      }

      v8 = *v7 | (v7[3] << 8);
      v9 = &unk_1EF2585B0;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      LOWORD(v10) = v8;
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = &v9;
      std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](a2[6], &v9);
      return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&v9);
    }
  }

  return result;
}

uint64_t TAttributes::HandleTextEncapsulationAttributeNeue(uint64_t a1, uint64_t **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = *a2;
    *(v5 + 69) = *(*a2 + 69) | 0x8000;
    v6 = TAttributes::EnsureRareData(v5);
    *(v6 + 72) = a1;
    v7 = *(v6 + 80);
    if (!v7)
    {
      operator new();
    }

    v8 = *v7 | (v7[3] << 8);
    v9 = &unk_1EF2585F8;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    LOWORD(v10) = v8;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = &v9;
    std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](a2[6], &v9);
    return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&v9);
  }

  return result;
}

uint64_t TAttributes::HandleTrimWhitespaceBackgroundAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 137) |= 8u;
  }

  return result;
}

const void *TAttributes::HandleImposedGlyphAttribute(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v3 == result)
    {
      *(*a2 + 138) |= 0x10u;
    }
  }

  return result;
}

uint64_t TAttributes::HandlePaletteAttribute(uint64_t result, uint64_t a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2[0] = &unk_1EF258640;
    v2[1] = result;
    v2[2] = 0xAAAAAAAAAAAAAAAALL;
    v2[3] = v2;
    std::vector<std::function<void ()(TAttributes &)>,TInlineBufferAllocator<std::function<void ()(TAttributes &)>,30ul>>::push_back[abi:fn200100](*(a2 + 48), v2);
    return std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](v2);
  }

  return result;
}

uint64_t TAttributes::HandleEmojiImageProviderAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 4u;
  }

  return result;
}

uint64_t TAttributes::HandleRunMetricsDelegateAttribute(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    *(*a2 + 138) |= 2u;
  }

  return result;
}

unint64_t CTFontCopyTextScaleRecipeForStringAttributes(TBaseFont ***a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"NSTextScale");
  if (Value != @"NSTextScaleSecondary" && (!Value || !CFEqual(Value, @"NSTextScaleSecondary")))
  {
    return 0;
  }

  v5 = CFDictionaryGetValue(theDict, @"NSFont");
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!CTFontGetTextStyle(v5))
  {
    return 0;
  }

  v7 = CustomRatioFromAttributes(theDict);
  v9 = v8;
  matched = TextScaleWeightMatchVariableOnly(theDict);
  CopySecondaryScaleRecipeInternal(&v13, a1, v6, v7, v9, matched);
  v11 = atomic_exchange(&v13, 0);

  return v11;
}

void TAttributes::PrimaryFont(atomic_ullong *this, uint64_t a2)
{
  *this = 0;
  v4 = *(a2 + 120);
  if (v4)
  {
    TCFRef<__CTFont const*>::Retain(this, atomic_load_explicit((v4 + 96), memory_order_acquire));
  }

  if (!atomic_load_explicit(this, memory_order_acquire))
  {
    explicit = atomic_load_explicit((a2 + 16), memory_order_acquire);

    TCFRef<__CTFont const*>::Retain(this, explicit);
  }
}

uint64_t (*TAttributes::ApplyFontAttributeHandlers(TAttributes *this, const void *a2, const void *a3, void *a4))(const void *, const void *)
{
  if (qword_1ED567C20 != -1)
  {
    dispatch_once_f(&qword_1ED567C20, 0, TAttributes::ApplyFontAttributeHandlers(void const*,void const*,void *)::$_0::__invoke);
  }

  result = CFDictionaryGetValue(qword_1ED567C18, this);
  if (result)
  {

    return result(a2, a3);
  }

  return result;
}

BOOL TAttributes::GetTabStopsPresent(TAttributes *this, const void *a2)
{
  v3 = *(this + 15);
  if (v3 && (*(v3 + 66) & 2) != 0)
  {
    return 0;
  }

  v4 = *(this + 16);
  if (!v4 || TParagraphStyle::GetTabStops(v4, a2))
  {
    return 1;
  }

  TParagraphStyle::GetDefaultTabInterval(*(this + 16), v5);
  return v7 != 0.0;
}

uint64_t TAttributes::GetTabStopForLocation(TAttributes *this, long double a2, TTextTab *a3)
{
  v6 = *(this + 15);
  if (v6 && (*(v6 + 66) & 2) != 0)
  {
    return 0;
  }

  v7 = *(this + 16);
  if (!v7)
  {
    if (a2 < 336.0)
    {
      v22 = fmod(a2, 28.0);
      v21 = 0;
      v20 = a2 + 28.0 - v22;
      goto LABEL_16;
    }

    return 0;
  }

  TabStops = TParagraphStyle::GetTabStops(v7, a3);
  v10 = 0.0;
  if (!TabStops)
  {
    goto LABEL_12;
  }

  v11 = TabStops;
  Table = GetTable();
  v13 = 0.0002;
  if (Table)
  {
    v14 = *(Table + 8);
    if (v14)
    {
      v13 = *v14;
    }
  }

  Count = CFArrayGetCount(v11);
  if (!Count)
  {
LABEL_12:
    TParagraphStyle::GetDefaultTabInterval(*(this + 16), v9);
    if (v19 != 0.0)
    {
      v20 = v10 + v19 * (floor((a2 + 0.00000011920929 - v10) / v19) + 1.0);
      v21 = 4;
LABEL_16:
      *a3 = v20;
      *(a3 + 8) = v21;
      result = 1;
      *(a3 + 2) = 0;
      return result;
    }

    return 0;
  }

  v16 = Count;
  v17 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v11, v17);
    TTextTab::SetTabRef(a3, ValueAtIndex);
    v10 = *a3;
    if (*a3 - a2 > v13)
    {
      return 1;
    }

    if (v16 == ++v17)
    {
      goto LABEL_12;
    }
  }
}

void TAttributes::CopyForegroundColorForContext(TAttributes *this@<X0>, CGContext *a2@<X1>, const __CFString **a3@<X2>, CGColorRef *a4@<X8>)
{
  if (*(this + 136))
  {
    FillColorAsColor = CGContextGetFillColorAsColor();
LABEL_11:
    v9 = FillColorAsColor;
    goto LABEL_13;
  }

  ForegroundColor = TAttributes::GetForegroundColor(atomic_load_explicit(this, memory_order_acquire), a2, a3);
  if (!ForegroundColor && ((*(this + 136) & 2) == 0 || (ForegroundColor = atomic_load_explicit(this + 4, memory_order_acquire)) == 0))
  {
    if (qword_1ED567C40 != -1)
    {
      dispatch_once_f(&qword_1ED567C40, 0, GetBlackColor(void)::$_0::__invoke);
    }

    FillColorAsColor = qword_1ED567C38;
    goto LABEL_11;
  }

  v7 = CFGetTypeID(ForegroundColor);
  if (v7 == CGColorGetTypeID())
  {
    v10 = ForegroundColor;
    *a4 = atomic_exchange(&v10, 0);

    return;
  }

  v9 = CopyCGColor(ForegroundColor);
LABEL_13:
  *a4 = v9;
}

const void *TAttributes::GetStrikethroughColor(TAttributes *this, uint64_t a2, const __CFString **a3)
{
  if (*(this + 136))
  {
    return *MEMORY[0x1E695E738];
  }

  result = TAttributes::GetStrikethroughColor(atomic_load_explicit(this, memory_order_acquire), 0, a3);
  if (!result)
  {
    if ((*(this + 136) & 2) != 0)
    {
      return atomic_load_explicit(this + 4, memory_order_acquire);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TAttributes::ApplyFontAttributeHandlers(void const*,void const*,void *)::$_0::__invoke()
{
  keys[7] = *MEMORY[0x1E69E9840];
  keys[0] = @"NSLigature";
  keys[1] = @"CTSuperscript";
  keys[2] = @"NSCharacterShape";
  keys[3] = @"CTHorizontalInVerticalForms";
  keys[4] = @"CTPalette";
  keys[5] = @"CTTextEncapsulation";
  keys[6] = @"NSTextEncapsulation";
  values[0] = TAttributes::HandleLigatureAttribute;
  values[1] = TAttributes::HandleSuperscriptAttribute;
  values[2] = TAttributes::HandleCharacterShapeAttribute;
  values[3] = TAttributes::HandleHorizontalInVerticalFormsAttribute;
  values[4] = TAttributes::HandlePaletteAttribute;
  values[5] = TAttributes::HandleTextEncapsulationAttribute;
  values[6] = TAttributes::HandleTextEncapsulationAttributeNeue;
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 7, MEMORY[0x1E695E9D8], 0);
  qword_1ED567C18 = atomic_exchange(&v0, 0);
}

CGColorRef GetBlackColor(void)::$_0::__invoke()
{
  result = CGColorGetConstantColor(*MEMORY[0x1E695F088]);
  qword_1ED567C38 = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(TAttributes &)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<TAttributes::HandleSuperscriptAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleSuperscriptAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1EF2584A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<TAttributes::HandleSuperscriptAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleSuperscriptAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  CreateCopyOfFontWithFeature(atomic_load_explicit((a2 + 16), memory_order_acquire), 10, *(a1 + 8), &v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {

    *(a2 + 48) = 1;
  }
}

uint64_t std::__function::__func<TAttributes::HandleCharacterShapeAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleCharacterShapeAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1EF2584E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<TAttributes::HandleCharacterShapeAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleCharacterShapeAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 16);
  CreateCopyOfFontWithFeature(atomic_load_explicit((a2 + 16), memory_order_acquire), 20, *(a1 + 8), &v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {

    *(a2 + 48) = 1;
  }
}

void std::__function::__func<TAttributes::HandleHorizontalInVerticalFormsAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleHorizontalInVerticalFormsAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(int a1, TAttributes *this)
{
  if (*(this + 50) == 1)
  {
    TAttributes::ApplyTateChuYoko(this);
  }
}

void std::__shared_ptr_emplace<TextEncapsulationData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF258578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<TAttributes::HandleTextEncapsulationAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleTextEncapsulationAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1EF2585B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<TAttributes::HandleTextEncapsulationAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleTextEncapsulationAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(uint64_t a1, uint64_t a2)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TAttributes::PrimaryFont(&v14, a2);
  explicit = atomic_load_explicit(&v14, memory_order_acquire);
  if (explicit)
  {
    v5 = *(explicit + 5);
    v6 = a2 + 120;
    v7 = *(*(a2 + 120) + 80);
    *(v7 + 32) = *(v5 + 24);
    if (*(v5 + 56))
    {
      v8 = v5 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(v5);
      v7 = *(*v6 + 80);
    }

    v9 = *(v8 + 32);
  }

  else
  {
    v6 = a2 + 120;
    v7 = *(*(a2 + 120) + 80);
    *(v7 + 32) = 0;
    v9 = 0;
  }

  *(v7 + 48) = v9;
  Weight = CTFontGetWeight(explicit);
  ClassOfWeight = TTextEncapsulationRun::GetClassOfWeight(v11, Weight);
  *(*(*v6 + 80) + 40) = ClassOfWeight;
  TTextEncapsulationRun::CreateEncapsulationFont(explicit, ClassOfWeight, *(a1 + 9), *(a1 + 8), &v13);
  if (atomic_load_explicit(&v13, memory_order_acquire))
  {

    *(a2 + 48) = 1;
  }
}

uint64_t std::__function::__func<TAttributes::HandleTextEncapsulationAttributeNeue(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleTextEncapsulationAttributeNeue(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1EF2585F8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__function::__func<TAttributes::HandleTextEncapsulationAttributeNeue(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandleTextEncapsulationAttributeNeue(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(uint64_t a1, uint64_t a2)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TAttributes::PrimaryFont(&v14, a2);
  explicit = atomic_load_explicit(&v14, memory_order_acquire);
  if (explicit)
  {
    v5 = *(explicit + 5);
    v6 = a2 + 120;
    v7 = *(*(a2 + 120) + 80);
    *(v7 + 32) = *(v5 + 24);
    if (*(v5 + 56))
    {
      v8 = v5 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(v5);
      v7 = *(*v6 + 80);
    }

    v9 = *(v8 + 32);
  }

  else
  {
    v6 = a2 + 120;
    v7 = *(*(a2 + 120) + 80);
    *(v7 + 32) = 0;
    v9 = 0;
  }

  *(v7 + 48) = v9;
  Weight = CTFontGetWeight(explicit);
  ClassOfWeight = TTextEncapsulationRun::GetClassOfWeight(v11, Weight);
  *(*(*v6 + 80) + 40) = ClassOfWeight;
  TTextEncapsulationRun::CreateEncapsulationFont(explicit, ClassOfWeight, *(a1 + 9), *(a1 + 8), &v13);
  if (atomic_load_explicit(&v13, memory_order_acquire))
  {

    *(a2 + 48) = 1;
  }
}

uint64_t std::__function::__func<TAttributes::HandlePaletteAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandlePaletteAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258640;
  a2[1] = v2;
  return result;
}

void std::__function::__func<TAttributes::HandlePaletteAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0,std::allocator<TAttributes::HandlePaletteAttribute(void const*,TAttributes::AttributeHandlerContext *)::$_0>,void ()(TAttributes&)>::operator()(uint64_t a1, uint64_t a2)
{
  explicit = atomic_load_explicit((a2 + 16), memory_order_acquire);
  if (explicit)
  {
    v4 = *(a1 + 8);
    TFont::CopyDescriptor(*(explicit + 40), 0, &keys);
    v5 = atomic_exchange(&keys, 0);

    v8 = v5;
    v6 = atomic_load_explicit(&v8, memory_order_acquire);
    values = v4;
    keys = @"CTFontPaletteAttribute";
    v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    keys = CTFontDescriptorCreateCopyWithAttributes(v6, v7);

    keys = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v8, memory_order_acquire), 0.0, 0);
  }

  else
  {
    keys = 0;
  }

  if (atomic_load_explicit(&keys, memory_order_acquire))
  {

    *(a2 + 48) = 1;
  }
}

uint64_t OTL::GPOS::ApplySinglePos(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a1 + 40);
  v8 = ValueForSinglePos(a2, v7, a4);
  v11 = v8;
  if (v8)
  {
    v12 = a2[2];
    v10.i32[0] = v12;
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = &v8[v13.u32[0]];
    if (v8 >= a2 && v14 >= v8 && v14 <= v7)
    {
      goto LABEL_16;
    }

    v17 = (v8 + 1) <= v7 && v8 >= a2;
    v18 = (v7 - v8) >> 1;
    if (!v17)
    {
      v18 = 0;
    }

    if (v18 != v13.u32[0])
    {
      v9 = 0;
    }

    else
    {
LABEL_16:
      v19 = *(a1 + 16);
      v21 = v8;
      v22 = __rev16(v12);
      v23 = a2;
      v24 = v19;
      v25 = a1;
      ValueRecord::operator()(&v21, *a3, *(a3 + 48));
      v9 = 1;
    }
  }

  return (v11 != 0) & v9;
}

unsigned __int16 *ValueForSinglePos(unsigned __int16 *a1, unint64_t a2, unsigned int a3)
{
  v3 = bswap32(*a1) >> 16;
  if (v3 != 2)
  {
    if (v3 == 1 && (a1 + 4) <= a2)
    {
      return a1 + 3;
    }

    return 0;
  }

  v5 = a1 + 4;
  if ((a1 + 4) > a2)
  {
    return 0;
  }

  v6 = bswap32(a1[3]) >> 16;
  v7 = &v5[v6];
  v8 = (a1 + 5) <= a2 ? (a2 - v5) >> 1 : 0;
  v9 = v7 <= a2 && v7 >= v5;
  v10 = v9 || v8 == v6;
  if (!v10 || v6 < a3)
  {
    return 0;
  }

  v11 = vcnt_s8(a1[2]);
  v11.i16[0] = vaddlv_u8(v11);
  return &v5[v11.u32[0] * (a3 - 1)];
}

uint64_t OTL::GPOS::GetSinglePosAdjustmentsForLookup(OTL::GPOS *this, const OTL::Lookup *a2, uint64_t a3, double *a4, double *a5)
{
  if (*(a2 + 8) != 1)
  {
    return 0;
  }

  v34[11] = v5;
  v34[12] = v6;
  *a4 = 0.0;
  *a5 = 0.0;
  v10 = *(a2 + 24);
  if (((*(a2 + 26) - v10) >> 6))
  {
    v13 = 0;
    v14 = 0;
    v15 = ((*(a2 + 26) - v10) >> 6) << 6;
    do
    {
      v16 = *(a2 + 12);
      if (v14 >= (*(a2 + 13) - v16) >> 6)
      {
        break;
      }

      v17 = v16 + v13;
      v18 = *(v16 + v13 + 24);
      v19 = *(v17 + 32);
      v20 = v17 + (v19 >> 1);
      if (v19)
      {
        v18 = *(*(v20 + 8) + v18);
      }

      v21 = v18(v20 + 8, a3);
      if (v21)
      {
        v22 = *(a2 + 12);
        v23 = v14 >= (*(a2 + 13) - v22) >> 6 ? 0 : *(v22 + v13);
        v24 = ValueForSinglePos(v23, *(this + 5), v21);
        if (v24)
        {
          v26 = v24;
          v27 = bswap32(v23[2]) >> 16;
          v28 = *(this + 2);
          if ((v27 & 1) != 0 && *v26)
          {
            *a4 = *a4 + (bswap32(*v26) >> 16);
          }

          if ((v27 & 4) != 0 && *(&v26[v27 & 1] + (v27 & 2)))
          {
            *a5 = *a5 + (bswap32(*(&v26[v27 & 1] + (v27 & 2))) >> 16);
          }

          if ((v27 & 0xF0) != 0)
          {
            v34[0] = 0xAAAAAAAAAAAAAAAALL;
            VariationValues = TFont::GetVariationValues(v28, v34);
            if (VariationValues)
            {
              v30 = VariationValues;
              if ((v27 & 0x10) != 0)
              {
                v31 = 1;
                v32 = v26;
                do
                {
                  v32 += (v31 & v27) != 0;
                  v31 *= 2;
                }

                while (v31 != 16);
                if (*v32)
                {
                  *a4 = OTL::GDEF::DeltaValue(*(this + 3), v23, *(this + 5), __rev16(*v32), v34[0], VariationValues) + *a4;
                }
              }

              if ((v27 & 0x40) != 0)
              {
                for (i = 1; i != 64; i *= 2)
                {
                  v26 += (i & v27) != 0;
                }

                if (*v26)
                {
                  *a5 = OTL::GDEF::DeltaValue(*(this + 3), v23, *(this + 5), __rev16(*v26), v34[0], v30) + *a5;
                }
              }
            }
          }

          return 1;
        }
      }

      ++v14;
      v13 += 64;
    }

    while (v15 != v13);
  }

  return 0;
}

uint64_t OTL::GPOS::ApplyPairPosAccelerated(OTL::GPOS *this, const OTL::Lookup *a2, unsigned int a3, TGlyphIterator *a4)
{
  v120[1] = *MEMORY[0x1E69E9840];
  v104 = *(this + 5);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v119[22] = v5;
  v119[23] = v5;
  v119[20] = v5;
  v119[21] = v5;
  v119[18] = v5;
  v119[19] = v5;
  v119[16] = v5;
  v119[17] = v5;
  v119[15] = v5;
  v119[14] = v5;
  v119[13] = v5;
  v119[12] = v5;
  v119[11] = v5;
  v119[10] = v5;
  v119[9] = v5;
  v119[8] = v5;
  v119[7] = v5;
  v119[6] = v5;
  v119[5] = v5;
  v119[4] = v5;
  v119[3] = v5;
  v119[2] = v5;
  v119[1] = v5;
  v119[0] = v5;
  v6 = a3;
  __p = 0;
  v117 = 0;
  v118 = 0;
  v120[0] = v119;
  if (a3)
  {
    v7 = (32 * a3) | 0x18;
    if (v7 > 0x198)
    {
      operator new();
    }

    v120[0] = &__p + v7;
    __p = v119;
    v118 = &v119[2 * a3];
    bzero(v119, 32 * a3);
    v117 = &v119[2 * v6];
  }

  v8 = *(*(this + 2) + 408);
  v91 = *(this + 2);
  os_unfair_lock_lock_with_options();
  v9 = *(this + 2);
  if (!TGlyphIterator::NextCoveredBy(a4, a2))
  {
LABEL_128:
    v46 = 0;
    goto LABEL_130;
  }

  v98 = a4;
  v99 = v8;
  v97 = 0;
  v96 = v9;
  v105 = 8 * v6;
  do
  {
    v10 = v98;
    v11 = *(v98 + 6);
    v108 = *v98;
    v109 = v11;
    v12 = TRunGlue::TGlyph::glyphID(&v108);
    if (!TGlyphIterator::Next(v98, 1))
    {
      v46 = v97;
      break;
    }

    v13 = *(v98 + 6);
    v108 = *v98;
    v109 = v13;
    v14 = TRunGlue::TGlyph::glyphID(&v108);
    *(v98 + 6) = v11;
    v106 = v12;
    v101 = v14;
    v15 = v14 | (v12 << 16);
    v16 = v96[59];
    if (v16)
    {
      v17 = vcnt_s8(v16);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = v14 | (v12 << 16);
        if (*&v16 <= v15)
        {
          v18 = v15 % v16.i32[0];
        }
      }

      else
      {
        v18 = (v16.i32[0] - 1) & v15;
      }

      v19 = *(*&v96[58] + 8 * v18);
      if (v19)
      {
        for (i = *v19; i; i = *i)
        {
          v21 = *(i + 1);
          if (v21 == v15)
          {
            if (*(i + 4) == v15)
            {
              v82 = i[5];
              if (v82 != 0.0)
              {
                v83 = *v98;
                v121.width = TRunGlue::GetAdvance(*v98, v11) + *(v83 + 65) * v82;
                TRunGlue::SetAdvance(v83, v11, v121);
                goto LABEL_125;
              }

              goto LABEL_126;
            }
          }

          else
          {
            if (v17.u32[0] > 1uLL)
            {
              if (v21 >= *&v16)
              {
                v21 %= *&v16;
              }
            }

            else
            {
              v21 &= *&v16 - 1;
            }

            if (v21 != v18)
            {
              break;
            }
          }
        }
      }
    }

    if (!a3)
    {
      goto LABEL_126;
    }

    v92 = v13;
    v93 = v11;
    v94 = v14 | (v12 << 16);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 8;
    while (1)
    {
      v26 = *(a2 + 12);
      if (v24 >= (*(a2 + 13) - v26) >> 6)
      {
        goto LABEL_128;
      }

      v27 = v26 + 8 * v23;
      v28 = *(v27 + 24);
      v29 = *(v27 + 32);
      v30 = v26 + (v29 >> 1);
      if (v29)
      {
        v28 = *(*(v30 + 8 * v23 + 8) + v28);
      }

      v31 = v28(v30 + v25, v106);
      if (!v31)
      {
        goto LABEL_62;
      }

      v32 = __p;
      if (v24 >= (v117 - __p) >> 5)
      {
        __break(1u);
      }

      v33 = v31;
      v34 = *(__p + v22 * 4);
      if (!v34)
      {
        v43 = *(a2 + 12);
        if (v24 >= (*(a2 + 13) - v43) >> 6)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v43 + 8 * v23);
        }

        v46 = 0;
        if (*(this + 4) > v34 || v34 + 4 > v104)
        {
          goto LABEL_130;
        }

        v47 = bswap32(*v34) >> 16;
        if (v47 == 2)
        {
          if (v34 + 8 > v104)
          {
            goto LABEL_128;
          }

          v55 = (v34 + (bswap32(v34[4]) >> 16));
          if (v55 + 1 > v104)
          {
            goto LABEL_128;
          }

          v56 = bswap32(*v55) >> 16;
          if (v56 == 2)
          {
            v57 = 6 * (bswap32(v55[1]) >> 16) + 4;
          }

          else if (v56 == 1)
          {
            v57 = 2 * (bswap32(v55[2]) >> 16) + 6;
          }

          else
          {
            v57 = 0;
          }

          v46 = 0;
          v58 = v55 + v57;
          if (v58 < v55 || v58 > v104)
          {
            goto LABEL_130;
          }

          v59 = (v34 + (bswap32(v34[5]) >> 16));
          if (v59 + 1 > v104)
          {
            goto LABEL_128;
          }

          v60 = bswap32(*v59) >> 16;
          if (v60 == 2)
          {
            v61 = 6 * (bswap32(v59[1]) >> 16) + 4;
          }

          else
          {
            v61 = v60 == 1 ? 2 * (bswap32(v59[2]) >> 16) + 6 : 0;
          }

          v46 = 0;
          v62 = v59 + v61;
          if (v62 < v59 || v62 > v104)
          {
            goto LABEL_130;
          }

          os_unfair_lock_lock_with_options();
          v63 = *(v99 + 448);
          if (v24 >= (*(v99 + 456) - v63) >> 3 || (v64 = *(v63 + v23)) == 0)
          {
            LOWORD(v108) = 0;
            v115[0] = &unk_1EF258688;
            v115[1] = &v108;
            v115[3] = v115;
            OTL::ClassDefTable::Iterate(v55, v115);
            std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v115);
            v113 = 0;
            v114[0] = &unk_1EF2586D0;
            v114[1] = &v113;
            v114[3] = v114;
            OTL::ClassDefTable::Iterate(v59, v114);
            std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v114);
            operator new[]();
          }

          v65 = *v64;
          v66 = v64 + 2;
          v67 = v64[1];
          v68 = &v32[v22];
          *v68 = v34;
          v32[v23 + 2] = 2;
          *(v68 + 6) = v65;
          *(v68 + 7) = v67;
          *(v68 + 2) = v66;
          *(v68 + 3) = &v66[v65 + 1];
          os_unfair_lock_unlock((v99 + 444));
        }

        else
        {
          if (v47 != 1)
          {
            goto LABEL_62;
          }

          v48 = v34 + 5;
          if (v34 + 5 > v104)
          {
            goto LABEL_128;
          }

          v49 = bswap32(v34[4]) >> 16;
          v50 = &v48[v49];
          v51 = v34 + 6 <= v104 ? (v104 - v48) >> 1 : 0;
          v52 = v50 <= v104 && v50 >= v48;
          if (!v52 && v51 != v49)
          {
            goto LABEL_128;
          }

          v53 = __p + v22 * 4;
          *v53 = v34;
          v32[v23 + 2] = 1;
          *(v53 + 7) = 0;
          *(v53 + 12) = 0;
          *(v53 + 20) = 0;
        }
      }

      v35 = v34[2];
      v103 = __rev16(v35);
      v36 = v34[3];
      v102 = __rev16(v36);
      v37 = v32[v23 + 2];
      if (v37 == 2)
      {
        v44 = &v32[v22];
        if (v106 <= LOWORD(v32[v22 + 3]))
        {
          v45 = *(*(v44 + 2) + 2 * v106);
        }

        else
        {
          v45 = 0;
        }

        if (v101 <= *(v44 + 7))
        {
          v54 = *(*&v32[v22 + 6] + 2 * v101);
        }

        else
        {
          v54 = 0;
        }

        v41 = PairPosFormat2::ValuePair(v34, v45, v54, v104);
        v40 = v34;
        if (v41)
        {
          break;
        }

        goto LABEL_62;
      }

      if (v37 == 1 && v33 <= bswap32(v34[4]) >> 16)
      {
        v38 = PairPosFormat1::NthPairSet(v34, v33 - 1, v104);
        if (!v38)
        {
          goto LABEL_128;
        }

        v40 = v38;
        v41 = PairSet::ValuePair(v38, v101, v103, v102, v104, v39);
        if (v41)
        {
          break;
        }
      }

LABEL_62:
      ++v24;
      v25 += 64;
      v23 += 8;
      v22 += 8;
      if (v105 == v23)
      {
        v10 = v98;
        goto LABEL_126;
      }
    }

    v42.i32[0] = v35;
    v69 = vcnt_s8(v42);
    v69.i16[0] = vaddlv_u8(v69);
    v70 = v69.u32[0];
    v69.i32[0] = v36;
    v71 = vcnt_s8(v69);
    v71.i16[0] = vaddlv_u8(v71);
    v72 = (v71.i32[0] + v70);
    v10 = v98;
    if (v34 > v41 || ((v73 = &v41[v72], v73 >= v41) ? (v74 = v73 > v104) : (v74 = 1), v74))
    {
      v75 = v41 + 1 > v104 || v34 > v41;
      v76 = (v104 - v41) >> 1;
      if (v75)
      {
        v76 = 0;
      }

      if (v76 != v72)
      {
        goto LABEL_128;
      }
    }

    if (!v35)
    {
      v79 = 0.0;
      v78 = v93;
      v80 = v94;
      if (v36)
      {
        goto LABEL_100;
      }

LABEL_106:
      if ((v103 & 0xFFBB) != 0)
      {
        goto LABEL_125;
      }

      v84 = v96[59];
      if (!*&v84)
      {
        goto LABEL_124;
      }

      v85 = vcnt_s8(v84);
      v85.i16[0] = vaddlv_u8(v85);
      if (v85.u32[0] > 1uLL)
      {
        v86 = v80;
        if (*&v84 <= v80)
        {
          v86 = v80 % v84.i32[0];
        }
      }

      else
      {
        v86 = (v84.i32[0] - 1) & v80;
      }

      v87 = *(*&v96[58] + 8 * v86);
      if (!v87 || (v88 = *v87) == 0)
      {
LABEL_124:
        operator new();
      }

      while (1)
      {
        v89 = *(v88 + 1);
        if (v89 == v80)
        {
          if (*(v88 + 4) == v80)
          {
            v88[5] = v79;
            goto LABEL_125;
          }
        }

        else
        {
          if (v85.u32[0] > 1uLL)
          {
            if (v89 >= *&v84)
            {
              v89 %= *&v84;
            }
          }

          else
          {
            v89 &= *&v84 - 1;
          }

          if (v89 != v86)
          {
            goto LABEL_124;
          }
        }

        v88 = *v88;
        if (!v88)
        {
          goto LABEL_124;
        }
      }
    }

    v77 = *(this + 2);
    v108 = v41;
    LODWORD(v109) = v103;
    v110 = v40;
    v111 = v77;
    v112 = this;
    v78 = v93;
    v79 = ValueRecord::operator()(&v108, *v98, v93);
    v80 = v94;
    if (!v36)
    {
      goto LABEL_106;
    }

LABEL_100:
    v81 = *(this + 2);
    v108 = &v41[v70];
    LODWORD(v109) = v102;
    v110 = v40;
    v111 = v81;
    v112 = this;
    if (ValueRecord::operator()(&v108, *v98, v92) != 0.0)
    {
      TRunGlue::TGlyph::clearSafeToBreakAfter(*v98, v78);
    }

    *(v98 + 6) = v92;
LABEL_125:
    v97 = 1;
LABEL_126:
    v46 = v97;
  }

  while ((TGlyphIterator::NextCoveredBy(v10, a2) & 1) != 0);
LABEL_130:
  os_unfair_lock_unlock(v91 + 114);
  if (__p)
  {
    v117 = __p;
    if (v119 > __p || v120 <= __p)
    {
      operator delete(__p);
    }
  }

  return v46 & 1;
}

void *TRunGlue::TGlyph::clearSafeToBreakAfter(void *this, int64_t a2)
{
  if (this[18])
  {
    v3 = this;
    TRunGlue::FocusOnIndex(this, a2);
    v4 = v3[18];
    v5 = a2 - v3[19];
    v6 = *(v4 + 216);
    v7 = *(v3[51] + 4 * v5) | 8u;
    v8 = *(v4 + 200) + v5;

    return [v6 setProps:v7 atIndex:v8];
  }

  return this;
}

uint64_t OTL::GPOS::ApplyCursivePos(void *a1, uint64_t a2, TGlyphIterator *this, uint64_t a4, int a5, int a6)
{
  v6 = a1[5];
  v7 = (a2 + 4);
  v8 = a2 + 6;
  if ((a2 + 4) < a1[4] || v8 > v6)
  {
    return 0;
  }

  v11 = bswap32(*(a2 + 4)) >> 16;
  v12 = v8 + 4 * v11;
  v13 = a2 + 10 <= v6 ? (v6 - v8) >> 2 : 0;
  v14 = v12 <= v6 && v12 >= v8;
  if (!v14 && v13 != v11)
  {
    return 0;
  }

  v21 = *(this + 6);
  if ((TGlyphIterator::Prev(this) & 1) == 0)
  {
    result = 0;
    *(this + 6) = v21;
    return result;
  }

  v64 = a6;
  v22 = *(this + 6);
  v68 = *this;
  v69 = *&v22;
  v23 = TRunGlue::TGlyph::glyphID(&v68);
  v24 = *(a4 + 16);
  v25 = *(a4 + 24);
  v26 = (a4 + (v25 >> 1));
  if (v25)
  {
    v24 = *(*v26 + v24);
  }

  result = v24(v26, v23);
  *(this + 6) = v21;
  if (result)
  {
    if (v64)
    {
      v28 = -*(this + 2);
    }

    else
    {
      v28 = *(this + 2);
    }

    if (v64)
    {
      v29 = v22;
    }

    else
    {
      v29 = v21;
    }

    if (v64)
    {
      v30 = v21;
    }

    else
    {
      v30 = v22;
    }

    if (v64)
    {
      v31 = a5;
    }

    else
    {
      v31 = result;
    }

    if (v64)
    {
      v32 = result;
    }

    else
    {
      v32 = a5;
    }

    v33 = v31 - 1;
    v34 = bswap32(*v7);
    if (v33 >= HIWORD(v34))
    {
      return 0;
    }

    v35 = *(v8 + 4 * v33 + 2);
    if (!v35)
    {
      return 0;
    }

    v36 = a2 + __rev16(v35);
    if (v36 + 6 > v6)
    {
      return 0;
    }

    v37 = v32 - 1;
    if (v37 >= HIWORD(v34))
    {
      return 0;
    }

    v38 = *(v8 + 4 * v37);
    if (!v38)
    {
      return 0;
    }

    v39 = a2 + __rev16(v38);
    if (v39 + 6 > v6)
    {
      return 0;
    }

    v68 = NAN;
    v69 = NAN;
    v66 = NAN;
    v67 = NAN;
    v40 = a1[2];
    v41 = a1;
    v42 = v30;
    v43 = v29;
    GetAnchors(v36, v39, v40, v41, &v68, &v66);
    v44 = v28 < 0;
    if (v28 >= 0)
    {
      v45 = v68 - v66;
    }

    else
    {
      v45 = v66 - v68;
    }

    v46 = v42;
    if (!v44)
    {
      v43 = v42;
    }

    TRunGlue::GetUnscaledPosition(*this, v43);
    v48 = v45 + v47;
    TRunGlue::GetUnscaledAdvance(*this, v43);
    v50 = v48 - v49;
    v51 = *this;
    v52 = *(*this + 516);
    Advance = TRunGlue::GetAdvance(*this, v43);
    v55 = 65;
    if (v52)
    {
      v55 = 66;
    }

    v56 = Advance + *&v51[v55] * v50;
    TRunGlue::SetAdvance(v51, v43, *(&v54 - 1));
    if (v64)
    {
      v57 = v67 - v69;
    }

    else
    {
      v57 = v69 - v67;
    }

    TRunGlue::GetUnscaledPosition(*this, v22);
    v59 = v57 + v58;
    TRunGlue::GetUnscaledPosition(*this, v21);
    v61 = v59 - v60;
    v62 = *(this + 6);
    *(this + 6) = v21;
    do
    {
      v63 = *(this + 6);
      v65[0] = *this;
      v65[1] = v63;
      TRunGlue::TGlyph::AdjustYPositionBy(v65, v61);
      TRunGlue::OrGlyphProps(*this, *(this + 6), 0x2000u);
    }

    while (TGlyphIterator::Next(this, 1) && (TRunGlue::GetGlyphProps(*this, *(this + 6)) & 0x2000) != 0);
    *(this + 6) = v62;
    TRunGlue::TGlyph::clearSafeToBreakAfter(*this, v46);
    return 1;
  }

  return result;
}

uint64_t TGlyphIterator::Prev(TGlyphIterator *this)
{
  if (*(this + 6) == *(this + 2))
  {
    return 0;
  }

  while (1)
  {
    v3 = *(this + 2);
    v4 = *(this + 6) - v3;
    *(this + 6) = v4;
    if (v3 < 1)
    {
      break;
    }

    if (v4 <= *(this + 2))
    {
      return 0;
    }

LABEL_8:
    if ((TGlyphIterator::CurrentGlyphIsIgnored(this, 0) & 1) == 0)
    {
      return 1;
    }
  }

  if ((v3 & 0x80000000) == 0 || v4 < *(this + 2))
  {
    goto LABEL_8;
  }

  return 0;
}

void GetAnchors(uint64_t a1, uint64_t a2, atomic_ullong *this, uint64_t a4, double *a5, double *a6)
{
  v11 = (bswap32(*(a1 + 2)) >> 16);
  v12 = (bswap32(*(a1 + 4)) >> 16);
  v13 = (bswap32(*(a2 + 2)) >> 16);
  v14 = (bswap32(*(a2 + 4)) >> 16);
  if (*a1 == 768 || *a2 == 768)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    VariationValues = TFont::GetVariationValues(this, &v19);
    if (VariationValues)
    {
      v16 = VariationValues;
      if (*a1 == 768)
      {
        v17 = v19;
        v11 = OTL::GDEF::DeltaValue(*(a4 + 24), a1, *(a4 + 40), bswap32(*(a1 + 6)) >> 16, v19, VariationValues) + v11;
        v12 = OTL::GDEF::DeltaValue(*(a4 + 24), a1, *(a4 + 40), bswap32(*(a1 + 8)) >> 16, v17, v16) + v12;
      }

      if (*a2 == 768)
      {
        v18 = v19;
        v13 = OTL::GDEF::DeltaValue(*(a4 + 24), a2, *(a4 + 40), bswap32(*(a2 + 6)) >> 16, v19, v16) + v13;
        v14 = OTL::GDEF::DeltaValue(*(a4 + 24), a2, *(a4 + 40), bswap32(*(a2 + 8)) >> 16, v18, v16) + v14;
      }
    }
  }

  *a5 = v11;
  a5[1] = v12;
  *a6 = v13;
  a6[1] = v14;
}

double *TRunGlue::TGlyph::AdjustYPositionBy(TRunGlue::TGlyph *this, double a2)
{
  v4 = *this;
  if ((*(v4 + 144) || *(v4 + 184)) && (*(v4 + 516) & 1) == 0)
  {
    Origin = TRunGlue::GetOrigin(v4, *(this + 1));
    v9 = *this;
    v10 = *(this + 1);
    v12 = v11 + *(*this + 528) * a2;

    return TRunGlue::SetOrigin(v9, v10, *&Origin);
  }

  else
  {
    result = std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(*(v4 + 112), *(this + 1));
    v6 = result[5];
    v7 = result[6];
    if (*(*this + 516))
    {
      v6 = v6 + a2;
    }

    else
    {
      v7 = v7 + a2;
    }

    result[5] = v6;
    result[6] = v7;
  }

  return result;
}

uint64_t OTL::GPOS::ApplyMarkBasePos(uint64_t a1, unsigned __int16 *a2, TGlyphIterator *this, int a4)
{
  v4 = *(a1 + 40);
  if (*(a1 + 32) > a2 || (a2 + 6) > v4)
  {
    return 0;
  }

  v10 = *(this + 6);
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v11 = (a2 + (bswap32(a2[2]) >> 16));
  v47[0] = v11;
  v47[1] = v4;
  v51 = 0;
  v50 = 0xAAAAAAAA0000FFFFLL;
  v52 = 0;
  if ((v11 + 2) <= v4)
  {
    v12 = bswap32(*v11) >> 16;
    if (v12 == 2)
    {
      v13 = bswap32(v11[1]) >> 16 > 7;
      v14 = OTL::Coverage::SearchFmt2Linear;
      v15 = OTL::Coverage::SearchFmt2Binary;
LABEL_11:
      if (!v13)
      {
        v15 = v14;
      }

      goto LABEL_13;
    }

    if (v12 == 1)
    {
      v13 = bswap32(v11[1]) >> 16 > 4;
      v14 = OTL::Coverage::SearchFmt1Linear;
      v15 = OTL::Coverage::SearchFmt1Binary;
      goto LABEL_11;
    }
  }

  v47[0] = 0;
  v15 = OTL::Coverage::SearchUnknown;
LABEL_13:
  v48 = v15;
  v49 = 0;
  v16 = *(this + 7);
  v17 = 0;
  if (!TGlyphIterator::Prev(this))
  {
LABEL_22:
    result = 0;
    *(this + 6) = v10;
    *(this + 7) = v10;
    *(this + 8) = v17;
    return result;
  }

  while (1)
  {
    v17 = *(this + 6);
    if (v17 == v16)
    {
      break;
    }

    v45 = *this;
    v46 = v17;
    v18 = TRunGlue::TGlyph::glyphID(&v45);
    if (OTL::ClassDefTable::ClassOf(*(*(a1 + 24) + 16), v18) != 3)
    {
      v19 = v48;
      v20 = (v47 + (v49 >> 1));
      if (v49)
      {
        v19 = *(*v20 + v48);
      }

      LODWORD(result) = v19(v20, v18);
      if (result)
      {
        *(this + 6) = v10;
        *(this + 7) = v10;
        *(this + 8) = v17;
        goto LABEL_28;
      }

      GlyphProps = TRunGlue::GetGlyphProps(*this, v17);
      if ((GlyphProps & 0x10000000) != 0 || (GlyphProps & 0xF000000) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((TGlyphIterator::Prev(this) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v17 = *(this + 8);
  v45 = *this;
  v46 = v17;
  v23 = TRunGlue::TGlyph::glyphID(&v45);
  v24 = v48;
  v25 = (v47 + (v49 >> 1));
  if (v49)
  {
    v24 = *(*v25 + v48);
  }

  result = v24(v25, v23);
  *(this + 6) = v10;
  *(this + 7) = v10;
  *(this + 8) = v17;
  if (!result)
  {
    return result;
  }

LABEL_28:
  v26 = (a2 + (bswap32(a2[4]) >> 16));
  v27 = v26 + 1;
  if ((v26 + 1) <= v4)
  {
    v28 = bswap32(*v26) >> 16;
    v29 = &v27[2 * v28];
    v30 = (v26 + 3) <= v4 ? (v4 - v27) >> 2 : 0;
    v31 = v29 <= v4 && v29 >= v27;
    if (v31 || v30 == v28)
    {
      v33 = &v27[2 * (a4 - 1)];
      if ((v33 + 2) <= v4)
      {
        if (v33[1])
        {
          v34 = v26 + __rev16(v33[1]);
          if (v34 + 6 <= v4)
          {
            v35 = (a2 + (bswap32(a2[5]) >> 16));
            v36 = v35 + 1;
            if ((v35 + 1) <= v4)
            {
              v37 = *v33;
              v38 = bswap32(*v35) >> 16;
              v39 = &v36[v38];
              v40 = (v35 + 2) <= v4 ? (v4 - v36) >> 1 : 0;
              v41 = v39 <= v4 && v39 >= v36;
              if (v41 || v40 == v38)
              {
                v42 = &v36[(bswap32(v37) >> 16) + (result - 1) * (bswap32(a2[3]) >> 16)];
                if ((v42 + 1) <= v4)
                {
                  v43 = *v42;
                  if (v43)
                  {
                    v44 = v35 + __rev16(v43);
                    if (v44 + 6 <= v4)
                    {
                      AlignMarkAnchor(this, v17, v10, v44, v34, *(a1 + 16), a1);
                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}