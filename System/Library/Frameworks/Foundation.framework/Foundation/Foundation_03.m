_BYTE *_NSKeyValueObservationInfoCreateByRemoving(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char *a7, NSKeyValueObservance **a8)
{
  v41 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *a8 = 0;
  Count = CFArrayGetCount(*(a1 + 8));
  v17 = 8 * Count;
  v39 = a7;
  v40 = 8 * Count;
  if (8 * Count < 0x81)
  {
    if (Count)
    {
      MEMORY[0x1EEE9AC00](v17);
      v18 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v18, v20);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = malloc_type_malloc(v17, 0x80040B8603338uLL);
  }

  v42.location = 0;
  v42.length = Count;
  CFArrayGetValues(*(a1 + 8), v42, v18);
  if ((Count - 1) < 0)
  {
LABEL_22:
    if (!*a8)
    {
      v31 = 0;
      goto LABEL_41;
    }

    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = Count - 1;
    while (1)
    {
      v22 = *&v18[8 * v21];
      if (*(v22 + 16) == a3)
      {
        v23 = (*(v22 + 41) & 1) != 0 ? 8 : 32;
        if (*(v22 + v23) == a2 && (*(v22 + 24) == a4 || (a5 & 1) == 0))
        {
          v24 = (*(v22 + 41) & 1) != 0 ? *(v22 + 32) : 0;
          if (!a6 || v24 == a6)
          {
            break;
          }
        }
      }

      if (v21-- <= 0)
      {
        goto LABEL_22;
      }
    }

    *a8 = v22;
  }

  if (Count < 2)
  {
    v31 = 0;
    *v39 = 1;
    goto LABEL_41;
  }

  os_unfair_lock_lock_with_options();
  if (!qword_1ED43F648)
  {
    v26 = [[NSPointerFunctions alloc] initWithOptions:5];
    [(NSPointerFunctions *)v26 setHashFunction:NSKeyValueShareableObservationInfoNSHTHash];
    [(NSPointerFunctions *)v26 setIsEqualFunction:NSKeyValueShareableObservationInfoNSHTIsEqual];
    qword_1ED43F648 = [[NSHashTable alloc] initWithPointerFunctions:v26 capacity:0];
  }

  if (!qword_1ED43F650)
  {
    qword_1ED43F650 = objc_opt_self();
  }

  v27 = qword_1ED43F670;
  if (!qword_1ED43F670)
  {
    v27 = objc_alloc_init(NSKeyValueShareableObservationInfoKey);
    qword_1ED43F670 = v27;
  }

  v27->_addingNotRemoving = 0;
  v27->_baseObservationInfo = a1;
  v27->_removalObservance = *a8;
  v27->_removalObservanceIndex = v21;
  *(qword_1ED43F670 + 80) = NSKeyValueShareableObservationInfoNSHTHash(v27);
  v28 = [qword_1ED43F648 member:?];
  v29 = qword_1ED43F670;
  *(qword_1ED43F670 + 64) = 0;
  *(v29 + 16) = 0;
  v30 = *(v29 + 80);
  *(v29 + 80) = 0;
  if (v28)
  {
    v31 = v28;
    v32 = v28;
    v33 = 1;
  }

  else
  {
    memmove(&v18[8 * v21], &v18[8 * v21 + 8], v40 - (8 * v21 + 8));
    v35 = [[NSKeyValueObservationInfo alloc] _initWithObservances:v18 count:Count - 1 hashValue:v30];
    v31 = v35;
    if (v35)
    {
      v34 = v39;
      if (v35[24] == 1)
      {
        v36 = objc_autoreleasePoolPush();
        [qword_1ED43F648 addObject:v31];
        objc_autoreleasePoolPop(v36);
      }

      v33 = 0;
      goto LABEL_40;
    }

    v33 = 0;
  }

  v34 = v39;
LABEL_40:
  *v34 = v33;
  os_unfair_lock_unlock(&_MergedGlobals_100);
LABEL_41:
  if (v40 >= 0x81)
  {
    free(v18);
  }

  return v31;
}

BOOL _NSKVOUsesBaseClassObservationInfoImplementationForClass(Class cls)
{
  if (qword_1ED43F688 != -1)
  {
    dispatch_once(&qword_1ED43F688, &__block_literal_global_17);
  }

  return class_getMethodImplementation(cls, sel_observationInfo) == _MergedGlobals_101 && class_getMethodImplementation(cls, sel_setObservationInfo_) == qword_1ED43F680;
}

void *NSKeyValuePropertyForIsaAndKeyPath(objc_class *a1, void *a2)
{
  value[3] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  value[1] = _NSKeyValueContainerClassForIsa(a1);
  value[2] = a2;
  if (!NSKeyValueProperties || (v4 = CFSetGetValue(NSKeyValueProperties, value)) == 0)
  {
    v5 = *(MEMORY[0x1E695E9F8] + 16);
    *&v8.version = *MEMORY[0x1E695E9F8];
    *&v8.release = v5;
    v8.equal = NSKeyValuePropertyIsEqual;
    v8.hash = NSKeyValuePropertyHash;
    v6 = CFSetCreateMutable(0, 0, &v8);
    v4 = NSKeyValuePropertyForIsaAndKeyPathInner(a1, a2, v6);
    CFRelease(v6);
  }

  return v4;
}

uint64_t _NSKeyValueContainerClassForIsa(objc_class *a1)
{
  if (_MergedGlobals_99 != a1)
  {
    v2 = _NSKVONotifyingOriginalClassForIsa(a1);
    if (qword_1ED43F638)
    {
      Value = CFDictionaryGetValue(qword_1ED43F638, v2);
      if (Value)
      {
LABEL_8:
        _MergedGlobals_99 = a1;
        qword_1ED43F630 = Value;
        return Value;
      }
    }

    else
    {
      qword_1ED43F638 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    }

    Value = [[NSKeyValueContainerClass alloc] initWithOriginalClass:v2];
    CFDictionarySetValue(qword_1ED43F638, v2, Value);

    goto LABEL_8;
  }

  return qword_1ED43F630;
}

uint64_t NSKeyValuePropertyIsEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return [v5 isEqual:{v2, v3}];
  }
}

unint64_t NSKeyValueShareableObservationInfoNSHTHash(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != qword_1ED43F650)
  {
    return *(a1 + 16);
  }

  if (*(a1 + 8) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = *(v3 + 16);
      LOBYTE(v3) = CFArrayGetCount(*(v3 + 8)) & 0x3F;
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v9) = 0;
    v10 = *(a1 + 48);
    v36 = *(a1 + 24);
    v37 = v10;
    v11 = &v36 + 3;
    for (i = 36; i > 7; i -= 4)
    {
      v13 = *(v11 - 3) + 16 * v9;
      v14 = *(v11 - 2) + 16 * (v13 ^ (16 * (v13 >> 28)));
      v15 = *(v11 - 1) + 16 * (v14 ^ (16 * (v14 >> 28)));
      v16 = *v11;
      v11 += 4;
      v17 = v16 + 16 * (v15 ^ (16 * (v15 >> 28)));
      v9 = (v17 ^ ((v17 & 0xF0000000) >> 24)) & ~(v17 & 0xF0000000);
    }

    return ((v9 << v3) | (v9 >> v3)) ^ v4;
  }

  v2 = *(a1 + 80);
  if (!v2)
  {
    Count = CFArrayGetCount(*(*(a1 + 16) + 8));
    v6 = Count;
    v7 = 8 * Count;
    if ((8 * Count) < 0x81)
    {
      if (Count)
      {
        MEMORY[0x1EEE9AC00](Count);
        v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v8, v7);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    }

    [*(*(a1 + 16) + 8) getObjects:v8 range:{0, v6}];
    v2 = 0;
    if (v6)
    {
      v19 = 0;
      v20 = 0;
      v21 = *(a1 + 72);
      while (v19 == v21)
      {
LABEL_30:
        if (++v19 == v6)
        {
          if (v7 > 0x80)
          {
            free(v8);
          }

          return v2;
        }
      }

      v22 = *&v8[8 * v19];
      if (v22)
      {
        if (*(v22 + 41))
        {
          v23 = 8;
        }

        else
        {
          v23 = 32;
        }

        v24 = *(v22 + v23);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (*(v22 + 41))
        {
          goto LABEL_25;
        }

        v27 = 0;
      }

      else
      {
        v24 = 0;
        v27 = 0;
        v25 = MEMORY[0x10];
        v26 = MEMORY[0x18];
        if (MEMORY[0x29])
        {
LABEL_25:
          v27 = *(v22 + 32);
        }
      }

      LODWORD(v28) = 0;
      *&v36 = v24;
      *(&v36 + 1) = v25;
      v29 = &v36 + 3;
      v30 = 36;
      *&v37 = v26;
      *(&v37 + 1) = v27;
      do
      {
        v31 = *(v29 - 3) + 16 * v28;
        v32 = *(v29 - 2) + 16 * (v31 ^ (16 * (v31 >> 28)));
        v33 = *(v29 - 1) + 16 * (v32 ^ (16 * (v32 >> 28)));
        v34 = *v29;
        v29 += 4;
        v35 = v34 + 16 * (v33 ^ (16 * (v33 >> 28)));
        v28 = (v35 ^ ((v35 & 0xF0000000) >> 24)) & ~(v35 & 0xF0000000);
        v30 -= 4;
      }

      while (v30 > 7);
      v2 ^= (v28 << (v20 & 0x3F)) | (v28 >> (v20 & 0x3F));
      ++v20;
      goto LABEL_30;
    }
  }

  return v2;
}

void _NSKeyValueReplaceObservationInfoForObject(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    v7 = a4;
  }

  v8 = _CFGetTSD();
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      while (*v9 != a1)
      {
        v9 = *(v9 + 16);
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      *(v9 + 8) = a4;
    }
  }

LABEL_9:
  if (!a3 && a4)
  {
    [a1 _willBeginKeyValueObserving];
  }

  os_unfair_lock_lock(&NSKeyValueObservationInfoLock);
  os_unfair_lock_assert_owner(&NSKeyValueObservationInfoLock);
  v10 = [a1 observationInfo];
  if (a2)
  {
    (*(a2 + 24))(a1, sel_setObservationInfo_, a4);
  }

  else
  {
    [a1 setObservationInfo:a4];
  }

  os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
  v11 = a3;
  if (a3 && !a4)
  {
    [a1 _didEndKeyValueObserving];
    v11 = a3;
  }

  if (v10 == v11)
  {
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined destroy of TermOfAddress?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E60C8], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, String.LocalizationValue.AttributedStringCache.CacheKey.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];

      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v10, a1))
      {
        v12 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v11, a2);

        if (v12)
        {
          return v5;
        }
      }

      else
      {
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t _NSKeyValueCheckObservationInfoForPendingNotification(void *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(&NSKeyValueObservationInfoLock);
  v6 = *(*(a2 + 16) + 8);
  if (v6)
  {
    v7 = (*(v6 + 16))(a1, sel_observationInfo);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [a1 observationInfo];
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 == a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = [*(v7 + 8) containsObject:a2];
  }

LABEL_8:
  os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
  return v8;
}

uint64_t specialized static Locale.identifier(fromAnyComponents:)(uint64_t a1)
{
  v2 = a1;
  v3 = "";
  v4 = *(a1 + 16);

  if (!v4 || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x8000000181482A50), (v6 & 1) == 0) || (outlined init with copy of Any(*(v2 + 56) + 32 * v5, &v115), (swift_dynamicCast() & 1) == 0))
  {
LABEL_30:
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, v3 | 0x8000000000000000);
    if ((v41 & 1) == 0)
    {
      v115 = 0u;
      v116[0] = 0u;
      goto LABEL_35;
    }

    v42 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = v2; ; v2 = i)
    {

      outlined init with take of Any((*(i + 56) + 32 * v42), &v115);
      specialized _NativeDictionary._delete(at:)(v42, i);
LABEL_35:
      outlined destroy of TermOfAddress?(&v115, &_sypSgMd);
      v44 = v2 + 64;
      v45 = 1 << *(v2 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v2 + 64);
      v48 = (v45 + 63) >> 6;

      v49 = 0;
      v110 = MEMORY[0x1E69E7CC0];
      v42 = &_sSS3key_yp5valuetMd;
      if (v47)
      {
        while (1)
        {
          v50 = v49;
LABEL_42:
          v51 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          v52 = v51 | (v50 << 6);
          v53 = *(v2 + 56);
          v54 = v2;
          v55 = (*(v2 + 48) + 16 * v52);
          v57 = *v55;
          v56 = v55[1];
          outlined init with copy of Any(v53 + 32 * v52, v116);
          *&v115 = v57;
          *(&v115 + 1) = v56;
          outlined init with copy of Any(v116, v114);

          if (swift_dynamicCast())
          {
            v104 = *(&v111[0] + 1);
            v106 = *&v111[0];

            outlined destroy of TermOfAddress?(&v115, &_sSS3key_yp5valuetMd);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v110[2] + 1, 1, v110);
            }

            v59 = v110[2];
            v58 = v110[3];
            v60 = v59 + 1;
            if (v59 >= v58 >> 1)
            {
              v101 = v110[2];
              v102 = v59 + 1;
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v110);
              v59 = v101;
              v60 = v102;
              v110 = v62;
            }

            v110[2] = v60;
            v61 = &v110[4 * v59];
            v61[4] = v57;
            v61[5] = v56;
            v61[6] = v106;
            v61[7] = v104;
          }

          else
          {
            outlined destroy of TermOfAddress?(&v115, &_sSS3key_yp5valuetMd);
          }

          v49 = v50;
          v2 = v54;
          if (!v47)
          {
            goto LABEL_39;
          }
        }
      }

      while (1)
      {
LABEL_39:
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v50 >= v48)
        {
          break;
        }

        v47 = *(v44 + 8 * v50);
        ++v49;
        if (v47)
        {
          goto LABEL_42;
        }
      }

      v42 = v110;
      if (!v110[2])
      {
        v63 = MEMORY[0x1E69E7CC8];
        *&v111[0] = MEMORY[0x1E69E7CC8];
LABEL_63:

        v77 = specialized static Locale.identifier(fromComponents:)(v63);

        return v77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
      v63 = static _DictionaryStorage.allocate(capacity:)();
      v11 = v110[2];
      *&v111[0] = v63;
      if (!v11)
      {
        goto LABEL_63;
      }

      v64 = 0;
      v65 = v110 + 7;
      v2 = 1;
      while (v64 < *(v42 + 16))
      {
        v42 = *(v65 - 2);
        v66 = *(v65 - 1);
        v7 = *v65;
        *&v115 = *(v65 - 3);
        v1 = v115;
        *(&v115 + 1) = v42;

        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v42);
        v69 = v63[2];
        v70 = (v68 & 1) == 0;
        v16 = __OFADD__(v69, v70);
        v71 = v69 + v70;
        if (v16)
        {
          goto LABEL_66;
        }

        v3 = v68;
        if (v63[3] < v71)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, 1);
          v63 = *&v111[0];
          v67 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v42);
          if ((v3 & 1) != (v72 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v3)
        {
          goto LABEL_86;
        }

        v63[(v67 >> 6) + 8] |= 1 << v67;
        v73 = (v63[6] + 16 * v67);
        *v73 = v1;
        v73[1] = v42;
        v74 = (v63[7] + 16 * v67);
        *v74 = v66;
        v74[1] = v7;
        v75 = v63[2];
        v16 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v16)
        {
          goto LABEL_67;
        }

        ++v64;
        v63[2] = v76;
        v65 += 4;
        v42 = v110;
        if (v11 == v64)
        {
          goto LABEL_63;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v79 = static _DictionaryStorage.copy(original:)();
      i = v79;
      if (*(v2 + 16))
      {
        break;
      }

LABEL_83:
    }

    v80 = (v79 + 64);
    v81 = v2 + 64;
    v82 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v2 || v80 >= v81 + 8 * v82)
    {
      memmove(v80, (v2 + 64), 8 * v82);
    }

    v83 = 0;
    *(i + 16) = *(v2 + 16);
    v84 = 1 << *(v2 + 32);
    v108 = v2;
    v85 = *(v2 + 64);
    v86 = -1;
    if (v84 < 64)
    {
      v86 = ~(-1 << v84);
    }

    v87 = v86 & v85;
    v88 = (v84 + 63) >> 6;
    if ((v86 & v85) != 0)
    {
      do
      {
        v89 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
LABEL_81:
        v92 = v89 | (v83 << 6);
        v93 = 16 * v92;
        v94 = (*(v108 + 48) + 16 * v92);
        v96 = *v94;
        v95 = v94[1];
        v97 = 32 * v92;
        outlined init with copy of Any(*(v108 + 56) + 32 * v92, &v115);
        v98 = (*(i + 48) + v93);
        *v98 = v96;
        v98[1] = v95;
        outlined init with take of Any(&v115, (*(i + 56) + v97));
      }

      while (v87);
    }

    v90 = v83;
    while (1)
    {
      v83 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v83 >= v88)
      {
        goto LABEL_83;
      }

      v91 = *(v81 + 8 * v83);
      ++v90;
      if (v91)
      {
        v89 = __clz(__rbit64(v91));
        v87 = (v91 - 1) & v91;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v7 = 0x7261646E656C6163;
  ObjectType = swift_getObjectType();
  (*(*(&v114[0] + 1) + 24))(&v112, ObjectType, *(&v114[0] + 1));
  v9 = Calendar.Identifier.cfCalendarIdentifier.getter();
  *(&v116[0] + 1) = MEMORY[0x1E69E6158];
  *&v115 = v9;
  *(&v115 + 1) = v10;
  outlined init with take of Any(&v115, v114);
  LOBYTE(v11) = swift_isUniquelyReferenced_nonNull_native();
  v113 = v2;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x7261646E656C6163, 0xE800000000000000);
  v14 = *(v2 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v1) = v13;
    if (*(v2 + 24) < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, v11);
      v2 = v113;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(0x7261646E656C6163, 0xE800000000000000);
      if ((v1 & 1) == (v18 & 1))
      {
        goto LABEL_9;
      }

