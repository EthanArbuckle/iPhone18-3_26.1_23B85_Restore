uint64_t __nsurlClass_block_invoke()
{
  result = objc_opt_class();
  qword_1ED43FC00 = result;
  return result;
}

BOOL isMethodFromNSObjectProtocol(Protocol *a1, const char *a2, _BOOL8 a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (&unk_1EEF5D678 != a1)
  {
    outCount = 0;
    v6 = protocol_copyProtocolList(a1, &outCount);
    if (v6)
    {
      v7 = outCount;
      if (!outCount)
      {
LABEL_13:
        free(v6);
        return 0;
      }

      if (*v6 != &unk_1EEF5D678)
      {
        v8 = 1;
        while (outCount != v8)
        {
          v9 = v6[v8++];
          if (v9 == &unk_1EEF5D678)
          {
            v10 = v8 - 1;
            free(v6);
            if (v10 < v7)
            {
              goto LABEL_15;
            }

            return 0;
          }
        }

        goto LABEL_13;
      }

      free(v6);
LABEL_15:
      if (!containsMethod(a1, a2, a3))
      {
        outCount = 0;
        v12 = protocol_copyProtocolList(a1, &outCount);
        if (v12)
        {
          v13 = v12;
          if (outCount)
          {
            for (i = 0; i < outCount; ++i)
            {
              v15 = isMethodFromNSObjectProtocol(v13[i], a2, a3);
              if (v15)
              {
                break;
              }
            }
          }

          else
          {
            v15 = 0;
          }

          free(v13);
          return v15;
        }
      }
    }

    return 0;
  }

  return containsMethod(a1, a2, a3);
}

void __CFBasicHashRehash(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v87 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = &__CFBasicHashTableCapacities;
  do
  {
    v5 = *v4++;
    if (v5 >= (a2 + (v3 >> 22)))
    {
      goto LABEL_5;
    }

    --v2;
  }

  while (v2 != -64);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
LABEL_4:
              __break(1u);
LABEL_5:
              if (a2 == 1)
              {
                v6 = ((*(a1 + 24) >> 3) & 1) - v2;
              }

              else
              {
                v6 = -v2;
              }

              v7 = 0;
              v8 = __CFBasicHashTableSizes[v6];
              v9 = (v3 >> 16) & 0x3F;
              v10 = __CFBasicHashTableSizes[v9];
              cf = a1;
              v11 = 0;
              v12 = 0;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              if (!v6)
              {
                v84 = 0;
                break;
              }

              v84 = 0;
              if (v6 == 63)
              {
                break;
              }

              if ((v8 - 0x1000000000000000) >> 61 != 7)
              {
                qword_1EA7BB378 = "overflow while growing CFBasicHash";
                __break(1u);
                return;
              }

              v81 = __CFBasicHashTableSizes[v6];
              v16 = 8 * v8;
              v17 = CFGetAllocator(a1);
              a1 = MEMORY[0x1865CD580](v17, v16, 2720177106, 0);
              v84 = a1;
              if (a1)
              {
                v18 = MEMORY[0x1E695E0C0];
                if (*MEMORY[0x1E695E0C0] == 1)
                {
                  __CFSetLastAllocationEventName();
                }

                a1 = cf;
                if ((cf[16] & 4) != 0)
                {
                  v19 = CFGetAllocator(cf);
                  a1 = MEMORY[0x1865CD580](v19, v16, 2720177106, 0);
                  if (a1)
                  {
                    v15 = a1;
                    if (*v18 == 1)
                    {
                      __CFSetLastAllocationEventName();
                    }

                    a1 = cf;
                    goto LABEL_21;
                  }
                }

                else
                {
                  v15 = 0;
LABEL_21:
                  if ((*(a1 + 16) & 0x18) != 0)
                  {
                    v20 = CFGetAllocator(a1);
                    a1 = MEMORY[0x1865CD580](v20, v16, 2720177106, 0);
                    if (a1)
                    {
                      v14 = a1;
                      if (*v18 == 1)
                      {
                        __CFSetLastAllocationEventName();
                      }

                      a1 = cf;
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    v14 = 0;
LABEL_27:
                    if ((*(a1 + 16) & 0x60) != 0)
                    {
                      v21 = CFGetAllocator(a1);
                      a1 = MEMORY[0x1865CD580](v21, v16, 2720177106, 0);
                      if (a1)
                      {
                        v13 = a1;
                        if (*v18 == 1)
                        {
                          __CFSetLastAllocationEventName();
                        }

                        a1 = cf;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                      v13 = 0;
LABEL_33:
                      if ((*(a1 + 16) & 0x380) != 0)
                      {
                        v22 = CFGetAllocator(a1);
                        if (__CFAllocatorRespectsHintZeroWhenAllocating())
                        {
                          a1 = MEMORY[0x1865CD580](v22, v16, 4170101879, 1);
                          v12 = a1;
                          if (a1)
                          {
                            goto LABEL_40;
                          }
                        }

                        else
                        {
                          a1 = MEMORY[0x1865CD580](v22, v16, 230515287, 0);
                          if (a1)
                          {
                            v12 = a1;
                            bzero(a1, v16);
LABEL_40:
                            if (*v18 == 1)
                            {
                              __CFSetLastAllocationEventName();
                            }

                            a1 = cf;
                            goto LABEL_43;
                          }
                        }
                      }

                      else
                      {
                        v12 = 0;
LABEL_43:
                        v79 = v10;
                        v23 = v18;
                        if ((*(a1 + 17) & 0x1C) == 0)
                        {
                          v7 = 0;
                          goto LABEL_53;
                        }

                        v24 = CFGetAllocator(a1);
                        if (__CFAllocatorRespectsHintZeroWhenAllocating())
                        {
                          a1 = MEMORY[0x1865CD580](v24, v16, 4170101879, 1);
                          v7 = a1;
                          if (a1)
                          {
LABEL_50:
                            if (*v23 == 1)
                            {
                              __CFSetLastAllocationEventName();
                            }

                            a1 = cf;
LABEL_53:
                            if ((*(a1 + 17) & 0xE0) == 0)
                            {
                              v11 = 0;
                              v8 = v81;
                              goto LABEL_63;
                            }

                            v25 = CFGetAllocator(a1);
                            if (__CFAllocatorRespectsHintZeroWhenAllocating())
                            {
                              a1 = MEMORY[0x1865CD580](v25, v16, 4170101879, 1);
                              v11 = a1;
                              if (a1)
                              {
                                goto LABEL_60;
                              }
                            }

                            else
                            {
                              a1 = MEMORY[0x1865CD580](v25, v16, 230515287, 0);
                              if (a1)
                              {
                                v11 = a1;
                                bzero(a1, v16);
LABEL_60:
                                v8 = v81;
                                if (*v23 == 1)
                                {
                                  __CFSetLastAllocationEventName();
                                }

                                a1 = cf;
LABEL_63:
                                v10 = v79;
                                break;
                              }
                            }
                          }
                        }

                        else
                        {
                          a1 = MEMORY[0x1865CD580](v24, v16, 230515287, 0);
                          if (a1)
                          {
                            v7 = a1;
                            bzero(a1, v16);
                            goto LABEL_50;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v74 = v11;
            v26 = *(a1 + 24);
            v27 = (v26 << 32) & 0xFFFFFF0000000000;
            if (v6 && v6 != 63)
            {
              if (v8 <= 1)
              {
                v28 = 1;
              }

              else
              {
                v28 = v8;
              }

              v29 = v84;
              v30 = v15;
              v31 = v14;
              v32 = v13;
              do
              {
                *v29 = v27;
                if (v15)
                {
                  *v30 = v27;
                }

                if (v14)
                {
                  *v31 = v27;
                }

                if (v13)
                {
                  *v32 = v27;
                }

                ++v32;
                ++v31;
                ++v30;
                ++v29;
                --v28;
              }

              while (v28);
              v26 = *(a1 + 24);
            }

            v3 = a1 + 40;
            ptr = *(a1 + 40);
            v2 = *(a1 + 16);
            *(a1 + 16) = v2 & 0xFFFFFFFFFFC0FFFFLL | ((v6 & 0x3F) << 16);
            *(a1 + 24) = v26 & 0xFFFF0000FFFFFFFFLL;
            *(a1 + 40) = v84;
            if ((v2 & 4) != 0)
            {
              v67 = *(a1 + 48);
              *(a1 + 48) = v15;
            }

            else
            {
              v67 = 0;
            }

            if ((v2 & 0x18) == 0)
            {
              break;
            }

            v33 = (v2 >> 3) & 3;
            if (v33)
            {
              v66 = *(v3 + 8 * v33);
              *(v3 + 8 * v33) = v14;
              goto LABEL_85;
            }
          }

          v66 = 0;
LABEL_85:
          if ((v2 & 0x60) == 0)
          {
            break;
          }

          v34 = (v2 >> 5) & 3;
          if (v34)
          {
            v65 = *(v3 + 8 * v34);
            *(v3 + 8 * v34) = v13;
            goto LABEL_89;
          }
        }

        v65 = 0;
LABEL_89:
        if ((v2 & 0x380) == 0)
        {
          break;
        }

        v35 = (v2 >> 7) & 7;
        if (v35)
        {
          v64 = *(v3 + 8 * v35);
          *(v3 + 8 * v35) = v12;
          goto LABEL_93;
        }
      }

      v64 = 0;
LABEL_93:
      if ((v2 & 0x1C00) == 0)
      {
        break;
      }

      v36 = (v2 >> 10) & 7;
      if (v36)
      {
        v63 = *(v3 + 8 * v36);
        *(v3 + 8 * v36) = v7;
        goto LABEL_97;
      }
    }

    v63 = 0;
LABEL_97:
    v72 = v14;
    v73 = v15;
    v70 = v12;
    v71 = v13;
    v69 = v7;
    if ((v2 & 0xE000) == 0)
    {
      break;
    }

    v2 = v2 >> 13;
    if (v2)
    {
      v62 = *(v3 + 8 * v2);
      *(v3 + 8 * v2) = v74;
      if (!v9)
      {
        goto LABEL_168;
      }

      goto LABEL_102;
    }
  }

  v62 = 0;
  if (!v9)
  {
    goto LABEL_168;
  }

LABEL_102:
  if (v9 != 63)
  {
    v37 = v67;
    if (v15)
    {
      v38 = v67 == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = !v38;
    v82 = v39;
    v40 = v14 != 0;
    v41 = ptr;
    if (v66)
    {
      v42 = v66;
    }

    else
    {
      v42 = ptr;
    }

    if (v66)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    v44 = v65;
    if (v71)
    {
      v45 = v65 == 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = !v45;
    v78 = v46;
    v80 = v43;
    v47 = v63;
    v2 = v64;
    if (v70)
    {
      v48 = v64 == 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = !v48;
    if (v69)
    {
      v50 = v63 == 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = !v50;
    v76 = v51;
    v77 = v49;
    v52 = v62;
    if (v74)
    {
      v53 = v62 == 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = !v53;
    v75 = v54;
    if (v10 <= 1)
    {
      v55 = 1;
    }

    else
    {
      v55 = v10;
    }

    v56 = v64;
    do
    {
      v58 = *v42++;
      v57 = v58;
      v59 = v58 ^ v27;
      if (v58 != v27 && v59 != -1)
      {
        v86 = 0;
        memset(v85, 0, sizeof(v85));
        v3 = *(a1 + 16) & 3;
        if ((*(a1 + 16) & 3u) <= 1)
        {
          if ((*(a1 + 16) & 3) != 1)
          {
            goto LABEL_4;
          }

          ___CFBasicHashFindBucket1(a1, v57, 1, v85);
        }

        else if ((*(a1 + 16) & 3) == 2)
        {
          ___CFBasicHashFindBucket2(a1, v57, 1, v85);
        }

        else
        {
          ___CFBasicHashFindBucket3(a1, v57, 1, v85);
        }

        a1 = cf;
        if (v84)
        {
          v2 = *&v85[0];
          v84[*&v85[0]] = *v41;
        }

        if (v82)
        {
          v2 = *&v85[0];
          v73[*&v85[0]] = *v37;
        }

        if (v80)
        {
          v2 = v72;
          v72[*&v85[0]] = v57;
        }

        if (v78)
        {
          v2 = *&v85[0];
          v71[*&v85[0]] = *v44;
        }

        if (v77)
        {
          v2 = *&v85[0];
          *(v70 + 8 * *&v85[0]) = *v56;
        }

        if (v76)
        {
          v2 = *&v85[0];
          *(v69 + 8 * *&v85[0]) = *v47;
        }

        if (v75)
        {
          v2 = *&v85[0];
          *(v74 + 8 * *&v85[0]) = *v52;
        }
      }

      ++v52;
      ++v47;
      ++v56;
      ++v44;
      ++v37;
      ++v41;
      --v55;
    }

    while (v55);
  }

LABEL_168:
  v61 = CFGetAllocator(a1);
  CFAllocatorDeallocate(v61, ptr);
  CFAllocatorDeallocate(v61, v67);
  CFAllocatorDeallocate(v61, v66);
  CFAllocatorDeallocate(v61, v65);
  CFAllocatorDeallocate(v61, v64);
  CFAllocatorDeallocate(v61, v63);

  CFAllocatorDeallocate(v61, v62);
}

id __setProtocolMetadataWithSignature_block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  qword_1ED4402F0 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  result = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  qword_1ED4402F8 = result;
  return result;
}

void @objc _NSSwiftCalendar.getEra(_:year:month:day:from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v15 = a1;
  [a7 timeIntervalSinceReferenceDate];
  v16 = v14;
  a8(a3, a4, a5, a6, &v16);
}

void *Calendar._dateComponents(_:from:)@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v8 = *v3;
  v7 = v3[1];
  v13[0] = *a1;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  v14 = v10;
  (*(v7 + 192))(__src, v13, &v14, ObjectType, v7);
  if ((v5 & 0x4000) != 0)
  {
    __src[0] = v8;
    __src[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (__src[2])
    {
      if (v8)
      {
        v13[0] = __src[2];
        v13[1] = __src[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v13);
      }
    }
  }

  return memcpy(a3, __src, 0x11BuLL);
}

uint64_t _CalendarAutoupdating.dateComponents(_:from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v6 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));
  if (!v7)
  {
    v33 = v4;
    v34 = a3;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v32 = *(&static LocaleCache.cache + 8);
    v9 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 32));
    if (!v11)
    {
      LocaleCache.preferences()(&v45);
      v13 = v12;
      type metadata accessor for _LocaleICU();
      v10 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v43 = v51;
      v44[0] = v52[0];
      *(v44 + 12) = *(v52 + 12);
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v38[0] = v45;
      v38[1] = v46;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v45, v37);
      v14 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v38, 0);
      if (v13)
      {
        MEMORY[0x1EEE9AC00](v14);
        os_unfair_lock_lock((v9 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v9 + 16), v38);
        os_unfair_lock_unlock((v9 + 32));
        outlined destroy of LocalePreferences(&v45);

        v10 = *(&v38[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v45);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v10 + 200))(&v45, ObjectType, v10);
    swift_unknownObjectRelease();
    v16 = v45;
    if (v45 && v45 != 7)
    {
      *&v32 = type metadata accessor for _CalendarICU();
      v17 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v18 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v32 = type metadata accessor for _CalendarGregorian();
      v17 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v18 = type metadata accessor for _CalendarGregorian;
    }

    v19 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v17, 255, v18);
    v36 = v16;
    v35[0] = 0;
    v35[1] = 0;
    v20 = static LocaleCache.cache;
    v31 = *(&static LocaleCache.cache + 8);
    v21 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v21 + 32));
    if (!v23)
    {
      v30[1] = 0;
      *&v38[0] = v20;
      *(v38 + 8) = v31;
      LocaleCache.preferences()(&v45);
      v25 = v24;
      type metadata accessor for _LocaleICU();
      v22 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v43 = v51;
      v44[0] = v52[0];
      *(v44 + 12) = *(v52 + 12);
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v38[0] = v45;
      v38[1] = v46;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v45, v37);
      v26 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v38, 0);
      v23 = v26;
      if (v25)
      {
        *&v31 = v30;
        MEMORY[0x1EEE9AC00](v26);
        os_unfair_lock_lock((v21 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v21 + 16), v38);
        os_unfair_lock_unlock((v21 + 32));
        outlined destroy of LocalePreferences(&v45);

        v22 = *(&v38[0] + 1);
        v23 = *&v38[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v45);
      }
    }

    *&v45 = v23;
    *(&v45 + 1) = v22;
    *&v38[0] = 0;
    BYTE8(v38[0]) = 1;
    v27 = (*(v19 + 16))(&v36, v35, &v45, 0, 1, 0, 1, v38, v32, v19);
    MEMORY[0x1EEE9AC00](v27);
    os_unfair_lock_lock((v6 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v6 + 16), &v45);
    os_unfair_lock_unlock((v6 + 32));
    swift_unknownObjectRelease();
    v8 = *(&v45 + 1);
    v4 = v33;
  }

  v28 = swift_getObjectType();
  *&v45 = v4;
  *&v38[0] = v5;
  (*(v8 + 192))(&v45, v38, v28, v8);
  return swift_unknownObjectRelease();
}

