@interface _CTFontFallbacksArray
- (uint64_t)objectAtIndex:(int)index shouldLock:(uint64_t)lock addRanges:;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation _CTFontFallbacksArray

- (uint64_t)objectAtIndex:(int)index shouldLock:(uint64_t)lock addRanges:
{
  if (!self)
  {
    return 0;
  }

  if (index)
  {
    os_unfair_lock_lock_with_options();
  }

  v8 = 0x1ED566000uLL;
  v9 = [*(self + 48) objectAtIndex:a2];
  if (v9 != [MEMORY[0x1E695DFB0] null])
  {
    if (index)
    {
      goto LABEL_118;
    }

    return v9;
  }

  v77 = 0;
  v10 = [*(self + 40) objectAtIndex:a2];
  if (!v10)
  {
    goto LABEL_81;
  }

  v11 = v10;
  if (v10 == [MEMORY[0x1E695DFB0] null])
  {
    goto LABEL_81;
  }

  if (index)
  {
    os_unfair_lock_unlock((self + 8));
  }

  v75 = *(self + 16);
  v12 = *(self + 24);
  v13 = *(self + 64);
  v79 = v11;
  v14 = v11[5];
  if ((*(v14 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v14, 0, 0.0);
  }

  explicit = atomic_load_explicit((v14 + 32), memory_order_acquire);
  if (!explicit)
  {
    v81.isa = 0;
    goto LABEL_79;
  }

  v78 = 0xAAAAAAAAAAAAAAAALL;
  v85[0] = 0;
  if (!v12)
  {
LABEL_60:
    v78 = atomic_exchange(v85, 0);
    goto LABEL_61;
  }

  v16 = TBaseFont::TraitsDistance(explicit, v12);
  if (v16 <= 0.000001 || (v17 = v16, (*(*explicit + 720))(explicit)))
  {
    v78 = 0;
    goto LABEL_61;
  }

  v84 = 0xAAAAAAAAAAAAAAAALL;
  (*(*explicit + 72))(&v84, explicit, @"CTFontSyntheticFamilyName");
  if (!atomic_load_explicit(&v84, memory_order_acquire))
  {
LABEL_59:

    goto LABEL_60;
  }

  v83 = 0;
  CopyPostScriptNamesForFamily(atomic_load_explicit(&v84, memory_order_acquire), 0, &v81);

  v18 = atomic_load_explicit(&v83, memory_order_acquire);
  v74 = v13;
  if (v18)
  {
    v19 = v18;
    Count = CFArrayGetCount(v18);

    if (Count >= 2)
    {
      v82 = 0;
      v21 = atomic_load_explicit(&v83, memory_order_acquire);
      if (v21)
      {
        v70 = CFArrayGetCount(v21);
        if (v70)
        {
          v22 = 0;
          v68 = v21;
          do
          {
            theArray = CFArrayGetValueAtIndex(v21, v22);
            CopyAttributeForSystemFont(theArray, @"NSCTFontTraitsAttribute", &v81);
            v23 = atomic_exchange(&v81, 0);

            if (v23)
            {
              v81.isa = 0xAAAAAAAAAAAAAAAALL;
              memset(&v81.info, 255, 24);
              TTraitsValues::TTraitsValues(&v81, v23);
              v24 = vsubq_f64(*&v81.info, *(v12 + 8));
              v25 = vaddvq_f64(vmulq_f64(v24, v24)) + (*&v81.length - *(v12 + 24)) * (*&v81.length - *(v12 + 24));
              if (v25 <= 0.000001)
              {
                TDescriptorSource::TDescriptorSource(&v80);
                v67 = *MEMORY[0x1E695E4C0];
                TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v80, theArray, 0x10063uLL, 9, 0, &v78);

                goto LABEL_121;
              }

              if (v17 - v25 > 0.000001)
              {
                TCFRef<__CTFont const*>::Retain(&v82, theArray);
                v17 = v25;
              }
            }

            ++v22;
            v21 = v68;
          }

          while (v70 != v22);
        }
      }

      if (atomic_load_explicit(&v82, memory_order_acquire))
      {
        TDescriptorSource::TDescriptorSource(&v81);
        v26 = atomic_load_explicit(&v82, memory_order_acquire);
        v67 = *MEMORY[0x1E695E4C0];
        TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v81, v26, 0x10063uLL, 9, 0, &v78);
LABEL_121:
        v8 = 0x1ED566000;
        v13 = v74;

        goto LABEL_122;
      }
    }

    v13 = v74;
  }

  else
  {
  }

  if (qword_1EA8697A0 != -1)
  {
    dispatch_once_f(&qword_1EA8697A0, 0, TFallbacksSource::GetCache(void)::{lambda(void *)#1}::__invoke);
  }

  v27 = dword_1EA86973C;
  if (v27 != GetLocaleChangedCount())
  {
    [atomic_load_explicit(qword_1EA869798 memory:"removeAllObjects" order:?acquire)];
    dword_1EA86973C = GetLocaleChangedCount();
  }

  v82 = qword_1EA869798;
  TFallbacksSource::CopyDescriptorsForFamily(&v82, atomic_load_explicit(&v84, memory_order_acquire), &v81);

  v28 = atomic_load_explicit(&v83, memory_order_acquire);
  if (!v28)
  {

LABEL_58:
    v8 = 0x1ED566000;
    goto LABEL_59;
  }

  v29 = v28;
  v30 = CFArrayGetCount(v28);

  v31 = v30 < 2;
  v13 = v74;
  if (v31)
  {
    goto LABEL_58;
  }

  theArraya = atomic_load_explicit(&v83, memory_order_acquire);
  if (!theArraya)
  {
    goto LABEL_58;
  }

  v71 = CFArrayGetCount(theArraya);
  if (!v71)
  {
    goto LABEL_58;
  }

  v32 = 0;
  v69 = *MEMORY[0x1E695E738];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArraya, v32);
    if (ValueAtIndex != v69)
    {
      break;
    }

LABEL_55:
    if (v71 == ++v32)
    {
      goto LABEL_58;
    }
  }

  v34 = ValueAtIndex;
  v35 = ValueAtIndex[5];
  if ((*(v35 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(ValueAtIndex[5], 0, 0.0);
  }

  v36 = atomic_load_explicit(v35 + 4, memory_order_acquire);
  if (v36)
  {
    v37 = v36 == explicit;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v13 = v74;
    goto LABEL_55;
  }

  v38 = TBaseFont::TraitsDistance(v36, v12);
  v13 = v74;
  if (v38 > 0.000001)
  {
    v39 = v38;
    if (v17 - v38 > 0.000001)
    {
      TCFRef<__CTFont const*>::Retain(v85, v34);
      v17 = v39;
    }

    goto LABEL_55;
  }

  v81.isa = v34;
  v78 = atomic_exchange(&v81, 0);

  v8 = 0x1ED566000;
LABEL_122:

LABEL_61:
  if (atomic_load_explicit(&v78, memory_order_acquire))
  {
    v40 = v13;
    v41 = atomic_load_explicit(&v78, memory_order_acquire);
    v42 = v41;
    v43 = v41[5];
    if ((*(v43 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v41[5], 0, 0.0);
    }

    v44 = atomic_load_explicit(v43 + 4, memory_order_acquire);

    if (v44)
    {
      if ((*(*v44 + 32))(v44, v75))
      {
        v81.isa = 0;
        goto LABEL_78;
      }

      v13 = v40;
      TCFRef<__CTFont const*>::Retain(&v79, atomic_load_explicit(&v78, memory_order_acquire));
      explicit = v44;
    }

    else
    {
      v13 = v40;
    }
  }

  if ((*(*explicit + 16))(explicit) == 1413629508)
  {
    v45 = operator new(0x258uLL, MEMORY[0x1E69E5398]);
    v46 = v45;
    if (v45)
    {
      TBaseFont::TBaseFont(v45, explicit);
    }

    v47 = TCFBase<TDescriptor>::Allocate();
    if (v47)
    {
      *(v47 + 16) = 0;
      *(v47 + 24) = TDescriptor::Hash;
      *(v47 + 32) = 0;
      *(v47 + 40) = v47 + 48;
      *(v47 + 48) = &unk_1EF257E00;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0x80000000;
      *(v47 + 72) = 0;
      if (v46)
      {
        atomic_fetch_add_explicit(v46 + 2, 1u, memory_order_relaxed);
      }

      *(v47 + 80) = v46;
      *(v47 + 88) = 0;
    }

    v81.isa = v47;
  }

  TDescriptorSource::CopyPossibleSystemUIFontDescriptor(&v79, v13, &v81);
LABEL_78:

LABEL_79:
  if (index)
  {
    os_unfair_lock_lock_with_options();
  }

LABEL_81:
  [*(self + 40) replaceObjectAtIndex:a2 withObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null", v67)}];
  v9 = [*(self + 48) objectAtIndex:a2];
  if (v9 != [MEMORY[0x1E695DFB0] null])
  {
    goto LABEL_117;
  }

  if (!atomic_load_explicit(&v77, memory_order_acquire))
  {
    goto LABEL_90;
  }

  v48 = atomic_load_explicit(&v77, memory_order_acquire);
  v49 = v48;
  v50 = v48[5];
  if ((*(v50 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v48[5], 0, 0.0);
  }

  v51 = atomic_load_explicit(v50 + 4, memory_order_acquire);

  if (!v51)
  {
LABEL_90:
    if (a2)
    {
      v9 = [(_CTFontFallbacksArray *)self objectAtIndex:0 shouldLock:lock addRanges:?];
      if (!v9)
      {
        goto LABEL_115;
      }

      goto LABEL_116;
    }

    if (index)
    {
      os_unfair_lock_unlock((self + 8));
    }

    return 0;
  }

  os_unfair_lock_lock_with_options();
  if (lock)
  {
    v52 = (*(*v51 + 16))(v51);
    if (v52 == 1414743620 && (v52 = (*(*v51 + 848))(v51), (v52 & 1) == 0))
    {
      v55 = *(self + 56);
      TDescriptorSource::EnsureFontFallbacksCache(v52);
      CharRangeMapForKey = TFontFallbacks::GetCharRangeMapForKey(TDescriptorSource::sFontFallbacksCache, v55);
      v81.isa = 0xAAAAAAAAAAAAAAAALL;
      (*(*v51 + 512))(&v81, v51);
      v56 = 0;
      for (i = 100 * a2; ; ++i)
      {
        v58 = atomic_load_explicit(&v81, memory_order_acquire);
        v59 = v58;
        v60 = v58 ? CFArrayGetCount(v58) : 0;

        if (v56 >= v60)
        {
          break;
        }

        v61 = atomic_load_explicit(&v81, memory_order_acquire);
        v62 = v61;
        if (v61)
        {
          v63 = CFArrayGetValueAtIndex(v61, v56);
        }

        else
        {
          v63 = 0;
        }

        v64 = *(v63 + 5);
        if ((*(v64 + 16) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(*(v63 + 5), 0, 0.0);
        }

        v65 = atomic_load_explicit((v64 + 32), memory_order_acquire);
        if (v65 && ((*(*v65 + 32))(v65, *(self + 16)) & 1) == 0)
        {
          v85[0] = 0xAAAAAAAAAAAAAAAALL;
          (*(*v65 + 176))(v85, v65);
          if (!atomic_load_explicit(v85, memory_order_acquire))
          {
            v84 = 0xAAAAAAAAAAAAAAAALL;
            (*(*v65 + 184))(&v84, v65);
            CharRangeToDescriptorMap::AddRangesForDescriptorIndex(CharRangeMapForKey, atomic_load_explicit(&v84, memory_order_acquire), i);
          }
        }

        ++v56;
      }

      v8 = 0x1ED566000uLL;
    }

    else
    {
      v53 = *(self + 56);
      TDescriptorSource::EnsureFontFallbacksCache(v52);
      v54 = TFontFallbacks::GetCharRangeMapForKey(TDescriptorSource::sFontFallbacksCache, v53);
      v81.isa = 0xAAAAAAAAAAAAAAAALL;
      (*(*v51 + 184))(&v81, v51);
      CharRangeToDescriptorMap::AddRangesForDescriptorIndex(v54, atomic_load_explicit(&v81, memory_order_acquire), a2);
    }
  }

  os_unfair_lock_unlock(&TDescriptorSource::sFontFallbacksLock);
  v9 = atomic_load_explicit(&v77, memory_order_acquire);
  if (!v9)
  {
LABEL_115:
    TDescriptorSource::TDescriptorSource(v85);
    TDescriptorSource::CreateDefaultDescriptor(0, &v81);

    v9 = atomic_load_explicit(&v77, memory_order_acquire);
  }

LABEL_116:
  [*(self + *(v8 + 3068)) replaceObjectAtIndex:a2 withObject:v9];
LABEL_117:

  if (index)
  {
LABEL_118:
    os_unfair_lock_unlock((self + 8));
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CTFontFallbacksArray;
  [(_CTFontFallbacksArray *)&v3 dealloc];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  os_unfair_lock_lock_with_options();
  for (; length; --length)
  {
    *objects++ = [(_CTFontFallbacksArray *)self objectAtIndex:0 shouldLock:0 addRanges:?];
  }

  os_unfair_lock_unlock(&self->_lock.fLock);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v6.receiver = self;
  v6.super_class = _CTFontFallbacksArray;
  return [(_CTFontFallbacksArray *)&v6 countByEnumeratingWithState:state objects:objects count:1];
}

@end