LABEL_7:
      v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (v11)
    {
LABEL_9:
      if (v1)
      {
LABEL_10:
        v19 = (*(v2 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v19);
        outlined init with take of Any(v114, v19);
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

LABEL_28:
      specialized _NativeDictionary._insert(at:key:value:)(v12, v7, 0xE800000000000000, v114, v2);
      goto LABEL_29;
    }
  }

  v105 = v12;
  v103 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v107 = static _DictionaryStorage.copy(original:)();
  v109 = v2;
  if (!*(v2 + 16))
  {
LABEL_27:

    v7 = 0x7261646E656C6163;
    v12 = v105;
    v2 = v107;
    if (v103)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  v20 = (v107 + 64);
  v21 = v2 + 64;
  v22 = ((1 << *(v107 + 32)) + 63) >> 6;
  if (v107 != v2 || v20 >= v21 + 8 * v22)
  {
    memmove(v20, (v2 + 64), 8 * v22);
  }

  v23 = 0;
  v24 = v109;
  *(v107 + 16) = *(v109 + 16);
  v25 = 1 << *(v109 + 32);
  v26 = *(v109 + 64);
  v27 = -1;
  if (v25 < 64)
  {
    v27 = ~(-1 << v25);
  }

  v28 = v27 & v26;
  v29 = (v25 + 63) >> 6;
  if ((v27 & v26) != 0)
  {
    do
    {
      v30 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v31 = v30 | (v23 << 6);
LABEL_25:
      v34 = 16 * v31;
      v35 = (*(v24 + 48) + 16 * v31);
      v37 = *v35;
      v36 = v35[1];
      v38 = 32 * v31;
      outlined init with copy of Any(*(v24 + 56) + 32 * v31, v111);
      v39 = (*(v107 + 48) + v34);
      *v39 = v37;
      v39[1] = v36;
      outlined init with take of Any(v111, (*(v107 + 56) + v38));
    }

    while (v28);
  }

  v32 = v23;
  while (1)
  {
    v23 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v23 >= v29)
    {
      goto LABEL_27;
    }

    v33 = *(v21 + 8 * v23);
    ++v32;
    if (v33)
    {
      v28 = (v33 - 1) & v33;
      v31 = __clz(__rbit64(v33)) | (v23 << 6);
      v24 = v109;
      goto LABEL_25;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  v99 = swift_allocError();
  swift_willThrow();
  v113 = v99;
  v100 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    *&v114[0] = 0;
    *(&v114[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized static Locale.identifier(fromComponents:)(unint64_t a1)
{
  v1 = a1;
  v195 = 0;
  v196 = 0xE000000000000000;
  if (!*(a1 + 16))
  {

    v3 = v1;
    goto LABEL_16;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000181482A70);
  v3 = v1;
  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = (*(v1 + 56) + 16 * v2);
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x1865CB0E0](v6, v7);

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000181482A70);
  v3 = v1;
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v8;
  v3 = v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {

    specialized _NativeDictionary._delete(at:)(v10, v3);
LABEL_6:
    if (!*(v1 + 16))
    {
LABEL_16:
      v24 = 0;
      v23 = 0;
      goto LABEL_17;
    }

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x8000000181482A90);
    if (v12)
    {
      v13 = (*(v1 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v189 = 95;
      v190 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v14, v15);
      MEMORY[0x1865CB0E0](v189, v190);

      v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x8000000181482A90);
      if (v17)
      {
        break;
      }
    }

LABEL_12:
    if (!*(v1 + 16))
    {
      v10 = 0x8000000181482AD0;
      goto LABEL_33;
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000181482AB0);
    if (v21)
    {
      v22 = (*(v1 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

LABEL_17:
    v10 = 0x8000000181482AD0;
    if (*(v1 + 16))
    {
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000181482AD0);
      if (v26)
      {
        v27 = (*(v1 + 56) + 16 * v25);
        v28 = *v27;
        v29 = v27[1];

        if (!(v23 | v29))
        {
          goto LABEL_33;
        }

LABEL_22:
        MEMORY[0x1865CB0E0](95, 0xE100000000000000);
        if (v23)
        {
          MEMORY[0x1865CB0E0](v24, v23);

          v30 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000181482AB0);
          if (v31)
          {
            v32 = v30;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v33 = v3;
              goto LABEL_26;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
            v120 = static _DictionaryStorage.copy(original:)();
            v33 = v120;
            v187 = v3;
            if (*(v3 + 16))
            {
              v121 = (v120 + 64);
              v122 = v3 + 64;
              v123 = ((1 << *(v33 + 32)) + 63) >> 6;
              if (v33 != v3 || v121 >= v122 + 8 * v123)
              {
                memmove(v121, (v3 + 64), 8 * v123);
              }

              v124 = 0;
              *(v33 + 16) = *(v3 + 16);
              v125 = 1 << *(v3 + 32);
              v126 = *(v3 + 64);
              v127 = -1;
              if (v125 < 64)
              {
                v127 = ~(-1 << v125);
              }

              v128 = v127 & v126;
              v129 = (v125 + 63) >> 6;
              if ((v127 & v126) != 0)
              {
                do
                {
                  v130 = __clz(__rbit64(v128));
                  v128 &= v128 - 1;
LABEL_110:
                  v133 = 16 * (v130 | (v124 << 6));
                  v134 = (*(v187 + 48) + v133);
                  v136 = *v134;
                  v135 = v134[1];
                  v137 = (*(v187 + 56) + v133);
                  v138 = *v137;
                  v139 = v137[1];
                  v140 = (*(v33 + 48) + v133);
                  *v140 = v136;
                  v140[1] = v135;
                  v141 = (*(v33 + 56) + v133);
                  *v141 = v138;
                  v141[1] = v139;
                }

                while (v128);
              }

              v131 = v124;
              while (1)
              {
                v124 = v131 + 1;
                if (__OFADD__(v131, 1))
                {
                  break;
                }

                if (v124 >= v129)
                {
                  goto LABEL_128;
                }

                v132 = *(v122 + 8 * v124);
                ++v131;
                if (v132)
                {
                  v130 = __clz(__rbit64(v132));
                  v128 = (v132 - 1) & v132;
                  goto LABEL_110;
                }
              }

LABEL_147:
              __break(1u);
              goto LABEL_148;
            }

LABEL_128:

            v3 = v33;
LABEL_26:

            specialized _NativeDictionary._delete(at:)(v32, v33);
          }
        }

        if (!v29)
        {
          goto LABEL_33;
        }

        v189 = 95;
        v190 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v28, v29);

        MEMORY[0x1865CB0E0](v189, v190);

        v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000181482AD0);
        if ((v35 & 1) == 0)
        {
          goto LABEL_33;
        }

        v36 = v34;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v3;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
          v142 = static _DictionaryStorage.copy(original:)();
          v37 = v142;
          if (*(v3 + 16))
          {
            v143 = (v142 + 64);
            v10 = (v3 + 64);
            v144 = ((1 << *(v37 + 32)) + 63) >> 6;
            if (v37 != v3 || v143 >= &v10[v144])
            {
              memmove(v143, (v3 + 64), 8 * v144);
            }

            v145 = 0;
            *(v37 + 16) = *(v3 + 16);
            v146 = 1 << *(v3 + 32);
            v147 = *(v3 + 64);
            v148 = -1;
            if (v146 < 64)
            {
              v148 = ~(-1 << v146);
            }

            v149 = v148 & v147;
            v150 = (v146 + 63) >> 6;
            if ((v148 & v147) != 0)
            {
              do
              {
                v151 = __clz(__rbit64(v149));
                v149 &= v149 - 1;
LABEL_125:
                v154 = 16 * (v151 | (v145 << 6));
                v155 = (*(v3 + 48) + v154);
                v157 = *v155;
                v156 = v155[1];
                v158 = (*(v3 + 56) + v154);
                v159 = *v158;
                v160 = v158[1];
                v161 = (*(v37 + 48) + v154);
                *v161 = v157;
                v161[1] = v156;
                v162 = (*(v37 + 56) + v154);
                *v162 = v159;
                v162[1] = v160;
              }

              while (v149);
            }

            v152 = v145;
            while (1)
            {
              v145 = v152 + 1;
              if (__OFADD__(v152, 1))
              {
                break;
              }

              if (v145 >= v150)
              {
                goto LABEL_129;
              }

              v153 = v10[v145];
              ++v152;
              if (v153)
              {
                v151 = __clz(__rbit64(v153));
                v149 = (v153 - 1) & v153;
                goto LABEL_125;
              }
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

LABEL_129:

          v3 = v37;
        }

        specialized _NativeDictionary._delete(at:)(v36, v37);
        goto LABEL_33;
      }
    }

    v28 = 0;
    v29 = 0;
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_33:
    v38 = v3 + 64;
    v39 = 1 << *(v3 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v1 = v40 & *(v3 + 64);
    v41 = v3;
    v42 = (v39 + 63) >> 6;
    v186 = v41;

    v43 = 0;
    v188 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      goto LABEL_38;
    }

    do
    {
LABEL_36:
      while (1)
      {
        v44 = __clz(__rbit64(v1));
        v1 &= v1 - 1;
        v45 = (v43 << 10) | (16 * v44);
        v46 = (*(v186 + 48) + v45);
        v47 = *v46;
        v48 = v46[1];
        v49 = (*(v186 + 56) + v45);
        v50 = *v49;
        v51 = v49[1];

        v52 = closure #1 in static Locale.identifier(fromComponents:)(v47, v48, v50, v51);
        v10 = v53;
        v55 = v54;
        v57 = v56;

        if (v10)
        {
          break;
        }

        if (!v1)
        {
          goto LABEL_38;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v188[2] + 1, 1, v188);
      }

      v60 = v188[2];
      v59 = v188[3];
      if (v60 >= v59 >> 1)
      {
        v188 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v188);
      }

      v188[2] = v60 + 1;
      v61 = &v188[4 * v60];
      v61[4] = v52;
      v61[5] = v10;
      v61[6] = v55;
      v61[7] = v57;
    }

    while (v1);
    while (1)
    {
LABEL_38:
      v58 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v58 >= v42)
      {
        break;
      }

      v1 = *(v38 + 8 * v58);
      ++v43;
      if (v1)
      {
        v43 = v58;
        goto LABEL_36;
      }
    }

    v62 = v188;
    if (v188[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
      v10 = static _DictionaryStorage.allocate(capacity:)();
      v63 = v188[2];
      v194 = v10;
      if (v63)
      {
        v1 = 0;
        v64 = v188 + 7;
        while (v1 < v62[2])
        {
          v65 = *(v64 - 2);
          v68 = *(v64 - 1);
          v67 = *v64;
          v189 = *(v64 - 3);
          v66 = v189;
          v190 = v65;

          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
          v71 = v10[2];
          v72 = (v70 & 1) == 0;
          v73 = __OFADD__(v71, v72);
          v74 = v71 + v72;
          if (v73)
          {
            goto LABEL_77;
          }

          v75 = v70;
          if (v10[3] < v74)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, 1);
            v10 = v194;
            v69 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v65);
            if ((v75 & 1) != (v76 & 1))
            {
              goto LABEL_152;
            }
          }

          if (v75)
          {
            goto LABEL_150;
          }

          v10[(v69 >> 6) + 8] |= 1 << v69;
          v77 = (v10[6] + 16 * v69);
          *v77 = v66;
          v77[1] = v65;
          v78 = (v10[7] + 16 * v69);
          *v78 = v68;
          v78[1] = v67;
          v79 = v10[2];
          v73 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v73)
          {
            goto LABEL_78;
          }

          ++v1;
          v10[2] = v80;
          v64 += 4;
          v62 = v188;
          if (v63 == v1)
          {
            goto LABEL_60;
          }
        }

LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC8];
    }

LABEL_60:

    if (!v10[2])
    {
      goto LABEL_64;
    }

    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v81 = v10[2];
    if (v81)
    {
      v82 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v10[2], 0);
      v83 = specialized Sequence._copyContents(initializing:)(&v189, v82 + 4, v81, v10);

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      if (v83 != v81)
      {
        __break(1u);
LABEL_64:

LABEL_73:

        return v195;
      }
    }

    else
    {

      v82 = MEMORY[0x1E69E7CC0];
    }

    v189 = v82;
    specialized MutableCollection<>.sort(by:)(implicit closure #2 in static Locale.identifier(fromComponents:), 0);

    v1 = v189;
    v84 = *(v189 + 16);
    if (!v84)
    {
LABEL_72:

      specialized RangeReplaceableCollection<>.popLast()();
      goto LABEL_73;
    }

    v85 = 0;
    v86 = (v189 + 40);
    while (v85 < *(v1 + 16))
    {
      v88 = *(v86 - 1);
      v87 = *v86;
      v189 = v88;
      v190 = v87;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      if (!v10[2])
      {
        goto LABEL_80;
      }

      v90 = v189;
      v89 = v190;
      v91 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v87);
      v93 = v92;

      if ((v93 & 1) == 0)
      {
        goto LABEL_81;
      }

      ++v85;
      v94 = (v10[7] + 16 * v91);
      v95 = *v94;
      v96 = v94[1];
      v189 = v90;
      v190 = v89;

      MEMORY[0x1865CB0E0](v95, v96);

      MEMORY[0x1865CB0E0](59, 0xE100000000000000);

      MEMORY[0x1865CB0E0](v189, v190);

      v86 += 2;
      if (v84 == v85)
      {
        goto LABEL_72;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v98 = static _DictionaryStorage.copy(original:)();
    v3 = v98;
    if (*(v1 + 16))
    {
      v99 = (v98 + 64);
      v100 = v1 + 64;
      v101 = ((1 << *(v3 + 32)) + 63) >> 6;
      if (v3 != v1 || v99 >= v100 + 8 * v101)
      {
        memmove(v99, (v1 + 64), 8 * v101);
      }

      v102 = 0;
      *(v3 + 16) = *(v1 + 16);
      v103 = 1 << *(v1 + 32);
      v104 = *(v1 + 64);
      v105 = -1;
      if (v103 < 64)
      {
        v105 = ~(-1 << v103);
      }

      v106 = v105 & v104;
      v107 = (v103 + 63) >> 6;
      if ((v105 & v104) != 0)
      {
        do
        {
          v108 = __clz(__rbit64(v106));
          v106 &= v106 - 1;
LABEL_95:
          v111 = 16 * (v108 | (v102 << 6));
          v112 = (*(v1 + 48) + v111);
          v114 = *v112;
          v113 = v112[1];
          v115 = (*(v1 + 56) + v111);
          v116 = *v115;
          v117 = v115[1];
          v118 = (*(v3 + 48) + v111);
          *v118 = v114;
          v118[1] = v113;
          v119 = (*(v3 + 56) + v111);
          *v119 = v116;
          v119[1] = v117;
        }

        while (v106);
      }

      v109 = v102;
      while (1)
      {
        v102 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          break;
        }

        if (v102 >= v107)
        {
          goto LABEL_127;
        }

        v110 = *(v100 + 8 * v102);
        ++v109;
        if (v110)
        {
          v108 = __clz(__rbit64(v110));
          v106 = (v110 - 1) & v110;
          goto LABEL_95;
        }
      }

      __break(1u);
      goto LABEL_147;
    }

LABEL_127:
  }

  v18 = v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v19 = v3;
LABEL_11:

    specialized _NativeDictionary._delete(at:)(v18, v19);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
  v163 = static _DictionaryStorage.copy(original:)();
  v19 = v163;
  if (!*(v3 + 16))
  {
LABEL_145:

    v3 = v19;
    goto LABEL_11;
  }

  v164 = (v163 + 64);
  v165 = v3 + 64;
  v166 = ((1 << *(v19 + 32)) + 63) >> 6;
  if (v19 != v3 || v164 >= v165 + 8 * v166)
  {
    memmove(v164, (v3 + 64), 8 * v166);
  }

  v167 = 0;
  *(v19 + 16) = *(v3 + 16);
  v168 = 1 << *(v3 + 32);
  v169 = *(v3 + 64);
  v170 = -1;
  if (v168 < 64)
  {
    v170 = ~(-1 << v168);
  }

  v171 = v170 & v169;
  v172 = (v168 + 63) >> 6;
  if ((v170 & v169) != 0)
  {
    do
    {
      v173 = __clz(__rbit64(v171));
      v171 &= v171 - 1;
LABEL_143:
      v176 = 16 * (v173 | (v167 << 6));
      v177 = (*(v3 + 48) + v176);
      v179 = *v177;
      v178 = v177[1];
      v180 = (*(v3 + 56) + v176);
      v181 = *v180;
      v182 = v180[1];
      v183 = (*(v19 + 48) + v176);
      *v183 = v179;
      v183[1] = v178;
      v184 = (*(v19 + 56) + v176);
      *v184 = v181;
      v184[1] = v182;
    }

    while (v171);
  }

  v174 = v167;
  while (1)
  {
    v167 = v174 + 1;
    if (__OFADD__(v174, 1))
    {
      break;
    }

    if (v167 >= v172)
    {
      goto LABEL_145;
    }

    v175 = *(v165 + 8 * v167);
    ++v174;
    if (v175)
    {
      v173 = __clz(__rbit64(v175));
      v171 = (v175 - 1) & v175;
      goto LABEL_143;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  v1 = swift_allocError();
  swift_willThrow();
  v193 = v1;
  v185 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v191 = 0;
    v192 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_152:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply(uint64_t a1)
{
  return partial apply for closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
}

{
  return _sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZSiSrys5UInt8VGXEfU_TA_0(a1);
}

uint64_t _NSKeyValueDebugger()
{
  if (qword_1ED43FCD0 != -1)
  {
    dispatch_once(&qword_1ED43FCD0, &__block_literal_global_58);
  }

  return qword_1ED43FCC8;
}

void NSKeyValueDidChange(uint64_t a1, uint64_t a2, char a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, _BOOL8, unint64_t, _OWORD *), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t *, __int128 *, uint64_t *, CFTypeRef *, uint64_t), uint64_t a7)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v14 = _NSKeyValueDebugger();
  if (v14)
  {
    [v14 _object:a1 trackChangeForKeyOrKeys:a2 operation:1];
  }

  v35 = 0;
  v36[0] = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0;
  v31 = 0;
  cf2 = 0;
  v15 = a6(a1, a2, &v35, &v32, &v30, &cf2, a7);
  v16 = 0;
  if (v15)
  {
    do
    {
      [*(v35 + 16) object:a1 withObservance:v35 didChangeValueForKeyOrKeys:cf2 recurse:1 forwardingValues:{v30, v31}];
      v17 = [*(v35 + 16) keyPath];
      v18 = v17;
      v19 = (a3 & 1) == 0 && CFEqual(v17, cf2) != 0;
      v20 = *(v35 + 40) >> 4;
      v24[0] = v32;
      v24[1] = v33;
      v25 = v34;
      a4(&v26, a1, v18, a5, v19, v20, v24);
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v21 = *(v35 + 8);
      v22 = *(v35 + 24);
      if (*(v35 + 41))
      {
        v23 = *(v35 + 32);
      }

      else
      {
        v23 = 0;
      }

      v26 = v32;
      v27 = v33;
      v28 = v34;
      NSKeyValueNotifyObserver(v21, v18, a1, v22, v23, 0, &v26, v36);
    }

    while ((a6(a1, a2, &v35, &v32, &v30, &cf2, a7) & 1) != 0);
    v16 = v36[0];
  }
}

CFIndex NSKeyValuePopPendingNotificationPerThread(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, uint64_t *a6, uint64_t a7)
{
  v14 = *a7;
  result = CFArrayGetCount(*a7);
  if (result)
  {
    v16 = result;
    v27 = a6;
    v17 = *(a7 + 8);
    if (!v17)
    {
      goto LABEL_20;
    }

    v18 = v17[2];
    v16 = result - 1;
    if (v17 != CFArrayGetValueAtIndex(v14, result - 1))
    {
      __assert_rtn("NSKeyValuePopPendingNotificationPerThread", "NSKeyValueObserving.m", 980, "moreParameters->mostRecentEntry == CFArrayGetValueAtIndex(stack, stackCount - 1)");
    }

    CFArrayRemoveValueAtIndex(v14, v16);
    if ((v18 & 1) == 0)
    {
LABEL_20:
      do
      {
        if (v16-- < 1)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
        if (*(ValueAtIndex + 1) != a1 || (v21 = ValueAtIndex, ![*(ValueAtIndex + 2) isEqual:a2]) || (v22 = *(a7 + 16)) != 0 && *(v21 + 4) != v22)
        {
          __assert_rtn("NSKeyValuePopPendingNotificationPerThread", "NSKeyValueObserving.m", 1001, "currentEntry->observable==inObservable && [currentEntry->triggerKeyOrKeys isEqual:inTriggerKeyOrKeys] && (!moreParameters->onlyObservanceToMatchOrNil || (currentEntry->observance==moreParameters->onlyObservanceToMatchOrNil))");
        }

        v23 = *(v21 + 3);
        if (!v23 || _NSKeyValueCheckObservationInfoForPendingNotification(*(v21 + 1), *(v21 + 4), v23))
        {
          *a3 = *(v21 + 4);
          v25 = *(v21 + 40);
          v26 = *(v21 + 56);
          *(a4 + 32) = *(v21 + 9);
          *a4 = v25;
          *(a4 + 16) = v26;
          *a5 = *(v21 + 5);
          *v27 = a2;
          *(a7 + 8) = v21;
          return 1;
        }

        v24 = v21[2];
        CFArrayRemoveValueAtIndex(v14, v16);
      }

      while (v24 != 1);
    }

    return 0;
  }

  return result;
}

void *NSKeyValueDidChangeBySetting@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (!a2)
  {
    if (a3)
    {
      __assert_rtn("NSKeyValueDidChangeBySetting", "NSKeyValueObserving.m", 617, "inObservedKeyPath");
    }
  }

  v7 = *(a5 + 16);
  *a6 = *a5;
  *(a6 + 16) = v7;
  *(a6 + 32) = *(a5 + 32);
  if (a4)
  {
    if (a3)
    {
      result = [a3 objectForKeyedSubscript:a2];
      if (result)
      {
LABEL_7:
        *(a6 + 16) = result;
        return result;
      }
    }

    else
    {
      result = [result valueForKeyPath:a2];
      if (result)
      {
        goto LABEL_7;
      }
    }

    result = [MEMORY[0x1E695DFB0] null];
    goto LABEL_7;
  }

  return result;
}