uint64_t _CalendarGregorian.dateComponents(_:from:in:)@<X0>(uint64_t *a1@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = *a1;
  v10 = *a2;
  v12 = *a3;
  v11 = a3[1];
  v13 = *v4;
  ObjectType = swift_getObjectType();
  *&v165 = v10;
  v15 = v10 + (*(v11 + 40))(&v165, ObjectType, v11);
  v16 = floor(v15);
  v17 = *(v4 + 72);
  v18 = 86400.0;
  v19 = remainder(v16, 86400.0);
  if (v19 < 0.0)
  {
    v19 = v19 + 86400.0;
  }

  v20 = v19 / 3600.0;
  if (v19 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_181;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v21 = fmod(v19, 3600.0);
  v6 = v21 / 60.0;
  if (v21 / 60.0 <= -9.22337204e18)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v18 = fmod(v21, 60.0);
  if (v18 <= -9.22337204e18)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v15 = (v15 - v16) * 1000000000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_186;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v22 = floor(v16 / 86400.0 + 2451910.5 + 0.5);
  v137 = v11;
  if (fabs(v22) > 2130706430.0)
  {
    *&v165 = 19;
    *(&v165 + 1) = v16;
    v166 = 0uLL;
    v167 = 1;
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    swift_willThrowTypedImpl();
    v134 = 0;
    v142 = 0x7FFFFFFFFFFFFFFFLL;
    v144 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v138 = 0x7FFFFFFFFFFFFFFFLL;
    weekday = 0x7FFFFFFFFFFFFFFFLL;
    v147 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v140 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    v135 = v25;
    v136 = v26;
    v133 = v12;
    v12 = *(v7 + 88);
    if (one-time initialization token for cache == -1)
    {
LABEL_41:
      v26 = qword_1ED440450;
      os_unfair_lock_lock((qword_1ED440450 + 24));
      v39 = *(v26 + 16);
      if (*(v39 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v41 & 1) != 0))
      {
        v42 = (*(v39 + 56) + 16 * v40);
        v27 = *v42;
        v7 = v42[1];
        swift_unknownObjectRetain();
        os_unfair_lock_unlock((v26 + 24));
        if (v27)
        {
          v12 = v133;
          v25 = v135;
          v26 = v136;
          if ((v9 & 0x8000) != 0)
          {
            goto LABEL_64;
          }

          goto LABEL_18;
        }
      }

      else
      {
        os_unfair_lock_unlock((v26 + 24));
      }

      if (v12 && v12 != 7)
      {
        v13 = type metadata accessor for _CalendarICU();
        v43 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
        v44 = type metadata accessor for _CalendarICU;
        v23 = 255;
      }

      else
      {
        v43 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
        v44 = type metadata accessor for _CalendarGregorian;
      }

      v7 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(v43, v23, v44);
      v164 = v12;
      v165 = 0uLL;
      v150 = 0;
      v151 = 0;
      v148 = 0;
      v149 = 1;
      v132 = v13;
      v13 = (*(v7 + 16))(&v164, &v165, &v150, 0, 1, 0, 1, &v148, v13, v7);
      os_unfair_lock_lock((v26 + 24));
      v45 = *(v26 + 16);
      if (*(v45 + 16))
      {
        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if (v47)
        {
          v48 = (*(v45 + 56) + 16 * v46);
          v27 = *v48;
          v7 = v48[1];
          v12 = v133;
          v11 = v137;
          goto LABEL_63;
        }
      }

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v165 = *(v26 + 16);
      v11 = v165;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v50 = *(v11 + 16);
      v51 = (v23 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_194;
      }

      if (*(v11 + 24) >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_199;
        }

        v54 = v11;
        v11 = v137;
        if ((v23 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      v53 = v23;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
      v54 = v165;
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if ((v53 & 1) == (v56 & 1))
      {
        v24 = v55;
        v57 = v53;
        v11 = v137;
        if ((v57 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_58;
      }

      goto LABEL_240;
    }

LABEL_192:
    swift_once();
    goto LABEL_41;
  }

  if (v22 <= -9.22337204e18)
  {
    goto LABEL_189;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v28 = v22;
  v29 = specialized static _CalendarGregorian.yearMonthDayFromJulianDay(_:useJulianRef:)(v22, v16 < v17);
  v5 = v29;
  v147 = v23;
  v136 = v30;
  v11 = *(v7 + 64);
  v26 = v29 & 3;
  v31 = (v29 & 3) == 0 && v29 < v11;
  if (v29 >= v11 && v26 == 0)
  {
    v33 = __ROR8__(0x8F5C28F5C28F5C29 * v29 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
    v31 = __ROR8__(0x8F5C28F5C28F5C29 * v29 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || v33;
  }

  v24 = v23 - 2;
  if (__OFSUB__(v23, 2))
  {
    goto LABEL_191;
  }

  v34 = v29 + 4716;
  if (__OFADD__(v29, 4716))
  {
    goto LABEL_39;
  }

  if (__OFSUB__(12, v24))
  {
    goto LABEL_195;
  }

  v35 = (14 - v23) / 12;
  v36 = __OFSUB__(v34, v35);
  v37 = v34 - v35;
  if (v36)
  {
    goto LABEL_196;
  }

  v36 = __OFSUB__(v24, 1);
  v24 = v23 - 3;
  if (v36)
  {
    goto LABEL_197;
  }

  v36 = __OFADD__(v24, 12);
  v24 = v23 + 9;
  if (v36)
  {
    goto LABEL_198;
  }

  v38 = 1461 * v37;
  if ((v37 * 1461) >> 64 != (1461 * v37) >> 63)
  {
LABEL_39:
    v165 = xmmword_18121FA20;
    v166 = xmmword_18121B2B0;
    v167 = 1;
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    swift_willThrowTypedImpl();
    v134 = 0;
    v142 = 0x7FFFFFFFFFFFFFFFLL;
    v144 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v138 = 0x7FFFFFFFFFFFFFFFLL;
    weekday = 0x7FFFFFFFFFFFFFFFLL;
    v147 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v11 = v137;
    v140 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v9 & 0x4000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_17;
  }

  v62 = v38 + 3;
  if (v38 >= 0)
  {
    v62 = 1461 * v37;
  }

  v36 = __OFADD__(v30, v62 >> 2);
  v63 = v30 + (v62 >> 2);
  if (v36)
  {
    __break(1u);
    goto LABEL_217;
  }

  v36 = __OFSUB__(v63, 1);
  v64 = v63 - 1;
  if (v36)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  v36 = __OFSUB__(v64, 1401);
  v65 = v64 - 1401;
  if (v36)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v66 = 26215 * (153 * (v24 % 12) + 2);
  v67 = (v66 >> 17) + (v66 >> 31);
  v36 = __OFADD__(v65, v67);
  v68 = v65 + v67;
  if (v36)
  {
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v69 = 3 * ((v37 + 184) / 100);
  v70 = v68 - v69 / 4;
  if (__OFSUB__(v68, v69 / 4))
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v71 = v70 + 38;
  if (__OFADD__(v70, 38))
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v72 = v29 & 3;
  if (v29 >= v11)
  {
    if ((v29 & 3) != 0)
    {
      v73 = &outlined read-only object #0 of _CalendarGregorian.dateComponents(_:from:in:);
      goto LABEL_108;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v29 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
    {
      v73 = &outlined read-only object #1 of _CalendarGregorian.dateComponents(_:from:in:);
      goto LABEL_108;
    }

    v72 = v29 % 400;
  }

  if (v72)
  {
    v73 = &outlined read-only object #0 of _CalendarGregorian.dateComponents(_:from:in:);
  }

  else
  {
    v73 = &outlined read-only object #1 of _CalendarGregorian.dateComponents(_:from:in:);
  }

LABEL_108:
  v76 = v23 - 1;
  if (v23 < 1)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v134 = v31;
  v132 = v13;
  v133 = v12;
  if (v76 >= v73[2])
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v77 = *(v7 + 56);
  v78 = v73[v76 + 4];

  v79 = v78 + v136;
  if (__OFADD__(v78, v136))
  {
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  if (v5 == v11 && v71 >= v77)
  {
    v80 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    v81 = ((v80 * 0x5C28F5C28F5C28F5) >> 64) - v80;
    v82 = v80 / 400 + (v81 >> 6) + (v81 >> 63) + 2;
    v36 = __OFADD__(v79, v82);
    v79 += v82;
    if (v36)
    {
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }
  }

  v135 = v79;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_225;
  }

  v83 = (v28 + 1) % 7;
  if (v83 >= 0)
  {
    v84 = (v28 + 1) % 7;
  }

  else
  {
    v84 = v83 + 7;
  }

  v85 = _CalendarGregorian.firstWeekday.getter();
  if (__OFSUB__(v84 + 8, v85))
  {
    goto LABEL_226;
  }

  v86 = v84 + 1;
  v87 = v84 + 1 - v135;
  v13 = v132;
  if (__OFSUB__(v84 + 1, v135))
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v143 = v84 + 8 - v85;
  v88 = v87 + 7001;
  if (__OFADD__(v87, 7001))
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v89 = _CalendarGregorian.firstWeekday.getter();
  if (__OFSUB__(v88, v89))
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  weekday = v86;
  v90 = v135;
  v91 = v135 - 1;
  if (__OFSUB__(v135, 1))
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v92 = (v88 - v89) % 7;
  if (__OFADD__(v91, v92))
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v93 = (v91 + v92) / 7;
  if (*(v7 + 152) != 1)
  {
    v97 = *(v7 + 144);
LABEL_129:
    if (7 - v92 < v97)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

  if (*(v7 + 96))
  {
    v94 = *(v7 + 104);
    v145 = (v91 + v92) / 7;
    v95 = swift_getObjectType();
    v139 = *(v94 + 344);
    swift_unknownObjectRetain();
    v96 = v95;
    v13 = v132;
    v97 = v139(v96, v94);
    swift_unknownObjectRelease();
    v93 = v145;
    v90 = v135;
    goto LABEL_129;
  }

LABEL_130:
  ++v93;
LABEL_131:
  if (v93)
  {
    v12 = v133;
    if (v5 >= v11)
    {
      v11 = v137;
      if (!v26 && (__ROR8__(0x8F5C28F5C28F5C29 * v5 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(v5 % 400)))
      {
        goto LABEL_144;
      }
    }

    else
    {
      v11 = v137;
      if (!v26)
      {
LABEL_144:
        v99 = 366;
LABEL_145:
        v144 = v93;
        if (v90 < v99 - 5)
        {
          v142 = v5;
LABEL_172:
          v26 = v136;
          v109 = weekday;
          goto LABEL_173;
        }

        v101 = v143 % 7;
        v102 = (v143 % 7 - v90 + v99) % 7;
        if (v102 >= 0)
        {
          v103 = (v143 % 7 - v90 + v99) % 7;
        }

        else
        {
          v103 = v102 + 7;
        }

        if (*(v7 + 152) == 1)
        {
          if (!*(v7 + 96))
          {
            if (v103 > 5)
            {
              goto LABEL_155;
            }

            goto LABEL_162;
          }

          v104 = *(v7 + 104);
          v105 = swift_getObjectType();
          v141 = *(v104 + 344);
          swift_unknownObjectRetain();
          v106 = v105;
          v13 = v132;
          v107 = v141(v106, v104);
          swift_unknownObjectRelease();
          v93 = v144;
          v90 = v135;
        }

        else
        {
          v107 = *(v7 + 144);
        }

        if (6 - v103 < v107)
        {
LABEL_155:
          v142 = v5;
          v12 = v133;
LABEL_171:
          v11 = v137;
          goto LABEL_172;
        }

LABEL_162:
        v110 = v90 + 7;
        v12 = v133;
        if (__OFADD__(v90, 7))
        {
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

        v36 = __OFSUB__(v110, v101);
        v111 = v110 - v101;
        if (v36)
        {
LABEL_238:
          __break(1u);
          goto LABEL_239;
        }

        v112 = v99 < v111;
        if (v99 >= v111)
        {
          v113 = v5;
        }

        else
        {
          v113 = v5 + 1;
        }

        if (v112)
        {
          v93 = 1;
        }

        v142 = v113;
        v144 = v93;
        goto LABEL_171;
      }
    }

    v99 = 365;
    goto LABEL_145;
  }

  v98 = v5 - 1;
  v12 = v133;
  if (__OFSUB__(v5, 1))
  {
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  v26 = v136;
  if (v98 >= v11)
  {
    v11 = v137;
    if ((v98 & 3) == 0 && (__ROR8__(0x8F5C28F5C28F5C29 * v98 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(v98 % 400)))
    {
      goto LABEL_158;
    }
  }

  else
  {
    v11 = v137;
    if ((v98 & 3) == 0)
    {
LABEL_158:
      v100 = 366;
      goto LABEL_159;
    }
  }

  v100 = 365;
LABEL_159:
  v142 = v5 - 1;
  if (__OFADD__(v90, v100))
  {
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v108 = _CalendarGregorian.weekNumber(desiredDay:dayOfPeriod:weekday:)(v90 + v100, v90 + v100, weekday);
  v109 = weekday;
  v144 = v108;
LABEL_173:
  v114 = _CalendarGregorian.weekNumber(desiredDay:dayOfPeriod:weekday:)(v26, v26, v109);
  if (__OFSUB__(v26, 1))
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v138 = (v26 - 1) / 7 + 1;
  v25 = v135;
  v140 = v114;
  if ((v9 & 0x4000) != 0)
  {
    goto LABEL_40;
  }

LABEL_17:
  v27 = 0;
  v7 = 0;
  if ((v9 & 0x8000) != 0)
  {
    goto LABEL_64;
  }

LABEL_18:
  v12 = 0;
  v11 = 0;
  while (1)
  {
    v60 = v5 & (v9 << 62 >> 63);
    if ((v9 & 2) == 0 || v5 > 0 || (v60 = 1 - v5, !__OFSUB__(1, v5)))
    {
      if ((v9 & 0x200) == 0)
      {
        v61 = 0;
LABEL_98:
        v155 = 1;
        if (v27)
        {
          *&v165 = v27;
          *(&v165 + 1) = v7;
          if (v12)
          {
            v150 = v12;
            v151 = v11;
            v74 = v25;
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(&v150);
            v25 = v74;
            v7 = *(&v165 + 1);
            v27 = v165;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v7 = 0;
          if (!v12)
          {
            v11 = 0;
          }
        }

        *a4 = v27;
        *(a4 + 8) = v7;
        *(a4 + 16) = v12;
        *(a4 + 24) = v11;
        *(a4 + 32) = (v5 > 0) & v9;
        LOBYTE(v165) = (v9 & 1) == 0;
        *(a4 + 40) = v165;
        *(a4 + 48) = v60;
        LOBYTE(v150) = (v9 & 2) == 0;
        *(a4 + 56) = v150;
        *(a4 + 64) = v147 & (v9 << 61 >> 63);
        LOBYTE(v148) = (v9 & 4) == 0;
        *(a4 + 72) = v148;
        *(a4 + 80) = v26 & (v9 << 60 >> 63);
        v164 = (v9 & 8) == 0;
        *(a4 + 88) = v164;
        *(a4 + 96) = v25 & (v9 << 45 >> 63);
        v163 = (v9 & 0x40000) == 0;
        *(a4 + 104) = v163;
        v162 = (v9 & 0x10) == 0;
        *(a4 + 112) = v20 & (v9 << 59 >> 63);
        *(a4 + 120) = (v9 & 0x10) == 0;
        *(a4 + 128) = v6 & (v9 << 58 >> 63);
        v161 = (v9 & 0x20) == 0;
        *(a4 + 136) = v161;
        *(a4 + 144) = v18 & (v9 << 57 >> 63);
        v160 = (v9 & 0x40) == 0;
        *(a4 + 152) = v160;
        *(a4 + 160) = v15 & (v9 << 50 >> 63);
        v159 = (v9 & 0x2000) == 0;
        *(a4 + 168) = v159;
        *(a4 + 176) = weekday & (v9 >> 7);
        result = v138;
        v158 = (v9 & 0x80) == 0;
        *(a4 + 184) = v158;
        *(a4 + 192) = v138 & (v9 << 55 >> 63);
        v157 = (v9 & 0x100) == 0;
        *(a4 + 200) = v157;
        *(a4 + 208) = v61;
        v156 = (v9 & 0x200) == 0;
        *(a4 + 216) = v156;
        *(a4 + 232) = v155;
        *(a4 + 240) = v140 & (v9 << 53 >> 63);
        v154 = (v9 & 0x400) == 0;
        *(a4 + 248) = v154;
        *(a4 + 256) = v144 & (v9 << 52 >> 63);
        v153 = (v9 & 0x800) == 0;
        *(a4 + 264) = v153;
        *(a4 + 272) = v142 & (v9 << 51 >> 63);
        v152 = (v9 & 0x1000) == 0;
        *(a4 + 280) = v152;
        *(a4 + 281) = 2 * ((v9 & 0x10004) == 0);
        *(a4 + 282) = 2;
        *(a4 + 224) = 0;
        return result;
      }

      if (v134)
      {
        if (v25 >= 91)
        {
          if (v25 >= 0xB6)
          {
            if (v25 >= 0x112)
            {
              if (v25 >= 0x16F)
              {
                goto LABEL_241;
              }

LABEL_97:
              v61 = 4;
              goto LABEL_98;
            }

            goto LABEL_93;
          }

          goto LABEL_79;
        }
      }

      else if (v25 >= 90)
      {
        if (v25 >= 0xB5)
        {
          if (v25 >= 0x111)
          {
            if (v25 >= 0x16E)
            {
              goto LABEL_241;
            }

            goto LABEL_97;
          }

LABEL_93:
          v61 = 3;
          goto LABEL_98;
        }

LABEL_79:
        v61 = 2;
        goto LABEL_98;
      }

      v61 = 1;
      goto LABEL_98;
    }

    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    v128 = v24;
    v129 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
    v115 = static _DictionaryStorage.copy(original:)();
    v54 = v115;
    if (*(v11 + 16))
    {
      break;
    }

LABEL_214:

    v11 = v137;
    v24 = v128;
    if (v129)
    {
LABEL_58:
      v58 = (*(v54 + 56) + 16 * v24);
      *v58 = v13;
      v58[1] = v7;
      swift_unknownObjectRelease();
    }

    else
    {
LABEL_61:
      specialized _NativeDictionary._insert(at:key:value:)(v24, v12, v13, v54, v132, v7);
    }

    v12 = v133;
    *(v26 + 16) = v54;
    v27 = v13;
LABEL_63:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v26 + 24));
    swift_unknownObjectRelease();
    v25 = v135;
    v26 = v136;
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

LABEL_64:
    v59 = v25;
    swift_unknownObjectRetain();
    v25 = v59;
  }

  v116 = (v115 + 64);
  __src = (v11 + 64);
  v117 = ((1 << *(v54 + 32)) + 63) >> 6;
  if (v54 != v11 || v116 >= &__src[8 * v117])
  {
    memmove(v116, __src, 8 * v117);
  }

  v118 = 0;
  *(v54 + 16) = *(v11 + 16);
  v119 = 1 << *(v11 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v127 = (v119 + 63) >> 6;
  v121 = v120 & *(v11 + 64);
  if (v121)
  {
    do
    {
      v122 = __clz(__rbit64(v121));
      v131 = (v121 - 1) & v121;
LABEL_212:
      v125 = v122 | (v118 << 6);
      v126 = *(*(v11 + 56) + 16 * v125);
      *(*(v54 + 48) + v125) = *(*(v11 + 48) + v125);
      *(*(v54 + 56) + 16 * v125) = v126;
      swift_unknownObjectRetain();
      v121 = v131;
    }

    while (v131);
  }

  v123 = v118;
  while (1)
  {
    v118 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v118 >= v127)
    {
      goto LABEL_214;
    }

    v124 = *&__src[8 * v118];
    ++v123;
    if (v124)
    {
      v122 = __clz(__rbit64(v124));
      v131 = (v124 - 1) & v124;
      goto LABEL_212;
    }
  }

LABEL_239:
  __break(1u);
LABEL_240:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_241:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for _CalendarProtocol.dateComponents(_:from:) in conformance _CalendarGregorian@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v9 = *a1;
  v8 = v5;
  v7 = *(v3 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(&v9, &v8, &v7, a3);

  return swift_unknownObjectRelease();
}

uint64_t specialized Collection<>.firstIndex(of:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  v5 = qword_18123FED0[a1];
  while (qword_18123FED0[*(v4 + v3)] != v5)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if (v6)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v3;
}

uint64_t closure #1 in _LocaleICU.minimumDaysInFirstWeek.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v27 = *MEMORY[0x1E69E9840];
  if (*(result + 272) == 1)
  {
    v6 = *(a2 + 136);
    v7 = *(a2 + 168);
    v25[6] = *(a2 + 152);
    v26[0] = v7;
    *(v26 + 12) = *(a2 + 180);
    v8 = *(a2 + 72);
    v9 = *(a2 + 104);
    v25[2] = *(a2 + 88);
    v25[3] = v9;
    v25[4] = *(a2 + 120);
    v25[5] = v6;
    v25[0] = *(a2 + 56);
    v25[1] = v8;
    if (_s10Foundation17LocalePreferencesVSgWOg(v25) != 1 && (v10 = *(a2 + 48), v11 = *(a2 + 136), v12 = *(a2 + 168), v23 = *(a2 + 152), v24[0] = v12, *(v24 + 12) = *(a2 + 180), v13 = *(a2 + 72), v14 = *(a2 + 104), v19[2] = *(a2 + 88), v20 = v14, v21 = *(a2 + 120), v22 = v11, v19[0] = *(a2 + 56), v19[1] = v13, _s10Foundation17LocalePreferencesVSgWOg(v19) != 1) && (v15 = *(&v20 + 1)) != 0 && *(*(&v20 + 1) + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v16 & 1) != 0))
    {
      v17 = *(*(v15 + 56) + 8 * result);
      *(v3 + 264) = v17;
      *(v3 + 272) = 0;
      *a3 = v17;
    }

    else
    {
      LODWORD(v19[0]) = 0;
      String.utf8CString.getter();
      ucal_open();

      if (SLODWORD(v19[0]) <= 0)
      {
        Attribute = ucal_getAttribute();
      }

      else
      {
        Attribute = 1;
      }

      *(v3 + 264) = Attribute;
      *(v3 + 272) = 0;
      *a3 = Attribute;
      return ucal_close();
    }
  }

  else
  {
    *a3 = *(result + 264);
  }

  return result;
}

uint64_t ____mainNSThread_block_invoke()
{
  v0 = objc_opt_new();
  atomic_store(0xEu, (*(v0 + 8) + 63));
  result = pthread_main_thread_np();
  *(*(v0 + 8) + 144) = result;
  qword_1ED43F448 = v0;
  return result;
}

uint64_t ___foundation_swift_process_info_enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    result = getenv("NSSwiftProcessInfo");
    v1 = result != 0;
  }

  byte_1ED43F9F1 = v1;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.minimumDaysInFirstWeek.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.minimumDaysInFirstWeek.getter(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t _NSSwiftCalendar.getHour(_:minute:second:nanosecond:from:)(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = *(v5 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v11 + 32));
  v17 = *(v11 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 32));
  v20 = v17;
  v19 = 8304;
  v18 = v10;
  Calendar._dateComponents(_:from:)(&v19, &v18, v21);
  swift_unknownObjectRelease();
  if (a1)
  {
    v12 = v22;
    if (v23)
    {
      v12 = 0;
    }

    *a1 = v12;
  }

  if (a2)
  {
    v13 = v24;
    if (v25)
    {
      v13 = 0;
    }

    *a2 = v13;
  }

  if (a3)
  {
    v14 = v26;
    if (v27)
    {
      v14 = 0;
    }

    *a3 = v14;
  }

  if (a4)
  {
    v15 = v28;
    if (v29)
    {
      v15 = 0;
    }

    *a4 = v15;
  }

  return outlined destroy of DateComponents(v21);
}

uint64_t specialized static _CalendarGregorian.yearMonthDayFromJulianDay(_:useJulianRef:)(uint64_t result, char a2)
{
  v2 = result + 1401;
  if (__OFADD__(result, 1401))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(274277, 4 * result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = __OFADD__(v2, 3 * ((4 * result + 274277) / 146097) / 4);
  v4 = v2 + 3 * ((4 * result + 274277) / 146097) / 4;
  if (v3)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = __OFSUB__(v4, 38);
  v2 = v4 - 38;
  if (!v3)
  {
LABEL_7:
    if ((v2 - 0x2000000000000000) >> 62 == 3)
    {
      v5 = (4 * v2) | 3;
      v6 = 5 * ((v5 % 1461 + (v5 % 1461 < 0 ? 0x5B5uLL : 0)) >> 2);
      if ((v6 + 2) < 0)
      {
        v7 = ~((-3 - v6) / 0x99);
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = (v6 + 2) / 0x99;
        if ((v2 & 0x8000000000000000) == 0)
        {
LABEL_10:
          v8 = v5 / 0x5B5uLL;
          return (13 - (v7 + 2) % 12) / 0xCu + v8 - 4716;
        }
      }

      v8 = ~((-4 - 4 * v2) / 0x5B5uLL);
      return (13 - (v7 + 2) % 12) / 0xCu + v8 - 4716;
    }

    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t _CalendarGregorian.firstWeekday.getter()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  if (!*(v0 + 96))
  {
    return 1;
  }

  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 328);
  swift_unknownObjectRetain();
  v3(&v6, ObjectType, v1);
  result = specialized Collection<>.firstIndex(of:)(v6, outlined read-only object #0 of one-time initialization function for weekdays);
  if (v5)
  {
    __break(1u);
    return result;
  }

  v0 = result;
  swift_unknownObjectRelease();
  result = v0 + 1;
  if (__OFADD__(v0, 1))
  {
    __break(1u);
    return *(v0 + 128);
  }

  return result;
}

Swift::Int __swiftcall _CalendarGregorian.weekNumber(desiredDay:dayOfPeriod:weekday:)(Swift::Int desiredDay, Swift::Int dayOfPeriod, Swift::Int weekday)
{
  result = _CalendarGregorian.firstWeekday.getter();
  v8 = weekday - result;
  if (__OFSUB__(weekday, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = __OFSUB__(v8, dayOfPeriod);
  v10 = v8 - dayOfPeriod;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v10, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = (v10 + 1) % 7;
  if (v11 >= 0)
  {
    v12 = (v10 + 1) % 7;
  }

  else
  {
    v12 = v11 + 7;
  }

  v13 = desiredDay + v12;
  if (__OFADD__(desiredDay, v12))
  {
    goto LABEL_19;
  }

  v9 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  result = v14 / 7;
  if (*(v3 + 152) != 1)
  {
    v19 = *(v3 + 144);
LABEL_13:
    if (7 - v12 < v19)
    {
      return result;
    }

    return ++result;
  }

  if (*(v3 + 96))
  {
    v15 = *(v3 + 104);
    v16 = v14 / 7;
    ObjectType = swift_getObjectType();
    v18 = *(v15 + 344);
    swift_unknownObjectRetain();
    v19 = v18(ObjectType, v15);
    swift_unknownObjectRelease();
    result = v16;
    goto LABEL_13;
  }

  return ++result;
}

void protocol witness for _LocaleProtocol.firstDayOfWeek.getter in conformance _LocaleICU(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  closure #1 in _LocaleICU.firstDayOfWeek.getterpartial apply(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 134);
}

uint64_t closure #1 in _LocaleICU.firstDayOfWeek.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(result + 200);
  if (v4 != 7)
  {
    *a3 = v4;
    return result;
  }

  v6 = result;
  v7._countAndFlagsBits = specialized static Locale.keywordValue(identifier:key:)();
  if (v7._object)
  {
    result = Locale.Weekday.init(rawValue:)(v7, v30);
    v8 = v30[0];
    if (LOBYTE(v30[0]) != 7)
    {
      *(v6 + 200) = v30[0];
      *a3 = v8;
      return result;
    }
  }

  v9 = *(a2 + 136);
  v10 = *(a2 + 168);
  v34 = *(a2 + 152);
  v35[0] = v10;
  *(v35 + 12) = *(a2 + 180);
  v11 = *(a2 + 72);
  v12 = *(a2 + 104);
  v30[2] = *(a2 + 88);
  v31 = v12;
  v32 = *(a2 + 120);
  v33 = v9;
  v30[0] = *(a2 + 56);
  v30[1] = v11;
  if (_s10Foundation17LocalePreferencesVSgWOg(v30) != 1)
  {
    if (v31)
    {
      v13 = *(a2 + 48);
      v14 = *(a2 + 136);
      v15 = *(a2 + 168);
      v28 = *(a2 + 152);
      v29[0] = v15;
      *(v29 + 12) = *(a2 + 180);
      v16 = *(a2 + 72);
      v17 = *(a2 + 104);
      v24[2] = *(a2 + 88);
      v25 = v17;
      v26 = *(a2 + 120);
      v27 = v14;
      v24[0] = *(a2 + 56);
      v24[1] = v16;
      if (_s10Foundation17LocalePreferencesVSgWOg(v24) != 1)
      {
        v18 = v25;
        if (v25)
        {
          if (*(v25 + 16))
          {
            result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
            if (v19)
            {
              v20 = *(*(v18 + 56) + 8 * result);
              if (v20 < 0xFFFFFFFF80000000)
              {
                __break(1u);
              }

              else if (v20 <= 0x7FFFFFFF)
              {
                if (v20 > 0 && v20 < 8)
                {
                  v23 = outlined read-only object #0 of one-time initialization function for weekdays[v20 + 31];
                  *(v6 + 200) = v23;
                  *a3 = v23;
                  return result;
                }

                goto LABEL_14;
              }

              __break(1u);
            }
          }
        }
      }
    }
  }

LABEL_14:
  LODWORD(v24[0]) = 0;
  String.utf8CString.getter();
  ucal_open();

  if (SLODWORD(v24[0]) <= 0 && (Attribute = ucal_getAttribute(), (Attribute - 8) >= 0xFFFFFFF9))
  {
    v22 = outlined read-only object #0 of one-time initialization function for weekdays[Attribute + 31];
    *(v6 + 200) = v22;
    *a3 = v22;
  }

  else
  {
    *(v6 + 200) = 0;
    *a3 = 0;
  }

  return ucal_close();
}

void static URL._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v5;
        v6 = a1;
        v7 = _BridgedNSSwiftURL.convertingFileReference()();
        v9 = v8;

LABEL_8:
        *a2 = v7;
        a2[1] = v9;
        return;
      }

      v14 = type metadata accessor for _BridgedURL();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
      v19.receiver = v15;
      v16 = a1;
      v13 = objc_msgSendSuper2(&v19, sel_init, v19.receiver, v14, v20.receiver, v20.super_class);
    }

    else
    {
      v10 = type metadata accessor for _BridgedURL();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
      v20.receiver = v11;
      v12 = a1;
      v13 = objc_msgSendSuper2(&v20, sel_init, v19.receiver, v19.super_class, v20.receiver, v10);
    }

    v17 = v13;
    v7 = _BridgedURL.convertingFileReference()();
    v9 = v18;

    goto LABEL_8;
  }

  __break(1u);
}

id _BridgedURL.convertingFileReference()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC10Foundation11_BridgedURL__url];
  if (![v3 isFileReferenceURL])
  {
    swift_unknownObjectRetain();
    return v1;
  }

  v4 = [v3 filePathURL];
  if (v4)
  {
    v5 = v4;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v7;
        v8 = v5;
        _BridgedNSSwiftURL.convertingFileReference()();
        v10 = v9;

LABEL_12:
        v17 = swift_getObjectType();
        v18 = (v10[54])(v17, v10);
        v19 = objc_allocWithZone(ObjectType);
        *&v19[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v18;
        v22.receiver = v19;
        v22.super_class = ObjectType;
        v20 = v18;
        v1 = objc_msgSendSuper2(&v22, sel_init);

        swift_unknownObjectRelease();
        return v1;
      }

      v15 = objc_allocWithZone(ObjectType);
      *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v5;
      v21.receiver = v15;
      v13 = v5;
      v14 = objc_msgSendSuper2(&v21, sel_init, v21.receiver, ObjectType);
    }

    else
    {
      v12 = objc_allocWithZone(ObjectType);
      *&v12[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v5;
      v23.receiver = v12;
      v23.super_class = ObjectType;
      v13 = v5;
      v14 = objc_msgSendSuper2(&v23, sel_init, v21.receiver, v21.super_class);
    }

    v16 = v14;
    _BridgedURL.convertingFileReference()();

    v10 = &protocol witness table for _BridgedURL;
    goto LABEL_12;
  }

  result = specialized _BridgedURL.__allocating_init(string:)(0xD00000000000002ALL, 0x8000000181486A80);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _MutableHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DataProtocol.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v52 = a5;
  v53 = a7;
  v48 = a3;
  v55 = a2;
  v58 = a1;
  v49 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v54 = AssociatedConformanceWitness;
  v8 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = &v40 - v10;
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v40 - v12;
  v14 = swift_checkMetadataState();
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - v15;
  v45 = v16;
  v46 = v8;
  v57 = swift_getAssociatedTypeWitness();
  v17 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v19 = &v40 - v18;
  v56 = swift_checkMetadataState();
  v51 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v21 = &v40 - v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for Range();
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v40 - v25;
  if (v58)
  {
    v42 = v24;
    v43 = v17;
    v27 = v23;
    dispatch thunk of RangeExpression.relative<A>(to:)();
    dispatch thunk of Collection.subscript.getter();
    v61 = 0;
    v48 = v27;
    v41 = v26;
    v28 = dispatch thunk of RandomAccessCollection.distance(from:to:)();
    v29 = v55 - v58;
    if (v28 < v55 - v58)
    {
      v29 = v28;
    }

    v60 = v29;
    v30 = *(v54 + 64);
    v50 = v21;
    v30(v56);
    dispatch thunk of Sequence.makeIterator()();
    v52 = swift_getAssociatedConformanceWitness();
    v53 = v19;
    dispatch thunk of IteratorProtocol.next()();
    v31 = v47;
    v32 = *(v47 + 48);
    v33 = v32(v13, 1, AssociatedTypeWitness);
    v34 = v59;
    if (v33 != 1)
    {
      v35 = *(v31 + 32);
      v36 = (v31 + 8);
      while (1)
      {
        v37 = v35(v34, v13, AssociatedTypeWitness);
        if (v60 < 1)
        {
          break;
        }

        MEMORY[0x1EEE9AC00](v37);
        v38 = v55;
        *(&v40 - 4) = v58;
        *(&v40 - 3) = v38;
        *(&v40 - 2) = &v61;
        *(&v40 - 1) = &v60;
        v39 = swift_getAssociatedConformanceWitness();
        (*(v39 + 8))(partial apply for closure #1 in DataProtocol.copyBytes<A>(to:from:), &v40 - 6, MEMORY[0x1E69E7CA8] + 8, AssociatedTypeWitness, v39);
        v34 = v59;
        (*v36)(v59, AssociatedTypeWitness);
        dispatch thunk of IteratorProtocol.next()();
        if (v32(v13, 1, AssociatedTypeWitness) == 1)
        {
          goto LABEL_10;
        }
      }

      (*v36)(v34, AssociatedTypeWitness);
    }

LABEL_10:
    (*(v43 + 8))(v53, v57);
    (*(v51 + 8))(v50, v56);
    (*(v42 + 8))(v41, v48);
  }

  else
  {
    __break(1u);
  }
}

unint64_t Data._Representation.subscript.getter(uint64_t a1, int64_t __n, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = a1;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(a3 + 16);
      if (v9 > a1)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v10 = *(a3 + 24);
      if (v10 < __n || v9 > __n || v10 < a1)
      {
        goto LABEL_56;
      }

      if (!a1)
      {
        if (!__n)
        {
          return 0;
        }

        if (__n <= 14)
        {
          if ((__n & 0x8000000000000000) == 0)
          {
            __dst = 0;
            v23 = __n;
            v22 = 0;
            v21 = 0;
            v14 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            if (!v14)
            {
              return 0;
            }

            v15 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v16 = __OFSUB__(v9, v15);
            v17 = v9 - v15;
            if (!v16)
            {
              memcpy(&__dst, (v14 + v17), __n);
              return __dst;
            }

LABEL_65:
            __break(1u);
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      if (a1 > 2147483646 || __n > 2147483646)
      {
        type metadata accessor for Data.RangeReference();
        v4 = swift_allocObject();
        *(v4 + 16) = v5;
        *(v4 + 24) = __n;

        return v4;
      }

      if (a1 < 0xFFFFFFFF80000000 || __n < 0xFFFFFFFF80000000)
      {
        goto LABEL_62;
      }

      if (__n < a1)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v13 = a1 | (__n << 32);
      goto LABEL_33;
    }

    if (__OFSUB__(__n, a1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (!(__n | a1))
    {
      return v4;
    }

    __break(1u);
LABEL_37:
    if (__n)
    {
      if (__n <= 14)
      {
        return specialized Data.InlineData.init(_:count:)(a3, a1, __n);
      }

LABEL_31:
      if (__n < v5)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v13 = v5 | (__n << 32);
LABEL_33:

      return v13;
    }

    return 0;
  }

  if (v6)
  {
    if (a3 >> 32 < __n || a3 > __n || a3 >> 32 < a1 || a3 > a1)
    {
      goto LABEL_55;
    }

    a1 = a4 & 0x3FFFFFFFFFFFFFFFLL;
    if (v5)
    {
      goto LABEL_31;
    }

    goto LABEL_37;
  }

  v7 = BYTE6(a4);
  if (BYTE6(a4) < __n)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (!a1)
  {
    if ((__n & 0x8000000000000000) == 0)
    {
      return v4;
    }

    goto LABEL_61;
  }

  __dst = a3;
  LOWORD(v21) = a4;
  BYTE2(v21) = BYTE2(a4);
  HIBYTE(v21) = BYTE3(a4);
  LOBYTE(v22) = BYTE4(a4);
  HIBYTE(v22) = BYTE5(a4);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)(&__dst, v7);
  if (v5 > 0x7FFFFFFF)
  {
    goto LABEL_58;
  }

  if (v5 < 0xFFFFFFFF80000000 || __n < 0xFFFFFFFF80000000)
  {
    goto LABEL_59;
  }

  if (__n < v5)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  return v5 | (__n << 32);
}

uint64_t Data._Representation.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      return Data.LargeSlice.withUnsafeBytes<A>(_:)(a1, a2, a3, a4 & 0x3FFFFFFFFFFFFFFFLL);
    }

    memset(v7, 0, 14);
    v5 = v7;
    return (a1)(v7, v5);
  }

  if (!v4)
  {
    v7[0] = a3;
    LOWORD(v7[1]) = a4;
    BYTE2(v7[1]) = BYTE2(a4);
    BYTE3(v7[1]) = BYTE3(a4);
    BYTE4(v7[1]) = BYTE4(a4);
    BYTE5(v7[1]) = BYTE5(a4);
    v5 = v7 + BYTE6(a4);
    return (a1)(v7, v5);
  }

  if (a3 >> 32 < a3)
  {
    __break(1u);
  }

  return __DataStorage.withUnsafeBytes<A>(in:apply:)(a3, a3 >> 32, a1);
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

char *closure #1 in DataProtocol.copyBytes<A>(to:from:)(char *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, size_t *a6)
{
  v6 = __src;
  v7 = *a5;
  if (a3)
  {
    if (a4 - a3 < v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (__src)
    {
      if (*a6 >= a2 - __src)
      {
        v8 = a2 - __src;
      }

      else
      {
        v8 = *a6;
      }

      __src = (v7 + a3);
      if (v7 + a3)
      {
        v9 = a6;
        v10 = a5;
        __src = memmove(__src, v6, v8);
        a5 = v10;
        a6 = v9;
        v7 = *v10;
      }

LABEL_14:
      v11 = 0;
      v12 = &v6[v8];
      v13 = __OFADD__(v7, v8);
      v7 += v8;
      if (v13)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_15:
      *a5 = v7;
      v14 = v12 - v6;
      if (v11)
      {
        v14 = 0;
      }

      v13 = __OFSUB__(*a6, v14);
      v15 = *a6 - v14;
      if (!v13)
      {
        *a6 = v15;
        return __src;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v7 <= 0)
  {
    if (__src)
    {
      if (*a6 >= a2 - __src)
      {
        v8 = a2 - __src;
      }

      else
      {
        v8 = *a6;
      }

      goto LABEL_14;
    }

LABEL_19:
    v12 = 0;
    v11 = 1;
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return __src;
}

unint64_t protocol witness for Collection.subscript.getter in conformance Data@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = Data._Representation.subscript.getter(*a1, a1[1], *v2, *(v2 + 8));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance Data@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of Data._Representation(v2, v3);
}

uint64_t URL.path.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 240))(ObjectType, v1);
}

id sub_1807C4F30()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithDouble_];
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t outlined init with copy of AnyHashable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyHashable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Array._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2, char *a3)
{

  [a1 copy];
  v6 = _bridgeCocoaArray<A>(_:)();
  swift_unknownObjectRelease();
  v7 = specialized _arrayConditionalCast<A, B>(_:)(v6, a3);

  *a2 = v7;
  return v7 != 0;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1, char *a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - v6;
  v8 = a2;
  v37 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = v27 - v13;
  v14 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v39 = MEMORY[0x1E69E7CC0];
  v16 = v15 & ~(v15 >> 63);
  v17 = type metadata accessor for ContiguousArray();
  ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
  v18 = v39;
  if (!v14)
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return v18;
    }

LABEL_7:
    v27[1] = v17;
    v28 = v5;
    v29 = v4;
    v30 = v19;
    v20 = 0;
    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1 & 0xC000000000000001;
    v32 = v11;
    v33 = (v37 + 56);
    v21 = (v37 + 32);
    v11 = v8;
    v31 = a1;
    while (1)
    {
      if (v35)
      {
        v22 = MEMORY[0x1865CC0E0](v20, a1);
        v4 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 >= *(v34 + 16))
        {
          goto LABEL_22;
        }

        v22 = swift_unknownObjectRetain();
        v4 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v15 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v38 = v22;
      if ((swift_dynamicCast() & 1) == 0)
      {

        (*v33)(v7, 1, 1, v11);
        v28[1](v7, v29);
        return 0;
      }

      (*v33)(v7, 0, 1, v11);
      v5 = *v21;
      v23 = v36;
      v14 = v7;
      (*v21)(v36, v7, v11);
      v8 = v32;
      v5(v32, v23, v11);
      v39 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
        v18 = v39;
      }

      *(v18 + 16) = v25 + 1;
      v5((v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25), v8, v11);
      ++v20;
      a1 = v31;
      if (v4 == v30)
      {
        return v18;
      }
    }
  }

  v19 = __CocoaSet.count.getter();
  if (v19)
  {
    goto LABEL_7;
  }

  return v18;
}

uint64_t specialized static Double._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 doubleValue];
  if ((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    specialized Double.init(exactly:)(a1);
    v7 = v6;
    v9 = v8 ^ 1;
  }

  else
  {
    [a1 doubleValue];
    v8 = 0;
    v9 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8 & 1;
  return v9 & 1;
}

double specialized Double.init(exactly:)(void *a1)
{
  v2 = *[a1 objCType];
  if (v2 == 113)
  {
    v3 = _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5([a1 longLongValue]);
    if ((v6 & 1) == 0)
    {
      return *&v3;
    }
  }

  else if (v2 == 81)
  {
    v3 = _sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5([a1 unsignedLongLongValue]);
    if ((v5 & 1) == 0)
    {
      return *&v3;
    }
  }

  else
  {
    [a1 doubleValue];
  }

  return result;
}

uint64_t closure #2 in static Set._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  outlined init with copy of Any(v12, v14);
  result = swift_dynamicCast();
  if (*(*a3 + 16) >= a3[1])
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v8, v11, a4);
    _NativeSet._unsafeInsertNew(_:)();
    return (*(v6 + 8))(v11, a4);
  }

  return result;
}

NSObject __swiftcall AnyHashable._bridgeToObjectiveC()()
{
  AnyHashable.base.getter();
  v0 = v8;
  v1 = __swift_project_boxed_opaque_existential_1(v7, v8);
  result.isa = _swift_isClassOrObjCExistentialType();
  if ((result.isa & 1) == 0)
  {
    v4 = MEMORY[0x1EEE9AC00](result.isa);
    (*(v6 + 16))(v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v0, v4);
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_4;
  }

  if (*(*(v0 - 8) + 64) == 8)
  {
    v3 = *v1;
    swift_unknownObjectRetain();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v3;
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AnyHashable(void *a1, uint64_t a2)
{
  outlined destroy of AnyHashable?(a2);
  v7[0] = a1;
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type NSObject and conformance NSObject();
  v4 = a1;
  AnyHashable.init<A>(_:)();
  outlined init with copy of AnyHashable?(a2, v7);
  v5 = v7[3] != 0;
  outlined destroy of AnyHashable?(v7);
  return v5;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)(a1, a2);
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Data(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Data(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  swift_unknownObjectRetain();
  v5(v7, a3);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized static __DataStorage.move(_:_:_:)(uint64_t result, unint64_t a2, int64_t a3)
{
  if (one-time initialization token for vmOpsThreshold != -1)
  {
    v8 = result;
    v9 = a2;
    v10 = a3;
    swift_once();
    result = v8;
    a2 = v9;
    a3 = v10;
  }

  if (static __DataStorage.vmOpsThreshold > a3)
  {
LABEL_8:
    if (a3 < 1)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (one-time initialization token for _pageSize != -1)
  {
    v11 = result;
    v12 = a2;
    v13 = a3;
    swift_once();
    result = v11;
    a2 = v12;
    a3 = v13;
  }

  v3 = _pageSize - 1;
  if (__OFSUB__(_pageSize, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v3 & (result | a2)) != 0)
  {
    goto LABEL_8;
  }

  if (!a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = a2;
  v6 = a3;
  v7 = a3 & ~v3;
  result = _platform_mach_task_self();
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  result = vm_copy(result, v5, v7, v4);
  if (result)
  {
    result = memmove(v4, v5, v7);
  }

  a3 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    goto LABEL_22;
  }

  a2 = &v5[v7];
  result = v4 + v7;
  if (a3 < 1)
  {
    return result;
  }

LABEL_9:
  if (!a2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return memmove(result, a2, a3);
}

void *__DataStorage.init(bytes:length:)(unint64_t a1, uint64_t a2)
{
  *(v3 + 16) = 0;
  v5 = (v3 + 16);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  if (a2 > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v2 = a2;
  *(v3 + 40) = 0;
  if (!a2)
  {
    *(v3 + 64) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *v5 = 0;
    return v3;
  }

  v4 = a1;
  if (one-time initialization token for vmOpsThreshold != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (static __DataStorage.vmOpsThreshold <= v2)
  {
    *(v3 + 24) = v2;
    *(v3 + 32) = v2;
    *(v3 + 64) = 1;
    v8 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v8 + 1);
    result = malloc_type_malloc(v2, v8 << 32);
    if (result)
    {
      *v5 = result;
      goto LABEL_10;
    }
  }

  else
  {
    *(v3 + 24) = v2;
    v7 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v7 + 1);
    result = malloc_type_malloc(v2, v7 << 32);
    if (result)
    {
      *(v3 + 16) = result;
      *(v3 + 32) = v2;
      *(v3 + 64) = 1;
LABEL_10:
      specialized static __DataStorage.move(_:_:_:)(result, v4, v2);
      return v3;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *Data._bridgeToObjectiveC()(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v7 = a1;
      v8 = a2;
      v9 = BYTE2(a2);
      v10 = BYTE3(a2);
      v11 = BYTE4(a2);
      v12 = BYTE5(a2);
      return [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v7 length:BYTE6(a2)];
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return __DataStorage.bridgedReference(_:)(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return __DataStorage.bridgedReference(_:)(v4, v5);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

  return [v6 init];
}

NSData __swiftcall Data._Representation.bridgedReference()()
{

  return Data._bridgeToObjectiveC()(v0, v1);
}

char *__DataStorage.bridgedReference(_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E695DEF0]);

    return [v3 init];
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for __NSSwiftData()) init];
    *&v7[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing] = v2;
    v8 = v7;

    v9 = &v8[OBJC_IVAR____TtC10Foundation13__NSSwiftData__range];
    *v9 = a1;
    *(v9 + 1) = a2;
    v9[16] = 0;

    return v8;
  }
}

NSData __swiftcall Data._bridgeToObjectiveC()()
{

  return Data._Representation.bridgedReference()();
}

uint64_t __NSSwiftData.bytes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (!v2)
    {
      return 47824;
    }

    v3 = *(v1 + 40);
    v4 = __OFSUB__(0, v3);
    v5 = -v3;
    if (!v4)
    {
      if ((*(v0 + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range + 16) & 1) == 0)
      {
        return v2 + v5 + *(v0 + OBJC_IVAR____TtC10Foundation13__NSSwiftData__range);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSObject and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSObject and conformance NSObject)
  {
    type metadata accessor for NSObject();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSObject and conformance NSObject);
  }

  return result;
}

uint64_t _NSDataCreateDispatchDataFromData(void *a1, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___NSDataCreateDispatchDataFromData_block_invoke;
  v4[3] = &unk_1E69F2C28;
  v5 = a2;
  v4[4] = a1;
  v4[5] = &v6;
  [a1 enumerateByteRangesUsingBlock:v4];
  v2 = v7[5];
  if (!v2)
  {
    v2 = MEMORY[0x1E69E9668];
    v7[5] = MEMORY[0x1E69E9668];
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1807C64B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_NSBPlistMappedData *__NSCreateBPlistMappedDataFromURL(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v10 = 0;
  v7 = [[_NSBPlistMappedData alloc] initWithFileURL:a1 error:&v10];
  if (v7)
  {
    v8 = (*(a2 + 16))(a2, v7);
    [(_NSBPlistMappedData *)v7 setMappingIndex:v8, v10, v11];
  }

  else if (a3)
  {
    *a3 = v10;
  }

  objc_autoreleasePoolPop(v6);
  return v7;
}

id _BridgedURL.relativePath.getter(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v3 = [v2 *a1];
  if (!v3)
  {
    goto LABEL_24;
  }

  v4 = v3;
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v6 = v4;
  v7 = v6;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          if (!__NSURLSupportDeprecatedParameterComponent())
          {
            return v9;
          }

          goto LABEL_26;
        }

        goto LABEL_8;
      }

      result = [v7 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_52;
      }

      v14 = String.init(utf8String:)(result);
      if (v15)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v32;
      goto LABEL_20;
    }

LABEL_16:
    v9 = v14;

LABEL_20:
LABEL_21:
    if (!__NSURLSupportDeprecatedParameterComponent())
    {
      return v9;
    }

    goto LABEL_26;
  }

LABEL_8:
  LOBYTE(v32) = 0;
  if (__CFStringIsCF())
  {
    v9 = 0;

    goto LABEL_25;
  }

  v10 = v7;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v9 = v11;

    goto LABEL_21;
  }

  if ([v10 length])
  {
    v9 = String.init(_cocoaString:)();

    if (!__NSURLSupportDeprecatedParameterComponent())
    {
      return v9;
    }

    goto LABEL_26;
  }

LABEL_24:
  v9 = 0;
LABEL_25:
  if (!__NSURLSupportDeprecatedParameterComponent())
  {
    return v9;
  }

LABEL_26:
  v17 = [v2 _parameterString];
  if (!v17)
  {
    return v9;
  }

  v18 = v17;
  v19 = _objc_isTaggedPointer(v17);
  v20 = v18;
  v21 = v20;
  if (!v19)
  {
LABEL_32:
    if (__CFStringIsCF())
    {

LABEL_36:
      v23 = 0;
      v25 = 0xE000000000000000;
      goto LABEL_49;
    }

    v26 = v21;
    v27 = String.init(_nativeStorage:)();
    if (v28)
    {
      v23 = v27;
      v25 = v28;

      goto LABEL_49;
    }

    if (![v26 length])
    {

      goto LABEL_36;
    }

    v23 = String.init(_cocoaString:)();
    v25 = v31;
LABEL_48:

    goto LABEL_49;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    goto LABEL_40;
  }

  if (v22 != 22)
  {
    if (v22 == 2)
    {
      MEMORY[0x1EEE9AC00](v22);
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;

LABEL_49:

      MEMORY[0x1865CB0E0](59, 0xE100000000000000);

      MEMORY[0x1865CB0E0](v23, v25);

      return v9;
    }

    goto LABEL_32;
  }

  result = [v21 UTF8String];
  if (result)
  {
    v29 = String.init(utf8String:)(result);
    if (v30)
    {
LABEL_41:
      v23 = v29;
      v25 = v30;

      goto LABEL_48;
    }

    __break(1u);
LABEL_40:
    _CFIndirectTaggedPointerStringGetContents();
    v29 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v30)
    {
      [v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v33;
      v25 = v34;
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t _NSAppendPathExtension(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  if (a5 + *a2 + 1 > a3)
  {
    return 0;
  }

  if (a5 >= 1 && *a4 == 47 || !_CFExtensionUniCharsIsValidToAppend())
  {
    return 0;
  }

  if (*a2 >= 2)
  {
    v10 = *a2 - 1;
    do
    {
      if (a1[v10] != 47)
      {
        break;
      }

      *a2 = v10;
      v11 = v10-- + 1;
    }

    while (v11 > 2);
  }

  v12 = _CFExecutableLinkedOnOrAfter();
  v13 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v13 == 2)
  {
    if (*a1 == 92 && a1[1] == 92)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v13 != 1 || ((v5 = 0, v14 = *a1, !v12) ? (v15 = v14 == 126) : (v15 = 0), !v15 ? (v16 = 0) : (v16 = 1), v14 != 47 && (v16 & 1) == 0))
  {
LABEL_24:
    if (v12 || (v17 = v13 - 1, v13 < 1) || *a1 != 126)
    {
LABEL_33:
      *a2 = v13 + 1;
      a1[v13] = 46;
      memmove(&a1[v13 + 1], a4, 2 * a5);
      *a2 += a5;
      return 1;
    }

    if (v13 >= 2)
    {
      v18 = a1 + 1;
      while (1)
      {
        v19 = *v18++;
        if (v19 == 47)
        {
          break;
        }

        v5 = 0;
        if (!--v17)
        {
          return v5;
        }
      }

      goto LABEL_33;
    }

    return 0;
  }

  return v5;
}

uint64_t specialized _NSSwiftProcessInfo.operatingSystemVersion.getter()
{
  v50[4] = *MEMORY[0x1E69E9840];
  String._bridgeToObjectiveCImpl()();
  v0 = _CFCopySystemVersionDictionaryValue();
  swift_unknownObjectRelease();
  if (!v0)
  {
    return -1;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

    return -1;
  }

  v2 = v1;
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v0;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v2);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v46 = v2;
        v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v8 = v7;

        goto LABEL_23;
      }

LABEL_8:
      LOBYTE(v47[0]) = 0;
      v50[0] = 0;
      LOBYTE(v48) = 0;
      v49 = 0;
      if (__CFStringIsCF())
      {

        v6 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        v10 = v4;
        v11 = String.init(_nativeStorage:)();
        if (v12)
        {
          v6 = v11;
          v8 = v12;
        }

        else
        {
          v50[0] = [v2 length];
          if (v50[0])
          {
            v6 = String.init(_cocoaString:)();
            v8 = v17;
          }

          else
          {

            v6 = 0;
            v8 = 0xE000000000000000;
          }
        }
      }

      goto LABEL_23;
    }

    v4 = v4;
    v13 = [v2 UTF8String];
    result = v2;
    if (!v13)
    {
      __break(1u);
      return result;
    }

    v15 = String.init(utf8String:)(v13);
    if (v16)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v48 = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v16)
  {
    [v2 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v6 = v47[0];
    v8 = v47[1];
    goto LABEL_21;
  }

LABEL_17:
  v6 = v15;
  v8 = v16;

LABEL_21:
LABEL_23:
  v50[0] = 46;
  v50[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  v46 = v50;
  v18 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v45, v6, v8, v47);
  v19 = v18;
  if (!v18[2])
  {
    goto LABEL_29;
  }

  v20 = v18[4];
  v21 = v18[5];
  if (!((v21 ^ v20) >> 14))
  {
    goto LABEL_29;
  }

  v23 = v18[6];
  v22 = v18[7];
  v24 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v18[4], v18[5], v23, v22, 10);
  if ((v25 & 0x100) != 0)
  {

    v26 = specialized _parseInteger<A, B>(ascii:radix:)(v20, v21, v23, v22, 10);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v25)
  {
LABEL_29:

    return -1;
  }

  v26 = v24;
LABEL_31:
  v29 = v19[2];
  if (v29 < 2)
  {
    goto LABEL_37;
  }

  v30 = v19[8];
  v31 = v19[9];
  if (!((v31 ^ v30) >> 14))
  {
    goto LABEL_37;
  }

  v33 = v19[10];
  v32 = v19[11];
  _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v19[8], v19[9], v33, v32, 10);
  if ((v34 & 0x100) != 0)
  {

    specialized _parseInteger<A, B>(ascii:radix:)(v30, v31, v33, v32, 10);
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_37:

    return v26;
  }

  if (v34)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (v29 == 2)
  {
    goto LABEL_39;
  }

  if (v19[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_39;
  }

  v37 = v19[12];
  v38 = v19[13];
  v40 = v19[14];
  v39 = v19[15];

  if (!((v38 ^ v37) >> 14))
  {
LABEL_39:

    return v26;
  }

  _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v37, v38, v40, v39, 10);
  if ((v41 & 0x100) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v37, v38, v40, v39, 10);
    v44 = v43;

    if (v44)
    {
      return v26;
    }

    return v26;
  }

  else
  {
    v42 = v41;

    if (v42)
    {
      return v26;
    }

    return v26;
  }
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(a1) & 1;
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    goto LABEL_95;
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
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
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
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
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

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