uint64_t NSKeyValueNotifyObserver(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    return [a1 _observeValueForKeyPath:a2 ofObject:a3 changeKind:*a7 oldValue:a7[1] newValue:a7[2] indexes:a7[3] context:a4];
  }

  v17 = *a8;
  if (*a8)
  {
    v18 = *(a7 + 1);
    v23 = *a7;
    v24 = v18;
    v25 = a7[4];
    [v17 setDetailsNoCopy:&v23 originalObservable:a5];
    v19 = *a8;
  }

  else
  {
    v20 = [NSKeyValueChangeDictionary alloc];
    v21 = *(a7 + 1);
    v23 = *a7;
    v24 = v21;
    v25 = a7[4];
    v19 = [(NSKeyValueChangeDictionary *)v20 initWithDetailsNoCopy:&v23 originalObservable:a5 isPriorNotification:a6];
    *a8 = v19;
  }

  v22 = [(NSKeyValueChangeDictionary *)v19 retainCount];
  result = NSKVONotify(a1, a2, a3, *a8, a4);
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*a8 retainCount];
    if (result != v22)
    {
      return [*a8 retainObjects];
    }
  }

  return result;
}

uint64_t NSKVONotify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_not_owner(&_NSKeyValueObserverRegistrationLock);
  }

  return [a1 observeValueForKeyPath:a2 ofObject:a3 change:a4 context:a5];
}

void NSKVOPendingNotificationStackRemove(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0)
  {
    v8 = [a1 _pendingChangeNotificationsArrayForKey:a2 create:0];
    if (!v8)
    {
      return;
    }

    goto LABEL_6;
  }

  v7 = _CFGetTSD();
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
LABEL_6:
      if (CFDictionaryGetCount(v8) >= 1)
      {
        v9[0] = a1;
        v9[1] = a2;
        v9[2] = a3;
        CFDictionaryRemoveValue(v8, v9);
      }
    }
  }
}

void NSKVOPendingNotificationStackIdentifierRelease(uint64_t a1, id *a2)
{

  free(a2);
}

id *_NSKeyValueObservationInfoCreateByAdding(NSKeyValueObservationInfo *a1, NSObject *a2, NSKeyValueProperty *a3, uint64_t a4, void *a5, NSObject *a6, _BYTE *a7, void *a8)
{
  v32[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (!qword_1ED43F648)
  {
    v15 = [[NSPointerFunctions alloc] initWithOptions:5];
    [(NSPointerFunctions *)v15 setHashFunction:NSKeyValueShareableObservationInfoNSHTHash];
    [(NSPointerFunctions *)v15 setIsEqualFunction:NSKeyValueShareableObservationInfoNSHTIsEqual];
    qword_1ED43F648 = [[NSHashTable alloc] initWithPointerFunctions:v15 capacity:0];
  }

  if (!qword_1ED43F650)
  {
    qword_1ED43F650 = objc_opt_self();
  }

  v16 = qword_1ED43F658;
  if (!qword_1ED43F658)
  {
    v16 = objc_alloc_init(NSKeyValueShareableObservationInfoKey);
    qword_1ED43F658 = v16;
  }

  v16->_addingNotRemoving = 1;
  v16->_baseObservationInfo = a1;
  v16->_additionObserver = a2;
  v16->_additionProperty = a3;
  v16->_additionOptions = a4 & 0xFFFFFFFFFFFFFFFBLL;
  v16->_additionContext = a5;
  v16->_additionOriginalObservable = a6;
  v17 = [qword_1ED43F648 member:?];
  v18 = qword_1ED43F658;
  *(qword_1ED43F658 + 56) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  if (v17)
  {
    v19 = v17;
    v20 = v17;
    *a7 = 1;
    *a8 = [v19[1] lastObject];
  }

  else
  {
    v21 = qword_1ED43F660;
    if (!qword_1ED43F660)
    {
      v21 = +[NSHashTable weakObjectsHashTable];
      qword_1ED43F660 = v21;
    }

    v22 = qword_1ED43F668;
    if (!qword_1ED43F668)
    {
      v22 = objc_alloc_init(NSKeyValueShareableObservanceKey);
      qword_1ED43F668 = v22;
      v21 = qword_1ED43F660;
    }

    v22->super._observer = a2;
    v22->super._property = a3;
    *(&v22->super + 40) = *(&v22->super + 40) & 0xF | (16 * a4) & 0xBF;
    if (a6)
    {
      v23 = (*(&v22->super + 41) & 0xFE) + 1;
    }

    else
    {
      v23 = *(&v22->super + 41) & 0xFE;
    }

    if (a6)
    {
      v24 = a6;
    }

    else
    {
      v24 = a2;
    }

    *(&v22->super + 41) = v23;
    v22->super._context = a5;
    v22->super._originalObservableOrUnownedObserver.originalObservable = v24;
    v25 = [(NSHashTable *)v21 member:?];
    v32[0] = v25;
    v26 = qword_1ED43F668;
    *(qword_1ED43F668 + 32) = 0;
    *(v26 + 8) = 0;
    if (v25)
    {
      v27 = v25;
      v28 = v25;
    }

    else
    {
      v27 = [[NSKeyValueObservance alloc] _initWithObserver:a2 property:a3 options:a4 context:a5 originalObservable:a6];
      v32[0] = v27;
      if ((v27[41] & 2) != 0)
      {
        [qword_1ED43F660 addObject:v27];
      }
    }

    if (a1)
    {
      v19 = [(NSKeyValueObservationInfo *)a1 _copyByAddingObservance:v27];
    }

    else
    {
      v19 = [[NSKeyValueObservationInfo alloc] _initWithObservances:v32 count:1 hashValue:0];
      v27 = v32[0];
    }

    if (*(v19 + 24) == 1)
    {
      v29 = objc_autoreleasePoolPush();
      [qword_1ED43F648 addObject:v19];
      objc_autoreleasePoolPop(v29);
    }

    *a7 = 0;
    *a8 = v32[0];
  }

  os_unfair_lock_unlock(&_MergedGlobals_100);
  return v19;
}

void _NSKeyValueObservationInfoGetObservances(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [(NSIndexSet *)[NSMutableIndexSet alloc] initWithIndexesInRange:0, a3];
  v7 = v6;
  v8 = 8 * a3;
  if ((8 * a3) < 0x81)
  {
    if (a3)
    {
      MEMORY[0x1EEE9AC00](v6);
      v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, 8 * a3);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = malloc_type_malloc(8 * a3, 0x80040B8603338uLL);
  }

  [*(a1 + 8) getObjects:v9 range:{0, a3}];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (a3)
  {
    v10 = 0;
    do
    {
      v11 = *&v9[8 * v10];
      if ((*(v11 + 41) & 1) == 0)
      {
        v12 = v15;
        *(a2 + 8 * v15[3]) = v11;
        ++v12[3];
        [(NSMutableIndexSet *)v7 removeIndex:v10];
      }

      ++v10;
    }

    while (a3 != v10);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___NSKeyValueObservationInfoGetObservances_block_invoke;
  v13[3] = &unk_1E69F4580;
  v13[4] = &v14;
  v13[5] = a2;
  v13[6] = v9;
  [(NSIndexSet *)v7 enumerateIndexesUsingBlock:v13];
  if (v8 >= 0x81)
  {
    free(v9);
  }

  _Block_object_dispose(&v14, 8);
}

objc_class *__NSIndexSetParameterCheckIterate(objc_class *result, const char *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!a3)
  {
    v6 = [NSString stringWithFormat:@"%@: block is nil", _NSMethodExceptionProem(result, a2)];
    v7 = MEMORY[0x1E695DF30];
    v8 = MEMORY[0x1E695D940];
    goto LABEL_12;
  }

  if ((a4 & 0x800000000000000) != 0 && a6)
  {
    if (a5 > 0x7FFFFFFFFFFFFFFELL || a6 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [NSString stringWithFormat:@"%@: a range field {%ld, %ld} is NSNotFound or beyond bounds (%ld)", _NSMethodExceptionProem(result, a2), a5, a6, 0x7FFFFFFFFFFFFFFFLL];
    }

    else
    {
      if ((a5 + a6) > 0)
      {
        return result;
      }

      v9 = [NSString stringWithFormat:@"%@: last range index (%ld) beyond bounds (%ld)", _NSMethodExceptionProem(result, a2), a5 + a6 - 1, 0x7FFFFFFFFFFFFFFELL, v10];
    }

    v6 = v9;
    v7 = MEMORY[0x1E695DF30];
    v8 = MEMORY[0x1E695DA20];
LABEL_12:
    objc_exception_throw([v7 exceptionWithName:*v8 reason:v6 userInfo:0]);
  }

  return result;
}

uint64_t NSKVOPendingNotificationStackIdentifierHash(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 8) hash];
  LODWORD(result) = 0;
  v4 = *(a1 + 16);
  v12[1] = v2;
  v12[2] = v4;
  v5 = v12 + 3;
  for (i = 28; i > 7; i -= 4)
  {
    v7 = *(v5 - 3) + 16 * result;
    v8 = *(v5 - 2) + 16 * (v7 ^ (16 * (v7 >> 28)));
    v9 = *(v5 - 1) + 16 * (v8 ^ (16 * (v8 >> 28)));
    v10 = *v5;
    v5 += 4;
    v11 = v10 + 16 * (v9 ^ (16 * (v9 >> 28)));
    result = (v11 ^ ((v11 & 0xF0000000) >> 24)) & ~(v11 & 0xF0000000);
  }

  return result;
}

void NSKeyValueWillChange(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, void (*a6)(__int128 *__return_ptr, uint64_t, uint64_t, void, unint64_t, uint64_t, char *), uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, __int128 *, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v27 = a7;
  v39[1] = *MEMORY[0x1E69E9840];
  v16 = _NSKeyValueDebugger();
  if (v16)
  {
    [v16 _object:a1 trackChangeForKeyOrKeys:a2 operation:0];
  }

  v39[0] = 0;
  if (!a5)
  {
    v26 = 0;
    goto LABEL_29;
  }

  do
  {
    v17 = *a4;
    if (a10)
    {
      v18 = v17 == a10;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    if (v17)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v38 = 0;
      v21 = *(v17 + 16);
      if (a3)
      {
        v22 = [v21 keyPathIfAffectedByValueForMemberOfKeys:a2];
        v38 = 0;
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = [v21 keyPathIfAffectedByValueForKey:a2 exactMatch:&v38];
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      v36 = 0;
      v37 = 0;
      if ([*(v17 + 16) object:a1 withObservance:v17 willChangeValueForKeyOrKeys:a2 recurse:1 forwardingValues:{&v36, v27}])
      {
        v35 = 0;
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        a6(&v32, a1, v22, v38, *(v17 + 40) >> 4, v27, &v35);
        v29 = v32;
        v30 = v33;
        v31 = v34;
        a8(a1, a2, v17, &v29, v36, v37, a9);
        if (*(v17 + 40) < 0)
        {
          if (*(v17 + 41))
          {
            v23 = *(v17 + 32);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(v17 + 8);
          v25 = *(v17 + 24);
          v29 = v32;
          v30 = v33;
          v31 = v34;
          NSKeyValueNotifyObserver(v24, v22, a1, v25, v23, 1, &v29, v39);
        }

        if (v35 == 1)
        {
        }
      }
    }

LABEL_26:
    ++a4;
    --a5;
  }

  while (a5);
  v26 = v39[0];
LABEL_29:
}

uint64_t NSKeyValueWillChangeBySetting@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, void *a4@<X4>, _BYTE *a5@<X5>, void *a6@<X8>)
{
  if ((a3 & 2) != 0)
  {
    if (a4)
    {
      result = [a4 objectForKey:a2];
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = [a1 valueForKeyPath:a2];
      if (result)
      {
        goto LABEL_6;
      }
    }

    result = [MEMORY[0x1E695DFB0] null];
    goto LABEL_6;
  }

  result = 0;
LABEL_6:
  *a6 = 1;
  a6[1] = result;
  a6[3] = 0;
  a6[4] = 0;
  a6[2] = 0;
  *a5 = 0;
  return result;
}

void NSKeyValuePushPendingNotificationPerThread(void *a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, uint64_t a7)
{
  v11 = *(a7 + 8);
  v12 = *(a7 + 16);
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  v20 = a4[3];
  v21 = a4[4];
  v16 = malloc_default_zone();
  v17 = malloc_type_zone_calloc(v16, 1uLL, 0x60uLL, 0x2C221C3EuLL);
  *v17 = 1;
  v17[1] = a1;
  v17[2] = [a2 copy];
  *(v17 + 2) = v11;
  v17[3] = v12;
  v17[4] = a3;
  v17[5] = v13;
  v17[6] = v14;
  v17[7] = v15;
  v17[8] = v20;
  v17[9] = v21;
  v17[10] = a5;
  v17[11] = a6;
  v18 = *(v17[4] + 8);
  CFArrayAppendValue(*a7, v17);
  NSKVOPendingNotificationRelease(v19, v17);
  *(a7 + 8) = 0;
}

_WORD *NSKVOPendingNotificationRetain(uint64_t a1, _WORD *a2)
{
  result = a2;
  ++*a2;
  return result;
}

void NSKVOPendingNotificationRelease(uint64_t a1, void *a2)
{
  v3 = --*a2;
  if (v3 <= 0)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
    }

    free(a2);
  }
}

uint64_t NSKVOPendingNotificationStackIdentifierEqual(uint64_t a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = [*(a1 + 8) isEqual:a2[1]];
  if (result)
  {
    return *(a1 + 16) == a2[2];
  }

  return result;
}

void *_NSKeyValueContainerClassGetNotifyingInfo(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    if (class_isMetaClass(*(a1 + 8)))
    {
      return *(a1 + 40);
    }

    else
    {
      result = _NSKVONotifyingCreateInfoWithOriginalClass(*(a1 + 8));
      *(a1 + 40) = result;
    }
  }

  return result;
}

void *NSAllocateObjectArray(unint64_t a1)
{
  if (a1 >> 61)
  {
    v3 = [NSString stringWithFormat:@"*** attempt to allocate id buffer with too large of a count (%lu) -- possibly data is corrupt", a1];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v3 userInfo:0]);
  }

  v1 = malloc_good_size(8 * a1);

  return malloc_type_calloc(1uLL, v1, 0x1F34E4E5uLL);
}

void _encodeDouble(uint64_t a1, const void *a2, double a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  *v6 = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, v6);
  addValueToTopContainerE(a1, a2, v5);
  CFRelease(v5);
}

BOOL NSMapMember(NSMapTable *table, const void *key, void **originalKey, void **value)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "BOOL NSMapMember(NSMapTable * _Nonnull, const void * _Nonnull, void ** _Nullable, void ** _Nullable)");
  }

  return [(NSMapTable *)table mapMember:key originalKey:originalKey value:value];
}

void NSMapInsert(NSMapTable *table, const void *key, const void *value)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void NSMapInsert(NSMapTable * _Nonnull, const void * _Nullable, const void * _Nullable)");
  }

  [(NSMapTable *)table setObject:value forKey:key];
}

void *NSAllocateScannedUncollectable(size_t a1)
{
  v2 = malloc_default_zone();

  return malloc_type_zone_calloc(v2, 1uLL, a1, 0x2C221C3EuLL);
}

void NSZoneFree(NSZone *zone, void *ptr)
{
  if (zone)
  {
    malloc_zone_free(zone, ptr);
  }

  else
  {
    free(ptr);
  }
}

NSArray *__cdecl NSAllMapTableValues(NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "NSArray * _Nonnull NSAllMapTableValues(NSMapTable * _Nonnull)");
  }

  return [(NSMapTable *)table allValues];
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation20PredicateExpressionsO10VariableIDV2id_yp5valuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO10VariableIDV2id_yp5valuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS8skeleton_s8DurationV10FoundationE16UnitsFormatStyleV4UnitV011measurementJ0Sd0K5ValuetGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS8skeleton_s8DurationV10FoundationE16UnitsFormatStyleV4UnitV011measurementG0Sd0H5ValuetMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19CollectionsInternal4RopeVy10Foundation16AttributedStringV01_E3RunVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeVy10Foundation16AttributedStringV01_B3RunVGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12ICULegacyKeyV_SStGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12ICULegacyKeyV_SStMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg_SStGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_SStMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyyYaYbcGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id LocaleCache.State.fixedNSLocale(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v2[2];
  if (!*(v7 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v9 & 1) == 0))
  {
    v12 = *v4;
    if (*(*v4 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if (v14)
      {
        v15 = *(v12 + 56) + 16 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        swift_unknownObjectRetain();
LABEL_18:
        v30 = type metadata accessor for _NSSwiftLocale();
        v3 = objc_allocWithZone(v30);
        v31 = &v3[OBJC_IVAR____NSSwiftLocale_locale];
        *v31 = v16;
        *(v31 + 1) = v17;
        v32 = String._bridgeToObjectiveCImpl()();
        v84.receiver = v3;
        v84.super_class = v30;
        swift_unknownObjectRetain();
        v33 = objc_msgSendSuper2(&v84, sel_initWithLocaleIdentifier_, v32);
        swift_unknownObjectRelease();
        v17 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v87[0] = v4[2];
        v19 = *&v87[0];
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
        v36 = *(v19 + 16);
        v37 = (v35 & 1) == 0;
        v24 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (!v24)
        {
          LOBYTE(v3) = v35;
          if (*(v19 + 24) < v38)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
            v39 = *&v87[0];
            v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
            if ((v3 & 1) == (v40 & 1))
            {
              if (v3)
              {
LABEL_22:
                v41 = *(v39 + 56);
                v42 = *(v41 + 8 * v20);
                *(v41 + 8 * v20) = v17;
                swift_unknownObjectRelease();

LABEL_26:
                v4[2] = v39;
                return v17;
              }

LABEL_25:
              specialized _NativeDictionary._insert(at:key:value:)(v20, a1, a2, v17, v39);

              swift_unknownObjectRelease();
              goto LABEL_26;
            }

LABEL_65:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v39 = v19;
            if (v35)
            {
              goto LABEL_22;
            }

            goto LABEL_25;
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v79 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation14_NSSwiftLocaleCGMd);
        v43 = static _DictionaryStorage.copy(original:)();
        v39 = v43;
        if (!*(v19 + 16))
        {
LABEL_44:

          v20 = v79;
          if (v3)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        v44 = (v43 + 64);
        v45 = (v19 + 64);
        v46 = ((1 << *(v39 + 32)) + 63) >> 6;
        if (v39 != v19 || v44 >= &v45[8 * v46])
        {
          memmove(v44, v45, 8 * v46);
        }

        v47 = 0;
        *(v39 + 16) = *(v19 + 16);
        v48 = 1 << *(v19 + 32);
        v49 = -1;
        if (v48 < 64)
        {
          v49 = ~(-1 << v48);
        }

        v50 = v49 & *(v19 + 64);
        v51 = (v48 + 63) >> 6;
        v81 = v51;
        if (v50)
        {
          do
          {
            v52 = __clz(__rbit64(v50));
            v82 = (v50 - 1) & v50;
LABEL_42:
            v55 = v52 | (v47 << 6);
            v56 = (*(v19 + 48) + 16 * v55);
            v57 = v56[1];
            v58 = *(*(v19 + 56) + 8 * v55);
            v59 = (*(v39 + 48) + 16 * v55);
            *v59 = *v56;
            v59[1] = v57;
            *(*(v39 + 56) + 8 * v55) = v58;

            v60 = v58;
            v51 = v81;
            v50 = v82;
          }

          while (v82);
        }

        v53 = v47;
        while (1)
        {
          v47 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            break;
          }

          if (v47 >= v51)
          {
            goto LABEL_44;
          }

          v54 = *(v19 + 64 + 8 * v47);
          ++v53;
          if (v54)
          {
            v52 = __clz(__rbit64(v54));
            v82 = (v54 - 1) & v54;
            goto LABEL_42;
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    type metadata accessor for _LocaleICU();
    v17 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
    _s10Foundation17LocalePreferencesVSgWOi0_(v87);
    v85[6] = v87[6];
    v86[0] = v88[0];
    *(v86 + 12) = *(v88 + 12);
    v85[2] = v87[2];
    v85[3] = v87[3];
    v85[4] = v87[4];
    v85[5] = v87[5];
    v85[0] = v87[0];
    v85[1] = v87[1];
    swift_allocObject();

    v16 = _LocaleICU.init(identifier:prefs:)(a1, a2, v85);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    *&v85[0] = *v4;
    v19 = *&v85[0];
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    v22 = *(v19 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_28;
    }

    v26 = v21;
    if (*(v19 + 24) >= v25)
    {
      if (v18)
      {
        v27 = v19;
        if (v21)
        {
LABEL_13:
          v29 = (*(v27 + 56) + 16 * v20);
          *v29 = v16;
          v29[1] = v17;
          swift_unknownObjectRelease();
LABEL_17:
          *v4 = v27;
          goto LABEL_18;
        }
      }

      else
      {
        v78 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMd);
        v61 = static _DictionaryStorage.copy(original:)();
        v27 = v61;
        if (*(v19 + 16))
        {
          v62 = (v61 + 64);
          v80 = (v19 + 64);
          v63 = ((1 << *(v27 + 32)) + 63) >> 6;
          if (v27 != v19 || v62 >= &v80[8 * v63])
          {
            memmove(v62, v80, 8 * v63);
          }

          v64 = 0;
          *(v27 + 16) = *(v19 + 16);
          v65 = 1 << *(v19 + 32);
          v66 = -1;
          if (v65 < 64)
          {
            v66 = ~(-1 << v65);
          }

          v67 = v66 & *(v19 + 64);
          v68 = (v65 + 63) >> 6;
          if (v67)
          {
            do
            {
              v69 = __clz(__rbit64(v67));
              v83 = (v67 - 1) & v67;
LABEL_59:
              v72 = 16 * (v69 | (v64 << 6));
              v73 = (*(v19 + 48) + v72);
              v75 = *v73;
              v74 = v73[1];
              v76 = *(*(v19 + 56) + v72);
              v77 = (*(v27 + 48) + v72);
              *v77 = v75;
              v77[1] = v74;
              *(*(v27 + 56) + v72) = v76;

              swift_unknownObjectRetain();
              v67 = v83;
            }

            while (v83);
          }

          v70 = v64;
          while (1)
          {
            v64 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            if (v64 >= v68)
            {
              goto LABEL_61;
            }

            v71 = *&v80[8 * v64];
            ++v70;
            if (v71)
            {
              v69 = __clz(__rbit64(v71));
              v83 = (v71 - 1) & v71;
              goto LABEL_59;
            }
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_61:

        v20 = v78;
        if (v26)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v18);
      v27 = *&v85[0];
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_65;
      }

      if (v26)
      {
        goto LABEL_13;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, a2, v16, v27);

    goto LABEL_17;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  return v10;
}

id @objc static NSLocale._canonicalLocaleIdentifier(from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v5 = *MEMORY[0x1E695E4A8];
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = a4(v5, v6);
  swift_unknownObjectRelease();
  if (v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(v7);
  }

  v8 = String._bridgeToObjectiveCImpl()();

  return v8;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(ObjectType, v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

char *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(char *result, uint64_t a2, id a3, uint64_t a4)
{
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      v7 = &v6[8 * a4 - 8];
      v8 = &v6[16 * a4 - 8];
      v9 = a4;
      do
      {
        if (v9 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        --v9;
        v10 = *v7;
        v7 -= 8;
        v17 = v10;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        v11 = *(&v16 + 1);
        *(v8 - 1) = v16;
        *v8 = v11;
        v8 -= 16;
      }

      while (v9);
      v12 = (a2 + 8 * a4 - 8);
      v13 = (a2 + 32 * a4 - 32);
      v14 = a4;
      while (v14 <= a4)
      {
        --v14;
        v15 = *v12--;
        v17 = v15;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        result = outlined init with take of Any(&v16, v13);
        v13 -= 2;
        if (!v14)
        {
          return a4;
        }
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id closure #1 in LocaleCache.fixedNSLocale(identifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = LocaleCache.State.fixedNSLocale(identifier:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t static URL.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = swift_getObjectType();
  if (v3 == v5)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = (*(v2 + 104))(ObjectType, v2);
  v11 = v10;
  if (v9 == (*(v4 + 104))(v8, v4) && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  (*(v2 + 120))(v22, ObjectType, v2);
  v16 = v22[0];
  v17 = v22[1];
  (*(v4 + 120))(&v21, v8, v4);
  if (!v16)
  {
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_14:
    v15 = 1;
    return v15 & 1;
  }

  v20[0] = v16;
  v20[1] = v17;
  if (!v21)
  {
LABEL_13:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = 0;
    return v15 & 1;
  }

  v19 = v21;
  swift_unknownObjectRetain();
  v15 = static URL.== infix(_:_:)(v20, &v19);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15 & 1;
}

void *__cdecl NSHashInsertIfAbsent(NSHashTable *table, const void *pointer)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "void * _Nullable NSHashInsertIfAbsent(NSHashTable * _Nonnull, const void * _Nullable)");
  }

  if (!pointer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** NSHashInsertIfAbsent(): attempt to insert NULL pointer" userInfo:0]);
  }

  v4 = [(NSHashTable *)table getItem:pointer];
  if (!v4)
  {
    [(NSHashTable *)table addObject:pointer];
  }

  return v4;
}

uint64_t closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)(uint64_t result)
{
  if (result)
  {
    return _NSTaggedPointerStringGetBytes();
  }

  __break(1u);
  return result;
}

uint64_t @objc static NSLocale._newLocaleWithIdentifier(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  if (one-time initialization token for cache != -1)
  {
    v7 = v3;
    swift_once();
    v3 = v7;
  }

  v4 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v4 + 12);
  partial apply for closure #1 in LocaleCache.fixedNSLocale(identifier:)(&v8);
  os_unfair_lock_unlock(v4 + 12);
  v5 = v8;

  return v5;
}

uint64_t _NSReadFromFileDescriptorWithProgress(int a1, char *a2, unint64_t a3, uint64_t a4, int a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a5 && +[NSProgress currentProgress])
  {
    v9 = [NSProgress progressWithTotalUnitCount:a3];
    if (v9)
    {
      if (a4)
      {
        v10 = *(a4 + 8);
      }

      else
      {
        v18 = _NSPreferredChunkSizeForFileDescriptor(a1);
        if (v18 == -1)
        {
          v10 = a3;
        }

        else
        {
          v10 = v18;
        }
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
LABEL_8:
  v11 = a3;
LABEL_9:
  if (!v11)
  {
    return a3 - v11;
  }

  if (![(NSProgress *)v9 isCancelled])
  {
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12 >= 0x7FFFFFFF)
    {
      v13 = 0x7FFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    while (![(NSProgress *)v9 isCancelled])
    {
      v14 = read(a1, a2, v13);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        if (v14)
        {
          v11 -= v14;
          [(NSProgress *)v9 setCompletedUnitCount:a3 - v11];
          a2 += v15;
          if (v15 >= v13)
          {
            goto LABEL_9;
          }
        }

        return a3 - v11;
      }

      if (*__error() != 4)
      {
        if (qword_1ED43F960 != -1)
        {
          dispatch_once(&qword_1ED43F960, &__block_literal_global_34);
        }

        v17 = _MergedGlobals_110;
        if (os_log_type_enabled(_MergedGlobals_110, OS_LOG_TYPE_ERROR))
        {
          v19 = *__error();
          v20 = __error();
          v21 = strerror(*v20);
          v22[0] = 67109378;
          v22[1] = v19;
          v23 = 2080;
          v24 = v21;
          _os_log_error_impl(&dword_18075C000, v17, OS_LOG_TYPE_ERROR, "Encountered read failure %d %s", v22, 0x12u);
        }

        return -1;
      }
    }
  }

  return -1;
}

uint64_t _NSXPCSerializationIntegerForObject(void *a1, unint64_t *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  if (_getIntAtMarker(a1, &v4, v2, v5))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static TimeZone.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = swift_getObjectType();
  if (v3 == v5)
  {
    return 1;
  }

  v8 = v7;
  v9 = v2[14];
  if (v9(ObjectType, v2) & 1) != 0 && (v4[14](v8, v4))
  {
    return 1;
  }

  if (v9(ObjectType, v2) & 1) != 0 || (v4[14](v8, v4))
  {
    return 0;
  }

  v11 = v2[13](ObjectType, v2);
  if (v12 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  v15 = v4[13](v8, v4);
  if (v16 >> 60 == 15)
  {
    outlined consume of Data?(v13, v14);
LABEL_11:
    v17 = v2[4](ObjectType, v2);
    v19 = v18;
    if (v17 == v4[4](v8, v4) && v19 == v20)
    {

      return 1;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v22 & 1;
  }

  v23 = v15;
  v30 = v16;
  v24 = v2[4](ObjectType, v2);
  v26 = v25;
  if (v24 == v4[4](v8, v4) && v26 == v27)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      outlined consume of Data?(v23, v30);
      outlined consume of Data?(v13, v14);
      return 0;
    }
  }

  v22 = specialized static Data.== infix(_:_:)(v13, v14, v23, v30);
  outlined consume of Data?(v23, v30);
  outlined consume of Data?(v13, v14);
  return v22 & 1;
}

uint64_t _NSWriteToFileDescriptorWithProgress(int a1, char *a2, unint64_t a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 && +[NSProgress currentProgress])
  {
    v7 = [NSProgress progressWithTotalUnitCount:a3];
    if (v7)
    {
      v8 = _NSPreferredChunkSizeForFileDescriptor(a1);
      if (v8 == -1)
      {
        v9 = a3;
      }

      else
      {
        v9 = v8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
LABEL_9:
  v10 = a3;
LABEL_10:
  if (!v10)
  {
    return a3 - v10;
  }

  if (![(NSProgress *)v7 isCancelled])
  {
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v11 >= 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    while (![(NSProgress *)v7 isCancelled])
    {
      v13 = write(a1, a2, v12);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = v13;
        if (v13)
        {
          v10 -= v13;
          [(NSProgress *)v7 setCompletedUnitCount:a3 - v10];
          a2 += v14;
          if (v14 >= v12)
          {
            goto LABEL_10;
          }
        }

        return a3 - v10;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        if (qword_1ED43F960 != -1)
        {
          dispatch_once(&qword_1ED43F960, &__block_literal_global_34);
        }

        v17 = _MergedGlobals_110;
        if (os_log_type_enabled(_MergedGlobals_110, OS_LOG_TYPE_ERROR))
        {
          v18 = *__error();
          v19 = __error();
          v20 = strerror(*v19);
          v21[0] = 67109378;
          v21[1] = v18;
          v22 = 2080;
          v23 = v20;
          _os_log_error_impl(&dword_18075C000, v17, OS_LOG_TYPE_ERROR, "Encountered write failure %d %s", v21, 0x12u);
        }

        *__error() = v16;
        return -1;
      }
    }
  }

  *__error() = 89;
  return -1;
}

CFMutableDictionaryRef _createTablesIfNeeded_locked(CFMutableDictionaryRef result)
{
  v1 = result;
  if (!*(result + 3))
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 1, 0, MEMORY[0x1E695E9E8]);
    v1[3] = result;
  }

  if (!v1[4])
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 1, 0, MEMORY[0x1E695E9E8]);
    v1[4] = result;
  }

  if (!v1[5])
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 1, 0, 0);
    v1[5] = result;
  }

  return result;
}

NSString *__cdecl NSStringFromProtocol(Protocol *proto)
{
  result = protocol_getName(proto);
  if (result)
  {

    return [NSString stringWithUTF8String:result];
  }

  return result;
}

uint64_t matchTypeEncoding(char *__s1, char *__s2, uint64_t a3)
{
  result = 0;
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = __s2;
  v13[0] = __s1;
  if (__s1)
  {
    v5 = __s2;
    if (__s2)
    {
      if (__s1 == __s2 || !strcmp(__s1, __s2))
      {
        return 1;
      }

      alignp = 0;
      sizep = 0;
      NSGetSizeAndAlignment(__s1, &sizep, &alignp);
      v8 = 0;
      v9 = 0;
      NSGetSizeAndAlignment(v5, &v9, &v8);
      if (sizep == v9 && sizep == a3 && alignp == v8)
      {
        if (*__s1)
        {
          while (*v5)
          {
            if ((mungeUnionsAndStructures(v13) & 1) == 0)
            {
              return 0;
            }

            result = mungeUnionsAndStructures(&v12);
            if (!result)
            {
              return result;
            }

            if (*v13[0] != *v12)
            {
              return 0;
            }

            if (!*v13[0])
            {
              break;
            }

            v7 = v13[0][1];
            v5 = ++v12;
            ++v13[0];
            result = 1;
            if (!v7)
            {
              return result;
            }
          }
        }

        return 1;
      }

      return 0;
    }
  }

  return result;
}

id @objc static NSLocale._localeIdentifier(fromComponents:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSS_ypTt0g5(a3);
  specialized static Locale.identifier(fromAnyComponents:)(v3);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

void _sendReplyArgumentsOnly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = [[NSXPCEncoder alloc] initWithStackSpace:v17 size:2048];
  [(NSXPCEncoder *)v12 _setConnection:a1];
  [(NSXPCEncoder *)v12 setDelegate:a1];
  if (*(a1 + 80))
  {
    [(NSXPCCoder *)v12 setUserInfo:?];
  }

  [(NSXPCEncoder *)v12 _encodeInvocationObjectArgumentsOnly:a3 count:a4 typeString:a2 selector:0 isReply:1 into:a7];

  v15 = atomic_load((a1 + 36));
  if ((v15 & 0x40) != 0)
  {
    [*(a1 + 152) sendMessage:{a7, v13, v14}];
  }

  else
  {
    v16 = *(a1 + 8);
    if (v16)
    {
      xpc_connection_send_message(v16, a7);
    }
  }
}

uint64_t _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSS_ypTt0g5(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  swift_unknownObjectRetain();
  v2 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v2)
  {
    return v2;
  }

  v4 = [a1 count];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v6 = v3[6];
  v7 = v3[7];

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v6, v7, a1, v5);
  if ((result & 0x8000000000000000) == 0 && v5 >= result)
  {
    v3[2] = result;
    if (!result)
    {
LABEL_19:

      return v3;
    }

    v9 = result - 1;
    v10 = v3 + 8;
    while (1)
    {
      while (1)
      {
        if ((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
        {
          goto LABEL_11;
        }

        v15 = (v3[6] + 16 * v9);
        v16 = *v15;
        v17 = v15[1];

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = v3[6] + 16 * v9;

        outlined destroy of String(v21);
        result = __swift_destroy_boxed_opaque_existential_1(v3[7] + 32 * v9);
        v22 = v3[2];
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v23)
        {
          __break(1u);
          goto LABEL_22;
        }

        v3[2] = v24;

LABEL_11:
        if (--v9 < 0)
        {
          goto LABEL_19;
        }
      }

      *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (v9 < v18)
      {
        *(v3[6] + 16 * v18) = *(v3[6] + 16 * v9);
        v11 = v3[7];
        v12 = (v11 + 32 * v9);
        v13 = v12[1];
        v14 = (v11 + 32 * v18);
        *v14 = *v12;
        v14[1] = v13;
        goto LABEL_11;
      }

      if (v18 == v9)
      {
        goto LABEL_11;
      }

      v25 = v3[6];
      v26 = (v25 + 16 * v18);
      v27 = (v25 + 16 * v9);
      v28 = *v26;
      v29 = v26[1];
      v30 = v27[1];
      *v26 = *v27;
      v26[1] = v30;
      *v27 = v28;
      v27[1] = v29;
      v31 = v3[7];
      v32 = (v31 + 32 * v18);
      v33 = (v31 + 32 * v9);
      outlined init with take of Any(v32, v34);
      outlined init with take of Any(v33, v32);
      outlined init with take of Any(v34, v33);
      if (v9 < 0)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

id protocol witness for _URLProtocol.relativeString.getter in conformance _BridgedURL(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);

  return v5;
}

void _encodeInt64(uint64_t a1, const void *a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v6);
  addValueToTopContainerE(a1, a2, v5);
  CFRelease(v5);
}

void _encodeBytes(uint64_t a1, const UInt8 *a2, CFIndex a3, const void *a4)
{
  if (a2)
  {
    v6 = CFDataCreate(*MEMORY[0x1E695E480], a2, a3);
    addValueToTopContainerE(a1, a4, v6);

    CFRelease(v6);
  }

  else
  {

    addValueToTopContainerE(a1, a4, @"$null");
  }
}

char *_NSSwiftTimeZone.replacementObject(for:)@<X0>(char **a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v10 = *&v2[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  v5 = one-time initialization token for cache;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v9[0] = swift_initStaticObject();
  v9[1] = _s10Foundation14_LocaleBridgedCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  v6 = specialized static TimeZone.== infix(_:_:)(&v10, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = [objc_allocWithZone(__NSLocalTimeZone) init];
    result = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for __NSLocalTimeZone);
    ObjectType = result;
  }

  else
  {
    result = v2;
    v7 = result;
  }

  a1[3] = ObjectType;
  *a1 = v7;
  return result;
}

uint64_t lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation14_LocaleBridgedCAcA01_B8ProtocolAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _NSXPCDistantObjectSimpleMessageSend0(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3[1] _sendSelector:a2 withProxy:v3];

  return 0;
}

id _NSFileSystemRepresentationString(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 encoding:4];

  return v2;
}

double protocol witness for Scheduler.now.getter in conformance NSRunLoop@<D0>(double *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 416))(ObjectType, v1);
}

double static Date.now.getter@<D0>(double *a1@<X8>)
{

  return protocol witness for Scheduler.now.getter in conformance NSRunLoop(a1);
}

double UUID.init()@<D0>(_OWORD *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(out, 0, sizeof(out));
  _foundation_uuid_generate_random(out);
  result = *out;
  *a1 = *out;
  return result;
}

Foundation::Date __swiftcall Date.init()()
{

  result._time = static Date.now.getter(v0);
  return result;
}

uint64_t _hashCString2(char *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  v2 = strlen(a1);
  if (_NSConvertToASCIIorUnicode2(a1, v2, 4uLL, 1, &v5, 0) && v6[1] && v5 != 1)
  {
    v3 = CFStringHashCharacters();
    if (BYTE1(v5) == 1)
    {
      free(v6[0]);
    }
  }

  else
  {
    strlen(a1);
    return CFStringHashCString();
  }

  return v3;
}

BOOL _isEqualCString(char *__s1, char *a2)
{
  if (__s1 == a2)
  {
    return 1;
  }

  result = 0;
  if (__s1)
  {
    if (a2)
    {
      return strcmp(__s1, a2) == 0;
    }
  }

  return result;
}