IMP __NSResolvedSelectorForName_block_invoke()
{
  v0 = objc_opt_class();
  ClassMethod = class_getClassMethod(v0, sel_resolveInstanceMethod_);
  qword_1ED43F7B8 = method_getImplementation(ClassMethod);
  v2 = objc_opt_class();
  qword_1ED43F7C8 = class_getMethodImplementation(v2, sel_forwardingTargetForSelector_);
  v3 = objc_opt_class();
  result = class_getMethodImplementation(v3, sel_forwardInvocation_);
  qword_1ED43F7C0 = result;
  return result;
}

SEL NSResolvedSelectorForName(void *a1, char *str)
{
  if (a1 && object_isClass(a1) && !class_isMetaClass(a1) && !sel_lookUpByName())
  {
    if (objc_opt_respondsToSelector())
    {
      if ([a1 _classShouldAlwaysRegisterSelectorNamed:str])
      {
        goto LABEL_5;
      }
    }

    else
    {
      if ([a1 isProxy])
      {
        goto LABEL_5;
      }

      if (_MergedGlobals_108 != -1)
      {
        dispatch_once(&_MergedGlobals_108, &__block_literal_global_3_0);
      }

      if (class_getMethodImplementation(a1, sel_forwardInvocation_) != qword_1ED43F7C0)
      {
        goto LABEL_5;
      }

      if (class_getMethodImplementation(a1, sel_forwardingTargetForSelector_) != qword_1ED43F7C8)
      {
        goto LABEL_5;
      }

      ClassMethod = class_getClassMethod(a1, sel_resolveInstanceMethod_);
      if (method_getImplementation(ClassMethod) != qword_1ED43F7B8)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:

  return sel_registerName(str);
}

Method NSKeyValueMethodForPattern(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v10[1] = *MEMORY[0x1E69E9840];
  va_copy(v10, va);
  v4 = vsnprintf(0, 0, __format, va);
  v5 = v4 + 1;
  if ((v4 + 1) < 0x81)
  {
    if (v4 == -1)
    {
      v6 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
    }
  }

  else
  {
    v6 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  }

  va_copy(v10, va);
  vsnprintf(v6, v5, __format, va);
  v7 = NSResolvedSelectorForName(a1, v6);
  if (v7)
  {
    InstanceMethod = class_getInstanceMethod(a1, v7);
    if (InstanceMethod && (!strcmp(v6, "dealloc") || !strcmp(v6, "release") || !strcmp(v6, "autorelease") || !strcmp(v6, "retain") || !strcmp(v6, "copy") || !strcmp(v6, "mutableCopy") || !strcmp(v6, "__dealloc_zombie") || !strcmp(v6, "__release_OA") || !strcmp(v6, "__autorelease_OA") || !strcmp(v6, "__retain_OA") || !strcmp(v6, "___tryRetain_OA") || !strcmp(v6, "retainWeakReference")))
    {
      InstanceMethod = 0;
      if (v5 <= 0x80)
      {
        return InstanceMethod;
      }

      goto LABEL_24;
    }
  }

  else
  {
    InstanceMethod = 0;
  }

  if (v5 >= 0x81)
  {
LABEL_24:
    free(v6);
  }

  return InstanceMethod;
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v8 = result;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LODWORD(v9) = 1;
  }

  v10 = 11;
  if (v9)
  {
    v10 = 7;
  }

  v11 = v10 | (v5 << 16);
  v12 = 4 << v9;
  v18 = a4 & 0xFFFFFFFFFFFFFFLL;
  v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((v11 & 0xC) != v12)
    {
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    if (result < 0x4000)
    {
      break;
    }

    v11 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_12:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_17;
    }

LABEL_15:
    if (v5 < v11 >> 16)
    {
      goto LABEL_35;
    }

    v11 = String.UTF8View._foreignIndex(before:)();
LABEL_17:
    result = v11;
    if ((v11 & 0xC) == v12)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a3, a4);
    }

    v13 = result >> 16;
    if (result >> 16 >= v5)
    {
      goto LABEL_34;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v17[0] = a3;
      v17[1] = v18;
      v15 = *(v17 + v13);
    }

    else
    {
      v14 = v16;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *(v14 + v13);
    }

    LOBYTE(v17[0]) = v15;
    result = v8(v17);
    if (v4 || (result & 1) != 0)
    {
      return v11;
    }

    if (v11 < 0x4000)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t String._lastPathComponent.getter(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_72:
    v5 = String.UTF8View._foreignCount()();
    if (v5 < 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 < 2)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v48[0]) = 47;
  MEMORY[0x1EEE9AC00](v5);
  v42[2] = v48;
  v6 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v42, v3, a2);
  if (v7)
  {
LABEL_7:

    return v3;
  }

  v9 = v6;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v3 & 0x800000000000000;
  v11 = 7;
  v12 = 11;
  if ((v3 & 0x800000000000000) != 0)
  {
    v12 = 7;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = v12;
  }

  v13 = v11 | (v4 << 16);
  v14 = v11 & 0xC;
  v15 = 8;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = 4 << (v10 >> 59);
  }

  if (v14 != v15)
  {
    if (v13 >= 0x4000)
    {
      goto LABEL_19;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v3, a2);
  if (v13 < 0x4000)
  {
    goto LABEL_75;
  }

LABEL_19:
  if ((a2 & 0x1000000000000000) == 0)
  {
    v16 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
    goto LABEL_23;
  }

  if (v4 < v13 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v16 = String.UTF8View._foreignIndex(before:)();
LABEL_23:
  if ((v16 ^ v9) >= 0x4000)
  {
    v30 = (a2 & 0x1000000000000000) == 0 || v10 != 0;
    if ((v9 & 0xC) != 4 << v30)
    {
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_58:
        v31 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_80;
      }

LABEL_78:
      if (v4 <= v9 >> 16)
      {
        __break(1u);
        goto LABEL_82;
      }

      v31 = String.UTF8View._foreignIndex(after:)();
LABEL_80:
      v41 = specialized Collection.suffix(from:)(v31, v3, a2);
LABEL_87:
      v3 = MEMORY[0x1865CAE80](v41);

      return v3;
    }

LABEL_77:
    v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v3, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

  v44 = v4;
  v45 = v3 & 0x800000000000000;
  result = String.subscript.getter();
  v9 = v17;
  v20 = v18;
  v4 = v19;
  v21 = result >> 14;
  v22 = (v18 >> 59) & 1;
  if ((v19 & 0x1000000000000000) == 0)
  {
    LOBYTE(v22) = 1;
  }

  v23 = 4 << v22;
  v24 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v43 = v24;
  v25 = v17 >> 14;
  v46 = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v47 = v19 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    if (v21 == v9 >> 14)
    {

      return 47;
    }

    if ((v9 & 0xC) == v23)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v20, v4);
      v9 = result;
      if (result < 0x4000)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else if (v9 < 0x4000)
    {
      goto LABEL_70;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      if (v43 < v9 >> 16)
      {
        goto LABEL_90;
      }

      v9 = String.UTF8View._foreignIndex(before:)();
    }

    else
    {
      v9 = (v9 & 0xFFFFFFFFFFFF0000) - 65532;
    }

    v26 = v9;
    if ((v9 & 0xC) == v23)
    {
      v26 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v20, v4);
    }

    if (v26 >> 14 < v21 || v26 >> 14 >= v25)
    {
      goto LABEL_71;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v27 = v26 >> 16;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v48[0] = v20;
        v48[1] = v47;
        result = *(v48 + v27);
      }

      else
      {
        v28 = v46;
        if ((v20 & 0x1000000000000000) == 0)
        {
          v28 = _StringObject.sharedUTF8.getter();
        }

        result = *(v28 + v27);
      }
    }
  }

  while (result == 47);

  v32 = String.subscript.getter();
  v4 = specialized BidirectionalCollection<>.lastIndex(of:)(0x2FuLL, v32, v33, v34, v35);
  v37 = v36;

  if (v37)
  {
    goto LABEL_86;
  }

  v39 = (a2 & 0x1000000000000000) == 0 || v45 != 0;
  if ((v4 & 0xC) != 4 << v39)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_69;
  }