uint64_t _NSScanLongLongFromString(void *a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  *c = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v7 = *a4;
  v8 = [a1 length];
  *(&v44 + 1) = v8;
  *&v45[0] = v7;
  *&v44 = a1;
  if (v8 <= v7)
  {
    *&v43 = 0;
    v10 = 0xFFFF;
  }

  else
  {
    if (v8 - v7 >= 0x20)
    {
      v9 = 32;
    }

    else
    {
      v9 = v8 - v7;
    }

    *&v43 = v9;
    [a1 getUid("getCharacters:v45 + 8 range:{v7, v9}")];
    v10 = WORD4(v45[0]);
  }

  LOWORD(c[2]) = v10;
  *(&v43 + 1) = 1;
  if (a2)
  {
    if ([a2 characterIsMember:?])
    {
      do
      {
        v11 = *(&v43 + 1);
        if (*(&v43 + 1) - 1 >= v43)
        {
          break;
        }

        if (*(&v43 + 1) >= v43)
        {
          v13 = *&v45[0] + v43;
          if (*(&v44 + 1) > *&v45[0] + v43)
          {
            if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
            {
              v14 = 32;
            }

            else
            {
              v14 = *(&v44 + 1) - (*&v45[0] + v43);
            }

            *&v45[0] += v43;
            *&v43 = v14;
            [v44 getUid("getCharacters:v45 + 8 range:{v13, v14}")];
            LOWORD(c[2]) = WORD4(v45[0]);
            *(&v43 + 1) = 1;
            continue;
          }

          *(&v43 + 1) = v43 + 1;
          v12 = -1;
        }

        else
        {
          ++*(&v43 + 1);
          v12 = *(v45 + v11 + 4);
        }

        LOWORD(c[2]) = v12;
      }

      while (([a2 characterIsMember:?] & 1) != 0);
    }

    v10 = LOWORD(c[2]);
  }

  v42 = v10 == 45;
  if (v10 != 45 && v10 != 43)
  {
    goto LABEL_45;
  }

  if (*(&v43 + 1) >= v43)
  {
    v17 = *&v45[0] + v43;
    if (*(&v44 + 1) > *&v45[0] + v43)
    {
      if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
      {
        v18 = 32;
      }

      else
      {
        v18 = *(&v44 + 1) - (*&v45[0] + v43);
      }

      *&v45[0] += v43;
      *&v43 = v18;
      [v44 getUid("getCharacters:v45 + 8 range:{v17, v18}")];
      LOWORD(c[2]) = WORD4(v45[0]);
      *(&v43 + 1) = 1;
      if (!a2)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    *(&v43 + 1) = v43 + 1;
    v16 = -1;
  }

  else
  {
    v15 = &v43 + 2 * (*(&v43 + 1))++;
    v16 = *(v15 + 20);
  }

  LOWORD(c[2]) = v16;
  if (!a2)
  {
    goto LABEL_45;
  }

LABEL_33:
  if ([a2 characterIsMember:?])
  {
    do
    {
      v19 = *(&v43 + 1);
      if (*(&v43 + 1) - 1 >= v43)
      {
        break;
      }

      if (*(&v43 + 1) >= v43)
      {
        v21 = *&v45[0] + v43;
        if (*(&v44 + 1) > *&v45[0] + v43)
        {
          if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
          {
            v22 = 32;
          }

          else
          {
            v22 = *(&v44 + 1) - (*&v45[0] + v43);
          }

          *&v45[0] += v43;
          *&v43 = v22;
          [v44 getUid("getCharacters:v45 + 8 range:{v21, v22}")];
          LOWORD(c[2]) = WORD4(v45[0]);
          *(&v43 + 1) = 1;
          continue;
        }

        *(&v43 + 1) = v43 + 1;
        v20 = -1;
      }

      else
      {
        ++*(&v43 + 1);
        v20 = *(v45 + v19 + 4);
      }

      LOWORD(c[2]) = v20;
    }

    while (([a2 characterIsMember:?] & 1) != 0);
  }

LABEL_45:
  v23 = LOWORD(c[2]);
  v24 = isADigit_set;
  if (!isADigit_set)
  {
    v24 = +[NSCharacterSet decimalDigitCharacterSet];
    isADigit_set = v24;
  }

  result = [(NSCharacterSet *)v24 characterIsMember:v23];
  if (result)
  {
    v40 = result;
    v26 = 0;
    while (1)
    {
      if (v26 > 0xCCCCCCCCCCCCCCBLL)
      {
        if (v26 != 0xCCCCCCCCCCCCCCCLL)
        {
          goto LABEL_54;
        }

        v27 = LOWORD(c[2]) - 48;
        if (v27 > 9)
        {
          v27 = u_charDigitValue(LOWORD(c[2]));
        }

        if (v27 - v42 >= 7)
        {
LABEL_54:
          while (1)
          {
            v28 = *(&v43 + 1);
            if (*(&v43 + 1) >= v43)
            {
              v30 = *&v45[0] + v43;
              if (*(&v44 + 1) > *&v45[0] + v43)
              {
                if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
                {
                  v31 = 32;
                }

                else
                {
                  v31 = *(&v44 + 1) - (*&v45[0] + v43);
                }

                *&v45[0] += v43;
                *&v43 = v31;
                [v44 getUid("getCharacters:v45 + 8 range:{v30, v31}")];
                v29 = WORD4(v45[0]);
                LOWORD(c[2]) = WORD4(v45[0]);
                *(&v43 + 1) = 1;
                goto LABEL_63;
              }

              *(&v43 + 1) = v43 + 1;
              v29 = 0xFFFFLL;
            }

            else
            {
              ++*(&v43 + 1);
              v29 = *(v45 + v28 + 4);
            }

            LOWORD(c[2]) = v29;
LABEL_63:
            v32 = isADigit_set;
            if (!isADigit_set)
            {
              v32 = +[NSCharacterSet decimalDigitCharacterSet];
              isADigit_set = v32;
            }

            if (![(NSCharacterSet *)v32 characterIsMember:v29])
            {
              if (v42)
              {
                v26 = 0x8000000000000000;
              }

              else
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v33 = LOWORD(c[2]);
              v42 = 0;
              goto LABEL_81;
            }
          }
        }
      }

      v34 = LOWORD(c[2]) - 48;
      if (v34 > 9)
      {
        v34 = u_charDigitValue(LOWORD(c[2]));
      }

      v26 = v34 + 10 * v26;
      v35 = *(&v43 + 1);
      if (*(&v43 + 1) < v43)
      {
        break;
      }

      v36 = *&v45[0] + v43;
      if (*(&v44 + 1) <= *&v45[0] + v43)
      {
        *(&v43 + 1) = v43 + 1;
        v33 = 0xFFFFLL;
        goto LABEL_80;
      }

      if (*(&v44 + 1) - (*&v45[0] + v43) >= 0x20uLL)
      {
        v37 = 32;
      }

      else
      {
        v37 = *(&v44 + 1) - (*&v45[0] + v43);
      }

      *&v45[0] += v43;
      *&v43 = v37;
      [v44 getUid("getCharacters:v45 + 8 range:{v36, v37}")];
      v33 = WORD4(v45[0]);
      LOWORD(c[2]) = WORD4(v45[0]);
      *(&v43 + 1) = 1;
LABEL_81:
      v38 = isADigit_set;
      if (!isADigit_set)
      {
        v38 = +[NSCharacterSet decimalDigitCharacterSet];
        isADigit_set = v38;
      }

      if (![(NSCharacterSet *)v38 characterIsMember:v33])
      {
        if (a3)
        {
          if (v42)
          {
            v39 = -v26;
          }

          else
          {
            v39 = v26;
          }

          *a3 = v39;
        }

        *a4 = *&v45[0] + *(&v43 + 1) - 1;
        return v40;
      }
    }

    ++*(&v43 + 1);
    v33 = *(v45 + v35 + 4);
LABEL_80:
    LOWORD(c[2]) = v33;
    goto LABEL_81;
  }

  return result;
}

void _qfqp2_InitializedGlobalData()
{
  if ((_qfqp2_InitializedGlobals & 1) == 0)
  {
    _MergedGlobals_136 = [NSNumber numberWithBool:1];
    qword_1ED43FD80 = [NSNumber numberWithBool:0];
    _qfqp2_ReservedWords = [MEMORY[0x1E695DFD8] setWithObjects:{@"AND", @"OR", @"IN", @"NOT", @"ALL", @"ANY", @"SOME", @"NONE", @"LIKE", @"MATCHES", @"TOKENMATCHES", @"CONTAINS", @"BETWEEN", @"BEGINSWITH", @"ENDSWITH", @"UTI-EQUALS", @"UTI-CONFORMS-TO", @"NULL", @"NIL", @"SELF", @"TRUEPREDICATE", @"FALSEPREDICATE", @"TRUE", @"YES", @"FALSE", @"NO", @"FIRST", @"LAST", @"SIZE", @"SUBQUERY", @"ANYKEY", @"CAST", @"UNION", @"INTERSECTION", @"MINUS", @"APPLY", @"FUNCTION", 0}];
    _qfqp2_InitializedGlobals = 1;
  }
}

uint64_t _NSXPCLog()
{
  if (qword_1ED43F970 != -1)
  {
    dispatch_once(&qword_1ED43F970, &__block_literal_global_36);
  }

  return qword_1ED43F968;
}

BOOL isBlock(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Class = object_getClass(a1);
  Superclass = class_getSuperclass(Class);
  if (!Superclass)
  {
    return 0;
  }

  v3 = Superclass;
  do
  {
    v4 = objc_opt_class();
    v5 = v3 == v4;
    if (v3 == v4)
    {
      break;
    }

    v3 = class_getSuperclass(v3);
  }

  while (v3);
  return v5;
}

uint64_t threadRunLoop(_opaque_pthread_t *a1)
{
  if (pthread_equal(a1, 0))
  {
    return 0;
  }

  return MEMORY[0x1EEDB8530](a1);
}

uint64_t __NSThreadPerformPerform(__CFRunLoopSource **a1)
{
  v2 = +[NSThread currentThread];
  objc_sync_enter(v2);
  v3 = [*(v2->_private + 8) count];
  v4 = performQueueDequeue(v2, *(v2->_private + 8), v3, *a1);
  result = objc_sync_exit(v2);
  if (v4)
  {
    v6 = v3 - 1;
    do
    {
      _CFAutoreleasePoolPush();
      v7 = v4[1];
      v8 = atomic_load(v4 + 4);
      if (v7 != v8)
      {
        _NSThreadPoisoned();
      }

      if (v4[2])
      {
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
      }

      [v4[1] performSelector:v9 withObject:v4[3]];

      v4[1] = 0;
      v4[3] = 0;
      [v4 signal:2];

      _CFAutoreleasePoolPop();
      objc_sync_enter(v2);
      v4 = performQueueDequeue(v2, *(v2->_private + 8), v6, *a1);
      result = objc_sync_exit(v2);
      --v6;
    }

    while (v4);
  }

  return result;
}

void *performQueueDequeue(void *a1, void *a2, unint64_t a3, __CFRunLoopSource *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  Current = CFRunLoopGetCurrent();
  v9 = CFRunLoopCopyCurrentMode(Current);
  objc_sync_enter(a1);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1;
  v10 = [a2 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    source = a4;
    v11 = 0;
    v12 = *v26;
    v13 = *MEMORY[0x1E695E8D0];
    while (2)
    {
      v14 = 0;
      v22 = v10 + v11;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(a2);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        if (v15)
        {
          v16 = v15[5];
        }

        else
        {
          v16 = 0;
        }

        if (([v16 containsObject:v9] & 1) != 0 || (!v15 ? (v17 = 0) : (v17 = v15[5]), objc_msgSend(v17, "containsObject:", v13) && _CFRunLoop01()))
        {
          v19 = v15;
          [a2 removeObjectAtIndex:v11];
          if (v19 && [a2 count])
          {
            CFRunLoopSourceSignal(source);
          }

          goto LABEL_22;
        }

        if (++v11 >= a3)
        {
          goto LABEL_21;
        }

        ++v14;
      }

      while (v10 != v14);
      v18 = [a2 countByEnumeratingWithState:&v25 objects:v24 count:16];
      v10 = v18;
      v19 = 0;
      v11 = v22;
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_21:
    v19 = 0;
  }

LABEL_22:
  objc_sync_exit(obj);
  CFRelease(v9);
  return v19;
}

uint64_t specialized _TimeZoneAutoupdating.secondsFromGMT(for:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v7);
    v3 = v7[1];
    *(v2 + 16) = v7[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 40))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _NSSwiftTimeZone.secondsFromGMT.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&v2 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  ObjectType = swift_getObjectType();
  __tp.tv_sec = v2;
  v4 = (*(v1 + 40))(&__tp, ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t protocol witness for _TimeZoneProtocol.secondsFromGMT(for:) in conformance _TimeZoneICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  closure #1 in _TimeZoneICU.secondsFromGMT(for:)(v0, &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

uint64_t closure #1 in _TimeZoneICU.secondsFromGMT(for:)@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = _TimeZoneICU.State.calendar(_:)(*(a1 + 24), *(a1 + 32));
  if (result)
  {
    ucal_setMillis();
    v4 = ucal_get();
    result = ucal_get();
    if (__OFADD__(v4, result))
    {
      __break(1u);
    }

    *a2 = (v4 + result) / 1000;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t yy_get_previous_state()
{
  v0 = _qfqp2text;
  result = dword_1ED43FD5C;
  if (_qfqp2text < yy_c_buf_p)
  {
    do
    {
      if (*v0)
      {
        v2 = yy_ec[4 * *v0];
      }

      else
      {
        v2 = 1;
      }

      if (yy_accept[result])
      {
        dword_1ED43FD60 = result;
        qword_1ED43FD70 = v0;
      }

      v3 = result;
      v4 = yy_base[result] + v2;
      if (yy_chk[v4] != result)
      {
        do
        {
          v3 = yy_def[v3];
          if (v3 >= 304)
          {
            v2 = yy_meta[4 * v2];
          }

          v4 = yy_base[v3] + v2;
        }

        while (yy_chk[v4] != v3);
      }

      ++v0;
      result = yy_nxt[v4];
    }

    while (v0 != yy_c_buf_p);
  }

  return result;
}

NSComparisonPredicate *HandleStringAggregatePredicate(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = [a3 rangeOfString:@"c" options:1];
    v9 = [a3 rangeOfString:@"d" options:1];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v8 != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if ([a3 rangeOfString:@"n" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 |= 4u;
    }

    if ([a3 rangeOfString:@"l" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 |= 8u;
    }

    if ([a3 rangeOfString:@"w" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 | 0x10;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSPredicateOperator _newOperatorWithType:a2 modifier:0 options:v12];
  v14 = [[NSComparisonPredicate alloc] initWithPredicateOperator:v13 leftExpression:a1 rightExpression:a4];

  return v14;
}

BOOL specialized static Locale.identifierDoesNotRequireSpecialCaseHandling(_:)(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v16 = a1;
      v17 = a2;
      v6 = String.UTF8View._foreignSubscript(position:)();
      v18 = String.UTF8View._foreignIndex(after:)();
      a2 = v17;
      v5 = v18;
      a1 = v16;
      if ((v17 & 0x2000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = 65540;
      if ((a2 & 0x2000000000000000) == 0)
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        }

        else
        {
          v27 = a1;
          v28 = a2;
          v29 = _StringObject.sharedUTF8.getter();
          a2 = v28;
          v30 = v29;
          v5 = 65540;
          a1 = v27;
          v6 = *v30;
        }

LABEL_9:
        if (v5 >> 14 == 4 * v3)
        {
          return 1;
        }

        goto LABEL_19;
      }

      v6 = a1;
    }

    if (v5 >> 14 == 4 * v2)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    if (!v2)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  v6 = 0;
  v5 = 15;
LABEL_19:
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = v5 & 0xC;
  v9 = 4 << v7;
  v10 = v5;
  if (v8 == v9)
  {
    v35 = a1;
    v19 = v5;
    v20 = a2;
    v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, a1, a2);
    a2 = v20;
    v10 = v21;
    v5 = v19;
    a1 = v35;
  }

  v11 = v10 >> 16;
  if (v10 >> 16 >= v4)
  {
    __break(1u);
LABEL_50:
    v22 = a1;
    v36 = v5;
    v23 = a2;
    v24 = String.UTF8View._foreignSubscript(position:)();
    a2 = v23;
    v13 = v24;
    v5 = v36;
    a1 = v22;
    if (v8 == v9)
    {
      goto LABEL_51;
    }

    goto LABEL_30;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_50;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v39[0] = a1;
    v39[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = v39;
  }

  else
  {
    if ((a1 & 0x1000000000000000) == 0)
    {
      goto LABEL_55;
    }

    v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    v13 = *(v12 + v11);
    if (v8 == v9)
    {
LABEL_51:
      v37 = a1;
      v25 = a2;
      v26 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, a1, a2);
      a2 = v25;
      v5 = v26;
      a1 = v37;
      if ((v25 & 0x1000000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_30:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

    if (v4 > v5 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_55:
    v31 = a1;
    v34 = v11;
    v38 = v5;
    v32 = a2;
    v33 = _StringObject.sharedUTF8.getter();
    v11 = v34;
    v5 = v38;
    a2 = v32;
    v12 = v33;
    a1 = v31;
  }

  String.UTF8View._foreignIndex(after:)();
LABEL_33:
  if (v6 == 97 && v13 == 122)
  {
    return 0;
  }

  if (v6 == 108 && v13 == 116)
  {
    return 0;
  }

  if (v6 == 116 && v13 == 114)
  {
    return 0;
  }

  v14 = v6 == 101 || v6 == 110;
  return !v14 || v13 != 108;
}

NSCompoundPredicate *invertPredicate(void *a1)
{
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![a1 compoundPredicateType])
  {
    v5 = [objc_msgSend(a1 "subpredicates")];

    return v5;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, 0}];
    v3 = [[NSCompoundPredicate alloc] initWithType:0 subpredicates:v2];

    return v3;
  }
}

void *setOperatorModifier(void *a1, uint64_t a2)
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tried to set a NSComparisonPredicateModifier on a compound predicate. This was probably the result of a predicate containing ANY/ALL BETWEEN." userInfo:0]);
  }

  [objc_msgSend(a1 "predicateOperator")];
  return a1;
}

void NSMapRemove(NSMapTable *table, const void *key)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void NSMapRemove(NSMapTable * _Nonnull, const void * _Nullable)");
  }

  [(NSMapTable *)table removeObjectForKey:key];
}

uint64_t CFBasicHashRemoveValue(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  v3 = *(a1 + 16);
  if ((v3 & 0x3F0000) != 0)
  {
    v4 = v3 & 3;
    if (v4 <= 1)
    {
      if (v4 != 1)
      {
        goto LABEL_50;
      }

      ___CFBasicHashFindBucket1(a1, a2, 0, v37);
    }

    else if (v4 == 2)
    {
      ___CFBasicHashFindBucket2(a1, a2, 0, v37);
    }

    else
    {
      ___CFBasicHashFindBucket3(a1, a2, 0, v37);
    }
  }

  else
  {
    *v37 = -1;
    memset(&v37[24], 0, 32);
  }

  v5 = *&v37[40];
  if (*&v37[40] < 2uLL)
  {
    if (*&v37[40] != 1)
    {
      return v5;
    }

    v8 = *v37;
    v9 = *(a1 + 24);
    *(a1 + 30) = ((v9 & 0xFFFF000000000000) + 0x1000000000000) >> 48;
    v10 = ~(v9 << 32) | 0xFFFFFFFFFFLL;
    v12 = a1 + 40;
    v11 = *(a1 + 40);
    v13 = *(v11 + 8 * v8);
    *(v11 + 8 * v8) = v10;
    (**(a1 + 32))(a1, 14, v13, 0);
    v14 = *(a1 + 16);
    if ((v14 & 4) != 0)
    {
      v15 = *(a1 + 48);
      v16 = *(v15 + 8 * v8);
      *(v15 + 8 * v8) = v10;
      (**(a1 + 32))(a1, 15, v16, 0);
      v14 = *(a1 + 16);
    }

    if ((v14 & 0x18) != 0)
    {
      v17 = (v14 >> 3) & 3;
      if (!v17)
      {
        goto LABEL_50;
      }

      v18 = *(v12 + 8 * v17);
      v19 = *(v18 + 8 * v8);
      *(v18 + 8 * v8) = v10;
      (**(a1 + 32))(a1, 16, v19, 0);
      v14 = *(a1 + 16);
    }

    if ((v14 & 0x60) != 0)
    {
      v20 = (v14 >> 5) & 3;
      if (!v20)
      {
        goto LABEL_50;
      }

      v21 = *(v12 + 8 * v20);
      v22 = *(v21 + 8 * v8);
      *(v21 + 8 * v8) = v10;
      (**(a1 + 32))(a1, 17, v22, 0);
      v14 = *(a1 + 16);
    }

    if ((v14 & 0x380) != 0)
    {
      v23 = (v14 >> 7) & 7;
      if (!v23)
      {
        goto LABEL_50;
      }

      *(*(v12 + 8 * v23) + 8 * v8) = 0;
      v14 = *(a1 + 16);
    }

    if ((v14 & 0x1C00) != 0)
    {
      v24 = (v14 >> 10) & 7;
      if (!v24)
      {
        goto LABEL_50;
      }

      *(*(v12 + 8 * v24) + 8 * v8) = 0;
      v14 = *(a1 + 16);
    }

    if ((v14 & 0xE000) != 0)
    {
      v25 = v14 >> 13;
      if (!v25)
      {
        goto LABEL_50;
      }

      *(*(v12 + 8 * v25) + 8 * v8) = 0;
      v14 = *(a1 + 16);
    }

    v26 = (v14 & 0xFFFFFFFFFFC00000) - 0x400000;
    *(a1 + 16) = v26 & 0xFFFFFFFFFFC00000 | v14 & 0x3FFFFF;
    v27 = *(a1 + 24);
    v28 = v27 + 0x100000000;
    *(a1 + 28) = (v27 + 0x100000000) >> 32;
    if (((v27 + 0x100000000) & 0xFFFF00000000) != 0)
    {
      v29 = (v14 >> 16) & 0x3F;
      v30 = __CFBasicHashTableSizes[v29];
      if ((v29 - 7) > 0x37)
      {
        if ((v29 - 5) > 0x39)
        {
          if ((v27 & 8) == 0)
          {
LABEL_43:
            v33 = WORD1(v14) & 0x3F;
            if (v33 < 3)
            {
              return v5;
            }

            v34 = v33 - 2;
            goto LABEL_47;
          }

LABEL_45:
          v35 = WORD1(v14) & 0x3F;
          if (v35 < 6)
          {
            return v5;
          }

          v34 = v35 - 5;
LABEL_47:
          if (__CFBasicHashTableCapacities[v34] <= v26 >> 22)
          {
            return v5;
          }

LABEL_48:
          __CFBasicHashRehash(a1, 0);
          return v5;
        }

        v31 = WORD2(v28);
      }

      else
      {
        v31 = WORD2(v28);
        if (v31 >= v30 >> 2)
        {
          goto LABEL_34;
        }
      }

      v32 = v31 >= v30 >> 1;
      if ((v27 & 8) == 0)
      {
LABEL_35:
        if (v32)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      goto LABEL_40;
    }

LABEL_34:
    v32 = 1;
    if ((v27 & 8) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    if (v32)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  *(a1 + 30) = ((*(a1 + 30) << 48) + 0x1000000000000) >> 48;
  v6 = *(a1 + 16);
  if ((v6 & 0x380) != 0)
  {
    v7 = (v6 >> 7) & 7;
    if (v7)
    {
      --*(*(a1 + 8 * v7 + 40) + 8 * *v37);
      return v5;
    }

LABEL_50:
    __break(1u);
  }

  return v5;
}

uint64_t outlined init with copy of FloatingPointRoundingRule?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id _NSGetDoubleValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  (Implementation)(a1, Name);
  v8 = [v5 initWithDouble:?];

  return v8;
}

NSArray *__cdecl NSAllMapTableKeys(NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "NSArray * _Nonnull NSAllMapTableKeys(NSMapTable * _Nonnull)");
  }

  return [(NSMapTable *)table allKeys];
}

NSUInteger NSCountHashTable(NSHashTable *table)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "NSUInteger NSCountHashTable(NSHashTable * _Nonnull)");
  }

  return [(NSHashTable *)table count];
}

NSNumber __swiftcall CGFloat._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithDouble_];
}

uint64_t NSMutableDictionary.subscript.setter(uint64_t a1, void *a2)
{
  v5 = duckCastToNSCopying(_:)(a2);
  outlined init with copy of FloatingPointRoundingRule?(a1, &v12, &_sypSgMd);
  if (v13)
  {
    outlined init with take of Any(&v12, &v14);
    v6 = v15;
    v7 = __swift_project_boxed_opaque_existential_1(&v14, v15);
    result = _swift_isClassOrObjCExistentialType();
    if ((result & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      (*(v11 + 16))(&v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6);
      v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      goto LABEL_5;
    }

    if (*(*(v6 - 8) + 64) == 8)
    {
      v9 = *v7;
      swift_unknownObjectRetain();
LABEL_5:
      [v2 setObject:v9 forKey:v5];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(a2);
      outlined destroy of TermOfAddress?(a1, &_sypSgMd);
      return __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of TermOfAddress?(&v12, &_sypSgMd);
    [v2 removeObjectForKey_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(a2);
    return outlined destroy of TermOfAddress?(a1, &_sypSgMd);
  }

  return result;
}

uint64_t duckCastToNSCopying(_:)(void *a1)
{
  v1 = a1[3];
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (*(*(v1 - 8) + 64) == 8)
    {
      return swift_unknownObjectRetain();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    (*(v5 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
    return _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  return result;
}

NSString *_NSMethodExceptionProem(objc_class *a1, const char *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v10[0] = 0;
  if (v4 == a1)
  {
    v5 = 43;
  }

  else
  {
    v5 = 45;
  }

  if (v4)
  {
    Name = class_getName(v4);
  }

  else
  {
    Name = "nil";
  }

  v7 = sel_getName(a2);
  asprintf(v10, "*** %c[%s %s]", v5, Name, v7);
  if (!v10[0])
  {
    return 0;
  }

  v8 = [NSString stringWithUTF8String:?];
  free(v10[0]);
  return v8;
}

void _removeAllowedClass(uint64_t a1, void *a2)
{
  v4 = *(a1 + 2264 + 8 * *(a1 + 4440));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mutableCopy];
    [v5 removeObject:a2];
  }

  else
  {
    if (v4 != a2)
    {
      return;
    }

    v5 = 0;
  }

  *(a1 + 2264 + 8 * *(a1 + 4440)) = v5;
}

BOOL selectorInProtocol(SEL aSel, Protocol *p)
{
  v4 = 1;
  if (!protocol_getMethodDescription(p, aSel, 1, 1).name)
  {
    return protocol_getMethodDescription(p, aSel, 0, 1).name != 0;
  }

  return v4;
}

id _NSGetIntValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithInt:{(Implementation)(a1, Name)}];

  return v8;
}

void @objc NSMutableDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    v3 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    swift_unknownObjectRetain();
    v4 = a1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  NSMutableDictionary.subscript.setter(v7, v6);
}

id @objc NSDictionary.subscript.getter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _BYTE *))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  a4(v15, v14);

  __swift_destroy_boxed_opaque_existential_1(v14);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void _NSKeyValueRemoveObservationInfoWatcher(uint64_t a1)
{
  v2 = _CFGetTSD();
  if (!v2)
  {
    v3 = malloc_default_zone();
    v2 = malloc_type_zone_calloc(v3, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  v4 = *(v2 + 8);
  if (v4 != a1)
  {
    NSLog(@"_NSKeyValueRemoveObservationInfoWatcher() was called in a surprising way.");
  }

  if (v4)
  {
    *(v2 + 8) = *(v4 + 16);
  }
}

uint64_t NSDictionary.subscript.getter@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = _swift_isClassOrObjCExistentialType();
  if (result)
  {
    if (*(*(v4 - 8) + 64) != 8)
    {
      __break(1u);
      return result;
    }

    v7 = *v5;
    swift_unknownObjectRetain();
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    (*(v10 + 16))(&v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  v8 = [v2 objectForKey_];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    return swift_unknownObjectRelease();
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t _NSKeyValueAddObservationInfoWatcher(uint64_t a1)
{
  result = _CFGetTSD();
  v3 = result;
  if (!result)
  {
    v4 = malloc_default_zone();
    v3 = malloc_type_zone_calloc(v4, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    result = _CFSetTSD();
  }

  *(a1 + 16) = v3[1];
  v3[1] = a1;
  return result;
}

id _NSGetBoolValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithBool:*(a1 + ivar_getOffset(a3))];

  return v3;
}

void parseFloats(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = v14;
    if (([a1 getCString:v14 maxLength:100 encoding:4] & 1) == 0)
    {
      v6 = [a1 UTF8String];
    }

    if (a2 && v6)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v13 = 0;
        v9 = v8[v6];
        if (v8[v6])
        {
          v10 = v9 - 48 >= 0xA;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          while (v9 > 0x2E || ((1 << v9) & 0x680000000000) == 0)
          {
            v11 = v8 + 1;
            v9 = v8[v6 + 1];
            if (v8[v6 + 1])
            {
              v12 = v9 - 48 >= 0xA;
            }

            else
            {
              v12 = 0;
            }

            ++v8;
            if (!v12)
            {
              goto LABEL_12;
            }
          }
        }

        v11 = v8;
LABEL_12:
        *(a3 + 8 * v7) = strtod_l(&v11[v6], &v13, 0);
        v8 = &v13[-v6];
        ++v7;
      }

      while (v7 != a2);
    }
  }
}

NSValue *newDecodedValue(void *a1, NSZone *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (![a1 allowsKeyedCoding] || !objc_msgSend(a1, "containsValueForKey:", @"NS.special"))
  {
    bzero(&v35, 0x400uLL);
    typePtr = 0;
    [a1 decodeValueOfObjCType:"*" at:&typePtr size:8];
    if (!typePtr || !*typePtr)
    {
      return 0;
    }

    sizep = 0;
    NSGetSizeAndAlignment(typePtr, &sizep, 0);
    v10 = sizep;
    if (sizep < 0x401)
    {
      v11 = &v35;
    }

    else
    {
      v11 = malloc_type_calloc(sizep, 1uLL, 0x100004077774924uLL);
      if (!v11)
      {
        return 0;
      }
    }

    [a1 decodeValueOfObjCType:typePtr at:v11 size:v10];
    v12 = _NSNewValue(v11, typePtr, a2);
    if (v11 != &v35)
    {
      free(v11);
    }

    free(typePtr);
    return v12;
  }

  v4 = [a1 decodeIntForKey:@"NS.special"];
  if (v4 > 9)
  {
    if (v4 <= 11)
    {
      if (v4 == 10)
      {
        [a1 decodeDoubleForKey:@"NS.atval.a"];
        v35.f64[0] = v20;
        [a1 decodeDoubleForKey:@"NS.atval.b"];
        v35.f64[1] = v21;
        [a1 decodeDoubleForKey:@"NS.atval.c"];
        v36 = v22;
        [a1 decodeDoubleForKey:@"NS.atval.d"];
        v37 = v23;
        [a1 decodeDoubleForKey:@"NS.atval.tx"];
        v38 = v24;
        [a1 decodeDoubleForKey:@"NS.atval.ty"];
        v39 = v25;
        return _NSNewValue(&v35, "{CGAffineTransform=dddddd}", 0);
      }

      else
      {
        [a1 decodeDoubleForKey:@"NS.edgeval.top"];
        v35.f64[0] = v15;
        [a1 decodeDoubleForKey:@"NS.edgeval.left"];
        v35.f64[1] = v16;
        [a1 decodeDoubleForKey:@"NS.edgeval.bottom"];
        v36 = v17;
        [a1 decodeDoubleForKey:@"NS.edgeval.right"];
        v37 = v18;
        return _NSNewValue(&v35, "{UIEdgeInsets=dddd}", 0);
      }
    }

    switch(v4)
    {
      case 12:
        [a1 decodeDoubleForKey:@"NS.edgeval.top"];
        v35.f64[0] = v26;
        [a1 decodeDoubleForKey:@"NS.edgeval.left"];
        v35.f64[1] = v27;
        [a1 decodeDoubleForKey:@"NS.edgeval.bottom"];
        v36 = v28;
        [a1 decodeDoubleForKey:@"NS.edgeval.right"];
        v37 = v29;
        return _NSNewValue(&v35, "{NSEdgeInsets=dddd}", 0);
      case 13:
        [a1 decodeDoubleForKey:@"NS.offset.h"];
        v35.f64[0] = v30;
        [a1 decodeDoubleForKey:@"NS.offset.v"];
        v35.f64[1] = v31;
        return _NSNewValue(&v35, "{UIOffset=dd}", 0);
      case 14:
        [a1 decodeDoubleForKey:@"NS.dirEdgeVal.top"];
        v35.f64[0] = v5;
        [a1 decodeDoubleForKey:@"NS.dirEdgeVal.leading"];
        v35.f64[1] = v6;
        [a1 decodeDoubleForKey:@"NS.dirEdgeVal.bottom"];
        v36 = v7;
        [a1 decodeDoubleForKey:@"NS.dirEdgeVal.trailing"];
        v37 = v8;
        return _NSNewValue(&v35, "{NSDirectionalEdgeInsets=dddd}", 0);
    }

LABEL_37:
    v32 = [NSString stringWithFormat:@"cannot decode special type '%lu'", v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v32 userInfo:0]);
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      [a1 decodeRectForKey:@"NS.rectval"];
      v13 = [NSValue valueWithRect:?];
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_37;
      }

      v14 = [objc_msgSend(a1 decodeObjectOfClass:objc_opt_class() forKey:{@"NS.rangeval.length", "unsignedIntegerValue"}];
      v13 = +[NSValue valueWithRange:](NSValue, "valueWithRange:", [objc_msgSend(a1 decodeObjectOfClass:objc_opt_class() forKey:{@"NS.rangeval.location", "unsignedIntegerValue"}], v14);
    }
  }

  else if (v4 == 1)
  {
    [a1 decodePointForKey:@"NS.pointval"];
    v13 = [NSValue valueWithPoint:?];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_37;
    }

    [a1 decodeSizeForKey:@"NS.sizeval"];
    v13 = [NSValue valueWithSize:?];
  }

  return v13;
}

void sub_18079AC50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x18079A8A4);
  }

  _Unwind_Resume(a1);
}

NSValue *_NSGetSizeValueWithMethod(uint64_t a1, int a2, Method m)
{
  Implementation = method_getImplementation(m);
  Name = method_getName(m);
  (Implementation)(a1, Name);

  return [NSValue valueWithSize:?];
}

NSValue *_NSGetPointValueWithMethod(uint64_t a1, int a2, Method m)
{
  Implementation = method_getImplementation(m);
  Name = method_getName(m);
  (Implementation)(a1, Name);

  return [NSValue valueWithPoint:?];
}

NSValue *_NSGetRectValueWithMethod(uint64_t a1, int a2, Method m)
{
  Implementation = method_getImplementation(m);
  Name = method_getName(m);
  (Implementation)(a1, Name);

  return [NSValue valueWithRect:?];
}

uint64_t @objc _NSFileManagerBridge.isReadableFile(atPath:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  LOBYTE(a4) = specialized String.withFileSystemRepresentation<A>(_:)(v5, v6, a4);

  return a4 & 1;
}