LABEL_82:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(v4, v3, a2);
  v4 = result;
  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_69:
    v40 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_85;
  }

LABEL_83:
  if (v44 <= v4 >> 16)
  {
    goto LABEL_89;
  }

  result = String.UTF8View._foreignIndex(after:)();
  v40 = result;
LABEL_85:
  if (v9 >> 14 >= v40 >> 14)
  {
LABEL_86:
    String.index(after:)();
    v41 = String.subscript.getter();
    goto LABEL_87;
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

Protocol *__setProtocolMetadata_block_invoke()
{
  result = objc_getProtocol("NSObject");
  qword_1ED4402E0 = result;
  return result;
}

uint64_t ___initializeClasses_block_invoke()
{
  result = [xpc_get_class4NSXPC() superclass];
  _XPCObjectClass = result;
  return result;
}

uint64_t @objc static NSLocale._characterDirection(forLanguage:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, int *))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = static Locale.characterDirection(forLanguage:)(v5, v6, a4);

  return v7;
}

uint64_t static Locale.characterDirection(forLanguage:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, int *))
{
  v46 = *MEMORY[0x1E69E9840];
  memset(v45, 0, 96);
  outlined destroy of Locale.Language.Components(v45);
  LODWORD(v36) = 0;
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v4 = 0;
  v5 = 0;
  if (Language > 0)
  {
    v44[Language] = 0;
    v4 = MEMORY[0x1865CAEB0](v44);
    v5 = v6;
  }

  LODWORD(v36) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v8 = 0;
  v9 = 0;
  if (Script > 0)
  {
    v43[Script] = 0;
    v8 = MEMORY[0x1865CAEB0](v43);
    v9 = v10;
  }

  LODWORD(v36) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v12 = 0;
  v13 = 0;
  if (Country > 0)
  {
    v42[Country] = 0;
    v12 = MEMORY[0x1865CAEB0](v42);
    v13 = v14;
  }

  if (v5)
  {
    v15 = String.lowercased()();
    object = v15._object;
    countAndFlagsBits = v15._countAndFlagsBits;
  }

  else
  {
    v4 = 0;
    object = 0;
    countAndFlagsBits = 0;
  }

  if (v9)
  {
    *&v36 = v8;
    *(&v36 + 1) = v9;

    String.init<A>(_:)();
    v16 = String._capitalized()();
    v17 = v16._countAndFlagsBits;
    v18 = v16._object;

    if (v13)
    {
LABEL_15:
      v19 = String.uppercased()();
      v20 = v19._countAndFlagsBits;
      v21 = v19._object;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0;
    v17 = 0;
    v18 = 0;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v12 = 0;
  v20 = 0;
  v21 = 0;
LABEL_18:
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  outlined consume of Locale.LanguageCode?(0, 0);
  *&v36 = v4;
  *(&v36 + 1) = v5;
  *&v37 = countAndFlagsBits;
  *(&v37 + 1) = object;
  *&v38 = v8;
  *(&v38 + 1) = v9;
  *&v39 = v17;
  *(&v39 + 1) = v18;
  *&v40 = v12;
  *(&v40 + 1) = v13;
  *&v41 = v20;
  *(&v41 + 1) = v21;
  v29 = 0;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v35 = v41;
  v30 = v36;
  v31 = v37;
  Locale.Language.Components.identifier.getter();
  v22 = String.utf8CString.getter();

  v23 = a3(v22 + 32, &v29);

  v24 = 0;
  if (v29 <= 0)
  {
    v24 = specialized NSLocaleLanguageDirection.init(layoutType:)(v23);
  }

  outlined destroy of Locale.Language.Components(&v36);
  return v24;
}

uint64_t specialized NSLocaleLanguageDirection.init(layoutType:)(unsigned int a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *(result + 17);
  if (v3 == 2)
  {
    v4 = result;
    result = specialized setupPowerStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter();
    if (v5)
    {
      v6 = 0;
    }

    else if (result)
    {
      v6 = 1;
      *(v4 + 17) = 1;
    }

    else
    {
      v6 = 0;
      *(v4 + 17) = 0;
    }
  }

  else
  {
    v6 = v3 & 1;
  }

  *a2 = v6;
  return result;
}

uint64_t one-time initialization function for _globalState()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA19_NSSwiftProcessInfoC06GlobalC0V_GMd);
  result = swift_allocObject();
  *(result + 44) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 28) = 0;
  *(result + 32) = 513;
  *(result + 36) = 0;
  *(result + 40) = 1;
  static _NSSwiftProcessInfo._globalState = result;
  return result;
}