BOOL specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, int a3)
{
  v5 = a2;
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    isStackAllocationSafe = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a2) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v8 < -1)
    {
      __break(1u);
      return v17;
    }

    a2 = v8 + 1;
    if (v8 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = a2;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v15 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v15, v14, a1, v5, a3, &v17);
    MEMORY[0x1865D2690](v15, -1, -1);
    if (v3)
    {
      return v12;
    }

    return v17;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v10 = &v16[-v9];
  return (String._fileSystemRepresentation(into:)(&v16[-v9], v11, a1, v5) & 1) != 0 && access(v10, a3) == 0;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void readBytesFromFileDescriptor(_:path:buffer:length:readUntilLength:reportProgress:)(int a1, uint64_t a2, char *a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v160[4] = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v12 = *(a2 + 8);
  v153 = *(a2 + 16);
  v14 = objc_opt_self();
  v15 = [v14 currentProgress];
  if (!v15)
  {
    goto LABEL_12;
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = [v14 progressWithTotalUnitCount_];
  v16 = a4 / 100;
  if (a4 / 100 <= 4096)
  {
    v16 = 4096;
  }

  if (a4 < 1)
  {
LABEL_6:
    v12 = a4;
    goto LABEL_7;
  }

  while (1)
  {
    v150 = v12;
    v151 = v13;
    v148 = v7;
    v17 = v16 >= 0x7FFFFFFF ? 0x7FFFFFFF : v16;
    v154 = v16 >> 63;
    v155 = v17;
    v13 = 0xFFFFFFFF80000000;
    v18 = &selRef_initWithBundleIdentifier_storeIdentifier_;
    v12 = a4;
    v156 = v15;
    v149 = v17;
    while (1)
    {
      v19 = v15;
      if (v15 && [v15 isCancelled])
      {
        isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
        v73 = @"NSCocoaErrorDomain";
        v74 = v73;
        if (isTaggedPointer)
        {
          TaggedPointerTag = _objc_getTaggedPointerTag(v73);
          if (TaggedPointerTag)
          {
            if (TaggedPointerTag != 22)
            {
              if (TaggedPointerTag == 2)
              {
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                goto LABEL_182;
              }

              goto LABEL_116;
            }

            v111 = [(__CFString *)v74 UTF8String];
            if (!v111)
            {
LABEL_231:
              __break(1u);
              goto LABEL_232;
            }

            String.init(utf8String:)(v111);
            if (v112)
            {
              goto LABEL_117;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v113)
          {
            goto LABEL_117;
          }

          [(__CFString *)v74 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_182;
        }

LABEL_116:
        LOBYTE(v157) = 0;
        v160[0] = 0;
        if (__CFStringIsCF())
        {
LABEL_117:

          goto LABEL_182;
        }

        v94 = v74;
        String.init(_nativeStorage:)();
        if (!v95 && (v160[0] = [(__CFString *)v94 length]) != 0)
        {
          String.init(_cocoaString:)();
        }

        else
        {
        }

LABEL_182:
        v114 = objc_allocWithZone(NSError);
        v115 = String._bridgeToObjectiveCImpl()();

        v116 = [v114 initWithDomain:v115 code:3072 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v117 = [v116 domain];
        if (!v117)
        {
LABEL_192:
          v123 = 0;
          v125 = 0xE000000000000000;
          goto LABEL_203;
        }

        v118 = v117;
        v119 = _objc_isTaggedPointer(v117);
        v120 = v118;
        v121 = v120;
        if ((v119 & 1) == 0)
        {
          goto LABEL_188;
        }

        v122 = _objc_getTaggedPointerTag(v120);
        if (v122)
        {
          if (v122 != 22)
          {
            if (v122 == 2)
            {
              MEMORY[0x1EEE9AC00](v122);
              v123 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v125 = v124;

              goto LABEL_203;
            }

LABEL_188:
            LOBYTE(v157) = 0;
            v160[0] = 0;
            if (__CFStringIsCF())
            {

              goto LABEL_192;
            }

            v126 = v121;
            v127 = String.init(_nativeStorage:)();
            if (v128)
            {
              v123 = v127;
              v125 = v128;

              goto LABEL_203;
            }

            v160[0] = [v126 length];
            if (!v160[0])
            {

              goto LABEL_192;
            }

            v123 = String.init(_cocoaString:)();
            v125 = v132;
LABEL_202:

LABEL_203:
            v133 = v74;
            v134 = v133;
            if (!isTaggedPointer)
            {
              goto LABEL_208;
            }

            v135 = _objc_getTaggedPointerTag(v133);
            if (v135)
            {
              if (v135 != 22)
              {
                if (v135 == 2)
                {
                  MEMORY[0x1EEE9AC00](v135);
                  v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v138 = v137;

                  goto LABEL_221;
                }

LABEL_208:
                v160[0] = 0;
                if (__CFStringIsCF())
                {
                  v136 = v160[0];

                  v138 = 0xE000000000000000;
                }

                else
                {
                  v139 = v134;
                  v140 = String.init(_nativeStorage:)();
                  if (v141)
                  {
                    v136 = v140;
                    v138 = v141;
                  }

                  else
                  {
                    v160[0] = [(__CFString *)v139 length];
                    if (v160[0])
                    {
                      v136 = String.init(_cocoaString:)();
                      v138 = v145;
                    }

                    else
                    {

                      v136 = 0;
                      v138 = 0xE000000000000000;
                    }
                  }
                }

                goto LABEL_221;
              }

              v142 = [(__CFString *)v134 UTF8String];
              if (!v142)
              {
LABEL_232:
                __break(1u);
                goto LABEL_233;
              }

              v143 = String.init(utf8String:)(v142);
              if (v144)
              {
                goto LABEL_216;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            v143 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v144)
            {
              [(__CFString *)v134 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v136 = v157;
              v138 = v159;
LABEL_221:
              if (v123 == v136 && v125 == v138)
              {
                goto LABEL_170;
              }

              v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v146)
              {
                goto LABEL_172;
              }

              __break(1u);
              goto LABEL_225;
            }

LABEL_216:
            v136 = v143;
            v138 = v144;

            goto LABEL_221;
          }

          v129 = [v121 UTF8String];
          if (!v129)
          {
LABEL_233:
            __break(1u);
            goto LABEL_234;
          }

          v130 = String.init(utf8String:)(v129);
          if (v131)
          {
LABEL_197:
            v123 = v130;
            v125 = v131;

            goto LABEL_202;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v130 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v131)
        {
          [v121 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v123 = v157;
          v125 = v159;
          goto LABEL_202;
        }

        goto LABEL_197;
      }

      v20 = v12 >= v155 ? v17 : v12;
      v21 = v20 & ~v154;
      v22 = v19;
      while (1)
      {
        if (v22 && [v22 isCancelled])
        {
          LODWORD(v18) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v29 = @"NSCocoaErrorDomain";
          v12 = v29;
          if (!v18)
          {
            goto LABEL_57;
          }

          v30 = _objc_getTaggedPointerTag(v29);
          if (v30)
          {
            if (v30 != 22)
            {
              if (v30 == 2)
              {
                MEMORY[0x1EEE9AC00](v30);
                String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                goto LABEL_122;
              }

LABEL_57:
              LOBYTE(v157) = 0;
              v160[0] = 0;
              if (!__CFStringIsCF())
              {
                v35 = v12;
                String.init(_nativeStorage:)();
                if (v36 || (v160[0] = [v35 length]) == 0)
                {

                  goto LABEL_122;
                }

                goto LABEL_121;
              }

LABEL_58:

              goto LABEL_122;
            }

            v37 = [v12 UTF8String];
            if (!v37)
            {
              __break(1u);
LABEL_229:
              __break(1u);
              goto LABEL_230;
            }

            String.init(utf8String:)(v37);
            if (v38)
            {
              goto LABEL_58;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v39)
          {
            [v12 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_122;
          }

          goto LABEL_58;
        }

        v23 = read(a1, a3, v21);
        if (v23 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_120:
          __break(1u);

LABEL_121:
          String.init(_cocoaString:)();
LABEL_122:
          v76 = objc_allocWithZone(NSError);
          v77 = String._bridgeToObjectiveCImpl()();

          v78 = [v76 initWithDomain:v77 code:3072 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v79 = [v78 domain];
          if (!v79)
          {
LABEL_132:
            v85 = 0;
            v87 = 0xE000000000000000;
            goto LABEL_150;
          }

          v80 = v79;
          v81 = _objc_isTaggedPointer(v79);
          v82 = v80;
          v83 = v82;
          if ((v81 & 1) == 0)
          {
            goto LABEL_128;
          }

          v84 = _objc_getTaggedPointerTag(v82);
          if (v84)
          {
            if (v84 != 22)
            {
              if (v84 == 2)
              {
                MEMORY[0x1EEE9AC00](v84);
                v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v87 = v86;

LABEL_150:
                v97 = v12;
                v98 = v97;
                if (!v18)
                {
                  goto LABEL_155;
                }

                v99 = _objc_getTaggedPointerTag(v97);
                if (!v99)
                {
                  goto LABEL_162;
                }

                if (v99 != 22)
                {
                  if (v99 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v99);
                    v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v102 = v101;

                    goto LABEL_168;
                  }

LABEL_155:
                  v160[0] = 0;
                  if (__CFStringIsCF())
                  {
                    v100 = v160[0];

                    v102 = 0xE000000000000000;
                  }

                  else
                  {
                    v103 = v98;
                    v104 = String.init(_nativeStorage:)();
                    if (v105)
                    {
                      v100 = v104;
                      v102 = v105;
                    }

                    else
                    {
                      v160[0] = [v103 length];
                      if (v160[0])
                      {
                        v100 = String.init(_cocoaString:)();
                        v102 = v109;
                      }

                      else
                      {

                        v100 = 0;
                        v102 = 0xE000000000000000;
                      }
                    }
                  }

                  goto LABEL_168;
                }

                v106 = [v98 UTF8String];
                if (v106)
                {
                  v107 = String.init(utf8String:)(v106);
                  if (v108)
                  {
                    goto LABEL_163;
                  }

                  __break(1u);
LABEL_162:
                  _CFIndirectTaggedPointerStringGetContents();
                  v107 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v108)
                  {
                    [v98 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v100 = v157;
                    v102 = v159;
LABEL_168:
                    if (v85 == v100 && v87 == v102)
                    {
LABEL_170:

                      goto LABEL_172;
                    }

                    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v110)
                    {
                      goto LABEL_172;
                    }

LABEL_225:
                    __break(1u);
LABEL_226:
                    __break(1u);
LABEL_227:
                    __break(1u);
                  }

LABEL_163:
                  v100 = v107;
                  v102 = v108;

                  goto LABEL_168;
                }

                goto LABEL_229;
              }

LABEL_128:
              LOBYTE(v157) = 0;
              v160[0] = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_132;
              }

              v88 = v83;
              v89 = String.init(_nativeStorage:)();
              if (v90)
              {
                v85 = v89;
                v87 = v90;

                goto LABEL_150;
              }

              v160[0] = [v88 length];
              if (!v160[0])
              {

                goto LABEL_132;
              }

              v85 = String.init(_cocoaString:)();
              v87 = v96;
LABEL_149:

              goto LABEL_150;
            }

            v91 = [v83 UTF8String];
            if (!v91)
            {
LABEL_230:
              __break(1u);
              goto LABEL_231;
            }

            v92 = String.init(utf8String:)(v91);
            if (v93)
            {
LABEL_137:
              v85 = v92;
              v87 = v93;

              goto LABEL_149;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v92 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v93)
          {
            [v83 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v85 = v157;
            v87 = v159;
            goto LABEL_149;
          }

          goto LABEL_137;
        }

        v24 = v23;
        if (v23 > 0x7FFFFFFF)
        {
          goto LABEL_120;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          break;
        }

        v25 = MEMORY[0x1865CA7A0]() == 4;
        v22 = v156;
        if (!v25)
        {
          v26 = MEMORY[0x1865CA7A0](v156);
          v27._countAndFlagsBits = 1684104562;
          v27._object = 0xE400000000000000;
          logFileIOErrno(_:at:)(v26, v27);
          if (v153)
          {
            if (v26 > 26)
            {
              if (v26 == 27)
              {
                v28 = 263;
                goto LABEL_81;
              }

              if (v26 != 63)
              {
                if (v26 == 102)
                {
                  swift_unknownObjectRetain();
                  v32 = 0;
                  v28 = 256;
LABEL_86:
                  ObjectType = swift_getObjectType();
                  (*(v150 + 240))(ObjectType, v150);
                  v50 = String._bridgeToObjectiveCImpl()();

                  v51 = (*(v150 + 432))(ObjectType, v150);
                  outlined consume of PathOrURL(v151, v150, 1);
                  if (v32)
                  {
                    v160[0] = v32;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v32 = v32;
                    v52 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v52)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v54 = v32;
                    }

                    v53 = _swift_stdlib_bridgeErrorToNSError();
                  }

                  else
                  {
                    v53 = 0;
                  }

                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  goto LABEL_172;
                }

LABEL_76:
                v28 = 256;
                goto LABEL_81;
              }

              v28 = 258;
            }

            else
            {
              if (v26 == 1)
              {
LABEL_46:
                v28 = 257;
                goto LABEL_81;
              }

              if (v26 != 2)
              {
                if (v26 == 13)
                {
                  goto LABEL_46;
                }

                goto LABEL_76;
              }

              v28 = 260;
            }

LABEL_81:
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v40 = POSIXErrorCode.rawValue.getter();
              v41 = objc_allocWithZone(NSError);
              v42 = String._bridgeToObjectiveCImpl()();

              v32 = [v41 initWithDomain:v42 code:v40 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v43 = [v32 domain];
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)(v43);
              v46 = v45;

              if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v46 == v47)
              {

                goto LABEL_86;
              }

              v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v48)
              {
                goto LABEL_86;
              }

              goto LABEL_226;
            }

LABEL_234:
            _StringGuts.grow(_:)(22);

            v147 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v147);

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          if (v26 > 26)
          {
            switch(v26)
            {
              case 27:
                v31 = 263;
                goto LABEL_94;
              case 63:
                v31 = 258;
                goto LABEL_94;
              case 102:
                v33 = 0;
                v34 = 256;
                goto LABEL_100;
            }
          }

          else
          {
            switch(v26)
            {
              case 1:
                goto LABEL_56;
              case 2:
                v31 = 260;
                goto LABEL_94;
              case 13:
LABEL_56:
                v31 = 257;
LABEL_94:
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_234;
                }

                static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                v55 = POSIXErrorCode.rawValue.getter();
                v56 = objc_allocWithZone(NSError);
                v57 = String._bridgeToObjectiveCImpl()();

                v33 = [v56 initWithDomain:v57 code:v55 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v58 = [v33 domain];
                v59 = static String._unconditionallyBridgeFromObjectiveC(_:)(v58);
                v61 = v60;

                if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v61 == v62)
                {
                }

                else
                {
                  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v63 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }

                v34 = v31;
LABEL_100:

                URL.init(_fileManagerFailableFileURLWithPath:)(v151, v150, v160);
                outlined consume of PathOrURL(v151, v150, 0);
                v64 = v160[0];
                v65 = v160[1];
                v66 = String._bridgeToObjectiveCImpl()();
                if (v64)
                {
                  v67 = swift_getObjectType();
                  v68 = v65[54](v67, v65);
                  swift_unknownObjectRelease();
                  if (v33)
                  {
LABEL_102:
                    v158 = v33;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v33 = v33;
                    v69 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v69)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v71 = v33;
                    }

                    v70 = _swift_stdlib_bridgeErrorToNSError();
                    goto LABEL_108;
                  }
                }

                else
                {
                  v68 = 0;
                  if (v33)
                  {
                    goto LABEL_102;
                  }
                }

                v70 = 0;
LABEL_108:
                [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

LABEL_172:
                swift_willThrow();

                return;
            }
          }

          v31 = 256;
          goto LABEL_94;
        }
      }

      if (!v23)
      {
        goto LABEL_146;
      }

      v12 -= v23;
      if (v12 < 0)
      {
        break;
      }

      if (v156)
      {
        goto LABEL_37;
      }

      if ((a5 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_39:
      a3 += v24;
      v15 = v156;
      v17 = v149;
      if (!v12)
      {
LABEL_147:
        v7 = v148;
        goto LABEL_7;
      }
    }

    if (v156)
    {
      v12 = 0;
LABEL_37:
      [v156 setCompletedUnitCount_];
      if (a5)
      {
        goto LABEL_39;
      }

LABEL_38:
      if (v21 <= v24)
      {
        goto LABEL_39;
      }

LABEL_146:
      v15 = v156;
      goto LABEL_147;
    }

    v12 = 0;
    if (a5)
    {
      goto LABEL_146;
    }

    v15 = 0;
    v7 = v148;
    if (v21 <= v24)
    {
LABEL_7:
    }

    if (!__OFSUB__(a4, v12))
    {
      break;
    }

    __break(1u);
LABEL_11:
    v15 = 0;
LABEL_12:
    v16 = a4;
    if (a4 < 1)
    {
      goto LABEL_6;
    }
  }
}

uint64_t _NSXPCDistantObjectSimpleMessageSend1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    [v5[1] _sendSelector:a2 withProxy:v5 arg1:a3];
  }

  return 0;
}

uint64_t one-time initialization function for compatibility1()
{
  result = _NSLinkedOnOrAfterLuckier();
  static URL.compatibility1 = result ^ 1;
  return result;
}

{
  result = _CFBundleMainBundleHasCompatibilityIdentifier();
  if (result || (result = _CFBundleMainBundleHasCompatibilityIdentifier(), result))
  {
    v1 = 1;
  }

  else
  {
    result = _CFBundleMainBundleHasCompatibilityIdentifier();
    v1 = result != 0;
  }

  static JSONEncoder.compatibility1 = v1;
  return result;
}

{
  result = _CFBundleMainBundleHasCompatibilityIdentifier();
  if (result)
  {
    result = _CFBundleMainBundleHasCompatibilityShortVersion();
    v1 = result != 0;
  }

  else
  {
    v1 = 0;
  }

  static Calendar.compatibility1 = v1;
  return result;
}

{
  result = _NSLinkedOnOrAfterCrystalglow();
  static String.compatibility1 = result ^ 1;
  return result;
}

{
  result = _NSLinkedOnOrAfterCrystalglow();
  static NSDecimal.compatibility1 = result ^ 1;
  return result;
}

uint64_t one-time initialization function for fileIDPrefix()
{
  result = specialized _copyCollectionToContiguousArray<A>(_:)(0x692F656C69662E2FLL, 0xEA00000000003D64);
  static URL.fileIDPrefix = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t type metadata accessor for NSFileManager()
{
  result = lazy cache variable for type metadata for NSFileManager;
  if (!lazy cache variable for type metadata for NSFileManager)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileManager);
  }

  return result;
}

uint64_t URLParseInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = a4;
    v16 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v16;
    a4 = v15;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v7 < -1)
    {
      __break(1u);
    }

    a2 = v7 + 1;
    if (v7 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v17 = a2;
  v18 = a4;
  v19 = a3;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v20 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v20, v17, v19, v18, a1);
    return MEMORY[0x1865D2690](v20, -1, -1);
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v9 = v21 - v8;
  if (String._fileSystemRepresentation(into:)(v21 - v8, v10, v11, v12))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  result = a1(v13);
  if (v4)
  {
    return swift_willThrow();
  }

  return result;
}

unint64_t specialized Sequence<>.contains(_:)(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  result = a2;
  v9 = a3 >> 14;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a2 >> 14;
  v23 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a5 & 0xFFFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v14 = result >> 14;
    if (result >> 14 == v9)
    {
      return v14 != v9;
    }

    v15 = result & 0xC;
    v16 = result >> 14;
    v17 = result;
    if (v15 == v11)
    {
      break;
    }

    if (v14 < v12)
    {
      goto LABEL_28;
    }

LABEL_11:
    if (v16 >= v9)
    {
      goto LABEL_28;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v21 = result;
      v19 = String.UTF8View._foreignSubscript(position:)();
      result = v21;
      if (v15 != v11)
      {
        goto LABEL_19;
      }
    }

    else if ((a5 & 0x2000000000000000) != 0)
    {
      v25[0] = a4;
      v25[1] = v24;
      v19 = *(v25 + (v17 >> 16));
      if (v15 != v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v18 = v23;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v22 = result;
        v18 = _StringObject.sharedUTF8.getter();
        result = v22;
      }

      v19 = *(v18 + (v17 >> 16));
      if (v15 != v11)
      {
LABEL_19:
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_20;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_6:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_7;
    }

LABEL_20:
    if (v13 <= result >> 16)
    {
      goto LABEL_29;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_7:
    if (v19 == a1)
    {
      return v14 != v9;
    }
  }

  v20 = result;
  v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
  result = v20;
  v16 = v17 >> 14;
  if (v17 >> 14 >= v12)
  {
    goto LABEL_11;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t _foundation_swift_url_feature_enabled()
{
  if (qword_1ED43F5D0 != -1)
  {
    dispatch_once(&qword_1ED43F5D0, &__block_literal_global_11);
  }

  return _MergedGlobals_95;
}

uint64_t _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(uint64_t a1, unint64_t a2, char a3, unsigned __int8 *a4, uint64_t *a5)
{
  v6 = v5;
  v196 = *MEMORY[0x1E69E9840];
  v10 = *v5;
  LODWORD(v189) = *a4;
  v11 = *a5;
  st_ino = a5[1];
  type metadata accessor for _SwiftURL.ResourceInfo();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  v6[7] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v6[8] = v15;
  v16 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    if (v11)
    {
LABEL_194:
      LOBYTE(v194.st_dev) = 37;
      MEMORY[0x1EEE9AC00](v26);
      v182 = &v194;
      if (specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v180, 0x2F2EuLL, 0xE200000000000000))
      {
        v172 = 8;
      }

      else
      {
        v172 = 0;
      }

      type metadata accessor for URLParseInfo();
      v173 = swift_allocObject();
      *(v173 + 16) = 12078;
      *(v173 + 24) = 0xE200000000000000;
      *(v173 + 32) = 0;
      *(v173 + 40) = 0;
      *(v173 + 48) = 1;
      *(v173 + 56) = 0;
      *(v173 + 64) = 0;
      *(v173 + 72) = 1;
      *(v173 + 80) = 0;
      *(v173 + 88) = 0;
      *(v173 + 96) = 1;
      *(v173 + 104) = 0;
      *(v173 + 112) = 0;
      *(v173 + 120) = 1;
      *(v173 + 128) = 0;
      *(v173 + 136) = 0;
      *(v173 + 144) = 1;
      *(v173 + 152) = xmmword_1812DB7E0;
      *(v173 + 168) = 0;
      *(v173 + 176) = 0;
      *(v173 + 184) = 0;
      *(v173 + 192) = 1;
      *(v173 + 200) = 0;
      *(v173 + 208) = 0;
      *(v173 + 216) = 1;
      *(v173 + 217) = 0;
      *(v173 + 219) = 0;
      *(v173 + 220) = v172;
      v6[2] = v173;
      if (v11)
      {
        ObjectType = swift_getObjectType();
        (*(st_ino + 128))(&v194, ObjectType, st_ino);
        v175 = *&v194.st_dev;
        if (*&v194.st_dev)
        {
          st_ino = v194.st_ino;
          swift_unknownObjectRelease();
          v11 = v175;
        }
      }

      v6[3] = v11;
      v6[4] = st_ino;
      v6[5] = 4;
      *(v6 + 48) = 0;
      return v6;
    }

    v27 = [objc_opt_self() defaultManager];
    v28 = [v27 currentDirectoryPath];

    if (!v28)
    {
      a2 = v10;
      goto LABEL_64;
    }

    isTaggedPointer = _objc_isTaggedPointer(v28);
    v30 = v28;
    v19 = v30;
    if (!isTaggedPointer)
    {
LABEL_61:
      a2 = v10;
      LOBYTE(v195) = 0;
      *&v194.st_dev = 0;
      LOBYTE(v192) = 0;
      LOBYTE(v190) = 0;
      if (__CFStringIsCF())
      {
      }

      else
      {
        v70 = v19;
        v71 = String.init(_nativeStorage:)();
        if (v72)
        {
          v32 = v71;
          v34 = v72;

          goto LABEL_185;
        }

        *&v194.st_dev = [v70 length];
        if (*&v194.st_dev)
        {
          goto LABEL_183;
        }
      }

LABEL_64:
      v32 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_185;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          a2 = v10;
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v182 = v19;
          v32 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v34 = v33;

          goto LABEL_185;
        }

        goto LABEL_61;
      }

      a2 = v10;
      v76 = [v19 UTF8String];
      if (!v76)
      {
LABEL_212:
        __break(1u);
LABEL_213:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v77 = String.init(utf8String:)(v76);
      if (v78)
      {
LABEL_83:
        v32 = v77;
        v34 = v78;
LABEL_84:

LABEL_184:
LABEL_185:
        *&v194.st_dev = v32;
        v194.st_ino = v34;
        if (specialized static URL.isAbsolute(standardizing:pathStyle:)(&v194.st_dev, 0))
        {
          v167 = *&v194.st_dev;
          v168 = v194.st_ino;
          if (one-time initialization token for compatibility2 != -1)
          {
            swift_once();
          }

          if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
          {
            v170 = type metadata accessor for _BridgedURL();
            v169 = &protocol witness table for _BridgedURL;
          }

          else
          {
            v169 = &protocol witness table for _SwiftURL;
            v170 = a2;
          }

          LOBYTE(v192) = 0;
          v195 = 0uLL;
          (v169[9])(v167, v168, &v192, &v195);
          v11 = (v169[56])(v170, v169);
          st_ino = v171;
          v26 = swift_unknownObjectRelease();
        }

        else
        {

          v11 = 0;
          st_ino = 0;
        }

        goto LABEL_194;
      }

      __break(1u);
    }

    a2 = v10;
    LOWORD(v192) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v32 = v195;
      v34 = *(&v195 + 1);
      goto LABEL_184;
    }

    goto LABEL_83;
  }

  v188 = st_ino;
  if ((a3 & 1) == 0)
  {

    v35 = a2;
    goto LABEL_29;
  }

  v187 = v11;
  v17 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v192 = v17;
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_27:
    *&v194.st_dev = a1;
    v194.st_ino = a2;

    a1 = String.init<A>(_:)();
    v35 = v37;
    goto LABEL_28;
  }

  v19 = v17;
  v20 = v10;
  v21 = 0;
  for (i = 32; ; ++i)
  {
    while (1)
    {
      v23 = i - 32;
      if (i - 32 >= v18)
      {
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        v162 = [v19 lengthOfBytesUsingEncoding_];
        v180 = v19;
        v181 = &v194;
        LODWORD(v182) = 134217984;
        v183 = MEMORY[0x1EEE9AC00](v162);
        v163 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v34 = v164;
        v165 = HIBYTE(v164) & 0xF;
        if ((v164 & 0x2000000000000000) == 0)
        {
          v165 = v163 & 0xFFFFFFFFFFFFLL;
        }

        if (v165)
        {
          v32 = v163;
          goto LABEL_84;
        }

LABEL_183:
        v32 = String.init(_cocoaString:)();
        v34 = v166;
        goto LABEL_184;
      }

      v24 = i - 31;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_177;
      }

      v25 = *(v19 + 2);
      if (v23 >= v25)
      {
        goto LABEL_178;
      }

      if (v19[i] == 92)
      {
        break;
      }

      ++i;
      if (v24 == v18)
      {
        v10 = v20;
        if (v21)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
    }

    v19[i] = 47;
    v192 = v19;
    v21 = 1;
    if (v24 == v18)
    {
      break;
    }
  }

  v25 = *(v19 + 2);
  v10 = v20;
LABEL_26:
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v192;
  a1 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v35 = v36;
LABEL_28:

  v11 = v187;
LABEL_29:
  *&v195 = a1;
  *(&v195 + 1) = v35;
  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 != 1)
  {
    goto LABEL_46;
  }

  if ((specialized Sequence<>.starts<A>(with:)(0x3A656C6966uLL, 0xE500000000000000, a1, v35) & 1) == 0)
  {
    if (specialized Sequence<>.starts<A>(with:)(0x3A70747468uLL, 0xE500000000000000, a1, v35) & 1) != 0 || (specialized Sequence<>.starts<A>(with:)(0x3A7370747468uLL, 0xE600000000000000, a1, v35))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static URL.logger);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_18075C000, v51, v52, "API MISUSE: URL(filePath:) called with an HTTP URL string. Using URL(string:) instead.", v53, 2u);
        MEMORY[0x1865D2690](v53, -1, -1);
      }

      v54 = static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, v35, 1, 1);
      swift_unknownObjectRelease();
      if (v54)
      {

        v6[2] = v54;
        v6[3] = 0;
        v6[4] = 0;
        v6[5] = 4;
        *(v6 + 48) = 0;
        goto LABEL_173;
      }

      goto LABEL_213;
    }

LABEL_46:

    goto LABEL_47;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static URL.logger);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_18075C000, v39, v40, "API MISUSE: URL(filePath:) called with a file: scheme. Input must only contain a path. Dropping file: scheme.", v41, 2u);
    MEMORY[0x1865D2690](v41, -1, -1);
  }

  v42 = specialized Collection.dropFirst(_:)(5uLL, a1, v35);
  v44 = v43;
  v46 = v45;
  v48 = v47;

  MEMORY[0x1865CAE80](v42, v44, v46, v48);

  v49 = String._compressingSlashes()();

  v195 = v49;
LABEL_47:
  v55 = specialized static URL.isAbsolute(standardizing:pathStyle:)(&v195, a3 & 1);
  v56 = v188;
  if ((v55 & 1) != 0 || v11)
  {
    goto LABEL_104;
  }

  v57 = [objc_opt_self() defaultManager];
  v58 = [v57 currentDirectoryPath];

  if (!v58)
  {
    v63 = v10;
    v64 = 0;
    v66 = 0xE000000000000000;
    goto LABEL_95;
  }

  v59 = _objc_isTaggedPointer(v58);
  v60 = v58;
  v61 = v60;
  if (!v59)
  {
LABEL_55:
    v63 = v10;
    LOBYTE(v192) = 0;
    *&v194.st_dev = 0;
    LOBYTE(v190) = 0;
    v191 = 0;
    if (__CFStringIsCF())
    {
      if (*&v194.st_dev)
      {
        if (v191 == 1)
        {
          if (v192)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v79 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_93;
        }

LABEL_92:
        v79 = String.init(_cocoaString:)();
LABEL_93:
        v64 = v79;
        v66 = v80;
        goto LABEL_94;
      }
    }

    else
    {
      v67 = v61;
      v68 = String.init(_nativeStorage:)();
      if (v69)
      {
        v64 = v68;
        v66 = v69;

        goto LABEL_95;
      }

      *&v194.st_dev = [v67 length];
      if (*&v194.st_dev)
      {
        goto LABEL_92;
      }
    }

    v64 = 0;
    v66 = 0xE000000000000000;
    goto LABEL_95;
  }

  v62 = _objc_getTaggedPointerTag(v60);
  if (!v62)
  {
    v63 = v10;
    v190 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v74 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v75)
    {
      [v61 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v64 = v192;
      v66 = v193;
      goto LABEL_94;
    }

LABEL_73:
    v64 = v74;
    v66 = v75;

LABEL_94:
    goto LABEL_95;
  }

  if (v62 == 22)
  {
    v63 = v10;
    v73 = [v61 UTF8String];
    if (v73)
    {
      v74 = String.init(utf8String:)(v73);
      if (v75)
      {
        goto LABEL_73;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_212;
  }

  if (v62 != 2)
  {
    goto LABEL_55;
  }

  v63 = v10;
  MEMORY[0x1EEE9AC00](v62);
  v182 = v61;
  v64 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v66 = v65;

LABEL_95:
  *&v194.st_dev = v64;
  v194.st_ino = v66;
  if (specialized static URL.isAbsolute(standardizing:pathStyle:)(&v194.st_dev, 0))
  {
    v81 = *&v194.st_dev;
    v82 = v194.st_ino;
    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v84 = type metadata accessor for _BridgedURL();
      v83 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v83 = &protocol witness table for _SwiftURL;
      v84 = v63;
    }

    LOBYTE(v190) = 0;
    v193 = 0;
    v192 = 0;
    (v83[9])(v81, v82, &v190, &v192);
    v11 = (v83[56])(v84, v83);
    v56 = v85;
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0;
    v56 = 0;
  }

LABEL_104:
  if (v189 > 1)
  {
    if (v189 != 2)
    {
      if ((specialized BidirectionalCollection.last.getter(v195, *(&v195 + 1)) & 0x1FF) == 0x2F)
      {
        goto LABEL_111;
      }

      goto LABEL_158;
    }

    if (v55 & 1 | (v11 == 0))
    {
      v90 = v195;
      v89 = *(&v195 + 1);

      goto LABEL_147;
    }

    v93 = swift_getObjectType();
    v94 = *(v56 + 232);
    swift_unknownObjectRetain();
    v187 = v11;
    v95 = v94(1, v93, v56);
    v97 = v96;
    v98 = v195;
    v99 = *(&v195 + 1);
    v100 = specialized Collection.first.getter(v195, *(&v195 + 1));
    v188 = v56;
    if ((v100 & 0x1FF) == 0x2F)
    {
      v189 = 0;
    }

    else
    {
      LOBYTE(v194.st_dev) = 47;
      MEMORY[0x1EEE9AC00](v100);
      v182 = &v194;
      specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v180, v95, v97);
      v189 = 0;
      if ((v101 & 1) == 0)
      {
        String.index(after:)();
        v102 = String.subscript.getter();
        v104 = v103;
        v106 = v105;
        v108 = v107;
        v192 = 0;
        v193 = 0xE000000000000000;
        v109 = String.count.getter();
        v186 = v106;
        v185 = v108;
        v110 = Substring.distance(from:to:)();
        v111 = __OFADD__(v109, v110);
        v112 = v109 + v110;
        v11 = v187;
        if (v111)
        {
          goto LABEL_209;
        }

        MEMORY[0x1865CAED0](v112);
        *&v194.st_dev = v102;
        v194.st_ino = v104;
        *&v194.st_uid = v186;
        *&v194.st_rdev = v185;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();
        *&v194.st_dev = v98;
        v194.st_ino = v99;

        String.append<A>(contentsOf:)();

        v98 = v192;
        v99 = v193;
LABEL_122:
        v113 = String._droppingTrailingSlashes.getter(v98, v99);
        v90 = v114;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
        v89 = static _SetStorage.allocate(capacity:)();
        v115 = v89 + 56;
        v116 = *(v89 + 40);
        v56 = byte_1EEECE478;
        v117 = MEMORY[0x1865CD020](v116, byte_1EEECE478, 1);
        v118 = -1 << *(v89 + 32);
        v119 = v117 & ~v118;
        v120 = v119 >> 6;
        v121 = *(v89 + 56 + 8 * (v119 >> 6));
        v122 = 1 << v119;
        v123 = *(v89 + 48);
        if (((1 << v119) & v121) != 0)
        {
          v124 = ~v118;
          while (*(v123 + v119) != v56)
          {
            v119 = (v119 + 1) & v124;
            v120 = v119 >> 6;
            v121 = *(v115 + 8 * (v119 >> 6));
            v122 = 1 << v119;
            if (((1 << v119) & v121) == 0)
            {
              goto LABEL_126;
            }
          }
        }

        else
        {
LABEL_126:
          *(v115 + 8 * v120) = v122 | v121;
          *(v123 + v119) = v56;
          v125 = *(v89 + 16);
          v111 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v111)
          {
            goto LABEL_202;
          }

          *(v89 + 16) = v126;
        }

        v56 = byte_1EEECE479;
        v127 = MEMORY[0x1865CD020](v116, byte_1EEECE479, 1);
        v128 = -1 << *(v89 + 32);
        v129 = v127 & ~v128;
        v130 = v129 >> 6;
        v131 = *(v115 + 8 * (v129 >> 6));
        v132 = 1 << v129;
        v133 = *(v89 + 48);
        if (((1 << v129) & v131) != 0)
        {
          v134 = ~v128;
          while (*(v133 + v129) != v56)
          {
            v129 = (v129 + 1) & v134;
            v130 = v129 >> 6;
            v131 = *(v115 + 8 * (v129 >> 6));
            v132 = 1 << v129;
            if (((1 << v129) & v131) == 0)
            {
              goto LABEL_132;
            }
          }

          goto LABEL_134;
        }

LABEL_132:
        *(v115 + 8 * v130) = v132 | v131;
        *(v133 + v129) = v56;
        v135 = *(v89 + 16);
        v111 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (!v111)
        {
          *(v89 + 16) = v136;
LABEL_134:
          v137 = HIBYTE(v90) & 0xF;
          if ((v90 & 0x2000000000000000) == 0)
          {
            v137 = v113 & 0xFFFFFFFFFFFFLL;
          }

          if (v137)
          {
            *&v194.st_dev = v113;
            v194.st_ino = v90;
            MEMORY[0x1EEE9AC00](v127);
            v180 = &v194;
            v181 = v89;
            v182 = 4;

            v138 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v179, v113, v90);
            if (v139 == 1)
            {
              v138 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v113, v90, v89, 4);
            }

            v140 = v138;
            v141 = v139;

            swift_unknownObjectRelease();
            if (v141)
            {
              v90 = v140;
            }

            else
            {
              v90 = 0;
            }

            if (v141)
            {
              v89 = v141;
            }

            else
            {
              v89 = 0xE000000000000000;
            }
          }

          else
          {
            swift_unknownObjectRelease();

            v90 = 0;
            v89 = 0xE000000000000000;
          }

          v56 = v188;
LABEL_147:
          if ((v89 & 0x2000000000000000) != 0)
          {
            isStackAllocationSafe = HIBYTE(v89) & 0xF;
          }

          else
          {
            isStackAllocationSafe = v90 & 0xFFFFFFFFFFFFLL;
          }

          if (!isStackAllocationSafe)
          {
            goto LABEL_157;
          }

          if ((v89 & 0x1000000000000000) == 0)
          {
            goto LABEL_152;
          }

          goto LABEL_203;
        }

LABEL_202:
        __break(1u);
LABEL_203:
        isStackAllocationSafe = String.UTF8View._foreignCount()();
LABEL_152:
        v143 = 3 * isStackAllocationSafe;
        if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
        {
          __break(1u);
          goto LABEL_205;
        }

        if (v143 >= -1)
        {
          v91 = v143 + 1;
          if (v143 < 1024)
          {
LABEL_155:
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v145 = &v184 - v144;
            if (String._fileSystemRepresentation(into:)(&v184 - v144, v146, v90, v89))
            {
              memset(&v194, 0, sizeof(v194));
              if (!lstat(v145, &v194))
              {
                st_mode = v194.st_mode;
                v161 = S_IFMT.getter() & st_mode;
                LOWORD(st_mode) = S_IFDIR.getter();

                if (v161 == st_mode)
                {
                  goto LABEL_111;
                }

                goto LABEL_158;
              }
            }

LABEL_157:

            goto LABEL_158;
          }

LABEL_205:
          v177 = v91;
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v178 = swift_slowAlloc();
            specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v178, v177, v90, v89, &v192);
            MEMORY[0x1865D2690](v178, -1, -1);

            if (v192)
            {
              goto LABEL_111;
            }

            goto LABEL_158;
          }

          goto LABEL_155;
        }

        __break(1u);
LABEL_209:
        __break(1u);
      }
    }

    v11 = v187;
    goto LABEL_122;
  }

  if (v189)
  {
    v86 = String._droppingTrailingSlashes.getter(v195, *(&v195 + 1));
    v88 = v87;

    *&v195 = v86;
    *(&v195 + 1) = v88;
    goto LABEL_158;
  }

LABEL_111:
  v92 = HIBYTE(*(&v195 + 1)) & 0xFLL;
  if ((*(&v195 + 1) & 0x2000000000000000) == 0)
  {
    v92 = v195 & 0xFFFFFFFFFFFFLL;
  }

  if (v92 && (specialized BidirectionalCollection.last.getter(v195, *(&v195 + 1)) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

LABEL_158:
  v147 = v195;
  v148 = *(&v195 + 1);
  v149 = HIBYTE(*(&v195 + 1)) & 0xFLL;
  if ((*(&v195 + 1) & 0x2000000000000000) == 0)
  {
    v149 = v195 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    if (v149)
    {

      v150 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v147, v148, 0);
      v152 = v151;
    }

    else
    {
      v150 = 0;
      v152 = 0xE000000000000000;
    }

    v156 = specialized static RFC3986Parser.parse(filePath:isAbsolute:)(v150, v152, 1);

    swift_unknownObjectRelease();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v156;
    *(v6 + 48) = 1;
  }

  else
  {
    if (v149)
    {

      v153 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v147, v148, 0);
      v155 = v154;
    }

    else
    {
      v153 = 0;
      v155 = 0xE000000000000000;
    }

    v157 = specialized static RFC3986Parser.parse(filePath:isAbsolute:)(v153, v155, 0);

    v6[2] = v157;
    if (v11)
    {
      v158 = swift_getObjectType();
      (*(v56 + 128))(&v194, v158, v56);
      v159 = *&v194.st_dev;
      if (*&v194.st_dev)
      {
        v56 = v194.st_ino;
        swift_unknownObjectRelease();
        v11 = v159;
      }
    }

    v6[3] = v11;
    v6[4] = v56;
    *(v6 + 48) = 0;
  }

  v6[5] = 4;
LABEL_173:

  return v6;
}

uint64_t partial apply for specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)(a1, a2, *(v3 + 24), *(v3 + 25), a3);
}

{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(a1, a2, *(v3 + 24), *(v3 + 25), specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
  *a3 = result;
  a3[1] = v6;
  return result;
}

{
  return specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)(a1, a2, *(v3 + 24), *(v3 + 25), a3);
}

{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5(a1, a2, *(v3 + 24), *(v3 + 25));
  *a3 = result;
  a3[1] = v6;
  return result;
}

unint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_27:

    v17 = 0;
    return v17 & 1;
  }

  v19 = 4 * v8;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = 15;
  while (1)
  {
    v12 = v11 & 0xC;
    result = v11;
    if (v12 == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    }

    v14 = result >> 16;
    if (result >> 16 >= v8)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v15 = result;
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v18[0] = a3;
      v18[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(v18 + v14);
      if (v12 != v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v15 = *(result + v14);
      if (v12 != v10)
      {
LABEL_18:
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_19:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v8 <= v11 >> 16)
    {
      goto LABEL_32;
    }

    v11 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    LOBYTE(v18[0]) = v15;
    v16 = a1(v18);
    if (v4)
    {

      return v17 & 1;
    }

    if (v16)
    {

      v17 = 1;
      return v17 & 1;
    }

    if (v19 == v11 >> 14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized static URL.isAbsolute(standardizing:pathStyle:)(uint64_t *a1, char a2)
{
  v11 = *a1;
  v10 = a1[1];
  if ((specialized Collection.first.getter(*a1, v10) & 0x1FF) == 0x2F)
  {
    return 1;
  }

  if ((a2 & 1) == 0)
  {
    if ((specialized Collection.first.getter(v11, v10) & 0x1FF) != 0x7E)
    {
      goto LABEL_82;
    }

    if ((specialized Collection.first.getter(v11, v10) & 0x1FF) != 0x7E)
    {
      goto LABEL_81;
    }

    v18 = specialized Collection<>.firstIndex(of:)(47, v11, v10);
    if (v19)
    {
      v20 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v20 = v11;
      }

      v21 = v20 << 16;
      if ((v10 & 0x1000000000000000) != 0 && (v11 & 0x800000000000000) == 0)
      {
        v14 = v21 | 0xB;
        goto LABEL_38;
      }

      v24 = v10 & 0x1000000000000000;
      v14 = v21 | 7;
    }

    else
    {
      v14 = v18;
      v24 = v10 & 0x1000000000000000;
    }

    if (!v24)
    {
      v23 = 65540;
      goto LABEL_71;
    }

LABEL_38:
    v22 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v22 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = String.UTF8View._foreignIndex(after:)();
LABEL_71:
      if (v14 >> 14 == v23 >> 14)
      {
        v31 = static String.homeDirectoryPath()();
        v33 = v32;
LABEL_80:
        v43 = specialized Collection.suffix(from:)(v14, v11, v10);
        v44 = v38;
        v45 = v39;
        v46 = v40;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        v11 = v31;
        v10 = v33;
        goto LABEL_81;
      }

      if (v14 >> 14 < v23 >> 14)
      {
        goto LABEL_93;
      }

      v34 = String.subscript.getter();
      MEMORY[0x1865CAE80](v34);

      if (!issetugid() && getenv("CFFIXED_USER_HOME"))
      {
        v35 = String.init(cString:)();
        goto LABEL_79;
      }

      v35 = specialized static Platform.homeDirectory(forUserName:)();
      if (v36)
      {
LABEL_79:
        v31 = String.standardizingPath.getter(v35, v36);
        v33 = v37;

        goto LABEL_80;
      }

LABEL_81:
      *a1 = v11;
      a1[1] = v10;
LABEL_82:
      v41 = specialized Collection.first.getter(v11, v10);
      return (v41 & 0x100) == 0 && v41 == 47;
    }

    __break(1u);
LABEL_97:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
LABEL_65:
    v27 = *(v14 + 16);
    if (v27 < 2)
    {
      __break(1u);
    }

    else
    {
      *(v14 + 33) = 58;
      if (v27 < *(v14 + 24) >> 1)
      {
LABEL_67:
        memmove((v14 + 33), (v14 + 32), v27);
        *(v14 + 16) = v27 + 1;
        *(v14 + 32) = 47;
        v28 = static String._fromUTF8Repairing(_:)();
        v30 = v29;

        swift_bridgeObjectRelease_n();
        *a1 = v28;
        a1[1] = v30;
        return 1;
      }
    }

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v27 + 1, 1, v14);
    v27 = *(v14 + 16);
    goto LABEL_67;
  }

  if ((v10 & 0x1000000000000000) == 0)
  {
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13 >= 3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (String.UTF8View._foreignCount()() < 3)
  {
    return 0;
  }

LABEL_9:
  result = specialized Collection.first.getter(v11, v10);
  if ((result & 0x100) != 0)
  {
    __break(1u);
    return result;
  }

  LOBYTE(v14) = result;
  v4 = 65540;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v2 = (v11 >> 59) & 1;
  }

  else
  {
    v2 = 1;
  }

  v3 = 65540;
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_91;
    }

    v3 = String.UTF8View._foreignIndex(after:)();
  }

  v5 = 4 << v2;
  v7 = v3 & 0xC;
  v16 = v3;
  if (v7 == 4 << v2)
  {
    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v10);
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v6 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v2 = v16 >> 16;
  if (v16 >> 16 >= v6)
  {
    __break(1u);
    goto LABEL_89;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v2 = String.UTF8View._foreignSubscript(position:)();
    if (v7 == v5)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v43 = v11;
    v44 = v10 & 0xFFFFFFFFFFFFFFLL;
    v2 = *(&v43 + v2);
    if (v7 == v5)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    goto LABEL_94;
  }

  for (i = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32; ; i = _StringObject.sharedUTF8.getter())
  {
    LOBYTE(v2) = *(i + v2);
    if (v7 == v5)
    {
LABEL_47:
      v3 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, v11, v10);
      if ((v10 & 0x1000000000000000) == 0)
      {
LABEL_44:
        v16 = (v3 & 0xFFFFFFFFFFFF0000) + v4;
        goto LABEL_50;
      }
    }

    else
    {
LABEL_43:
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    if (v6 <= v3 >> 16)
    {
      goto LABEL_92;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_50:
    if ((v16 & 0xC) == v5)
    {
LABEL_89:
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v11, v10);
    }

    v3 = v16 >> 16;
    if (v16 >> 16 < v6)
    {
      break;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v26 = String.UTF8View._foreignSubscript(position:)();
  }

  else if ((v10 & 0x2000000000000000) != 0)
  {
    v43 = v11;
    v44 = v10 & 0xFFFFFFFFFFFFFFLL;
    v26 = *(&v43 + v3);
  }

  else
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v25 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter();
    }

    v26 = *(v25 + v3);
  }

  if ((v14 & 0xDF) - 91 < 0xFFFFFFE6 || v2 != 124 && v2 != 58 || v26 != 47)
  {
    return 0;
  }

  if (v2 == 124)
  {
    v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v11, v10);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_65;
    }

    goto LABEL_97;
  }

  v43 = 47;
  v44 = 0xE100000000000000;

  MEMORY[0x1865CB0E0](v11, v10);
  swift_bridgeObjectRelease_n();
  v42 = v44;
  *a1 = v43;
  a1[1] = v42;
  return 1;
}