id __NSDispatchQueueGetGenericMatchingMain()
{
  v0 = qos_class_main();
  v1 = dispatch_get_global_queue(v0, 2uLL);

  return v1;
}

uint64_t specialized setupPowerStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v0 = __NSDispatchQueueGetGenericMatchingMain();
  v5[4] = specialized closure #1 in setupPowerStateNotificationAndFetchState #1 @Sendable () in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v5[3] = &block_descriptor_8;
  v1 = _Block_copy(v5);

  v2 = String.utf8CString.getter();
  v3 = notify_register_dispatch((v2 + 32), &out_token, v0, v1);

  _Block_release(v1);

  if (v3)
  {
    return 0;
  }

  v5[0] = 0;
  if (notify_get_state(out_token, v5))
  {
    return 0;
  }

  else
  {
    return v5[0];
  }
}

uint64_t _NSOpenFileDescriptor_Protected(char *a1, int a2, int a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = (a3 & 0xF0000000) - 0x10000000;
  if (v7 >> 28 < 5)
  {
    v8 = open_dprotected_np(a1, a2, *(&unk_1813F7BE8 + (v7 >> 26)), 0, a4);
    v9 = *__error();
    if (v8 != -1 || v9 != 45)
    {
      *__error() = v9;
      return v8;
    }

    memset(&v11, 0, 512);
    if (!statfs(a1, &v11) && (v11.f_flags & 0x80) != 0)
    {
      *__error() = 45;
      return 0xFFFFFFFFLL;
    }

    *__error() = 45;
  }

  return open(a1, a2, a4);
}

id write(buffer:toFileDescriptor:path:parentProgress:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, id a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a2;
  v160 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  v10 = *(a4 + 8);
  v12 = *(a4 + 16);
  v13 = a2 - a1;
  if (a1)
  {
    v14 = a2 - a1;
  }

  else
  {
    v14 = 0;
  }

  if (a5)
  {
    [a5 becomeCurrentWithPendingUnitCount_];
  }

  if (v14 < 1)
  {
LABEL_58:
    if (!a1 || v8 == a1 || (fsync(a3) & 0x80000000) == 0)
    {
      return [v7 resignCurrent];
    }

    v39 = MEMORY[0x1865CA7A0]();
    LODWORD(v40) = v39;
    v149 = v7;
    if (v12)
    {
      if (v39 > 27)
      {
        if (v39 <= 62)
        {
          if (v39 != 28)
          {
            if (v39 == 30)
            {
              v37 = 642;
              goto LABEL_189;
            }

            goto LABEL_188;
          }
        }

        else
        {
          if (v39 == 63)
          {
            v37 = 514;
            goto LABEL_189;
          }

          if (v39 != 69)
          {
            if (v39 == 102)
            {
              swift_unknownObjectRetain();
              v36 = 0;
              v37 = 512;
LABEL_194:
              ObjectType = swift_getObjectType();
              v10[30](ObjectType, v10);
              v64 = String._bridgeToObjectiveCImpl()();

              v65 = (v10[54])(ObjectType, v10);
              outlined consume of PathOrURL(v11, v10, 1);
              if (v36)
              {
                v158 = v36;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v36 = v36;
                v95 = _getErrorEmbeddedNSError<A>(_:)();

                if (v95)
                {
LABEL_196:

LABEL_199:
                  v67 = _swift_stdlib_bridgeErrorToNSError();
                  goto LABEL_200;
                }

LABEL_198:
                swift_allocError();
                *v96 = v36;
                goto LABEL_199;
              }

              v67 = 0;
              goto LABEL_200;
            }

LABEL_188:
            v37 = 512;
LABEL_189:
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v86 = POSIXErrorCode.rawValue.getter();
              v87 = objc_allocWithZone(NSError);
              v18 = String._bridgeToObjectiveCImpl()();

              v36 = [v87 initWithDomain:v18 code:v86 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v88 = [v36 domain];
              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)(v88);
              v91 = v90;

              if (v89 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v91 == v92)
              {

                goto LABEL_194;
              }

              v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v93)
              {
                goto LABEL_194;
              }

              goto LABEL_278;
            }

LABEL_286:
            _StringGuts.grow(_:)(22);

            v143 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v143);

            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }

        v37 = 640;
        goto LABEL_189;
      }

      if (v39 > 12)
      {
        if (v39 != 13)
        {
          if (v39 == 17)
          {
            v37 = 516;
            goto LABEL_189;
          }

          goto LABEL_188;
        }
      }

      else if (v39 != 1)
      {
        if (v39 == 2)
        {
          v37 = 4;
          goto LABEL_189;
        }

        goto LABEL_188;
      }

      v37 = 513;
      goto LABEL_189;
    }

LABEL_101:
    if (v40 > 27)
    {
      if (v40 > 62)
      {
        if (v40 == 63)
        {
          v38 = 514;
          goto LABEL_202;
        }

        if (v40 != 69)
        {
          if (v40 == 102)
          {
            v36 = 0;
            v38 = 512;
LABEL_207:

            URL.init(_fileManagerFailableFileURLWithPath:)(v11, v10, &v158);
            outlined consume of PathOrURL(v11, v10, 0);
            v105 = v158;
            v106 = v159;
            v78 = String._bridgeToObjectiveCImpl()();
            if (v105)
            {
              v107 = swift_getObjectType();
              v80 = (*(v106 + 432))(v107, v106);
              swift_unknownObjectRelease();
              if (v36)
              {
                goto LABEL_209;
              }
            }

            else
            {
              v80 = 0;
              if (v36)
              {
LABEL_209:
                v156 = v36;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v36 = v36;
                v108 = _getErrorEmbeddedNSError<A>(_:)();

                if (v108)
                {
LABEL_210:

LABEL_214:
                  v82 = _swift_stdlib_bridgeErrorToNSError();
                  goto LABEL_215;
                }

LABEL_213:
                swift_allocError();
                *v109 = v36;
                goto LABEL_214;
              }
            }

            v82 = 0;
LABEL_215:
            [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
            swift_unknownObjectRelease();

            goto LABEL_216;
          }

          goto LABEL_201;
        }

        goto LABEL_178;
      }

      if (v40 == 28)
      {
LABEL_178:
        v38 = 640;
        goto LABEL_202;
      }

      if (v40 == 30)
      {
        v38 = 642;
        goto LABEL_202;
      }

LABEL_201:
      v38 = 512;
      goto LABEL_202;
    }

    if (v40 > 12)
    {
      if (v40 != 13)
      {
        if (v40 != 17)
        {
          goto LABEL_201;
        }

        v38 = 516;
        goto LABEL_202;
      }
    }

    else if (v40 != 1)
    {
      if (v40 != 2)
      {
        goto LABEL_201;
      }

      v38 = 4;
LABEL_202:
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_286;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v97 = POSIXErrorCode.rawValue.getter();
      v98 = objc_allocWithZone(NSError);
      v18 = String._bridgeToObjectiveCImpl()();

      v36 = [v98 initWithDomain:v18 code:v97 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v99 = [v36 domain];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)(v99);
      v102 = v101;

      if (v100 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v102 == v103)
      {
      }

      else
      {
        v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v104 & 1) == 0)
        {
LABEL_279:
          __break(1u);
LABEL_280:
          if (!v18)
          {
            __break(1u);
          }

LABEL_285:
          __break(1u);
          goto LABEL_286;
        }
      }

      goto LABEL_207;
    }

    v38 = 513;
    goto LABEL_202;
  }

  v149 = v7;
  v146 = v8;
  v147 = v11;
  v148 = v12;
  v151 = v14;
  if (a1)
  {
    if (!v7)
    {
      v145 = v10;
      v18 = 0;
      v21 = v13;
      v23 = v13;
      goto LABEL_19;
    }

    v15 = v5;
    v16 = v7;
    v17 = v13;
  }

  else
  {
    v15 = v5;
    v17 = 0;
    v18 = 0;
    v16 = v7;
    if (!v7)
    {
LABEL_53:
      v30 = 0;
      v24 = 0;
      v7 = v16;
LABEL_56:
      v12 = v148;

      v33 = v30 - v24;
      if (!__OFSUB__(v30, v24))
      {
        v8 = v146;
        v11 = v147;
        if (v33 == v151)
        {
          goto LABEL_58;
        }

LABEL_62:
        v35 = MEMORY[0x1865CA7A0]();
        if (v12)
        {
          if (v35 > 27)
          {
            if (v35 > 62)
            {
              if (v35 == 63)
              {
                v37 = 514;
                goto LABEL_140;
              }

              if (v35 != 69)
              {
                if (v35 == 102)
                {
                  swift_unknownObjectRetain();
                  v36 = 0;
                  v37 = 512;
LABEL_145:
                  v63 = swift_getObjectType();
                  v10[30](v63, v10);
                  v64 = String._bridgeToObjectiveCImpl()();

                  v65 = (v10[54])(v63, v10);
                  outlined consume of PathOrURL(v11, v10, 1);
                  if (v36)
                  {
                    v158 = v36;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v36 = v36;
                    v66 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v66)
                    {
                      goto LABEL_196;
                    }

                    goto LABEL_198;
                  }

                  v67 = 0;
LABEL_200:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

LABEL_216:
                  swift_willThrow();
LABEL_217:
                  v52 = v149;
                  return [v52 resignCurrent];
                }

                goto LABEL_139;
              }

              goto LABEL_125;
            }

            if (v35 == 28)
            {
LABEL_125:
              v37 = 640;
              goto LABEL_140;
            }

            if (v35 == 30)
            {
              v37 = 642;
              goto LABEL_140;
            }

LABEL_139:
            v37 = 512;
            goto LABEL_140;
          }

          if (v35 > 12)
          {
            if (v35 != 13)
            {
              if (v35 != 17)
              {
                goto LABEL_139;
              }

              v37 = 516;
              goto LABEL_140;
            }
          }

          else if (v35 != 1)
          {
            if (v35 != 2)
            {
              goto LABEL_139;
            }

            v37 = 4;
LABEL_140:
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
            {
              goto LABEL_286;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
            v55 = POSIXErrorCode.rawValue.getter();
            v56 = objc_allocWithZone(NSError);
            v18 = String._bridgeToObjectiveCImpl()();

            v36 = [v56 initWithDomain:v18 code:v55 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v57 = [v36 domain];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)(v57);
            v60 = v59;

            if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v60 == v61)
            {

              goto LABEL_145;
            }

            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v62)
            {
              goto LABEL_145;
            }

            goto LABEL_275;
          }

          v37 = 513;
          goto LABEL_140;
        }

        if (v35 > 27)
        {
          if (v35 <= 62)
          {
            if (v35 != 28)
            {
              if (v35 == 30)
              {
                v38 = 642;
                goto LABEL_151;
              }

              goto LABEL_150;
            }
          }

          else
          {
            if (v35 == 63)
            {
              v38 = 514;
              goto LABEL_151;
            }

            if (v35 != 69)
            {
              if (v35 == 102)
              {
                v36 = 0;
                v38 = 512;
                goto LABEL_156;
              }

LABEL_150:
              v38 = 512;
LABEL_151:
              if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
              {
                goto LABEL_286;
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v68 = POSIXErrorCode.rawValue.getter();
              v69 = objc_allocWithZone(NSError);
              v18 = String._bridgeToObjectiveCImpl()();

              v36 = [v69 initWithDomain:v18 code:v68 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v70 = [v36 domain];
              v71 = static String._unconditionallyBridgeFromObjectiveC(_:)(v70);
              v73 = v72;

              if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v73 == v74)
              {
              }

              else
              {
                v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v75 & 1) == 0)
                {
                  goto LABEL_276;
                }
              }

LABEL_156:

              URL.init(_fileManagerFailableFileURLWithPath:)(v11, v10, &v158);
              outlined consume of PathOrURL(v11, v10, 0);
              v76 = v158;
              v77 = v159;
              v78 = String._bridgeToObjectiveCImpl()();
              if (v76)
              {
                v79 = swift_getObjectType();
                v80 = (*(v77 + 432))(v79, v77);
                swift_unknownObjectRelease();
                if (v36)
                {
                  goto LABEL_158;
                }
              }

              else
              {
                v80 = 0;
                if (v36)
                {
LABEL_158:
                  v155 = v36;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v36 = v36;
                  v81 = _getErrorEmbeddedNSError<A>(_:)();

                  if (v81)
                  {
                    goto LABEL_210;
                  }

                  goto LABEL_213;
                }
              }

              v82 = 0;
              goto LABEL_215;
            }
          }

          v38 = 640;
          goto LABEL_151;
        }

        if (v35 > 12)
        {
          if (v35 != 13)
          {
            if (v35 == 17)
            {
              v38 = 516;
              goto LABEL_151;
            }

            goto LABEL_150;
          }
        }

        else if (v35 != 1)
        {
          if (v35 == 2)
          {
            v38 = 4;
            goto LABEL_151;
          }

          goto LABEL_150;
        }

        v38 = 513;
        goto LABEL_151;
      }

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
      goto LABEL_279;
    }
  }

  v145 = v10;
  v19 = objc_opt_self();
  v20 = [v19 currentProgress];
  if (v20)
  {

    if (v17 / 100 <= 4096)
    {
      v21 = 4096;
    }

    else
    {
      v21 = v17 / 100;
    }

    v22 = v19;
    v23 = v17;
    v18 = [v22 progressWithTotalUnitCount_];
  }

  else
  {
    v18 = 0;
    v23 = v17;
    v21 = v17;
  }

  v7 = v16;
  v6 = v15;
LABEL_19:
  if (v23 < 0)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  if (!v23)
  {
LABEL_52:
    v16 = v7;
    v10 = v145;
    goto LABEL_53;
  }

  v144 = v6;
  v24 = v23;
  v25 = 0;
  if (v21 >= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFFLL;
  }

  else
  {
    v26 = v21;
  }

  v150 = v24;
  v153 = v18;
  while (1)
  {
    if (v18 && [v18 isCancelled])
    {
      LODWORD(v24) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v41 = @"NSCocoaErrorDomain";
      v26 = v41;
      if (!v24)
      {
        goto LABEL_107;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v41);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_225;
          }

LABEL_107:
          LOBYTE(v154) = 0;
          v158 = 0;
          if (!__CFStringIsCF())
          {
            v53 = v26;
            String.init(_nativeStorage:)();
            if (v54 || (v158 = [v53 length]) == 0)
            {

              goto LABEL_225;
            }

            goto LABEL_224;
          }

LABEL_108:

          goto LABEL_225;
        }

        v83 = [v26 UTF8String];
        if (!v83)
        {
          __break(1u);
LABEL_283:
          __break(1u);
          goto LABEL_284;
        }

        String.init(utf8String:)(v83);
        if (v84)
        {
          goto LABEL_108;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v85)
      {
        [v26 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_225;
      }

      goto LABEL_108;
    }

    if (v24 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v24;
    }

    if (v21 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      v27 = 0xFFFFFFFF80000000;
    }

    v18 = (v25 + v27);
    if (__OFADD__(v25, v27))
    {
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);

LABEL_224:
      String.init(_cocoaString:)();
LABEL_225:
      v110 = objc_allocWithZone(NSError);
      v111 = String._bridgeToObjectiveCImpl()();

      v112 = [v110 initWithDomain:v111 code:3072 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v113 = [v112 domain];
      if (!v113)
      {
        v119 = 0;
        v121 = 0xE000000000000000;
LABEL_248:
        v129 = v26;
        v130 = v129;
        if (!v24)
        {
LABEL_253:
          v158 = 0;
          if (__CFStringIsCF())
          {

LABEL_257:
            v132 = 0;
            v134 = 0xE000000000000000;
            goto LABEL_267;
          }

          v135 = v130;
          v136 = String.init(_nativeStorage:)();
          if (v137)
          {
            v132 = v136;
            v134 = v137;

            goto LABEL_267;
          }

          v158 = [v135 length];
          if (!v158)
          {

            goto LABEL_257;
          }

          v132 = String.init(_cocoaString:)();
          v134 = v141;
LABEL_267:
          if (v119 == v132 && v121 == v134)
          {
          }

          else
          {
            v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v142 & 1) == 0)
            {
              goto LABEL_277;
            }
          }

          swift_willThrow();

          goto LABEL_217;
        }

        v131 = _objc_getTaggedPointerTag(v129);
        if (!v131)
        {
          goto LABEL_261;
        }

        if (v131 != 22)
        {
          if (v131 == 2)
          {
            MEMORY[0x1EEE9AC00](v131);
            v132 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v134 = v133;

            goto LABEL_267;
          }

          goto LABEL_253;
        }

        v138 = [v130 UTF8String];
        if (v138)
        {
          v139 = String.init(utf8String:)(v138);
          if (v140)
          {
            goto LABEL_262;
          }

          __break(1u);
LABEL_261:
          _CFIndirectTaggedPointerStringGetContents();
          v139 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v140)
          {
            [v130 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v132 = v154;
            v134 = v157;
            goto LABEL_267;
          }

LABEL_262:
          v132 = v139;
          v134 = v140;

          goto LABEL_267;
        }

        goto LABEL_283;
      }

      v114 = v113;
      isTaggedPointer = _objc_isTaggedPointer(v113);
      v116 = v114;
      v117 = v116;
      if ((isTaggedPointer & 1) == 0)
      {
LABEL_231:
        LOBYTE(v154) = 0;
        v158 = 0;
        if (__CFStringIsCF())
        {

LABEL_236:
          v119 = 0;
          v121 = 0xE000000000000000;
          goto LABEL_247;
        }

        v122 = v117;
        v123 = String.init(_nativeStorage:)();
        if (v124)
        {
          v119 = v123;
          v121 = v124;

          goto LABEL_247;
        }

        v158 = [v122 length];
        if (!v158)
        {

          goto LABEL_236;
        }

        v119 = String.init(_cocoaString:)();
        v121 = v128;
LABEL_246:

        goto LABEL_247;
      }

      v118 = _objc_getTaggedPointerTag(v116);
      if (v118)
      {
        if (v118 != 22)
        {
          if (v118 == 2)
          {
            MEMORY[0x1EEE9AC00](v118);
            v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v121 = v120;

LABEL_247:
            v18 = v153;
            goto LABEL_248;
          }

          goto LABEL_231;
        }

        v125 = [v117 UTF8String];
        if (!v125)
        {
LABEL_284:
          __break(1u);
          goto LABEL_285;
        }

        v126 = String.init(utf8String:)(v125);
        if (v127)
        {
LABEL_241:
          v119 = v126;
          v121 = v127;

          goto LABEL_246;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v126 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v127)
      {
        [v117 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v119 = v154;
        v121 = v157;
        goto LABEL_246;
      }

      goto LABEL_241;
    }

    if (v18 < v25)
    {
      goto LABEL_221;
    }

    if (v153 && [v153 isCancelled])
    {
      break;
    }

    if (v25 > v151)
    {
      goto LABEL_222;
    }

    if (!a1)
    {
      goto LABEL_280;
    }

    if (v13 < v18)
    {
      goto LABEL_223;
    }

    v28 = write(a3, (a1 + v25), v18 - v25);
    v18 = v153;
    if (v28 < 0xFFFFFFFF80000000)
    {
      goto LABEL_54;
    }

    v7 = 0x7FFFFFFFLL;
    if (v28 <= 0x7FFFFFFF)
    {
      if (v28 < 0)
      {
LABEL_54:
        v31 = MEMORY[0x1865CA7A0]();
        v32._countAndFlagsBits = 0x6574697277;
        v32._object = 0xE500000000000000;
        logFileIOErrno(_:at:)(v31, v32);
        MEMORY[0x1865CA7B0](v31);

        v10 = v145;
        v11 = v147;
        v12 = v148;
        goto LABEL_62;
      }

      if (!v28)
      {
        goto LABEL_25;
      }

      v7 = v28;
    }

    v24 = (v24 - v7) & ~((v24 - v7) >> 63);
    if (v153)
    {
      [v153 setCompletedUnitCount_];
    }

    if (v21 < 0xFFFFFFFF80000000 || v7 >= v26)
    {
      v29 = __OFADD__(v25, v7);
      v25 += v7;
      if (v29)
      {
        __break(1u);
        goto LABEL_273;
      }

      if (v13 < v25)
      {
        __break(1u);
        goto LABEL_52;
      }
    }

LABEL_25:
    if (v24 <= 0)
    {
      v7 = v149;
      v30 = v150;
      v10 = v145;
      goto LABEL_56;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  v43 = objc_allocWithZone(NSError);
  v44 = String._bridgeToObjectiveCImpl()();

  v10 = [v43 initWithDomain:v44 code:3072 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v45 = [v10 domain];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)(v45);
  v11 = v46;

  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v11 == v47)
  {

    v50 = v149;
    v51 = v153;
  }

  else
  {
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v50 = v149;
    v51 = v153;
    if ((v49 & 1) == 0)
    {
      __break(1u);
      goto LABEL_101;
    }
  }

  swift_willThrow();

  v52 = v50;
  return [v52 resignCurrent];
}

uint64_t @objc static NSData._writeData(toPath:data:options:reportProgress:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v11 = v10;
  v12 = a4;
  specialized static NSData._writeData(toPath:data:options:reportProgress:)(v9, v11, v12, a5, a6);

  return 1;
}

void specialized static NSData._writeData(toPath:data:options:reportProgress:)(uint64_t a1, unint64_t a2, __CFString *a3, uint64_t a4, char a5)
{
  v104[4] = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = [(__CFString *)a3 bytes];
  v12 = [(__CFString *)a3 length];
  if (([(__CFString *)a3 length]& 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    v14 = String.UTF8View._foreignCount()();
    goto LABEL_12;
  }

  v13 = [(__CFString *)a3 length];
  if (v12 < 0 || v13 < v12)
  {
    goto LABEL_135;
  }

  if (v11)
  {
    a3 = (v11 + v12);
  }

  else
  {
    a3 = 0;
  }

  if (a4)
  {
    MEMORY[0x1EEE9AC00](v13);
    v90[2] = a1;
    v90[3] = a2;
    v91 = 0;
    v92 = a4;
    LOBYTE(v93) = a5 & 1;
    v94 = v11;
    v95 = a3;
    v96 = MEMORY[0x1E69E7CC8];
    specialized String.withFileSystemRepresentation<A>(_:)(closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)partial apply, v90, a1, a2);
LABEL_133:
    objc_autoreleasePoolPop(v10);
    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_136;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  v15 = 3 * v14;
  if ((v14 * 3) >> 64 != (3 * v14) >> 63)
  {
    __break(1u);
LABEL_138:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v89 = swift_slowAlloc();

      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v89, v12, a1, a2, a4, a1, a2, 0, a5 & 1, v11, a3, MEMORY[0x1E69E7CC8]);
      MEMORY[0x1865D2690](v89, -1, -1);

      goto LABEL_133;
    }

    goto LABEL_15;
  }

  if (v15 < -1)
  {
    __break(1u);
    goto LABEL_141;
  }

  v12 = v15 + 1;

  if (v15 >= 1024)
  {
    goto LABEL_138;
  }

LABEL_15:
  v97[1] = v97;
  v98 = v10;
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v18 = v97 - v17;
  if (String._fileSystemRepresentation(into:)(v97 - v17, v12, a1, a2))
  {
    v19 = v99;
    closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(v18, a4, a1, a2, 0, a5 & 1, v11, a3, MEMORY[0x1E69E7CC8]);
    if (!v19)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v21 = @"NSCocoaErrorDomain";
  v22 = v21;
  if (!isTaggedPointer)
  {
    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_35:
      v102 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [(__CFString *)v22 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_52;
      }

      goto LABEL_49;
    case 0x16:
      v29 = [(__CFString *)v22 UTF8String];
      if (!v29)
      {

        __break(1u);
LABEL_143:

        __break(1u);
        goto LABEL_144;
      }

      String.init(utf8String:)(v29);
      if (v30)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_35;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v95 = v22;
      v24 = v99;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v99 = v24;

      goto LABEL_52;
  }

LABEL_24:
  LOBYTE(v100) = 0;
  v104[0] = 0;
  LOBYTE(v102) = 0;
  v103 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v27 = v22;
    String.init(_nativeStorage:)();
    if (v28 || (v104[0] = [(__CFString *)v27 length]) == 0)
    {

      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v26 = v104[0];
  if (!v104[0])
  {
LABEL_49:

    goto LABEL_52;
  }

  if (v103 != 1)
  {
    if (v102)
    {
      if (v100 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v93 = v22;
        v94 = v104;
        LODWORD(v95) = 1536;
        v96 = v26;
      }

      else
      {
        v32 = [(__CFString *)v22 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v32);
        v93 = v22;
        v94 = v104;
        LODWORD(v95) = 134217984;
        v96 = v33;
      }

      v34 = v99;
      v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v99 = v34;
      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        goto LABEL_49;
      }
    }

LABEL_51:
    String.init(_cocoaString:)();
    goto LABEL_52;
  }

  if (v100)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_52:
  v38 = objc_allocWithZone(NSError);
  v39 = String._bridgeToObjectiveCImpl()();

  v40 = [v38 initWithDomain:v39 code:514 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v41 = [v40 domain];
  if (!v41)
  {
    v49 = 0;
    v51 = 0xE000000000000000;
LABEL_92:
    v68 = v22;
    v69 = v68;
    if (!isTaggedPointer)
    {
      goto LABEL_97;
    }

    v70 = _objc_getTaggedPointerTag(v68);
    if (!v70)
    {
      goto LABEL_108;
    }

    if (v70 != 22)
    {
      if (v70 == 2)
      {
        MEMORY[0x1EEE9AC00](v70);
        v95 = v69;
        v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v73 = v72;

        goto LABEL_126;
      }

LABEL_97:
      LOBYTE(v100) = 0;
      v104[0] = 0;
      LOBYTE(v102) = 0;
      v103 = 0;
      v74 = __CFStringIsCF();
      if (v74)
      {
        v71 = v104[0];
        if (!v104[0])
        {

          v73 = 0xE000000000000000;
          goto LABEL_126;
        }

        if (v103 == 1)
        {
          if (v100)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v81 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_125;
        }

        if (v102)
        {
          if (v100 == 1)
          {
            MEMORY[0x1EEE9AC00](v74);
            v93 = v69;
            v94 = v104;
            LODWORD(v95) = 1536;
            v96 = v71;
          }

          else
          {
            v83 = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v83);
            v93 = v69;
            v94 = v104;
            LODWORD(v95) = 134217984;
            v96 = v84;
          }

          v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v73 = v86;
          v87 = HIBYTE(v86) & 0xF;
          if ((v86 & 0x2000000000000000) == 0)
          {
            v87 = v85 & 0xFFFFFFFFFFFFLL;
          }

          if (v87)
          {
            v71 = v85;

            goto LABEL_126;
          }
        }
      }

      else
      {
        v75 = v69;
        v76 = String.init(_nativeStorage:)();
        if (v77)
        {
          v71 = v76;
          v73 = v77;

          goto LABEL_126;
        }

        v104[0] = [(__CFString *)v75 length];
        if (!v104[0])
        {

          v71 = 0;
          v73 = 0xE000000000000000;
          goto LABEL_126;
        }
      }

      v81 = String.init(_cocoaString:)();
LABEL_125:
      v71 = v81;
      v73 = v82;
LABEL_126:
      if (v49 == v71 && v51 == v73)
      {

LABEL_130:
        swift_willThrow();
LABEL_131:
        swift_willThrow();
LABEL_132:

        v10 = v98;
        goto LABEL_133;
      }

      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v88)
      {
        goto LABEL_130;
      }

LABEL_141:
      __break(1u);
    }

    v78 = [(__CFString *)v69 UTF8String];
    if (v78)
    {
      v79 = String.init(utf8String:)(v78);
      if (v80)
      {
        goto LABEL_109;
      }

      __break(1u);
LABEL_108:
      v102 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v80)
      {
        [(__CFString *)v69 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v71 = v100;
        v73 = v101;
        goto LABEL_126;
      }

LABEL_109:
      v71 = v79;
      v73 = v80;

      goto LABEL_126;
    }

    goto LABEL_143;
  }

  v42 = isTaggedPointer;
  v43 = v41;
  v44 = _objc_isTaggedPointer(v41);
  v45 = v43;
  v46 = v45;
  if ((v44 & 1) == 0)
  {
    goto LABEL_58;
  }

  v47 = _objc_getTaggedPointerTag(v45);
  if (!v47)
  {
    goto LABEL_71;
  }

  if (v47 != 22)
  {
    if (v47 == 2)
    {
      MEMORY[0x1EEE9AC00](v47);
      v95 = v46;
      v48 = v99;
      v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v51 = v50;
      v99 = v48;

LABEL_91:
      isTaggedPointer = v42;
      goto LABEL_92;
    }

LABEL_58:
    LOBYTE(v100) = 0;
    v104[0] = 0;
    LOBYTE(v102) = 0;
    v103 = 0;
    v52 = __CFStringIsCF();
    if (v52)
    {
      v53 = v104[0];
      if (v104[0])
      {
        if (v103 == 1)
        {
          if (v100)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v60 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_89;
        }

        if (v102)
        {
          if (v100 == 1)
          {
            MEMORY[0x1EEE9AC00](v52);
            v93 = v46;
            v94 = v104;
            LODWORD(v95) = 1536;
            v96 = v53;
          }

          else
          {
            v62 = [(__CFString *)v46 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v62);
            v93 = v46;
            v94 = v104;
            LODWORD(v95) = 134217984;
            v96 = v63;
          }

          v64 = v99;
          v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v51 = v66;
          v99 = v64;
          v67 = HIBYTE(v66) & 0xF;
          if ((v66 & 0x2000000000000000) == 0)
          {
            v67 = v65 & 0xFFFFFFFFFFFFLL;
          }

          if (v67)
          {
            v49 = v65;
            goto LABEL_73;
          }
        }

LABEL_88:
        v60 = String.init(_cocoaString:)();
LABEL_89:
        v49 = v60;
        v51 = v61;
        goto LABEL_90;
      }
    }

    else
    {
      v54 = v46;
      v55 = String.init(_nativeStorage:)();
      if (v56)
      {
        v49 = v55;
        v51 = v56;

        goto LABEL_91;
      }

      v104[0] = [(__CFString *)v54 length];
      if (v104[0])
      {
        goto LABEL_88;
      }
    }

    v49 = 0;
    v51 = 0xE000000000000000;
    goto LABEL_91;
  }

  v57 = [(__CFString *)v46 UTF8String];
  if (v57)
  {
    v58 = String.init(utf8String:)(v57);
    if (v59)
    {
LABEL_72:
      v49 = v58;
      v51 = v59;
LABEL_73:

LABEL_90:
      goto LABEL_91;
    }

    __break(1u);
LABEL_71:
    v102 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v58 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v59)
    {
      [(__CFString *)v46 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v49 = v100;
      v51 = v101;
      goto LABEL_90;
    }

    goto LABEL_72;
  }

LABEL_144:

  __break(1u);
}

uint64_t specialized _SwiftURL.__allocating_init(fileURLWithPath:isDirectory:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = a2;
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = a1;
  }

  else
  {

    v4 = 0xE100000000000000;
    v6 = 46;
  }

  v7 = (a3 & 1) == 0;

  v8 = specialized String.withFileSystemRepresentation<A>(_:)(v6, v4, v6, v4);
  v10 = v9;
  swift_bridgeObjectRelease_n();
  v14[0] = v7;
  type metadata accessor for _SwiftURL();
  v13[0] = 0;
  v13[1] = 0;
  v11 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v8, v10, 0, v14, v13);
  return v11;
}

uint64_t partial apply for closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(const char *a1)
{
  return closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

{
  return partial apply for closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(a1);
}

uint64_t writeExtendedAttributes(fd:attributes:)(int a1, uint64_t a2)
{
  v2 = a2;
  value[2] = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v10 = 0;
  v29 = v2;
  while (v6)
  {
    v12 = v10;
LABEL_11:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = (*(v2 + 56) + ((v12 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(value, 0, 14);
        v11 = String.utf8CString.getter();

        fsetxattr(a1, (v11 + 32), value, 0, 0, 0);
        goto LABEL_5;
      }

      v8 = *(v16 + 16);
      v9 = *(v16 + 24);
      v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v19)
      {
        goto LABEL_36;
      }

      v20 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v21 = __OFSUB__(v8, v20);
      v22 = v8 - v20;
      if (v21)
      {
        goto LABEL_33;
      }

      v21 = __OFSUB__(v9, v8);
      v23 = v9 - v8;
      if (v21)
      {
        goto LABEL_38;
      }

      v24 = (v22 + v19);
      if (!(v22 + v19))
      {
        goto LABEL_37;
      }

      if (*((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }
    }

    else
    {
      if (!v17)
      {
        value[0] = v16;
        LOWORD(value[1]) = v15;
        BYTE2(value[1]) = BYTE2(v15);
        BYTE3(value[1]) = BYTE3(v15);
        BYTE4(value[1]) = BYTE4(v15);
        BYTE5(value[1]) = BYTE5(v15);
        v18 = String.utf8CString.getter();

        fsetxattr(a1, (v18 + 32), value, BYTE6(v15), 0, 0);
        goto LABEL_5;
      }

      v8 = v16;
      if (v16 >> 32 < v16)
      {
        goto LABEL_32;
      }

      v9 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v9)
      {
        goto LABEL_35;
      }

      v26 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v8 = v16 - v26;
      if (__OFSUB__(v16, v26))
      {
        goto LABEL_34;
      }

      v24 = (v8 + v9);
      if (!(v8 + v9))
      {
        goto LABEL_35;
      }

      if (*((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= (v16 >> 32) - v16)
      {
        v25 = (v16 >> 32) - v16;
      }

      else
      {
        v25 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }
    }

    v27 = String.utf8CString.getter();

    outlined copy of Data._Representation(v16, v15);
    fsetxattr(a1, (v27 + 32), v24, v25, 0, 0);
    v2 = v29;
LABEL_5:

    outlined consume of Data._Representation(v16, v15);

    v10 = v12;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      if (!__OFSUB__(v9, v8))
      {
LABEL_37:
        __break(1u);
      }

LABEL_38:
      __break(1u);
    }

    if (v12 >= v7)
    {
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, std::error_code *a3@<X2>, __CFString *a4@<X3>, std::__fs::filesystem::path *a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t *a8@<X7>, std::__fs::filesystem::path *a9@<X8>, __int128 *a10, std::__fs::filesystem::path *a11, uint64_t a12, uint64_t a13, int *a14)
{
  v47 = a7;
  v48 = a3;
  cat = a2;
  v21 = a1;
  v49 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = v14;
    v16 = a8;
    v23 = String.UTF8View._foreignCount()();
    a8 = v16;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = 3 * v23;
  if ((v23 * 3) >> 64 != (3 * v23) >> 63)
  {
    __break(1u);
LABEL_30:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v36 = swift_slowAlloc();
      outlined copy of PathOrURL(a4, a5, a6 & 1);

      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v36, v16, v21, cat, v48, a4, a5, a6 & 1, a9, v47, v45, v44, v43, v15, v42, v41);
      MEMORY[0x1865D2690](v36, -1, -1);
      goto LABEL_27;
    }

    goto LABEL_8;
  }

  if (v24 < -1)
  {
    __break(1u);
LABEL_33:
    v27 = String.UTF8View._foreignCount()();
    goto LABEL_13;
  }

  v45 = a8;
  v46 = v14;
  v41 = a14;
  v42 = a13;
  v15 = a12;
  v16 = v24 + 1;
  v43 = a11;
  v44 = a10;
  outlined copy of PathOrURL(a4, a5, a6 & 1);

  if (v24 >= 1024)
  {
    goto LABEL_30;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  a9 = (&v38 - v26);
  if ((String._fileSystemRepresentation(into:)(&v38 - v26, v16, v21, cat) & 1) == 0)
  {
    v33 = v46;
    closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, v48, a4, a5, a6 & 1, v47, v45, v44, v43, v15, v42, v41);
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v21 = *&v48->__val_;
  cat = v48->__cat_;
  v40 = &v38;
  if ((cat & 0x1000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if ((cat & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(cat) & 0xF;
  }

  else
  {
    v27 = v21 & 0xFFFFFFFFFFFFLL;
  }

LABEL_13:
  v28 = 3 * v27;
  if ((v27 * 3) >> 64 == (3 * v27) >> 63)
  {
    if (v28 < -1)
    {
      __break(1u);
    }

    v16 = v28 + 1;
    outlined copy of PathOrURL(a4, a5, a6 & 1);

    outlined copy of PathOrURL(a4, a5, a6 & 1);

    if (v28 < 1024)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  v29 = swift_stdlib_isStackAllocationSafe();
  if ((v29 & 1) == 0)
  {
    v39 = swift_slowAlloc();
    outlined copy of PathOrURL(a4, a5, a6 & 1);

    v37 = v46;
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v39, v16, v21, cat, a9, v48, a4, a5, a6 & 1, v47, v45, v44, v43, v15, v42, v41);
    MEMORY[0x1865D2690](v39, -1, -1);
    outlined consume of PathOrURL(a4, a5, a6 & 1);

    if (v37)
    {
      goto LABEL_23;
    }

LABEL_26:
    outlined consume of PathOrURL(a4, a5, a6 & 1);

    goto LABEL_27;
  }

LABEL_16:
  v39 = &v38;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v38 - v30);
  if (String._fileSystemRepresentation(into:)(&v38 - v30, v16, v21, cat))
  {
    v32 = v46;
    closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(v31, a9, v48, a4, a5, a6 & 1, v47, v45, v44, v43, v15, v42, v41);
    if (v32)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  v34 = v46;
  closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(0, a9, v48, a4, a5, a6 & 1, v47, v45, v44, v43, v15, v42, v41);
  if (!v34)
  {
LABEL_25:
    outlined consume of PathOrURL(a4, a5, a6 & 1);

    goto LABEL_26;
  }

LABEL_22:
  swift_willThrow();
  outlined consume of PathOrURL(a4, a5, a6 & 1);

LABEL_23:
  outlined consume of PathOrURL(a4, a5, a6 & 1);

LABEL_24:
  swift_willThrow();
LABEL_27:
  outlined consume of PathOrURL(a4, a5, a6 & 1);

  outlined consume of PathOrURL(a4, a5, a6 & 1);
}

uint64_t closure #1 in closure #3 in closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(std::__fs::filesystem::path *__to, std::__fs::filesystem::path *__from, std::error_code *a3, __CFString *a4, std::__fs::filesystem::path *a5, int a6, void *a7, uint64_t *a8, __int128 *a9, std::__fs::filesystem::path *a10, uint64_t a11, uint64_t a12, int *a13)
{
  v15 = v13;
  v16 = &v180;
  v308 = *MEMORY[0x1E69E9840];
  if (!__to)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v39 = @"NSCocoaErrorDomain";
    v40 = v39;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v39);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_92;
          }

          goto LABEL_17;
        }

        v65 = [(__CFString *)v40 UTF8String];
        if (!v65)
        {
          __break(1u);
LABEL_281:
          __break(1u);
          goto LABEL_282;
        }

        String.init(utf8String:)(v65);
        if (v66)
        {
          goto LABEL_74;
        }

        __break(1u);
      }

      LOWORD(v178[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v67)
      {
        [(__CFString *)v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_92;
      }

      goto LABEL_74;
    }

LABEL_17:
    LOBYTE(v180) = 0;
    v244 = 0;
    LOBYTE(v178[0]) = 0;
    v179 = 0;
    if (!__CFStringIsCF())
    {
      v53 = v40;
      String.init(_nativeStorage:)();
      if (v54 || (v244 = [(__CFString *)v53 length]) == 0)
      {

        goto LABEL_92;
      }

      goto LABEL_91;
    }

    if (v244)
    {
      if (v179 == 1)
      {
        if (v180)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_92:
        v70 = objc_allocWithZone(NSError);
        v71 = String._bridgeToObjectiveCImpl()();

        a4 = [v70 initWithDomain:v71 code:514 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v72 = [(__CFString *)a4 domain];
        if (!v72)
        {
          v48 = 0;
          v14 = 0xE000000000000000;
LABEL_123:
          v86 = v40;
          v87 = v86;
          if (!isTaggedPointer)
          {
            goto LABEL_128;
          }

          v88 = _objc_getTaggedPointerTag(v86);
          if (!v88)
          {
            goto LABEL_140;
          }

          if (v88 != 22)
          {
            if (v88 == 2)
            {
              isTaggedPointer = &v172;
              MEMORY[0x1EEE9AC00](v88);
              v89 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v91 = v90;

LABEL_150:
              if (v48 == v89 && v14 == v91)
              {
              }

              else
              {
                v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v99 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_272;
                }
              }

              return swift_willThrow();
            }

LABEL_128:
            LOBYTE(v180) = 0;
            v244 = 0;
            LOBYTE(v178[0]) = 0;
            v179 = 0;
            if (__CFStringIsCF())
            {
              if (v244)
              {
                if (v179 == 1)
                {
                  if (v180)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v97 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_149;
                }

LABEL_148:
                v97 = String.init(_cocoaString:)();
LABEL_149:
                v89 = v97;
                v91 = v98;
                goto LABEL_150;
              }
            }

            else
            {
              isTaggedPointer = v87;
              v92 = String.init(_nativeStorage:)();
              if (v93)
              {
                v89 = v92;
                v91 = v93;

                goto LABEL_150;
              }

              v244 = [isTaggedPointer length];
              if (v244)
              {
                goto LABEL_148;
              }
            }

            v89 = 0;
            v91 = 0xE000000000000000;
            goto LABEL_150;
          }

          v94 = [(__CFString *)v87 UTF8String];
          if (v94)
          {
            v95 = String.init(utf8String:)(v94);
            if (v96)
            {
LABEL_141:
              v89 = v95;
              v91 = v96;

              goto LABEL_150;
            }

            __break(1u);
LABEL_140:
            LOWORD(v178[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v95 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v96)
            {
              [(__CFString *)v87 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v91 = *(&v180 + 1);
              v89 = v180;
              goto LABEL_150;
            }

            goto LABEL_141;
          }

          goto LABEL_281;
        }

        LODWORD(v177) = isTaggedPointer;
        v73 = v72;
        LODWORD(v14) = _objc_isTaggedPointer(v72);
        v74 = v73;
        v75 = v74;
        if ((v14 & 1) == 0)
        {
          goto LABEL_98;
        }

        v76 = _objc_getTaggedPointerTag(v74);
        if (v76)
        {
          if (v76 != 22)
          {
            if (v76 == 2)
            {
              MEMORY[0x1EEE9AC00](v76);
              v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v14 = v77;

LABEL_122:
              isTaggedPointer = v177;
              goto LABEL_123;
            }

LABEL_98:
            LOBYTE(v180) = 0;
            v244 = 0;
            LOBYTE(v178[0]) = 0;
            v179 = 0;
            if (__CFStringIsCF())
            {
              if (!v244)
              {

                v48 = 0;
                v14 = 0xE000000000000000;
                goto LABEL_122;
              }

              if (v179 == 1)
              {
                if (v180)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v84 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_120;
              }
            }

            else
            {
              v78 = v75;
              v79 = String.init(_nativeStorage:)();
              if (v80)
              {
                v48 = v79;
                v14 = v80;

                v16 = &v180;
                goto LABEL_122;
              }

              v244 = [v78 length];
              if (!v244)
              {

                v48 = 0;
                v14 = 0xE000000000000000;
                v16 = &v180;
                goto LABEL_122;
              }

              v16 = &v180;
            }

            v84 = String.init(_cocoaString:)();
LABEL_120:
            v48 = v84;
            v14 = v85;
            goto LABEL_121;
          }

          v81 = [v75 UTF8String];
          if (!v81)
          {
LABEL_282:
            __break(1u);
            goto LABEL_283;
          }

          v82 = String.init(utf8String:)(v81);
          if (v83)
          {
            goto LABEL_111;
          }

          __break(1u);
        }

        LOWORD(v178[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v82 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v83)
        {
          [v75 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v14 = *(&v180 + 1);
          v48 = v180;
          goto LABEL_121;
        }

LABEL_111:
        v48 = v82;
        v14 = v83;

LABEL_121:
        goto LABEL_122;
      }

LABEL_91:
      String.init(_cocoaString:)();
      goto LABEL_92;
    }

LABEL_74:

    goto LABEL_92;
  }

  isTaggedPointer = __from;
  LODWORD(v176) = a6;
  v177 = a5;
  rename(__from, __to, a3);
  if (!v23)
  {
    goto LABEL_6;
  }

  if (MEMORY[0x1865CA7A0]() != 22)
  {
    if (MEMORY[0x1865CA7A0]() == 16)
    {
      v14 = a11;
      unlink(isTaggedPointer);
      v43 = *a8;
      v42 = a8[1];

      cleanupTemporaryDirectory(at:)(v43, v42);

      v174 = v15;
      if (v176)
      {
        ObjectType = swift_getObjectType();
        isTaggedPointer = v177;
        data = v177[10].__pn_.__r_.__value_.__l.__data_;
        outlined copy of PathOrURL(a4, v177, 1);

        v42 = a4;
        v46 = data(ObjectType, v177);
        v48 = v47;
      }

      else
      {
        v48 = v177;
        outlined copy of PathOrURL(a4, v177, 0);
        outlined copy of PathOrURL(a4, v177, 0);

        v46 = a4;
      }

      if ((v48 & 0x1000000000000000) == 0)
      {
        if ((v48 & 0x2000000000000000) != 0)
        {
          isStackAllocationSafe = HIBYTE(v48) & 0xF;
        }

        else
        {
          isStackAllocationSafe = v46 & 0xFFFFFFFFFFFFLL;
        }

LABEL_40:
        v56 = 3 * isStackAllocationSafe;
        if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
        {
          if (v56 < -1)
          {
LABEL_277:
            __break(1u);
            goto LABEL_278;
          }

          v16 = a9;
          isTaggedPointer = a10;
          v42 = v56 + 1;
          if (v56 < 1024)
          {
            goto LABEL_43;
          }
        }

        else
        {
          __break(1u);
        }

        v166 = v46;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v173 = v166;
          v172 = swift_slowAlloc();
          v167 = v176;
          v168 = v177;
          outlined copy of PathOrURL(a4, v177, v176 & 1);

          v171 = isTaggedPointer;
          v169 = v172;
          specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v172, v42, v173, v48, 0, a4, v168, v167 & 1, 0, v16, v171, v14);
          MEMORY[0x1865D2690](v169, -1, -1);
LABEL_54:

          outlined consume of PathOrURL(a4, v177, v176 & 1);
        }

LABEL_43:
        MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v58 = &v172 - v57;
        if (String._fileSystemRepresentation(into:)(&v172 - v57, v42, v59, v48))
        {
          v60 = v176 & 1;
          v61 = v58;
        }

        else
        {
          v60 = v176 & 1;
          v61 = 0;
        }

        v64 = v174;
        closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(v61, 0, a4, v177, v60, 0, v16, isTaggedPointer, v14);
        if (v64)
        {
          swift_willThrow();
        }

        goto LABEL_54;
      }

LABEL_272:
      v42 = v46;
      isStackAllocationSafe = String.UTF8View._foreignCount()();
      v46 = v42;
      goto LABEL_40;
    }

    LODWORD(v14) = MEMORY[0x1865CA7A0]();
    unlink(isTaggedPointer);
    v50 = *a8;
    v49 = a8[1];

    cleanupTemporaryDirectory(at:)(v50, v49);

    if (v176)
    {
      if (v14 > 27)
      {
        if (v14 <= 62)
        {
          if (v14 != 28)
          {
            if (v14 == 30)
            {
              v68 = 642;
              goto LABEL_159;
            }

            goto LABEL_158;
          }
        }

        else
        {
          if (v14 == 63)
          {
            v68 = 514;
            goto LABEL_159;
          }

          if (v14 != 69)
          {
            if (v14 == 102)
            {
              v51 = a4;
              swift_unknownObjectRetain();
              v52 = 0;
              v176 = 512;
LABEL_164:
              v109 = swift_getObjectType();
              (v177[10].__pn_.__r_.__value_.__l.__data_)(v109, v177);
              v110 = String._bridgeToObjectiveCImpl()();

              v111 = (v177[18].__pn_.__r_.__value_.__l.__data_)(v109, v177);
              outlined consume of PathOrURL(v51, v177, 1);
              if (v52)
              {
                v244 = v52;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v52 = v52;
                v112 = _getErrorEmbeddedNSError<A>(_:)();

                v113 = v176;
                if (v112)
                {
                }

                else
                {
                  swift_allocError();
                  *v115 = v52;
                }

                v114 = _swift_stdlib_bridgeErrorToNSError();
              }

              else
              {
                v114 = 0;
                v113 = v176;
              }

              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              return swift_willThrow();
            }

LABEL_158:
            v68 = 512;
LABEL_159:
            v176 = v68;
            v51 = a4;
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v100 = POSIXErrorCode.rawValue.getter();
              v101 = objc_allocWithZone(NSError);
              v102 = String._bridgeToObjectiveCImpl()();

              v52 = [v101 initWithDomain:v102 code:v100 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v103 = [v52 domain];
              v104 = static String._unconditionallyBridgeFromObjectiveC(_:)(v103);
              v106 = v105;

              if (v104 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v106 == v107)
              {
              }

              else
              {
                v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v108 & 1) == 0)
                {
LABEL_278:
                  __break(1u);
LABEL_279:
                  __break(1u);
                }
              }

              goto LABEL_164;
            }

LABEL_287:
            *(v16 + 129) = 0;
            *(v16 + 130) = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            *(v16 + 129) = 0xD000000000000014;
            *(v16 + 130) = 0x80000001814813E0;
            LODWORD(v180) = v14;
            v170 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v170);

            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }

        v68 = 640;
        goto LABEL_159;
      }

      if (v14 > 12)
      {
        if (v14 != 13)
        {
          if (v14 == 17)
          {
            v68 = 516;
            goto LABEL_159;
          }

          goto LABEL_158;
        }
      }

      else if (v14 != 1)
      {
        if (v14 == 2)
        {
          v68 = 4;
          goto LABEL_159;
        }

        goto LABEL_158;
      }

      v68 = 513;
      goto LABEL_159;
    }

    v62 = v177;
    v175 = a4;
    if (v14 > 27)
    {
      if (v14 > 62)
      {
        if (v14 == 63)
        {
          v69 = 514;
          goto LABEL_172;
        }

        if (v14 != 69)
        {
          if (v14 == 102)
          {
            v14 = 0;
            v63 = 512;
            goto LABEL_261;
          }

          goto LABEL_171;
        }

        goto LABEL_90;
      }

      if (v14 == 28)
      {
LABEL_90:
        v69 = 640;
        goto LABEL_172;
      }

      if (v14 == 30)
      {
        v69 = 642;
        goto LABEL_172;
      }

LABEL_171:
      v69 = 512;
      goto LABEL_172;
    }

    if (v14 > 12)
    {
      if (v14 != 13)
      {
        if (v14 != 17)
        {
          goto LABEL_171;
        }

        v69 = 516;
        goto LABEL_172;
      }
    }

    else if (v14 != 1)
    {
      if (v14 != 2)
      {
        goto LABEL_171;
      }

      v69 = 4;
LABEL_172:
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_287;
      }

      LODWORD(v14) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v116 = @"NSPOSIXErrorDomain";
      v117 = v116;
      v173 = v69;
      LODWORD(v176) = v14;
      if (!v14)
      {
LABEL_178:
        LOBYTE(v180) = 0;
        v244 = 0;
        LOBYTE(v178[0]) = 0;
        v179 = 0;
        v174 = v15;
        if (!__CFStringIsCF())
        {
          v119 = v117;
          String.init(_nativeStorage:)();
          if (v120 || (v244 = [(__CFString *)v119 length]) == 0)
          {

            goto LABEL_199;
          }

          goto LABEL_198;
        }

        if (v244)
        {
          if (v179 == 1)
          {
            if (v180)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_199:
            v124 = POSIXErrorCode.rawValue.getter();
            v125 = objc_allocWithZone(NSError);
            v126 = String._bridgeToObjectiveCImpl()();

            v14 = [v125 initWithDomain:v126 code:v124 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v127 = [v14 domain];
            if (!v127)
            {
              goto LABEL_213;
            }

            v128 = v127;
            v129 = _objc_isTaggedPointer(v127);
            v130 = v128;
            v131 = v130;
            if ((v129 & 1) == 0)
            {
LABEL_205:
              LOBYTE(v180) = 0;
              v244 = 0;
              LOBYTE(v178[0]) = 0;
              v179 = 0;
              if (__CFStringIsCF())
              {
                if (v244)
                {
                  if (v179 == 1)
                  {
                    if (v180)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v141 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_227;
                  }

LABEL_226:
                  v141 = String.init(_cocoaString:)();
LABEL_227:
                  v133 = v141;
                  v16 = v142;
                  goto LABEL_228;
                }
              }

              else
              {
                v135 = v131;
                v136 = String.init(_nativeStorage:)();
                if (v137)
                {
                  v133 = v136;
                  v16 = v137;

                  goto LABEL_229;
                }

                v244 = [v135 length];
                if (v244)
                {
                  goto LABEL_226;
                }
              }

LABEL_213:
              v133 = 0;
              v16 = 0xE000000000000000;
              goto LABEL_229;
            }

            v132 = _objc_getTaggedPointerTag(v130);
            if (v132)
            {
              if (v132 != 22)
              {
                if (v132 == 2)
                {
                  MEMORY[0x1EEE9AC00](v132);
                  v133 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v16 = v134;

LABEL_229:
                  v143 = v117;
                  v144 = v143;
                  if (!v176)
                  {
                    goto LABEL_234;
                  }

                  v145 = _objc_getTaggedPointerTag(v143);
                  if (!v145)
                  {
                    goto LABEL_246;
                  }

                  if (v145 != 22)
                  {
                    if (v145 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v145);
                      v146 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v148 = v147;

                      goto LABEL_256;
                    }

LABEL_234:
                    LOBYTE(v180) = 0;
                    v244 = 0;
                    LOBYTE(v178[0]) = 0;
                    v179 = 0;
                    if (__CFStringIsCF())
                    {
                      if (v244)
                      {
                        if (v179 == 1)
                        {
                          if (v180)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v155 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_255;
                        }

LABEL_254:
                        v155 = String.init(_cocoaString:)();
LABEL_255:
                        v146 = v155;
                        v148 = v156;
LABEL_256:
                        v63 = v173;
                        if (v133 == v146 && v16 == v148)
                        {

                          a4 = v175;
                        }

                        else
                        {
                          v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          a4 = v175;
                          if ((v157 & 1) == 0)
                          {
                            goto LABEL_279;
                          }
                        }

                        v62 = v177;
LABEL_261:

                        URL.init(_fileManagerFailableFileURLWithPath:)(a4, v62, &v244);
                        outlined consume of PathOrURL(a4, v62, 0);
                        v158 = v244;
                        v159 = *v245;
                        v160 = String._bridgeToObjectiveCImpl()();
                        if (v158)
                        {
                          v161 = swift_getObjectType();
                          v162 = (*(v159 + 432))(v161, v159);
                          swift_unknownObjectRelease();
                          if (v14)
                          {
LABEL_263:
                            *&v180 = v14;
                            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                            v14 = v14;
                            v163 = _getErrorEmbeddedNSError<A>(_:)();

                            if (v163)
                            {
                            }

                            else
                            {
                              swift_allocError();
                              *v165 = v14;
                            }

                            v164 = _swift_stdlib_bridgeErrorToNSError();
                            goto LABEL_269;
                          }
                        }

                        else
                        {
                          v162 = 0;
                          if (v14)
                          {
                            goto LABEL_263;
                          }
                        }

                        v164 = 0;
LABEL_269:
                        [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                        swift_unknownObjectRelease();

                        return swift_willThrow();
                      }
                    }

                    else
                    {
                      v149 = v144;
                      v150 = String.init(_nativeStorage:)();
                      if (v151)
                      {
                        v146 = v150;
                        v148 = v151;

                        goto LABEL_256;
                      }

                      v244 = [(__CFString *)v149 length];
                      if (v244)
                      {
                        goto LABEL_254;
                      }
                    }

                    v146 = 0;
                    v148 = 0xE000000000000000;
                    goto LABEL_256;
                  }

                  v152 = [(__CFString *)v144 UTF8String];
                  if (v152)
                  {
                    v153 = String.init(utf8String:)(v152);
                    if (v154)
                    {
                      goto LABEL_247;
                    }

                    __break(1u);
LABEL_246:
                    LOWORD(v178[0]) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v153 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v154)
                    {
                      [(__CFString *)v144 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v148 = *(&v180 + 1);
                      v146 = v180;
                      goto LABEL_256;
                    }

LABEL_247:
                    v146 = v153;
                    v148 = v154;

                    goto LABEL_256;
                  }

                  goto LABEL_284;
                }

                goto LABEL_205;
              }

              v138 = [v131 UTF8String];
              if (!v138)
              {
LABEL_285:
                __break(1u);
                goto LABEL_286;
              }

              v139 = String.init(utf8String:)(v138);
              if (!v140)
              {
LABEL_286:
                __break(1u);
                goto LABEL_287;
              }
            }

            else
            {
              LOWORD(v178[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v139 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v140)
              {
                [v131 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v16 = *(&v180 + 1);
                v133 = v180;
                goto LABEL_228;
              }
            }

            v133 = v139;
            v16 = v140;

LABEL_228:
            goto LABEL_229;
          }

LABEL_198:
          String.init(_cocoaString:)();
          goto LABEL_199;
        }

LABEL_197:

        goto LABEL_199;
      }

      v118 = _objc_getTaggedPointerTag(v116);
      if (!v118)
      {
LABEL_189:
        v174 = v15;
        LOWORD(v178[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v123)
        {
          [(__CFString *)v117 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_199;
        }

        goto LABEL_197;
      }

      if (v118 != 22)
      {
        if (v118 == 2)
        {
          MEMORY[0x1EEE9AC00](v118);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v174 = v15;

          goto LABEL_199;
        }

        goto LABEL_178;
      }

      v174 = v15;
      v121 = [(__CFString *)v117 UTF8String];
      if (v121)
      {
        String.init(utf8String:)(v121);
        if (v122)
        {
          goto LABEL_197;
        }

        __break(1u);
        goto LABEL_189;
      }

LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v69 = 513;
    goto LABEL_172;
  }

  v24 = v13;
  v25 = *&a3->__val_;
  cat = a3->__cat_;
  v175 = a4;
  *&v180 = a4;
  *(&v180 + 1) = v177;
  v27 = v176 & 1;
  LOBYTE(v181) = v176 & 1;

  v28 = v25;
  v29 = v24;
  createProtectedTemporaryFile(at:inPath:options:variant:)(v28, cat, &v180, a7, 0, 0, &v244);
  v30 = v244;
  v174 = *v245;
  v176 = *&v245[8];
  v31 = *&v245[16];
  v32 = *&v245[24];

  if (v29)
  {
    return result;
  }

  close(v30);

  v173 = v31;
  outlined copy of PathOrURL(v175, v177, v27);
  specialized String.withFileSystemRepresentation<A>(_:)(v174, v176, __to, isTaggedPointer, a8, v31, v32, v175, v34, v177, v27);

LABEL_6:
  v36 = *a8;
  v35 = a8[1];

  cleanupTemporaryDirectory(at:)(v36, v35);

  if (*(a12 + 2))
  {
    return result;
  }

  v37 = *a12;
  v178[2] = 0;
  v178[0] = 0x800000000000005;
  v178[1] = 0;
  bzero(&v244, 0x40CuLL);
  result = fgetattrlist(*a13, v178, &v244, 0x40CuLL, 1u);
  if (result)
  {
    return result;
  }

  v180 = *&v245[4];
  v181 = *&v245[20];
  v182 = v246;
  v183 = v247;
  v184 = v248;
  v185 = v249;
  v186 = v250;
  v187 = v251;
  v188 = v252;
  v189 = v253;
  v190 = v254;
  v191 = v255;
  v192 = v256;
  v193 = v257;
  v194 = v258;
  v195 = v259;
  v196 = v260;
  v197 = v261;
  v198 = v262;
  v199 = v263;
  v200 = v264;
  v201 = v265;
  v202 = v266;
  v203 = v267;
  v204 = v268;
  v205 = v269;
  v206 = v270;
  v207 = v271;
  v208 = v272;
  v209 = v273;
  v210 = v274;
  v211 = v275;
  v212 = v276;
  v213 = v277;
  v214 = v278;
  v215 = v279;
  v216 = v280;
  v217 = v281;
  v218 = v282;
  v219 = v283;
  v220 = v284;
  v221 = v285;
  v222 = v286;
  v223 = v287;
  v224 = v288;
  v225 = v289;
  v226 = v290;
  v227 = v291;
  v228 = v292;
  v229 = v293;
  v230 = v294;
  v231 = v295;
  v232 = v296;
  v233 = v297;
  v234 = v298;
  v235 = v299;
  v236 = v300;
  v237 = v301;
  v238 = v302;
  v239 = v303;
  v240 = v304;
  v241 = v305;
  v242 = v306;
  v243 = v307;
  result = strlen(__to);
  v38 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_277;
  }

  if (v38 == *v245)
  {
    result = strncmp(__to, &v180, v38);
    if (!result)
    {
      return fchmod(*a13, v37);
    }
  }

  return result;
}

uint64_t closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(const char *a1, __CFString *a2, unint64_t a3, char a4, void *a5, char a6, __int128 *a7, std::__fs::filesystem::path *a8, uint64_t a9)
{
  v284 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v20 = @"NSCocoaErrorDomain";
    v21 = v20;
    if (!isTaggedPointer)
    {
LABEL_26:
      LOBYTE(v150) = 0;
      v217 = 0;
      LOBYTE(v144) = 0;
      LOBYTE(v214[0]) = 0;
      if (!__CFStringIsCF())
      {
        v34 = v21;
        String.init(_nativeStorage:)();
        if (!v35 && (v217 = [(__CFString *)v34 length]) != 0)
        {
          String.init(_cocoaString:)();
        }

        else
        {
        }

        goto LABEL_101;
      }

      goto LABEL_83;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_101:
          v10 = objc_allocWithZone(NSError);
          v48 = String._bridgeToObjectiveCImpl()();

          v49 = [v10 initWithDomain:v48 code:514 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v50 = [v49 domain];
          if (!v50)
          {
LABEL_111:
            v56 = 0;
            v58 = 0xE000000000000000;
            goto LABEL_138;
          }

          v51 = v50;
          v52 = _objc_isTaggedPointer(v50);
          v53 = v51;
          v54 = v53;
          if ((v52 & 1) == 0)
          {
            goto LABEL_107;
          }

          v55 = _objc_getTaggedPointerTag(v53);
          if (!v55)
          {
            goto LABEL_115;
          }

          if (v55 != 22)
          {
            if (v55 == 2)
            {
              MEMORY[0x1EEE9AC00](v55);
              v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v58 = v57;

LABEL_138:
              if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)(v21) && v58 == v66)
              {
              }

              else
              {
                v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v67 & 1) == 0)
                {
LABEL_212:
                  __break(1u);
LABEL_213:
                  __break(1u);
                  goto LABEL_214;
                }
              }

              return swift_willThrow();
            }

LABEL_107:
            LOBYTE(v150) = 0;
            v217 = 0;
            LOBYTE(v144) = 0;
            LOBYTE(v214[0]) = 0;
            if (__CFStringIsCF())
            {

              goto LABEL_111;
            }

            v59 = v54;
            v60 = String.init(_nativeStorage:)();
            if (v61)
            {
              v56 = v60;
              v58 = v61;

              goto LABEL_138;
            }

            v217 = [v59 length];
            if (!v217)
            {

              goto LABEL_111;
            }

            v56 = String.init(_cocoaString:)();
            v58 = v65;
LABEL_137:

            goto LABEL_138;
          }

          v62 = [v54 UTF8String];
          if (v62)
          {
            v63 = String.init(utf8String:)(v62);
            if (v64)
            {
LABEL_116:
              v56 = v63;
              v58 = v64;

              goto LABEL_137;
            }

            __break(1u);
LABEL_115:
            LOWORD(v144) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v64)
            {
              [v54 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v58 = *(&v150 + 1);
              v56 = v150;
              goto LABEL_137;
            }

            goto LABEL_116;
          }

LABEL_218:
          __break(1u);
          goto LABEL_219;
        }

        goto LABEL_26;
      }

      v42 = [(__CFString *)v21 UTF8String];
      if (!v42)
      {
        __break(1u);
        goto LABEL_218;
      }

      String.init(utf8String:)(v42);
      if (v43)
      {
LABEL_83:

        goto LABEL_101;
      }

      __break(1u);
    }

    LOWORD(v144) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v44)
    {
      [(__CFString *)v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_101;
    }

    goto LABEL_83;
  }

  v13 = a3;
  v148 = 0;
  v149 = 1;
  if (a4)
  {
    ObjectType = swift_getObjectType();
    v17 = (*(v13 + 240))(ObjectType, v13);
    v13 = v18;
  }

  else
  {

    v17 = a2;
  }

  *&v147.__val_ = v17;
  v147.__cat_ = v13;
  bzero(&v217, 0x418uLL);
  v144 = 5;
  v145 = xmmword_181234D40;
  v146 = 0;
  if (getattrlist(a1, &v144, &v217, 0x418uLL, 1u))
  {
    if (MEMORY[0x1865CA7A0]() == 2 || MEMORY[0x1865CA7A0]() == 63)
    {
      v137 = a7;
      goto LABEL_18;
    }

    v32 = MEMORY[0x1865CA7A0]();
    LODWORD(v10) = v32;
    if (a4)
    {
      if (v32 > 27)
      {
        if (v32 > 62)
        {
          if (v32 == 63)
          {
            v47 = 514;
            goto LABEL_146;
          }

          if (v32 != 69)
          {
            if (v32 == 102)
            {
              swift_unknownObjectRetain();
              v33 = 0;
              v141 = 512;
LABEL_152:
              v79 = a2;
              v80 = swift_getObjectType();
              (*(a3 + 240))(v80, a3);
              v81 = String._bridgeToObjectiveCImpl()();

              v82 = (*(a3 + 432))(v80, a3);
              outlined consume of PathOrURL(v79, a3, 1);
              if (v33)
              {
                *&v150 = v33;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v33 = v33;
                v83 = _getErrorEmbeddedNSError<A>(_:)();

                if (v83)
                {
                }

                else
                {
                  swift_allocError();
                  *v85 = v33;
                }

                v84 = _swift_stdlib_bridgeErrorToNSError();
              }

              else
              {
                v84 = 0;
              }

              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              swift_willThrow();
            }

            goto LABEL_145;
          }

          goto LABEL_98;
        }

        if (v32 == 28)
        {
LABEL_98:
          v47 = 640;
          goto LABEL_146;
        }

        if (v32 == 30)
        {
          v47 = 642;
          goto LABEL_146;
        }

LABEL_145:
        v47 = 512;
        goto LABEL_146;
      }

      if (v32 > 12)
      {
        if (v32 != 13)
        {
          if (v32 != 17)
          {
            goto LABEL_145;
          }

          v47 = 516;
          goto LABEL_146;
        }
      }

      else if (v32 != 1)
      {
        if (v32 != 2)
        {
          goto LABEL_145;
        }

        v47 = 4;
LABEL_146:
        v141 = v47;
        v69 = a2;
        swift_unknownObjectRetain();
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
        {
          goto LABEL_219;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
        v70 = POSIXErrorCode.rawValue.getter();
        v71 = objc_allocWithZone(NSError);
        v72 = String._bridgeToObjectiveCImpl()();

        v33 = [v71 initWithDomain:v72 code:v70 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v73 = [v33 domain];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)(v73);
        v76 = v75;

        if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v76 == v77)
        {

LABEL_151:
          a2 = v69;
          goto LABEL_152;
        }

        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v78)
        {
          goto LABEL_151;
        }

        goto LABEL_213;
      }

      v47 = 513;
      goto LABEL_146;
    }

    if (v32 > 27)
    {
      if (v32 > 62)
      {
        if (v32 == 63)
        {
          v41 = 514;
          goto LABEL_160;
        }

        if (v32 != 69)
        {
          if (v32 == 102)
          {
            v40 = 0;
            v41 = 512;
            goto LABEL_166;
          }

          goto LABEL_159;
        }

        goto LABEL_99;
      }

      if (v32 == 28)
      {
LABEL_99:
        v41 = 640;
        goto LABEL_160;
      }

      if (v32 == 30)
      {
        v41 = 642;
        goto LABEL_160;
      }

LABEL_159:
      v41 = 512;
      goto LABEL_160;
    }

    if (v32 > 12)
    {
      if (v32 != 13)
      {
        if (v32 != 17)
        {
          goto LABEL_159;
        }

        v41 = 516;
        goto LABEL_160;
      }
    }

    else if (v32 != 1)
    {
      if (v32 != 2)
      {
        goto LABEL_159;
      }

      v41 = 4;
LABEL_160:
      v86 = a2;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_219;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v87 = POSIXErrorCode.rawValue.getter();
      v88 = objc_allocWithZone(NSError);
      v89 = String._bridgeToObjectiveCImpl()();

      v40 = [v88 initWithDomain:v89 code:v87 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v90 = [v40 domain];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)(v90);
      v93 = v92;

      if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v93 == v94)
      {
      }

      else
      {
        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v95 & 1) == 0)
        {
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }
      }

      a2 = v86;
LABEL_166:

      URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v150);
      outlined consume of PathOrURL(a2, a3, 0);
      v96 = v150;
      v97 = String._bridgeToObjectiveCImpl()();
      if (v96)
      {
        v98 = swift_getObjectType();
        v99 = (*(*(&v96 + 1) + 432))(v98, *(&v96 + 1));
        swift_unknownObjectRelease();
        if (v40)
        {
LABEL_168:
          v214[0] = v40;
          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
          v40 = v40;
          v100 = _getErrorEmbeddedNSError<A>(_:)();

          if (v100)
          {
          }

          else
          {
            swift_allocError();
            *v102 = v40;
          }

          v101 = _swift_stdlib_bridgeErrorToNSError();
          goto LABEL_174;
        }
      }

      else
      {
        v99 = 0;
        if (v40)
        {
          goto LABEL_168;
        }
      }

      v101 = 0;
LABEL_174:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      swift_willThrow();
    }

    v41 = 513;
    goto LABEL_160;
  }

  if (HIWORD(v218))
  {
    __break(1u);
    goto LABEL_212;
  }

  v148 = v218;
  v149 = 0;
  v137 = a7;
  if (HIDWORD(v217) == 1 && v219 <= 1)
  {
    v150 = v220;
    v151 = v221;
    v152 = v222;
    v153 = v223;
    v154 = v224;
    v155 = v225;
    v156 = v226;
    v157 = v227;
    v158 = v228;
    v159 = v229;
    v160 = v230;
    v161 = v231;
    v162 = v232;
    v163 = v233;
    v164 = v234;
    v165 = v235;
    v166 = v236;
    v167 = v237;
    v168 = v238;
    v169 = v239;
    v170 = v240;
    v171 = v241;
    v172 = v242;
    v173 = v243;
    v174 = v244;
    v175 = v245;
    v176 = v246;
    v177 = v247;
    v178 = v248;
    v179 = v249;
    v180 = v250;
    v181 = v251;
    v182 = v252;
    v183 = v253;
    v184 = v254;
    v185 = v255;
    v186 = v256;
    v187 = v257;
    v188 = v258;
    v189 = v259;
    v190 = v260;
    v191 = v261;
    v192 = v262;
    v193 = v263;
    v194 = v264;
    v195 = v265;
    v196 = v266;
    v197 = v267;
    v198 = v268;
    v199 = v269;
    v200 = v270;
    v201 = v271;
    v202 = v272;
    v203 = v273;
    v204 = v274;
    v205 = v275;
    v206 = v276;
    v207 = v277;
    v208 = v278;
    v209 = v279;
    v210 = v280;
    v211 = v281;
    v212 = v282;
    v213 = v283;
    v17 = String.init(cString:)();
    v24 = v23;

    *&v147.__val_ = v17;
    v147.__cat_ = v24;
    v13 = v24;
  }

LABEL_18:
  v214[0] = a2;
  v214[1] = a3;
  v215 = a4 & 1;
  createProtectedTemporaryFile(at:inPath:options:variant:)(v17, v13, v214, a5, 0x7265646C6F46, 0xE600000000000000, &v150);
  if (v9)
  {
  }

  v136 = a2;
  v25 = v150;
  v27 = *(&v151 + 1);
  v26 = v152;
  v143 = v150;
  v216[0] = *(&v151 + 1);
  v216[1] = v152;
  if ((v150 & 0x80000000) == 0)
  {
    v134 = *(&v150 + 1);
    v135 = v151;
    if (a6)
    {
      v28 = objc_opt_self();
      v29 = [v28 currentProgress];
      if (v29)
      {

        if (v137)
        {
          v30 = a8 - v137;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v28 progressWithTotalUnitCount_];
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }

    *&v150 = v136;
    *(&v150 + 1) = a3;
    LOBYTE(v151) = a4 & 1;
    write(buffer:toFileDescriptor:path:parentProgress:)(v137, a8, v25, &v150, v31);
    writeExtendedAttributes(fd:attributes:)(v25, a9);
    outlined copy of PathOrURL(v136, a3, a4 & 1);

    specialized String.withFileSystemRepresentation<A>(_:)(v134, v135, &v147, v136, a3, a4 & 1, a5, v216, &v148, v137, a8, a9, &v148, &v143);

    close(v25);
    goto LABEL_209;
  }

  LODWORD(v10) = MEMORY[0x1865CA7A0](v36);
  cleanupTemporaryDirectory(at:)(v27, v26);
  if ((a4 & 1) == 0)
  {
    if (v10 > 27)
    {
      v45 = v136;
      if (v10 > 62)
      {
        if (v10 == 63)
        {
          v46 = 514;
          goto LABEL_192;
        }

        if (v10 != 69)
        {
          if (v10 == 102)
          {
            v38 = 0;
            v46 = 512;
            goto LABEL_198;
          }

          goto LABEL_191;
        }

        goto LABEL_135;
      }

      if (v10 == 28)
      {
LABEL_135:
        v46 = 640;
        goto LABEL_192;
      }

      if (v10 == 30)
      {
        v46 = 642;
        goto LABEL_192;
      }

LABEL_191:
      v46 = 512;
      goto LABEL_192;
    }

    if (v10 > 12)
    {
      if (v10 != 13)
      {
        if (v10 != 17)
        {
          goto LABEL_191;
        }

        v46 = 516;
        goto LABEL_192;
      }
    }

    else if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_191;
      }

      v46 = 4;
LABEL_192:
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_219;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v118 = POSIXErrorCode.rawValue.getter();
      v119 = objc_allocWithZone(NSError);
      v120 = String._bridgeToObjectiveCImpl()();

      v38 = [v119 initWithDomain:v120 code:v118 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v121 = [v38 domain];
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)(v121);
      v124 = v123;

      if (v122 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v124 == v125)
      {
      }

      else
      {
        v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v126 & 1) == 0)
        {
          goto LABEL_216;
        }
      }

      v45 = v136;
LABEL_198:

      URL.init(_fileManagerFailableFileURLWithPath:)(v45, a3, &v150);
      outlined consume of PathOrURL(v45, a3, 0);
      v127 = v150;
      v128 = String._bridgeToObjectiveCImpl()();
      if (v127)
      {
        v129 = swift_getObjectType();
        v130 = (*(*(&v127 + 1) + 432))(v129, *(&v127 + 1));
        swift_unknownObjectRelease();
      }

      else
      {
        v130 = 0;
      }

      if (v38)
      {
        v214[0] = v38;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v38 = v38;
        v131 = _getErrorEmbeddedNSError<A>(_:)();

        if (v131)
        {
        }

        else
        {
          swift_allocError();
          *v132 = v38;
        }

        v116 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v116 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

LABEL_208:
      swift_willThrow();
LABEL_209:
    }

    v46 = 513;
    goto LABEL_192;
  }

  if (v10 <= 27)
  {
    if (v10 > 12)
    {
      if (v10 != 13)
      {
        if (v10 == 17)
        {
          v39 = 516;
          goto LABEL_178;
        }

        goto LABEL_177;
      }
    }

    else if (v10 != 1)
    {
      if (v10 == 2)
      {
        v39 = 4;
        goto LABEL_178;
      }

      goto LABEL_177;
    }

    v39 = 513;
    goto LABEL_178;
  }

  v37 = v136;
  if (v10 <= 62)
  {
    if (v10 != 28)
    {
      if (v10 == 30)
      {
        v39 = 642;
        goto LABEL_178;
      }

      goto LABEL_177;
    }

LABEL_134:
    v39 = 640;
    goto LABEL_178;
  }

  switch(v10)
  {
    case '?':
      v39 = 514;
      goto LABEL_178;
    case 'E':
      goto LABEL_134;
    case 'f':
      swift_unknownObjectRetain();
      v38 = 0;
      v39 = 512;
LABEL_184:
      v112 = swift_getObjectType();
      (*(a3 + 240))(v112, a3);
      v113 = String._bridgeToObjectiveCImpl()();

      v114 = (*(a3 + 432))(v112, a3);
      outlined consume of PathOrURL(v37, a3, 1);
      if (v38)
      {
        *&v150 = v38;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v38 = v38;
        v115 = _getErrorEmbeddedNSError<A>(_:)();

        if (v115)
        {
        }

        else
        {
          swift_allocError();
          *v117 = v38;
        }

        v116 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v116 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      goto LABEL_208;
  }

LABEL_177:
  v39 = 512;
LABEL_178:
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v103 = POSIXErrorCode.rawValue.getter();
    v104 = objc_allocWithZone(NSError);
    v105 = String._bridgeToObjectiveCImpl()();

    v38 = [v104 initWithDomain:v105 code:v103 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v106 = [v38 domain];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)(v106);
    v109 = v108;

    if (v107 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v109 == v110)
    {

LABEL_183:
      v37 = v136;
      goto LABEL_184;
    }

    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v111)
    {
      goto LABEL_183;
    }

    goto LABEL_215;
  }

LABEL_219:
  *&v150 = 0;
  *(&v150 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v150 = 0xD000000000000014;
  *(&v150 + 1) = 0x80000001814813E0;
  LODWORD(v214[0]) = v10;
  v133 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v133);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}