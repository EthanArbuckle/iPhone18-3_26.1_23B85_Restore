unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t SensoryFeedback.FeedbackType.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  if (!(a2 >> 62))
  {
    v5 = 10;
    goto LABEL_5;
  }

  if (a2 >> 62 == 1)
  {
    v5 = 11;
LABEL_5:
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v4);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x18D00F730](v6);
  }

  if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(a3, a2))
  {
    if (__PAIR128__(1, 0x8000000000000000) < __PAIR128__(a3, a2))
    {
      if (__PAIR128__(1, 0x8000000000000002) >= __PAIR128__(a3, a2))
      {
        if (a3 == 1 && a2 == 0x8000000000000001)
        {
          v18 = 5;
        }

        else
        {
          v18 = 6;
        }
      }

      else if (a3 == 1 && a2 == 0x8000000000000003)
      {
        v18 = 7;
      }

      else if (a3 == 2 && a2 == 0x8000000000000000)
      {
        v18 = 8;
      }

      else
      {
        v18 = 9;
      }
    }

    else if (a2 <= 0x8000000000000001)
    {
      v18 = (a2 ^ 0x8000000000000000 | a3) != 0;
    }

    else if (a2 ^ 0x8000000000000002 | a3)
    {
      if (a2 ^ 0x8000000000000003 | a3)
      {
        v18 = 4;
      }

      else
      {
        v18 = 3;
      }
    }

    else
    {
      v18 = 2;
    }
  }

  else if (__PAIR128__(3, 0x8000000000000002) >= __PAIR128__(a3, a2))
  {
    if (__PAIR128__(3, 0x7FFFFFFFFFFFFFFFLL) >= __PAIR128__(a3, a2))
    {
      if (a3 == 2 && a2 == 0x8000000000000002)
      {
        v18 = 12;
      }

      else
      {
        v18 = 13;
      }
    }

    else if (a3 == 3 && a2 == 0x8000000000000000)
    {
      v18 = 14;
    }

    else if (a3 == 3 && a2 == 0x8000000000000001)
    {
      v18 = 15;
    }

    else
    {
      v18 = 16;
    }
  }

  else if (__PAIR128__(4, 0x8000000000000001) < __PAIR128__(a3, a2))
  {
    if (a3 == 4 && a2 == 0x8000000000000002)
    {
      v18 = 20;
    }

    else if (a3 == 4 && a2 == 0x8000000000000003)
    {
      v18 = 21;
    }

    else
    {
      v18 = 22;
    }
  }

  else if (a3 == 3 && a2 == 0x8000000000000003)
  {
    v18 = 17;
  }

  else if (a3 == 4 && a2 == 0x8000000000000000)
  {
    v18 = 18;
  }

  else
  {
    v18 = 19;
  }

  return MEMORY[0x18D00F6F0](v18);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + 64;
  v6 = -1 << *(v3 + 32);
  result = a3 & ~v6;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = a1 & 0xC000000000000000;
    v10 = *(v3 + 48);
    v11 = a1 != 0x8000000000000003;
    v12 = a1 != 0x8000000000000000;
    v13 = a2 != 5 || a1 != 0x8000000000000000;
    v14 = a1 != 0x8000000000000001;
    v15 = a2 != 4 || a1 != 0x8000000000000003;
    v16 = a2 != 4 || a1 != 0x8000000000000002;
    v17 = a2 != 4 || a1 != 0x8000000000000001;
    v18 = a2 != 4 || a1 != 0x8000000000000000;
    v19 = a2 != 3 || a1 != 0x8000000000000003;
    v20 = a2 != 3 || a1 != 0x8000000000000002;
    if (a2 != 3)
    {
      v14 = 1;
      v12 = 1;
    }

    if (a2 == 2)
    {
      v21 = a1 != 0x8000000000000002;
    }

    else
    {
      v11 = 1;
      v21 = 1;
    }

    v22 = a2 == 2 && a1 == 0x8000000000000001;
    v64 = v22;
    v23 = a2 == 2 && a1 == 0x8000000000000000;
    v63 = v23;
    v24 = a2 == 1 && a1 == 0x8000000000000003;
    v62 = v24;
    v25 = a2 == 1 && a1 == 0x8000000000000002;
    v61 = v25;
    v26 = a2 == 1 && a1 == 0x8000000000000001;
    v60 = v26;
    v27 = a2 == 1 && a1 == 0x8000000000000000;
    v59 = v27;
    v28 = *&a2 == 0.0 && a1 == 0x8000000000000003;
    v58 = v28;
    v29 = *&a2 == 0.0 && a1 == 0x8000000000000002;
    v65 = v29;
    v30 = *&a2 == 0.0 && a1 == 0x8000000000000001;
    v31 = *&a2 == 0.0 && a1 == 0x8000000000000000;
    v56 = v31;
    v57 = v30;
    v33 = v9 != 0x8000000000000000 || v13;
    v34 = v9 != 0x8000000000000000 || v15;
    v54 = v34;
    v55 = v33;
    if (v9 == 0x8000000000000000)
    {
      v35 = v14;
    }

    else
    {
      v16 = 1;
      v17 = 1;
      v18 = 1;
      v19 = 1;
      v20 = 1;
      v35 = 1;
    }

    v36 = v9 != 0x8000000000000000 || v12;
    v37 = v9 != 0x8000000000000000 || v11;
    v38 = v9 != 0x8000000000000000 || v21;
    do
    {
      v40 = (v10 + 16 * result);
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = *v40 >> 62;
      if (v43)
      {
        if (v43 != 1)
        {
          if (__PAIR128__(2, 0x8000000000000001) >= __PAIR128__(*&v42, v41))
          {
            if (__PAIR128__(1, 0x8000000000000000) < __PAIR128__(*&v42, v41))
            {
              if (__PAIR128__(1, 0x8000000000000002) >= __PAIR128__(*&v42, v41))
              {
                if (*&v42 == 1 && v41 == 0x8000000000000001)
                {
                  if (v60)
                  {
                    return result;
                  }
                }

                else if (v61)
                {
                  return result;
                }
              }

              else if (*&v42 == 1 && v41 == 0x8000000000000003)
              {
                if (v62)
                {
                  return result;
                }
              }

              else if (*&v42 == 2 && v41 == 0x8000000000000000)
              {
                if (v63)
                {
                  return result;
                }
              }

              else if (v64)
              {
                return result;
              }
            }

            else if (v41 <= 0x8000000000000001)
            {
              if (v41 ^ 0x8000000000000000 | *&v42)
              {
                if (v57)
                {
                  return result;
                }
              }

              else if (v56)
              {
                return result;
              }
            }

            else if (v41 ^ 0x8000000000000002 | *&v42)
            {
              if (v41 ^ 0x8000000000000003 | *&v42)
              {
                if (v59)
                {
                  return result;
                }
              }

              else if (v58)
              {
                return result;
              }
            }

            else if (v65)
            {
              return result;
            }
          }

          else if (__PAIR128__(3, 0x8000000000000002) >= __PAIR128__(*&v42, v41))
          {
            if (__PAIR128__(3, 0x7FFFFFFFFFFFFFFFLL) >= __PAIR128__(*&v42, v41))
            {
              if (*&v42 == 2 && v41 == 0x8000000000000002)
              {
                if ((v38 & 1) == 0)
                {
                  return result;
                }
              }

              else if ((v37 & 1) == 0)
              {
                return result;
              }
            }

            else if (*&v42 == 3 && v41 == 0x8000000000000000)
            {
              if ((v36 & 1) == 0)
              {
                return result;
              }
            }

            else if (*&v42 == 3 && v41 == 0x8000000000000001)
            {
              if ((v35 & 1) == 0)
              {
                return result;
              }
            }

            else if (!v20)
            {
              return result;
            }
          }

          else if (__PAIR128__(4, 0x8000000000000001) < __PAIR128__(*&v42, v41))
          {
            if (*&v42 == 4 && v41 == 0x8000000000000002)
            {
              if (!v16)
              {
                return result;
              }
            }

            else if (*&v42 == 4 && v41 == 0x8000000000000003)
            {
              if ((v54 & 1) == 0)
              {
                return result;
              }
            }

            else if ((v55 & 1) == 0)
            {
              return result;
            }
          }

          else if (*&v42 == 3 && v41 == 0x8000000000000003)
          {
            if (!v19)
            {
              return result;
            }
          }

          else if (*&v42 == 4 && v41 == 0x8000000000000000)
          {
            if (!v18)
            {
              return result;
            }
          }

          else if (!v17)
          {
            return result;
          }

          goto LABEL_80;
        }

        if (v9 != 0x4000000000000000)
        {
          goto LABEL_80;
        }
      }

      else if (a1 >> 62)
      {
        goto LABEL_80;
      }

      if (v41 == a1 && v42 == *&a2)
      {
        return result;
      }

LABEL_80:
      result = (result + 1) & v8;
    }

    while (((*(v5 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIFeedbackGenerator);
    lazy protocol witness table accessor for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<SensoryFeedback.FeedbackType, UIFeedbackGenerator>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType()
{
  result = lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType;
  if (!lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensoryFeedback.FeedbackType and conformance SensoryFeedback.FeedbackType);
  }

  return result;
}

uint64_t FeedbackGenerator.implementation.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 48);
  outlined init with copy of PlatformSensoryFeedback?(a1, v6);
  if (*(v4 + 40))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of LocationBasedSensoryFeedback?(a1, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
  return outlined destroy of LocationBasedSensoryFeedback?(v6, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
}

uint64_t outlined init with copy of PlatformSensoryFeedback?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceSubelementProviding?(0, &lazy cache variable for type metadata for PlatformSensoryFeedback?, &lazy cache variable for type metadata for PlatformSensoryFeedback);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for LocationBasedFeedbackAdaptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  (**(v3 - 8))(a1 + 8, a2 + 8);
  return a1;
}

void *sub_18BEB28E0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t protocol witness for PlatformSensoryFeedback.setUp() in conformance LocationBasedFeedbackAdaptor()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(*(v2 + 8) + 8))(v1);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, SensoryFeedback.FeedbackType.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E5ED0], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

double DividerShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v5, *(a1 + 16));
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double protocol witness for Shape.path(in:) in conformance DividerShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DividerShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void type metadata accessor for CustomProgressView<EmptyView, EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void *))
{
  if (!*a2)
  {
    v10[6] = v5;
    v10[7] = v6;
    v10[0] = a3;
    v10[1] = MEMORY[0x1E6981E70];
    v10[2] = a4;
    v10[3] = MEMORY[0x1E6981E60];
    v8 = a5(0, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ProgressView<>.init<>()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6981E70];
  v3 = MEMORY[0x1E6981E60];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<EmptyView, EmptyView>, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for CustomProgressView);
  v5 = v4[13];
  v6 = v4[14];
  v7 = v4[15];
  *a1 = 0;
  *(a1 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v5) = 1;
  *(a1 + v6) = 1;
  *(a1 + v7) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, EmptyView>.Base, v2, v3, type metadata accessor for ProgressView.Base);

  return swift_storeEnumTagMultiPayload();
}

void *protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CircularUIKitProgressView()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);
  type metadata accessor for CircularUIKitProgressView.SwiftUIActivityIndicatorView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = v4;
  if (v3 == 1)
  {
    v6 = v4;
    v7 = 16;
  }

  else
  {
    v8 = v4;
    specialized Environment.wrappedValue.getter(v1, v2, &v11);
    v9 = 101;
    if (v11 - 3 >= 2)
    {
      v9 = 100;
    }

    if (v11 >= 2u)
    {
      v7 = v9;
    }

    else
    {
      v7 = 3;
    }
  }

  [v5 setActivityIndicatorViewStyle_];
  [v5 startAnimating];

  return v5;
}

id @objc LinearUIKitProgressView.Base.SwiftUIProgressView.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

uint64_t partial apply for closure #1 in UIHostingContentView.updateViewGraphForDisplay(isHidden:)()
{
  _UIHostingView.viewGraph.getter();
  GraphHost.incrementPhase()();
}

uint64_t assignWithCopy for LazyHGrid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v6;
  *(a1 + 28) = *(a2 + 28);
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v7 + 80) + 32 + a1) & ~*(v7 + 80), (*(v7 + 80) + 32 + a2) & ~*(v7 + 80));
  return a1;
}

void destroy for GeometryTransform(uint64_t a1)
{
  v2 = *(a1 + 120);
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle, &type metadata for WidgetBorderedButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedButtonStyle and conformance WidgetBorderedButtonStyle, &type metadata for WidgetBorderedButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>();
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  v3 = v2 - 8;
  v4 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v4 + *(v2 + 36), v1);
  outlined consume of Environment<CGFloat?>.Content(*(v4 + *(v3 + 48)), *(v4 + *(v3 + 48) + 8), *(v4 + *(v3 + 48) + 16));

  return swift_deallocObject();
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t assignWithCopy for BorderedButtonStyle_CarCatalyst(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_18BEB34F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void one-time initialization function for defaultAction()
{
  static KeyboardShortcut.defaultAction = 13;
  qword_1ED57A6B8 = 0xE100000000000000;
  qword_1ED57A6C0 = 0;
  byte_1ED57A6C8 = 0;
}

{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCD0];
  v2 = [v0 createDocumentActionWithIntent_];

  static _NewDocumentButton.defaultAction = v2;
}

uint64_t assignWithTake for BorderedButtonStyle_Phone(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 40) != 1)
  {
    v4 = *(a2 + 40);
    if (v4 != 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 16) = *(a2 + 16);
      v9 = *(a1 + 32);
      *(a1 + 32) = v6;
      outlined consume of _Glass.Variant.Role(v7, v8, v9);
      *(a1 + 33) = *(a2 + 33);
      *(a1 + 40) = v4;

      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      goto LABEL_6;
    }

    outlined destroy of Glass(a1 + 16);
  }

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(a2 + 41);
LABEL_6:
  v10 = *(a2 + 72);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v13 = *(a2 + 88);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v13;
  outlined consume of Environment<Color?>.Content(v14, v15);
  return a1;
}

uint64_t assignWithCopy for ResolvedBorderedButton(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = *(a1 + 16);
  v12 = *(a1 + 25);
  *(a1 + 16) = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  outlined copy of Environment<Material?>.Content(v14, v15, v16);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  outlined consume of Environment<Material?>.Content(v17, v18, v19);
  v20 = *(a2 + 56);
  LOBYTE(v15) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v20, v15);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  *(a1 + 56) = v20;
  *(a1 + 64) = v15;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a2 + 72);
  LOBYTE(v15) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v23, v15);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  *(a1 + 72) = v23;
  *(a1 + 80) = v15;
  outlined consume of Environment<Selector?>.Content(v24, v25);
  v26 = *(a2 + 88);
  LOBYTE(v15) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v26, v15);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  *(a1 + 88) = v26;
  *(a1 + 96) = v15;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = *(a2 + 104);
  LOBYTE(v15) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v29, v15);
  v30 = *(a1 + 104);
  v31 = *(a1 + 112);
  *(a1 + 104) = v29;
  *(a1 + 112) = v15;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  v32 = *(a2 + 160);
  if (*(a1 + 160) == 1)
  {
    if (v32 == 1)
    {
      v33 = *(a2 + 136);
      v34 = *(a2 + 152);
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 152) = v34;
      *(a1 + 136) = v33;
    }

    else
    {
      v37 = *(a2 + 136);
      v38 = *(a2 + 144);
      v39 = *(a2 + 152);
      outlined copy of _Glass.Variant.Role(v37, v38, v39);
      *(a1 + 136) = v37;
      *(a1 + 144) = v38;
      *(a1 + 152) = v39;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
    }
  }

  else if (v32 == 1)
  {
    outlined destroy of Glass(a1 + 136);
    v35 = *(a2 + 161);
    v36 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v36;
    *(a1 + 161) = v35;
  }

  else
  {
    v40 = *(a2 + 136);
    v41 = *(a2 + 144);
    v42 = *(a2 + 152);
    outlined copy of _Glass.Variant.Role(v40, v41, v42);
    v43 = *(a1 + 136);
    v44 = *(a1 + 144);
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    v45 = *(a1 + 152);
    *(a1 + 152) = v42;
    outlined consume of _Glass.Variant.Role(v43, v44, v45);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = *(a2 + 160);

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  v46 = *(a2 + 184);
  v47 = *(a2 + 192);
  outlined copy of Environment<Selector?>.Content(v46, v47);
  v48 = *(a1 + 184);
  v49 = *(a1 + 192);
  *(a1 + 184) = v46;
  *(a1 + 192) = v47;
  outlined consume of Environment<Selector?>.Content(v48, v49);
  v50 = *(a2 + 200);
  v51 = *(a2 + 208);
  outlined copy of Environment<Color?>.Content(v50, v51);
  v52 = *(a1 + 200);
  v53 = *(a1 + 208);
  *(a1 + 200) = v50;
  *(a1 + 208) = v51;
  outlined consume of Environment<Color?>.Content(v52, v53);
  v54 = *(a2 + 216);
  v55 = *(a2 + 224);
  outlined copy of Environment<Selector?>.Content(v54, v55);
  v56 = *(a1 + 216);
  v57 = *(a1 + 224);
  *(a1 + 216) = v54;
  *(a1 + 224) = v55;
  outlined consume of Environment<Selector?>.Content(v56, v57);
  v58 = *(a2 + 232);
  v59 = *(a2 + 240);
  v60 = *(a2 + 248);
  v61 = *(a2 + 257);
  v62 = *(a2 + 256);
  outlined copy of Environment<KeyboardShortcut?>.Content(v58, v59, v60, v62, v61);
  v63 = *(a1 + 232);
  v64 = *(a1 + 240);
  v65 = *(a1 + 248);
  v66 = *(a1 + 257);
  *(a1 + 232) = v58;
  *(a1 + 240) = v59;
  *(a1 + 248) = v60;
  v67 = *(a1 + 256);
  *(a1 + 256) = v62;
  *(a1 + 257) = v61;
  outlined consume of Environment<KeyboardShortcut?>.Content(v63, v64, v65, v67, v66);
  v68 = *(a2 + 264);
  v69 = *(a2 + 272);
  outlined copy of Environment<Selector?>.Content(v68, v69);
  v70 = *(a1 + 264);
  v71 = *(a1 + 272);
  *(a1 + 264) = v68;
  *(a1 + 272) = v69;
  outlined consume of Environment<Selector?>.Content(v70, v71);
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  outlined copy of Environment<Color?>.Content(v16, v17);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  outlined consume of Environment<Color?>.Content(v18, v19);
  v20 = *(a2 + 64);
  v21 = *(a2 + 73);
  v22 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v20, v22, v21);
  v23 = *(a1 + 64);
  v24 = *(a1 + 73);
  *(a1 + 64) = v20;
  v25 = *(a1 + 72);
  *(a1 + 72) = v22;
  *(a1 + 73) = v21;
  outlined consume of Environment<CGFloat?>.Content(v23, v25, v24);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v26, v27);
  v28 = *(a1 + 80);
  v29 = *(a1 + 88);
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  outlined consume of Environment<Selector?>.Content(v28, v29);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 91) = *(a2 + 91);
  v30 = *(a2 + 96);
  v31 = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v30, v31);
  v32 = *(a1 + 96);
  v33 = *(a1 + 104);
  *(a1 + 96) = v30;
  *(a1 + 104) = v31;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  v34 = *(a2 + 112);
  v35 = *(a2 + 120);
  v36 = *(a2 + 128);
  v37 = *(a2 + 137);
  v38 = *(a2 + 136);
  outlined copy of Environment<KeyboardShortcut?>.Content(v34, v35, v36, v38, v37);
  v39 = *(a1 + 112);
  v40 = *(a1 + 120);
  v41 = *(a1 + 128);
  v42 = *(a1 + 137);
  *(a1 + 112) = v34;
  *(a1 + 120) = v35;
  *(a1 + 128) = v36;
  v43 = *(a1 + 136);
  *(a1 + 136) = v38;
  *(a1 + 137) = v37;
  outlined consume of Environment<KeyboardShortcut?>.Content(v39, v40, v41, v43, v42);
  v44 = *(a2 + 144);
  LOBYTE(v35) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v44, v35);
  v45 = *(a1 + 144);
  v46 = *(a1 + 152);
  *(a1 + 144) = v44;
  *(a1 + 152) = v35;
  outlined consume of Environment<Selector?>.Content(v45, v46);
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t outlined copy of Material?(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return outlined copy of Material.ID(a1, a2);
  }

  return a1;
}

uint64_t FillShapeStyle.Kind.resolve(in:)(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    EnvironmentValues.colorScheme.getter();
    EnvironmentValues.colorSchemeContrast.getter();
    EnvironmentValues.colorScheme.getter();
  }

  else
  {
    EnvironmentValues.colorScheme.getter();
    EnvironmentValues.colorSchemeContrast.getter();
  }

  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t View.contentMargins(_:_:for:)(char a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  OptionalEdgeInsets.init(_:edges:)();
  *&v17[48] = *(v20 + 9);
  *&v17[39] = v20[0];
  *&v17[23] = v19;
  *&v17[7] = v18;
  v12 = *v17;
  v13 = *&v17[16];
  v14 = *&v17[32];
  v11 = a1;
  v15 = *&v17[48];
  v16 = v9;
  return MEMORY[0x18D00A570](&v11, a5, &type metadata for ContentMarginModifier, a6);
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithCopy for KeyboardShortcut(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>, type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>>);
    }
  }
}

uint64_t outlined consume of _ShapeStyle_Shape.Result(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<Material?>.Content(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return outlined consume of Material?(a1, a2);
  }

  else
  {
  }
}

double BorderedButtonStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = *(v2 + 8);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(a1, v8, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v8;
  v11 = *(v6 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_0(&v8[v11], &a2[*(v12 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v8);
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>();
  a2[*(v13 + 36)] = v10;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
  v15 = &a2[*(v14 + 36)];
  *v15 = v9;
  v15[8] = 0;

  KeyPath = swift_getKeyPath();
  v22 = 0;
  v17 = swift_getKeyPath();
  v21[0] = 0;

  outlined consume of Glass?(0, 0, 0, 1);
  LOBYTE(v6) = v22;
  LOBYTE(v8) = v21[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
  v19 = &a2[*(v18 + 36)];
  *v19 = v9;
  v19[8] = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = 0;
  *(v19 + 2) = 0;
  *&result = 1;
  *(v19 + 40) = xmmword_18CD6A6D0;
  v19[56] = 0;
  *(v19 + 8) = KeyPath;
  v19[72] = v6;
  *(v19 + 10) = v17;
  v19[88] = v8;
  return result;
}

uint64_t assignWithCopy for BorderedButtonStyle_Phone(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  if (*(a1 + 40) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v5;
      *(a1 + 32) = v6;
    }

    else
    {
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      outlined copy of _Glass.Variant.Role(v9, v10, v11);
      *(a1 + 16) = v9;
      *(a1 + 24) = v10;
      *(a1 + 32) = v11;
      *(a1 + 33) = *(a2 + 33);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
    }
  }

  else if (v4 == 1)
  {
    outlined destroy of Glass(a1 + 16);
    v7 = *(a2 + 41);
    v8 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v8;
    *(a1 + 41) = v7;
  }

  else
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = *(a2 + 32);
    outlined copy of _Glass.Variant.Role(v12, v13, v14);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    v17 = *(a1 + 32);
    *(a1 + 32) = v14;
    outlined consume of _Glass.Variant.Role(v15, v16, v17);
    *(a1 + 33) = *(a2 + 33);
    *(a1 + 40) = *(a2 + 40);

    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
  }

  v18 = *(a2 + 64);
  v19 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v18, v19);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  outlined consume of Environment<Selector?>.Content(v20, v21);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  outlined copy of Environment<Color?>.Content(v22, v23);
  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  outlined consume of Environment<Color?>.Content(v24, v25);
  return a1;
}

uint64_t ResolvedBorderedButton.init(configuration:style:)@<X0>(char *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  *(a3 + 72) = swift_getKeyPath();
  *(a3 + 80) = 0;
  *(a3 + 88) = swift_getKeyPath();
  *(a3 + 96) = 0;
  KeyPath = swift_getKeyPath();
  v8 = a2[3];
  *(a3 + 152) = a2[2];
  *(a3 + 168) = v8;
  *(a3 + 184) = a2[4];
  *(a3 + 193) = *(a2 + 73);
  v9 = a2[1];
  *(a3 + 120) = *a2;
  *(a3 + 104) = KeyPath;
  *(a3 + 112) = 0;
  *(a3 + 113) = v5;
  *(a3 + 114) = v6;
  *(a3 + 136) = v9;
  *(a3 + 216) = swift_getKeyPath();
  *(a3 + 224) = 0;
  v10 = swift_getKeyPath();
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 232) = v10;
  *(a3 + 256) = 0;
  result = swift_getKeyPath();
  *(a3 + 264) = result;
  *(a3 + 272) = 0;
  return result;
}

uint64_t sub_18BEB43D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.buttonSizing.getter();
  *a1 = v3;
  return result;
}

double sub_18BEB4418@<D0>(_OWORD *a1@<X8>)
{
  EnvironmentValues.backgroundMaterial.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18BEB449C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.colorScheme.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_18BEB4520@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues._accessibilityReduceTransparency.getter();
  *a1 = result & 1;
  return result;
}

uint64_t outlined copy of Environment<Material?>.Content(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return outlined copy of Material?(a1, a2);
  }

  else
  {
  }
}

void *ResolvedBorderedButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x111uLL);
  v3 = static VerticalAlignment.center.getter();
  specialized Environment.wrappedValue.getter(__dst[0], __dst[1], v52);
  static ButtonSizing.flexible.getter();
  static ButtonSizing.== infix(_:_:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v60[55] = v65;
  *&v60[71] = v66;
  *&v60[87] = v67;
  *&v60[103] = v68;
  *&v60[7] = v62;
  *&v60[23] = v63;
  v61 = 1;
  *&v60[39] = v64;
  KeyPath = swift_getKeyPath();
  v5 = __dst[27];
  v19 = __dst[28];
  *v52 = __dst[27];
  v52[8] = __dst[28];
  *&v52[9] = *(v1 + 225);
  *&v52[25] = *(v1 + 241);
  *&v52[41] = *(v1 + 257);
  v6 = BorderedButtonSpec.defaultFont.getter();
  v7 = swift_getKeyPath();
  v46[0] = v3;
  v46[1] = 0;
  v47[0] = 1;
  *&v47[65] = *&v60[64];
  *&v47[81] = *&v60[80];
  *&v47[97] = *&v60[96];
  *&v47[1] = *v60;
  *&v47[17] = *&v60[16];
  *&v47[33] = *&v60[32];
  *&v47[49] = *&v60[48];
  *&v47[112] = *&v60[111];
  *&v47[120] = KeyPath;
  *&v48 = v6;
  *(&v48 + 1) = v7;
  v42 = *&v47[112];
  v43 = v48;
  v38 = *&v47[48];
  v39 = *&v47[64];
  v40 = *&v47[80];
  v41 = *&v47[96];
  v34 = v3;
  v35 = *v47;
  v36 = *&v47[16];
  v37 = *&v47[32];
  v30 = *&v47[96];
  v31 = *&v47[112];
  v32 = v48;
  v27 = *&v47[48];
  v28 = *&v47[64];
  v29 = *&v47[80];
  v23 = v3;
  v24 = *v47;
  v49 = 1;
  v44 = 1;
  v33 = 1;
  v25 = *&v47[16];
  v26 = *&v47[32];
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  closure #2 in ResolvedBorderedButton.body.getter(&v34, __dst, __src);
  closure #3 in ResolvedBorderedButton.body.getter(&v23, __dst, &__src[41]);
  v50[8] = v31;
  v50[9] = v32;
  v51 = v33;
  v50[4] = v27;
  v50[5] = v28;
  v50[6] = v29;
  v50[7] = v30;
  v50[0] = v23;
  v50[1] = v24;
  v50[2] = v25;
  v50[3] = v26;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v53 = v38;
  v54 = v39;
  v55 = v40;
  v56 = v41;
  *v52 = v34;
  *&v52[16] = v35;
  *&v52[32] = v36;
  *&v52[48] = v37;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v52, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  specialized Environment.wrappedValue.getter(v5, v19 & 1, &v22);
  LOBYTE(v5) = v22;
  specialized Environment.wrappedValue.getter(__dst[2], LOBYTE(__dst[3]) | (BYTE1(__dst[3]) << 8), &v20);
  v8 = v20;
  LOBYTE(KeyPath) = v21;
  static EdgeInsets.zero.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>(v46, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>);
  v17 = swift_getKeyPath();
  result = memcpy(a1, __src, 0x430uLL);
  *(a1 + 1072) = v5;
  *(a1 + 1080) = v8;
  *(a1 + 1088) = KeyPath;
  *(a1 + 1096) = v10;
  *(a1 + 1104) = v12;
  *(a1 + 1112) = v14;
  *(a1 + 1120) = v16;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = 9;
  *(a1 + 1144) = v17;
  *(a1 + 1152) = 0;
  return result;
}

uint64_t BorderedButtonSpec.isDefault.getter()
{
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40) | (*(v0 + 41) << 8), v11);
  v1 = v11[0];
  v2 = v11[1];
  v3 = v11[2];
  v4 = v12;
  if (one-time initialization token for defaultAction != -1)
  {
    v10 = v11[0];
    swift_once();
    v1 = v10;
  }

  if (v2)
  {
    if (qword_1ED57A6B8)
    {
      v5 = qword_1ED57A6C0;
      v6 = byte_1ED57A6C8;
      if (v1 == static KeyboardShortcut.defaultAction && v2 == qword_1ED57A6B8)
      {
        if (v3 != qword_1ED57A6C0)
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      else
      {
        v8 = 0;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v3 != v5)
        {
          goto LABEL_19;
        }
      }

      v8 = v4 == v6;
LABEL_19:

      swift_bridgeObjectRelease_n();
      return v8;
    }
  }

  else
  {
    if (!qword_1ED57A6B8)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t BorderedButtonSpec.defaultFont.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  specialized Environment.wrappedValue.getter(*v0, v2 & 1, &v5);
  if (v5 < 2u)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  v11 = v3;
  v10 = 4;
  v5 = v1;
  v6 = v2;
  v7 = *(v0 + 9);
  v8 = *(v0 + 25);
  v9 = *(v0 + 41);
  if (BorderedButtonSpec.isDefault.getter())
  {
    static Font.Weight.bold.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  return static Font.system(_:design:weight:)();
}

__n128 ResolvedBorderedButton.colorSpec.getter@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  v3 = *(v1 + 5);
  v5 = *(v1 + 48);
  v6 = (v1 + 49);
  specialized Environment.wrappedValue.getter(v4, v3, v5 & 1, &v34);
  if (BYTE8(v34) == 0xFF)
  {
    v7 = v1[1];
    v34 = *v1;
    v35 = v7;
    v8 = *(v1 + 241);
    v52 = *(v1 + 257);
    v9 = *(v1 + 225);
    v49 = *(v1 + 209);
    v50 = v9;
    v51 = v8;
    v10 = *(v1 + 161);
    v45 = *(v1 + 145);
    v46 = v10;
    v11 = *(v1 + 193);
    v47 = *(v1 + 177);
    v48 = v11;
    v12 = *(v1 + 97);
    v41 = *(v1 + 81);
    v42 = v12;
    v13 = *(v1 + 129);
    v43 = *(v1 + 113);
    v44 = v13;
    v14 = *(v1 + 65);
    v39 = *v6;
    v36 = v4;
    v37 = v3;
    v38 = v5;
    v40 = v14;
    ResolvedBorderedButton.opaqueBackgroundSpec.getter(&v28);
  }

  else
  {
    outlined consume of Material?(v34, BYTE8(v34));
    v15 = v1[1];
    v34 = *v1;
    v35 = v15;
    v16 = *(v1 + 241);
    v52 = *(v1 + 257);
    v17 = *(v1 + 225);
    v49 = *(v1 + 209);
    v50 = v17;
    v51 = v16;
    v18 = *(v1 + 161);
    v45 = *(v1 + 145);
    v46 = v18;
    v19 = *(v1 + 193);
    v47 = *(v1 + 177);
    v48 = v19;
    v20 = *(v1 + 97);
    v41 = *(v1 + 81);
    v42 = v20;
    v21 = *(v1 + 129);
    v43 = *(v1 + 113);
    v44 = v21;
    v22 = *(v1 + 65);
    v39 = *v6;
    v36 = v4;
    v37 = v3;
    v38 = v5;
    v40 = v22;
    ResolvedBorderedButton.materialBackgroundSpec.getter(&v28);
  }

  result = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  *a1 = v28;
  *(a1 + 8) = result;
  *(a1 + 24) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v26;
  *(a1 + 56) = v27;
  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    *a4 = a1;
    a4[1] = a2;
    return outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 1, outlined copy of Material?);
  }

  else
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined copy of Material?);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018CD3F760, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined consume of Material?);
  }
}

{
  if (a3)
  {
    *a4 = a1;
    a4[1] = a2;

    return outlined copy of Environment<EnvironmentValues>.Content(a1, a2, 1);
  }

  else
  {
    v13[10] = v4;
    v13[11] = v5;
    outlined copy of Environment<EnvironmentValues>.Content(a1, a2, 0);
    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F710, v13);
      _os_log_impl(&dword_18BD4A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x18D0110E0](v12, -1, -1);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<EnvironmentValues>.Content(a1, a2, 0);
  }
}

{
  if (a3)
  {
    *a4 = a1;
    a4[1] = a2;
    return outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 1, outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?);
  }

  else
  {
    outlined copy of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F5E0, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, 0, outlined consume of TriggerSubmitAction?);
  }
}

uint64_t outlined copy of Environment<AppIntentExecutor?>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

unint64_t outlined copy of BorderedButtonColorSpec.LabelStyle(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

unint64_t destroy for BorderedButtonColorSpec(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 != 255)
  {
    outlined consume of Material.ID(*(a1 + 24), v2);
  }

  result = *(a1 + 48);
  if (result >= 3)
  {
  }

  return result;
}

uint64_t outlined copy of Material.ID(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

unint64_t *assignWithCopy for BorderedButtonColorSpec.LabelStyle(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
  }

  return a1;
}

uint64_t protocol witness for DividerStyle.makeBody(configuration:) in conformance DefaultDividerStyle@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_18BEB5170@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.dividerThickness.getter();
  *a1 = v3;
  return result;
}

__n128 PlainDividerStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  specialized Environment.wrappedValue.getter(a1, a2 & 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v5[6] = v6;
  *&v5[22] = v7;
  *&v5[38] = v8;
  *(a3 + 2) = *v5;
  *a3 = 256;
  *(a3 + 18) = *&v5[16];
  result = *&v5[32];
  *(a3 + 34) = *&v5[32];
  *(a3 + 48) = *(&v8 + 1);
  return result;
}

double specialized Environment.wrappedValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return *&a1;
  }

  v10[9] = v2;
  v10[10] = v3;

  v6 = static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x74616F6C464743, 0xE700000000000000, v10);
    _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x18D0110E0](v9, -1, -1);
    MEMORY[0x18D0110E0](v8, -1, -1);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined consume of Environment<Selector?>.Content(a1, 0);

  return *&v10[2];
}

double protocol witness for Shape.path(in:) in conformance ResolvedBorderShape@<D0>(uint64_t a1@<X8>)
{
  ResolvedBorderShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 ResolvedBorderShape.path(in:)@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  CGRect.inset(by:)();
  if (v5 != 1)
  {
    goto LABEL_9;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      Circle.path(in:)();
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v4 && (v3 & 0xFE) == 2)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    if ((static Solarium.isEnabled(for:)() & 1) == 0)
    {
LABEL_9:
      RoundedRectangle.path(in:)();
      goto LABEL_10;
    }
  }

  Capsule.path(in:)();
LABEL_10:
  result = v8;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ButtonBorderShapeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonBorderShapeKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.buttonBorderShape(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t assignWithTake for BorderedButtonStyle_CarCatalyst(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t initializeWithCopy for BorderedButtonStyle_Phone(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 40);

  if (v4 == 1)
  {
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
    *(a1 + 41) = *(a2 + 41);
  }

  else
  {
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    outlined copy of _Glass.Variant.Role(v6, v7, v8);
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 33) = *(a2 + 33);
    v9 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v9;
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  outlined copy of Environment<Color?>.Content(v12, v13);
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  return a1;
}

uint64_t destroy for BorderedButtonStyle_Phone(uint64_t a1)
{

  if (*(a1 + 40) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 64), *(a1 + 72));
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);

  return outlined consume of Environment<Color?>.Content(v2, v3);
}

void *BorderedButtonStyle_Phone.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[1];
  v19 = v2[2];
  v20 = v4;
  v6 = v2[3];
  *v21 = v2[4];
  *&v21[9] = *(v2 + 73);
  v7 = v2[1];
  v18[0] = *v2;
  v18[1] = v7;
  v15[2] = v19;
  v15[3] = v6;
  *v16 = v2[4];
  *&v16[9] = *(v2 + 73);
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v15[0] = v18[0];
  v15[1] = v5;
  ResolvedBorderedButton.init(configuration:style:)(v17, v15, __src);
  v9 = *v21;
  v10 = v21[8];
  outlined init with copy of BorderedButtonStyle_Phone(v18, v15);
  specialized Environment.wrappedValue.getter(v9, v10, v15);
  v11 = LOBYTE(v15[0]) < 7u;
  KeyPath = swift_getKeyPath();
  result = memcpy(a2, __src, 0x118uLL);
  *(a2 + 280) = KeyPath;
  *(a2 + 288) = v11;
  return result;
}

uint64_t destroy for ResolvedBorderedButton(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 25));
  outlined consume of Environment<Material?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  outlined consume of Environment<Selector?>.Content(*(a1 + 56), *(a1 + 64));
  outlined consume of Environment<Selector?>.Content(*(a1 + 72), *(a1 + 80));
  outlined consume of Environment<Selector?>.Content(*(a1 + 88), *(a1 + 96));
  outlined consume of Environment<Selector?>.Content(*(a1 + 104), *(a1 + 112));

  if (*(a1 + 160) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 136), *(a1 + 144), *(a1 + 152));
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 184), *(a1 + 192));
  outlined consume of Environment<Color?>.Content(*(a1 + 200), *(a1 + 208));
  outlined consume of Environment<Selector?>.Content(*(a1 + 216), *(a1 + 224));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 257));
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  outlined consume of Environment<Color?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 73));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));
  outlined consume of Environment<Selector?>.Content(*(a1 + 96), *(a1 + 104));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 137));
  outlined consume of Environment<Selector?>.Content(*(a1 + 144), *(a1 + 152));
}

uint64_t initializeWithCopy for ResolvedBorderedButton(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Environment<Material?>.Content(v9, v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  v12 = *(a2 + 56);
  LOBYTE(v10) = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v12, v10);
  *(a1 + 56) = v12;
  *(a1 + 64) = v10;
  v13 = *(a2 + 72);
  LOBYTE(v10) = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v13, v10);
  *(a1 + 72) = v13;
  *(a1 + 80) = v10;
  v14 = *(a2 + 88);
  LOBYTE(v10) = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v14, v10);
  *(a1 + 88) = v14;
  *(a1 + 96) = v10;
  v15 = *(a2 + 104);
  LOBYTE(v10) = *(a2 + 112);
  outlined copy of Environment<Selector?>.Content(v15, v10);
  *(a1 + 104) = v15;
  *(a1 + 112) = v10;
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v16 = *(a2 + 160);

  if (v16 == 1)
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 161) = *(a2 + 161);
  }

  else
  {
    v17 = *(a2 + 136);
    v18 = *(a2 + 144);
    v19 = *(a2 + 152);
    outlined copy of _Glass.Variant.Role(v17, v18, v19);
    *(a1 + 136) = v17;
    *(a1 + 144) = v18;
    *(a1 + 152) = v19;
    *(a1 + 153) = *(a2 + 153);
    v20 = *(a2 + 168);
    *(a1 + 160) = v16;
    *(a1 + 168) = v20;
    *(a1 + 176) = *(a2 + 176);
  }

  v21 = *(a2 + 184);
  v22 = *(a2 + 192);
  outlined copy of Environment<Selector?>.Content(v21, v22);
  *(a1 + 184) = v21;
  *(a1 + 192) = v22;
  v23 = *(a2 + 200);
  v24 = *(a2 + 208);
  outlined copy of Environment<Color?>.Content(v23, v24);
  *(a1 + 200) = v23;
  *(a1 + 208) = v24;
  v25 = *(a2 + 216);
  v26 = *(a2 + 224);
  outlined copy of Environment<Selector?>.Content(v25, v26);
  *(a1 + 216) = v25;
  *(a1 + 224) = v26;
  v27 = *(a2 + 232);
  v28 = *(a2 + 240);
  v29 = *(a2 + 248);
  v30 = *(a2 + 257);
  v31 = *(a2 + 256);
  outlined copy of Environment<KeyboardShortcut?>.Content(v27, v28, v29, v31, v30);
  *(a1 + 232) = v27;
  *(a1 + 240) = v28;
  *(a1 + 248) = v29;
  *(a1 + 256) = v31;
  *(a1 + 257) = v30;
  v32 = *(a2 + 264);
  v33 = *(a2 + 272);
  outlined copy of Environment<Selector?>.Content(v32, v33);
  *(a1 + 264) = v32;
  *(a1 + 272) = v33;
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  outlined copy of Environment<Color?>.Content(v10, v11);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v12 = *(a2 + 64);
  v13 = *(a2 + 73);
  v14 = *(a2 + 72);
  outlined copy of Environment<CGFloat?>.Content(v12, v14, v13);
  *(a1 + 64) = v12;
  *(a1 + 72) = v14;
  *(a1 + 73) = v13;
  v15 = *(a2 + 80);
  v16 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v15, v16);
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 91) = *(a2 + 91);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v22 = *(a2 + 137);
  v23 = *(a2 + 136);
  outlined copy of Environment<KeyboardShortcut?>.Content(v19, v20, v21, v23, v22);
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v23;
  *(a1 + 137) = v22;
  v24 = *(a2 + 144);
  LOBYTE(v20) = *(a2 + 152);
  outlined copy of Environment<Selector?>.Content(v24, v20);
  *(a1 + 144) = v24;
  *(a1 + 152) = v20;
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x100) != 0)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    *(a5 + 24) = a4;

    return outlined copy of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 1);
  }

  else
  {
    outlined copy of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 0);
    v10 = static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000018CD3F780, &v15);
      _os_log_impl(&dword_18BD4A000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x18D0110E0](v13, -1, -1);
      MEMORY[0x18D0110E0](v12, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<KeyboardShortcut?>.Content(a1, a2, a3, a4, 0);
  }
}

double ResolvedBorderedButton.opaqueBackgroundSpec.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 113);
  v28 = *(v1 + 114);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 200);
  v10 = *(v1 + 208);
  v27 = specialized Environment.wrappedValue.getter(*(v1 + 104), *(v1 + 112) & 1);
  v11 = specialized Environment.wrappedValue.getter(v4, v5 & 1);
  v12 = v7;
  if (v8)
  {
    if (v7 || (v12 = specialized Environment.wrappedValue.getter(v9, v10 & 1)) != 0)
    {
    }

    else if (v6)
    {
      v12 = static Color.accentColor.getter();
    }

    else
    {
      v12 = static Color.red.getter();
    }

    v12 |= 0x4000000000000000uLL;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v13 = static Color.accentColor.getter();
    goto LABEL_15;
  }

  if (v7 || (v12 = specialized Environment.wrappedValue.getter(v9, v10 & 1)) != 0)
  {

    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0x8000000000000000;
    if (v6)
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  v13 = static Color.red.getter();
LABEL_15:
  v14 = v13;
  specialized Environment.wrappedValue.getter(v2, v3 & 1, &v30);
  if ((v11 & 1) == 0)
  {
    v18 = static Color.secondarySystemFill.getter();

    v19 = 0.75;
    v17 = 1.0;
    v12 = 1;
    goto LABEL_24;
  }

  v15 = v30;
  if (!(v12 >> 62))
  {

    v21 = static Color.secondarySystemFill.getter();
    if ((v15 & 1) == 0)
    {
      if (v27 == 2 || (v27 & 1) != 0)
      {
        if (static Color.yellow.getter() != v12)
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
        }

        v25 = Color.opacity(_:)();

        v21 = v25;
      }

      if (v28)
      {
        v19 = 0.75;
      }

      else
      {
        v19 = 1.0;
      }

      if (v28)
      {
        v17 = 0.65;
      }

      else
      {
        v17 = 1.0;
      }

      v18 = v21;
      goto LABEL_24;
    }

    if (v27 != 2 && (v27 & 1) == 0)
    {

      v18 = v21;
      if (v28)
      {
        goto LABEL_50;
      }

      goto LABEL_61;
    }

    if (static Color.red.getter() == v12)
    {
      goto LABEL_48;
    }

    v22 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

    if (v22)
    {
      goto LABEL_49;
    }

    if (static Color.pink.getter() == v12)
    {
LABEL_48:
    }

    else
    {
      dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
    }

LABEL_49:
    v18 = Color.opacity(_:)();
    if (v28)
    {
LABEL_50:

      v19 = 1.0;
      Color.init(_:white:opacity:)();
      v24 = Color.over(_:)();

      v17 = 1.4;
      v12 = v24;
      goto LABEL_24;
    }

LABEL_61:

    v17 = 1.0;
    v19 = 1.0;
    goto LABEL_24;
  }

  if (v12 >> 62 == 1)
  {
    v16 = v12 & 0x3FFFFFFFFFFFFFFFLL;
    if (v27 == 2 || (v27 & 1) != 0)
    {
      v12 = 0;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v12 &= 0x3FFFFFFFFFFFFFFFuLL;
      if (v28)
      {
LABEL_21:
        if (v15)
        {

          outlined copy of BorderedButtonColorSpec.LabelStyle(v12);
          v17 = 1.0;
          Color.init(_:white:opacity:)();
          v18 = Color.over(_:)();

          outlined consume of BorderedButtonColorSpec.LabelStyle(v12);
        }

        else
        {

          v17 = 0.75;
          v18 = v16;
        }

        goto LABEL_47;
      }
    }

    v17 = 1.0;

    outlined copy of BorderedButtonColorSpec.LabelStyle(v12);
    v18 = Color.opacity(_:)();

    outlined consume of BorderedButtonColorSpec.LabelStyle(v12);

    v19 = 1.0;
  }

  else
  {
    v18 = static Color.secondarySystemFill.getter();
    if (v28)
    {
      if ((v15 & 1) == 0)
      {
        v17 = 0.75;
        v12 = v14;
LABEL_47:
        v19 = 0.75;
        goto LABEL_24;
      }

      v17 = 1.0;
      Color.init(_:white:opacity:)();
      v23 = Color.over(_:)();

      Color.init(_:white:opacity:)();
      v12 = Color.over(_:)();

      v18 = v23;
      v19 = 1.0;
    }

    else
    {
      if (v27 != 2 && (v27 & 1) != 0)
      {
        if (v14 != static Color.yellow.getter())
        {
          dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
        }

        v26 = Color.opacity(_:)();

        v18 = v26;
      }

      v17 = 1.0;
      v12 = v14;
      v19 = 1.0;
    }
  }

LABEL_24:
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = 0x3FF0000000000000;
  result = 0.0;
  *(a1 + 24) = xmmword_18CD6E1E0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v12;
  *(a1 + 56) = v19;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

uint64_t static BorderedButtonColorSpec.imageBackgroundSpec(isEnabled:isPressed:resolvedTint:defaultTint:colorScheme:)@<X0>(char a1@<W0>, char a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = static Color.clear.getter();
  if (a1)
  {
    static Material.thick.getter();
    if (a3 >> 62)
    {
      if (a3 >> 62 != 1)
      {
        if (v11)
        {
          if (a2)
          {
            static Material.ultraThin.getter();
            outlined consume of Material.ID(v29, v30);
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v17 = 1.0;
            Color.init(_:white:opacity:)();
            a3 = Color.over(_:)();
          }

          else
          {

            v17 = 1.0;
            a3 = a4;
          }

          v14 = 1.0;
        }

        else
        {
          v14 = 1.0;
          v17 = 1.0;
          if (a2)
          {
            static Material.thin.getter();
            outlined consume of Material.ID(v29, v30);
            v29 = v26;
            v30 = v27;
            v31 = v28;
            v17 = 0.75;
          }

          a3 = a4;
        }

        goto LABEL_34;
      }

      v13 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      if (v11)
      {
        if (a2)
        {
          LOBYTE(v26) = 0;

          v14 = 1.0;
          Color.init(_:white:opacity:)();
          v15 = Color.over(_:)();

          static Material.ultraThin.getter();

          result = outlined consume of Material.ID(v29, v30);
          a3 = 0;
          v29 = v26;
          v30 = v27;
          v31 = v28;
          v17 = 0.75;
          v12 = v15;
LABEL_34:
          *a6 = v12;
          *(a6 + 8) = v14;
          *(a6 + 16) = 0x3FF0000000000000;
          *(a6 + 24) = v29;
          *(a6 + 32) = v30 | (v31 << 32);
          *(a6 + 40) = 0;
          *(a6 + 48) = a3;
          *(a6 + 56) = v17;
          *(a6 + 64) = 0x3FF0000000000000;
          return result;
        }
      }

      else
      {

        if (a2)
        {
          static Material.ultraThin.getter();
          result = outlined consume of Material.ID(v29, v30);
          a3 = 0;
          v29 = v26;
          v30 = v27;
          v31 = v28;
          v17 = 0.75;
          v14 = 0.75;
LABEL_33:
          v12 = v13;
          goto LABEL_34;
        }
      }

      a3 = 0;
      v17 = 1.0;
LABEL_32:
      v14 = 1.0;
      goto LABEL_33;
    }

    if ((v11 & 1) == 0)
    {
      if (static Color.yellow.getter() != a3)
      {
        dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
      }

      v13 = Color.opacity(_:)();

      v14 = 1.0;
      if (a2)
      {
        static Material.ultraThin.getter();
        result = outlined consume of Material.ID(v29, v30);
        v29 = v26;
        v30 = v27;
        v31 = v28;
        v17 = 0.75;
      }

      else
      {
        v17 = 1.0;
      }

      goto LABEL_33;
    }

    if (static Color.red.getter() == a3)
    {
      goto LABEL_29;
    }

    v24 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

    if (v24)
    {
      goto LABEL_30;
    }

    if (static Color.pink.getter() == a3)
    {
LABEL_29:
    }

    else
    {
      dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
    }

LABEL_30:
    v13 = Color.opacity(_:)();

    v17 = 1.0;
    if (a2)
    {
      static Material.ultraThin.getter();
      outlined consume of Material.ID(v29, v30);
      v29 = v26;
      v30 = v27;
      v31 = v28;
      Color.init(_:white:opacity:)();
      v25 = Color.over(_:)();

      a3 = v25;
    }

    goto LABEL_32;
  }

  static Material.ultraThin.getter();
  result = Color.init(_:white:opacity:)();
  *a6 = v12;
  if (v11)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a6 + 8) = _Q0;
    *(a6 + 24) = v29;
    *(a6 + 32) = v30 | (v31 << 32);
    *(a6 + 40) = 0;
    *(a6 + 48) = result;
    *(a6 + 56) = xmmword_18CDA7C90;
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    *(a6 + 8) = _Q0;
    *(a6 + 24) = v29;
    *(a6 + 32) = v30 | (v31 << 32);
    *(a6 + 40) = 0;
    *(a6 + 48) = result;
    *(a6 + 56) = xmmword_18CDA7C80;
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x100) != 0)
  {
    *a3 = result;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    v3 = result;
    outlined copy of Environment<CGFloat?>.Content(result, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F550, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(v3, a2, 0);
  }

  return result;
}

{
  if ((a2 & 0x100) != 0)
  {
    *a3 = result;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    v3 = result;
    outlined copy of Environment<CGFloat?>.Content(result, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x800000018CD3F370, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(v3, a2, 0);
  }

  return result;
}

{
  if ((a2 & 0x100) != 0)
  {
    *a3 = result;
    *(a3 + 8) = a2 & 1;
  }

  else
  {
    v3 = result;
    outlined copy of Environment<CGFloat?>.Content(result, a2, 0);
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C7974536E6F6349, 0xE900000000000065, &v9);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<CGFloat?>.Content(v3, a2, 0);
  }

  return result;
}

uint64_t ResolvedBorderedButton.resolvedBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  v6 = *(v1 + 27);
  v7 = *(v1 + 224);
  specialized Environment.wrappedValue.getter(v6, v7 & 1, &v42);
  v21 = v42;
  specialized Environment.wrappedValue.getter(v3, v4 & 0xFFFFFEFF | ((v5 & 1) << 8), &v22);
  v20 = v22;
  v19 = BYTE8(v22);
  static EdgeInsets.zero.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v22 = *v1;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v34 = *(v1 + 154);
  v35 = *(v1 + 170);
  *v36 = *(v1 + 186);
  *&v36[14] = *(v1 + 200);
  v30 = *(v1 + 90);
  v31 = *(v1 + 106);
  v32 = *(v1 + 122);
  v33 = *(v1 + 138);
  v26 = *(v1 + 26);
  v27 = *(v1 + 42);
  v28 = *(v1 + 58);
  v29 = *(v1 + 74);
  v37 = v6;
  v38 = v7;
  v41 = *(v1 + 257);
  v39 = *(v1 + 225);
  v40 = *(v1 + 241);
  ResolvedBorderedButton.colorSpec.getter(&v42);
  v16 = Color.opacity(_:)();
  outlined destroy of BorderedButtonColorSpec(&v42);
  ResolvedBorderedButton.colorSpec.getter(&v22);
  result = outlined destroy of BorderedButtonColorSpec(&v22);
  v18 = BYTE14(v26);
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = 256;
  *(a1 + 66) = v18;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderedButtonColorSpec.LabelStyle(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t destroy for BorderedButtonColorSpec.LabelStyle(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t *sub_18BEB6DD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = a1;

    a1 = v4;
  }

  *a1 = v3;
  return a1;
}

uint64_t storeEnumTagSinglePayload for BorderedButtonColorSpec.LabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t protocol witness for ShapeStyle._apply(to:) in conformance BorderedButtonColorSpec.LabelStyle(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    if (v2 == 1)
    {
      v3 = 2;
      goto LABEL_6;
    }

    if (v2 == 2)
    {
      v3 = 3;
LABEL_6:

      return MEMORY[0x1EEDE18C8](a1, v3);
    }

    return Color._apply(to:)();
  }

  else
  {
    static Color.white.getter();
    Color._apply(to:)();
  }
}

void UIHostingContentView.bounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x710);
  v19[1] = *((*MEMORY[0x1E69E7D40] & *v4) + 0x700);
  v19[2] = v9;
  v10 = type metadata accessor for UIHostingContentView();
  v20.receiver = v4;
  v20.super_class = v10;
  objc_msgSendSuper2(&v20, sel_bounds);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19[0].receiver = v4;
  v19[0].super_class = v10;
  [(objc_super *)v19 setBounds:a1, a2, a3, a4];
  UIHostingContentView.bounds.didset(v12, v14, v16, v18);
}

void @objc UIHostingContentView.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  UIHostingContentView.bounds.setter(a2, a3, a4, a5);
}

void UIHostingContentView.bounds.didset(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  if (v8 != a3 || v7 != a4)
  {
    v10 = _UIHostingView.base.getter();
    UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
  }
}

uint64_t FillShapeStyle._apply(to:)(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v24 = v3;
  v25 = v2;

  EnvironmentValues.backgroundMaterial.getter();

  v5 = *(&v33[0] + 1);
  if (BYTE8(v33[0]) != 0xFF)
  {
    v18 = *&v33[0];
    *(a1 + 105) = 0;
    v24 = v18;
    LOBYTE(v25) = v5;
    HIDWORD(v25) = HIDWORD(v5);
    ForegroundMaterialStyle._apply(to:)();
    return outlined consume of Material.ID(v24, v25);
  }

  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      goto LABEL_31;
    }

    if (v9 == 4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
LABEL_21:
      *(a1 + 24) = v9;
      goto LABEL_22;
    }

    if (v8 | v6 | v7)
    {
LABEL_31:
      v22 = AnyShapeStyle.init<A>(_:)();
      result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = v22;
      v23 = 2;
    }

    else
    {
      result = outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      v23 = 4;
    }

    *(a1 + 40) = v23;
    return result;
  }

  if (*(a1 + 24))
  {
    if (v9 == 1)
    {
      if (v6 == v8)
      {
        return result;
      }

      if (v8 < v6)
      {
        __break(1u);
      }

      else if (v6 < v8)
      {
        do
        {
          v10 = v6 + 1;
          v11 = *(a1 + 64);
          v12 = *(a1 + 80);
          v13 = *(a1 + 32);
          v34 = *(a1 + 48);
          v35 = v11;
          v36[0] = v12;
          *(v36 + 12) = *(a1 + 92);
          v14 = *(a1 + 16);
          v33[0] = *a1;
          v33[1] = v14;
          v33[2] = v13;
          *&v28[24] = *(&v14 + 1);
          v29 = v13;
          v30 = v34;
          v31 = v11;
          v32[0] = v12;
          *(v32 + 12) = *(v36 + 12);
          *v28 = v7;
          *&v28[8] = xmmword_18CD633F0;
          v28[24] = 1;
          v15 = 3;
          if (v6 < 3)
          {
            v15 = v6;
          }

          if (v6 >= 0)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v26[0] = v30;
          outlined init with copy of _ShapeStyle_Shape(v33, &v24);

          FillShapeStyle.Kind.resolve(in:)(v26, v16);

          Color._apply(to:)();

          _ShapeStyle_Shape.stylePack.getter();
          LOBYTE(v26[0]) = v7;
          _ShapeStyle_Pack.subscript.getter();

          v17 = _ShapeStyle_Shape.stylePack.modify();
          _ShapeStyle_Pack.subscript.setter();
          v17(v26, 0);
          v26[4] = v31;
          v27[0] = v32[0];
          *(v27 + 12) = *(v32 + 12);
          v26[0] = *v28;
          v26[1] = *&v28[16];
          v26[2] = v29;
          v26[3] = v30;
          result = outlined destroy of _ShapeStyle_Shape(v26);
          ++v6;
        }

        while (v8 != v10);
        return result;
      }

      __break(1u);
      return result;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    LOBYTE(v9) = 2;
    goto LABEL_21;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
LABEL_22:
  v19 = 3;
  if (v7 < 3)
  {
    v19 = v7;
  }

  if (v7 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a1 + 56);
  v24 = *(a1 + 48);
  v25 = v21;

  FillShapeStyle.Kind.resolve(in:)(&v24, v20);

  Color._apply(to:)();
}

double _IndefiniteSymbolEffectModifier.EffectEnvironment.value.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v20[1] = a1;
  v21 = a2;
  v2 = type metadata accessor for SymbolEffectOptions();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v11 = Value[1];
  *&v42 = *Value;
  *(&v42 + 1) = v11;
  v12 = type metadata accessor for _IndefiniteSymbolEffectModifier(0);

  if (*(AGGraphGetValue() + *(v12 + 24)) == 1)
  {
    v13 = AGGraphGetValue();
    (*(v7 + 16))(v9, v13, v6);
    v14 = AGGraphGetValue();
    (*(v3 + 16))(v5, v14 + *(v12 + 20), v2);
    _SymbolEffect.init(config:options:)(v9, v5, &v33);
    v15 = v35;
    v16 = v36;
    if ((~v35 & 0xFFFFFFFE) != 0 || (v36 & 0xFEFE) != 2)
    {
      v18 = v33;
      v17 = v34;
      v32 = v39 & 1;
      v31 = v41 & 1;
      v22 = v33;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v28 = v39 & 1;
      v29 = v40;
      v30 = v41 & 1;
      EnvironmentValues.appendSymbolEffect(_:for:)();
      outlined consume of SymbolEffect?(v18, v17, v15, v16);
    }
  }

  result = *&v42;
  *v21 = v42;
  return result;
}

uint64_t *assignWithCopy for PlainButtonStyleBase(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v8, v9);
  v10 = a1[2];
  v11 = *(a1 + 24);
  a1[2] = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t View.accessibilityAction(named:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3 & 1;
  v23 = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  outlined copy of Text.Storage(a1, a2, a3 & 1);
  v18 = lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();

  View.accessibilityAction<A>(_:label:image:_:)(&v20, 0, 0, 0, 0, 0, thunk for @escaping @callee_guaranteed () -> ()partial apply, v17, a9, a7, &type metadata for AccessibilityVoidAction, a8, v18);

  return outlined consume of AccessibilityActionKind.ActionKind(v20, v21, v22, v23);
}

char *specialized static ContentMarginModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  result = AGGraphGetValue();
  v4 = *result;
  if (!*result)
  {
    return result;
  }

  if (result[65] > 1u)
  {
    if (result[65] == 2)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);

        PropertyList.Tracker.value<A>(_:for:)();

        if ((v4 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
        lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
        PropertyList.subscript.getter();
        if ((v4 & 1) == 0)
        {
LABEL_16:
          if ((v4 & 2) != 0)
          {
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            if ((v4 & 4) == 0)
            {
LABEL_18:
              if ((v4 & 8) == 0)
              {
LABEL_20:
                v6 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>;
                type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
                v7 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>;
                goto LABEL_37;
              }

LABEL_19:
              OptionalEdgeInsets.subscript.getter();
              OptionalEdgeInsets.subscript.setter();
              goto LABEL_20;
            }
          }

          else if ((v4 & 4) == 0)
          {
            goto LABEL_18;
          }

          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 8) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

      OptionalEdgeInsets.subscript.getter();
      OptionalEdgeInsets.subscript.setter();
      goto LABEL_16;
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);

      PropertyList.Tracker.value<A>(_:for:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
      PropertyList.subscript.getter();
      if ((v4 & 1) == 0)
      {
LABEL_32:
        if ((v4 & 2) != 0)
        {
          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 4) == 0)
          {
LABEL_34:
            if ((v4 & 8) == 0)
            {
LABEL_36:
              v6 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>;
              type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
              v7 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>;
              goto LABEL_37;
            }

LABEL_35:
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            goto LABEL_36;
          }
        }

        else if ((v4 & 4) == 0)
        {
          goto LABEL_34;
        }

        OptionalEdgeInsets.subscript.getter();
        OptionalEdgeInsets.subscript.setter();
        if ((v4 & 8) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    goto LABEL_32;
  }

  if (result[65])
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);

      PropertyList.Tracker.value<A>(_:for:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
      PropertyList.subscript.getter();
      if ((v4 & 1) == 0)
      {
LABEL_24:
        if ((v4 & 2) != 0)
        {
          OptionalEdgeInsets.subscript.getter();
          OptionalEdgeInsets.subscript.setter();
          if ((v4 & 4) == 0)
          {
LABEL_26:
            if ((v4 & 8) == 0)
            {
LABEL_28:
              v6 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>;
              type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
              v7 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>;
              goto LABEL_37;
            }

LABEL_27:
            OptionalEdgeInsets.subscript.getter();
            OptionalEdgeInsets.subscript.setter();
            goto LABEL_28;
          }
        }

        else if ((v4 & 4) == 0)
        {
          goto LABEL_26;
        }

        OptionalEdgeInsets.subscript.getter();
        OptionalEdgeInsets.subscript.setter();
        if ((v4 & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    goto LABEL_24;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);

    PropertyList.Tracker.value<A>(_:for:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
  PropertyList.subscript.getter();
  if (v4)
  {
LABEL_6:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_42:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OptionalEdgeInsets.subscript.getter();
  OptionalEdgeInsets.subscript.setter();
  if ((v4 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  if ((v4 & 8) != 0)
  {
LABEL_10:
    OptionalEdgeInsets.subscript.getter();
    OptionalEdgeInsets.subscript.setter();
  }

LABEL_11:
  v6 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
  v7 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>;
LABEL_37:
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(v7, v6);

  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput()
{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput;
  if (!lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>();
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>>);
    }
  }
}

void type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI28ButtonStyleContainerModifierVyAA07PlattercD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_6(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, MEMORY[0x1E697FBE0], MEMORY[0x1E697FBD8], MEMORY[0x1E69801E0]);
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, lazy protocol witness table accessor for type BorderedButtonStyle_CarCatalyst and conformance BorderedButtonStyle_CarCatalyst, &type metadata for BorderedButtonStyle_CarCatalyst, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone()
{
  result = lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone;
  if (!lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<WidgetBorderedButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceF0VGAA28ButtonStyleContainerModifierVyAA07PlatterjK0VGAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0p5InputG0RzAaRR_AaRR0_rlWlTm_0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>();
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderedButtonStyle_Phone>, lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone, &type metadata for BorderedButtonStyle_Phone, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderedButtonStyle_Phone> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ButtonContainerIsBorderedInput>, lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput, &type metadata for ButtonContainerIsBorderedInput, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonContainerIsBorderedInput> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t associated type witness table accessor for View.Body : View in ResolvedBorderedButton()
{
  return swift_getOpaqueTypeConformance2();
}

{
  return swift_getOpaqueTypeConformance2();
}

void type metadata accessor for HStack<ButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI6HStackVyAA24ButtonStyleConfigurationV5LabelVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Font?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMaTm_0(255, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>);
    }
  }
}

void type metadata accessor for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for _ShapeView<ResolvedBorderShape, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, Color>)
  {
    lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<ResolvedBorderShape, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<ButtonStyleConfiguration.Label>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, StaticIf<ShouldRenderAsTemplate, ButtonDefaultRenderingModeModifier, EmptyModifier>>, _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>>, _PaddingLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>, type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect>, _BlendModeEffect>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ShapeView<ResolvedBorderShape, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<ResolvedBorderShape, Color>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ResolvedBorderShape, Color>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>)
  {
    type metadata accessor for HStack<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle>, &type metadata for BorderedButtonColorSpec.LabelStyle, &protocol witness table for BorderedButtonColorSpec.LabelStyle, MEMORY[0x1E6980AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DefaultForegroundStyleModifier<BorderedButtonColorSpec.LabelStyle> and conformance _DefaultForegroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ClipEffect<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<ResolvedBorderShape> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<ToolbarItemWritesTintColorPredicate>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<ResolvedBorderShape>, lazy protocol witness table accessor for type ResolvedBorderShape and conformance ResolvedBorderShape, &type metadata for ResolvedBorderShape, MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<ResolvedBorderShape> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

uint64_t implicit closure #1 in static KeyboardShortcutBindingBehavior._makeView(modifier:inputs:body:)(int a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a1;
  type metadata accessor for KeyboardShortcutBindingBehavior();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[2];
  v34 = a2[3];
  v35 = v10;
  v36[0] = v11;
  *(v36 + 12) = *(a2 + 92);
  v13 = a2[1];
  v31 = *a2;
  v32 = v13;
  v33 = v12;
  *v28 = &type metadata for TextPlatformItemListFlags;
  *&v28[8] = a4;
  *&v28[16] = &protocol witness table for TextPlatformItemListFlags;
  *&v28[24] = a5;
  v14 = type metadata accessor for PlatformItemListGenerator();
  (*(*(v14 - 8) + 16))(v28, a2, v14);
  if (one-time initialization token for keyboardShortcut != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.keyboardShortcut;
  swift_beginAccess();
  _s7SwiftUI16KeyboardShortcutVSgMaTm_0(0, &lazy cache variable for type metadata for KeyboardShortcut?, &type metadata for KeyboardShortcut, MEMORY[0x1E69E6720]);
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v16 = *(a3 + 48);
  *&v28[32] = *(a3 + 32);
  *&v28[48] = v16;
  *&v28[64] = *(a3 + 64);
  *&v28[80] = *(a3 + 80);
  v17 = *(a3 + 16);
  *v28 = *a3;
  *&v28[16] = v17;
  v18 = _ViewInputs.isEnabled.getter();
  *(&v30[3] + 4) = v34;
  *(&v30[4] + 4) = v35;
  *(&v30[5] + 4) = v36[0];
  v30[6] = *(v36 + 12);
  *(v30 + 4) = v31;
  *(&v30[1] + 4) = v32;
  *(&v30[2] + 4) = v33;
  *&v28[52] = v30[3];
  *&v28[68] = v30[4];
  *&v28[84] = v30[5];
  *&v28[100] = *(v36 + 12);
  *&v28[4] = v30[0];
  *&v28[20] = v30[1];
  v19 = *(a3 + 56);
  *v28 = v9;
  v20 = *MEMORY[0x1E698D3F8];
  *&v28[36] = v30[2];
  *&v28[116] = v15;
  *&v28[120] = v18;
  *&v28[124] = v19;
  v29 = v20;
  MEMORY[0x1EEE9AC00](v18);
  v21 = type metadata accessor for BindKeyboardShortcutItems();
  v25[2] = v21;
  v25[3] = swift_getWitnessTable();
  type metadata accessor for Attribute<[KeyboardShortcutBinding]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_25, v25, v21, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  v36[1] = *&v28[96];
  v36[2] = *&v28[112];
  v37 = v29;
  v33 = *&v28[32];
  v34 = *&v28[48];
  v35 = *&v28[64];
  v36[0] = *&v28[80];
  v31 = *v28;
  v32 = *&v28[16];
  (*(*(v21 - 8) + 8))(&v31, v21);
  return v26;
}

id specialized static KitCoreUINamedColorProvider.effectiveCGColor(cuiColor:in:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  result = [a1 systemColorName];
  if (result)
  {
    v5 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = Selector.init(_:)();
    type metadata accessor for UIColor();
    v7 = [swift_getObjCClassFromMetadata() respondsToSelector_];
    result = 0;
    if (v7)
    {
      v8[0] = v2;
      v8[1] = v3;
      return specialized static KitCoreUINamedColorProvider.withAppearance(cuiColor:environment:_:)(v8, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, ButtonStyleContainerModifier<BorderedButtonStyle_Phone>>, ViewInputFlagModifier<ButtonContainerIsBorderedInput>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id specialized UICollectionViewListCoordinator.__allocating_init(dataSource:selection:editMode:transaction:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *(a3 + 16);
  *&v9[*((*MEMORY[0x1E69E7D40] & *v9) + 0x348)] = 0;
  v12 = *a3;
  v13 = v10;
  return specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(a1, a2, &v12, a4);
}

uint64_t closure #1 in closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter(uint64_t a1, void *a2)
{

  MEMORY[0x18D00CC30](v3);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(255, &lazy cache variable for type metadata for [SectionAccumulator.Item], MEMORY[0x1E697F490], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Range<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSnySiGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _sSnySiGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _sSnySiGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6530]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for PopoverItemStateProvider()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void PlatformFallbackButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>();
  v11 = &a2[*(v10 + 36)];
  *v11 = 0;
  v11[8] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle_CarCatalyst>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, EmptyModifier>>();
  v13 = &a2[*(v12 + 36)];
  *v13 = 0;
  v13[8] = 0;
}

void ConditionallyBorderedStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v7;
  v8 = *(v5 + 32);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_accessibilityButtonBorderSpec>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_3(&v7[v8], &a2[*(v9 + 36)], type metadata accessor for ButtonAction);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_1(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
  v13 = &a2[*(v12 + 36)];
  *v13 = KeyPath;
  v13[8] = 0;
  *(v13 + 2) = v11;
  v13[24] = 0;
}

uint64_t AccessibilityButtonBorderModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)))
  {
    specialized Environment.wrappedValue.getter(v3, v4, &v21);
    v7 = 20.0;
    v8 = 15.0;
    if (v21 - 3 >= 2)
    {
      v8 = 7.0;
      v7 = 12.0;
    }

    if (v21 >= 2u)
    {
      v9 = v8;
    }

    else
    {
      v9 = 5.0;
    }

    if (v21 >= 2u)
    {
      v10 = v7;
    }

    else
    {
      v10 = 10.0;
    }

    specialized Environment.wrappedValue.getter(v5, v6, &v20);
    v11 = 0.0;
    if (v20 - 7 <= 4)
    {
      v11 = dbl_18CDA2808[(v20 - 7)];
    }

    v12 = v10 + v11;
    v13 = v9;
    v14 = v12;
  }

  else
  {
    static EdgeInsets.zero.getter();
    v9 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  result = static Edge.Set.all.getter();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = 0;
  return result;
}

void ButtonShapeEffect.EffectState.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v4 = v3;
  v5 = *Value;
  if (AGGraphGetOutputValue())
  {
    if ((v4 & 1) == 0)
    {
      return;
    }

    v6 = *(v1 + 144);
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      return;
    }
  }

  v7 = *(v1 + 136);
  if (v7)
  {
    if (*(v1 + 124) == 1)
    {
      v8 = v7;
      if (*(v1 + 116))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = v7;
      AGGraphResetIndirectAttribute();
      if (*(v1 + 116))
      {
LABEL_11:
        AGSubgraphRef.willInvalidate(isInserted:)(1);
        AGSubgraphInvalidate();

        *(v1 + 136) = 0;
        goto LABEL_12;
      }
    }

    AGGraphResetIndirectAttribute();
    goto LABEL_11;
  }

LABEL_12:
  if (v5)
  {
    v10 = AGSubgraphGetGraph();
    v11 = AGSubgraphCreate();

    AGSubgraphAddChild();
    *(v1 + 136) = v11;
    v12 = v11;
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    ButtonShapeEffect.EffectState.makeOutputs()();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }

  *(v1 + 144) = v5;
}

uint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Range<Int>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI4ViewPAAE26readNavigationDestinations8position8isActive6readerQrAA0e5StackC8PositionVSg_Sbqd__mtAA0E17DestinationReaderRd__lFySayAA0eM12ResolverBaseCGzcfU_TA_0(uint64_t result)
{
  if (*(v1 + 16) == 1)
  {
    v2 = result;

    *v2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for PPTTestCase(uint64_t result, int a2, int a3)
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

uint64_t MatchedTransitionSourceConfiguration.clipShape(_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = v3;
  return MatchedTransitionSourceConfiguration.concat<A>(_:)(&v5, a2, &unk_1EFFE4C18, a3);
}

uint64_t MatchedTransitionSourceConfiguration.concat<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return CombinedMatchedTransitionSourceConfiguration.init(a:b:)(v14, v10, a2, a3, a4);
}

uint64_t CombinedMatchedTransitionSourceConfiguration.init(a:b:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for CombinedMatchedTransitionSourceConfiguration();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

__n128 protocol witness for MatchedTransitionSourceConfiguration._update(configuration:) in conformance CornerConfiguration(uint64_t a1)
{
  *(a1 + 56) = v1[1].n128_u8[0];
  result = *v1;
  *(a1 + 40) = *v1;
  return result;
}

uint64_t MatchedTransitionSourceSourceMarkingEffect.needsUpdateFor(newValue:)(uint64_t a1)
{
  outlined init with copy of _Benchmark(a1, v19);
  type metadata accessor for PlatformGroupFactory();
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v18, 0, 137);
  }

  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect(v1, v17);
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v18, v8);
  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v17, v10);
  if (!v9)
  {
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
    if (!v11)
    {
      outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
      v3 = 0;
      goto LABEL_10;
    }

LABEL_9:
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for (MatchedTransitionSourceSourceMarkingEffect?, MatchedTransitionSourceSourceMarkingEffect?));
    v3 = 1;
    goto LABEL_10;
  }

  outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(v8, v7);
  if (!v11)
  {
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
    outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v7);
    goto LABEL_9;
  }

  v5[6] = v15;
  v6[0] = v16[0];
  *(v6 + 9) = *(v16 + 9);
  v5[2] = v11;
  v5[3] = v12;
  v5[4] = v13;
  v5[5] = v14;
  v5[0] = v10[0];
  v5[1] = v10[1];
  v2 = specialized static MatchedTransitionSourceSourceMarkingEffect.== infix(_:_:)(v7, v5);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v5);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v17, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v7);
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v8, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  v3 = v2 ^ 1;
LABEL_10:
  outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(v18, type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?);
  return v3 & 1;
}

unint64_t type metadata accessor for PlatformGroupFactory()
{
  result = lazy cache variable for type metadata for PlatformGroupFactory;
  if (!lazy cache variable for type metadata for PlatformGroupFactory)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformGroupFactory);
  }

  return result;
}

uint64_t outlined init with copy of MatchedTransitionSourceSourceMarkingEffect?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?()
{
  if (!lazy cache variable for type metadata for MatchedTransitionSourceSourceMarkingEffect?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MatchedTransitionSourceSourceMarkingEffect?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchedTransitionSourceSourceMarkingEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized static MatchedTransitionSourceSourceMarkingEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((MEMORY[0x18D00E7E0](a1 + 8, a2 + 8) & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      goto LABEL_24;
    }

    v5 = COERCE_FLOAT(*(a1 + 48)) == COERCE_FLOAT(*(a2 + 48)) && COERCE_FLOAT(HIDWORD(*(a1 + 48))) == COERCE_FLOAT(HIDWORD(*(a2 + 48)));
    v6 = v5 && COERCE_FLOAT(*(a1 + 56)) == COERCE_FLOAT(*(a2 + 56));
    if (!v6 || COERCE_FLOAT(HIDWORD(*(a1 + 56))) != COERCE_FLOAT(HIDWORD(*(a2 + 56))))
    {
      goto LABEL_24;
    }
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    goto LABEL_24;
  }

  if (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    goto LABEL_24;
  }

  if (*(a1 + 112))
  {
    if (*(a2 + 112))
    {
      goto LABEL_34;
    }
  }

  else if ((*(a2 + 112) & 1) == 0)
  {
    v9 = 0;
    v10 = *(a1 + 96);
    v11 = *(a2 + 96);
    if (*&v10 != *&v11)
    {
      return v9 & 1;
    }

    if (*(&v10 + 1) != *(&v11 + 1))
    {
      return v9 & 1;
    }

    v12 = *(a1 + 104);
    v13 = *(a2 + 104);
    if (*&v12 != *&v13 || *(&v12 + 1) != *(&v13 + 1))
    {
      return v9 & 1;
    }

LABEL_34:
    v9 = 0;
    if (*(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128))
    {
      v9 = *(a1 + 136) ^ *(a2 + 136) ^ 1;
    }

    return v9 & 1;
  }

LABEL_24:
  v9 = 0;
  return v9 & 1;
}

uint64_t outlined destroy of MatchedTransitionSourceSourceMarkingEffect?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NavigationAuthority.flushRequestQueue()()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    memmove(__dst, v2 + 2, 0x9AuLL);
    if (getEnumTag for AccessibilityActionCategory.Category(__dst) == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = v19;
    v0 = v2[23];
    swift_getKeyPath();
    v17[0] = v0;
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v0 + 2);

    swift_beginAccess();
    if (!v2[22])
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v17[0] = v2[22];
    swift_bridgeObjectRetain_n();
    v0 = 0;
    specialized MutableCollection<>.sort(by:)(v17);
    v14 = v4;
    v15 = v3;

    if (!v2[22])
    {
LABEL_22:
      __break(1u);

      __break(1u);
      return result;
    }

    v5 = v17[0];
    v2[22] = MEMORY[0x1E69E7CC0];

    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 32);
      while (v7 < *(v5 + 2))
      {
        outlined init with copy of NavigationRequest(v8, v17);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          v11 = *(Strong + 200);
          if (!v11)
          {
            goto LABEL_18;
          }

          swift_beginAccess();
          memmove(v16, (v10 + 16), 0x9AuLL);
          if (getEnumTag for AccessibilityActionCategory.Category(v16) == 1)
          {
            goto LABEL_19;
          }

          NavigationState.update(for:controllerCache:)(v17, v11);
          swift_endAccess();
        }

        outlined destroy of NavigationRequest(v17);
        ++v7;
        v8 += 168;
        if (v6 == v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:

    v12 = NavigationStateHost.navigationState.modify();
    memmove(v17, v13, 0x9AuLL);
    if (getEnumTag for AccessibilityActionCategory.Category(v17) != 1)
    {
      NavigationState.finalizeFlush()();
    }

    (v12)(v16, 0);
    $defer #1 () in NavigationAuthority.flushRequestQueue()(v2, v15, v14);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 > *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 > *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ClosedRange<CGFloat>();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[56 * i + 32];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 5))
          {
            break;
          }

          v14 = *(v13 + 24);
          v15 = *(v13 + 40);
          v16 = *(v13 + 56);
          v17 = *(v13 - 40);
          v18 = *(v13 - 8);
          *(v13 + 2) = *(v13 - 24);
          *(v13 + 3) = v18;
          *(v13 + 8) = *(v13 + 1);
          *(v13 - 5) = v11;
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v16;
          *(v13 + 1) = v17;
          v13 -= 56;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 56;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)();
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PlatformListCell & UIFocusItem();
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 168 * a3;
    v7 = result - a3;
LABEL_5:
    v20 = v7;
    v46 = v6;
    while (2)
    {
      outlined init with copy of NavigationRequest(v6, &v35);
      v8 = (v6 - 168);
      outlined init with copy of NavigationRequest(v6 - 168, v34);
      outlined init with copy of NavigationRequest.Action(&v35, &v21);
      v9 = 25;
      switch(v33)
      {
        case 0:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 5;
          goto LABEL_30;
        case 1:
        case 4:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 20;
          goto LABEL_30;
        case 2:
          _s2os6LoggerVSgWOhTm_2(&v21, type metadata accessor for Binding<AnyListSelection>);
          v9 = 20;
          goto LABEL_30;
        case 3:
        case 5:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 15;
          goto LABEL_30;
        case 6:
          outlined destroy of NavigationRequest.Action(&v21);
          goto LABEL_22;
        case 7:
LABEL_22:
          v9 = 30;
          goto LABEL_30;
        case 8:
          goto LABEL_30;
        case 9:
          v9 = 60;
          goto LABEL_30;
        case 10:
        case 17:

          outlined destroy of AnyNavigationLinkPresentedValue(&v21);
          v9 = 40;
          goto LABEL_30;
        case 13:

          outlined destroy of NavigationLinkSelectionIdentifier(&v22);
          v9 = 40;
          goto LABEL_30;
        case 14:

          outlined destroy of NavigationLinkSelectionIdentifier(&v22);
          goto LABEL_24;
        case 18:

          outlined destroy of NavigationLinkSelectionIdentifier(&v23);
          v9 = 50;
          goto LABEL_30;
        case 19:
          outlined destroy of NavigationRequest.Action(&v21);
          v9 = 50;
          goto LABEL_30;
        case 20:
          goto LABEL_28;
        case 21:
          outlined destroy of NavigationRequest.Action(&v21);
LABEL_24:
          v9 = 80;
          goto LABEL_30;
        case 22:
          if (v26 | v21 | v27 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22)
          {
            v10 = v27 | v26 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22;
            if (v21 != 1 || v10)
            {
              if (v21 != 4 || v10)
              {
LABEL_29:
                outlined destroy of NavigationRequest.Action(&v21);
                v9 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
LABEL_28:
                v9 = 70;
              }
            }

            else
            {
              v9 = 6;
            }
          }

          else
          {
            v9 = 0;
          }

LABEL_30:
          outlined init with copy of NavigationRequest.Action(v34, &v21);
          v11 = 25;
          switch(v33)
          {
            case 0:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 5;
              goto LABEL_54;
            case 1:
            case 4:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 20;
              goto LABEL_54;
            case 2:
              _s2os6LoggerVSgWOhTm_2(&v21, type metadata accessor for Binding<AnyListSelection>);
              v11 = 20;
              goto LABEL_54;
            case 3:
            case 5:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 15;
              goto LABEL_54;
            case 6:
              outlined destroy of NavigationRequest.Action(&v21);
              goto LABEL_46;
            case 7:
LABEL_46:
              v11 = 30;
              goto LABEL_54;
            case 8:
              goto LABEL_54;
            case 9:
              v11 = 60;
              goto LABEL_54;
            case 10:
            case 17:

              outlined destroy of AnyNavigationLinkPresentedValue(&v21);
              v11 = 40;
              goto LABEL_54;
            case 13:

              outlined destroy of NavigationLinkSelectionIdentifier(&v22);
              v11 = 40;
              goto LABEL_54;
            case 14:

              outlined destroy of NavigationLinkSelectionIdentifier(&v22);
              goto LABEL_48;
            case 18:

              outlined destroy of NavigationLinkSelectionIdentifier(&v23);
              v11 = 50;
              goto LABEL_54;
            case 19:
              outlined destroy of NavigationRequest.Action(&v21);
              v11 = 50;
              goto LABEL_54;
            case 20:
              goto LABEL_52;
            case 21:
              outlined destroy of NavigationRequest.Action(&v21);
LABEL_48:
              v11 = 80;
              goto LABEL_54;
            case 22:
              if (v26 | v21 | v27 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22)
              {
                v12 = v27 | v26 | v32 | v31 | v30 | v29 | v28 | v25 | v24 | v23 | v22;
                if (v21 != 1 || v12)
                {
                  if (v21 != 4 || v12)
                  {
LABEL_53:
                    outlined destroy of NavigationRequest.Action(&v21);
                    v11 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
LABEL_52:
                    v11 = 70;
                  }
                }

                else
                {
                  v11 = 6;
                }
              }

              else
              {
                v11 = 0;
              }

LABEL_54:
              outlined destroy of NavigationRequest(v34);
              result = outlined destroy of NavigationRequest(&v35);
              if (v9 < v11)
              {
                if (!v5)
                {
                  __break(1u);
                  JUMPOUT(0x18BEBBC50);
                }

                v42 = *(v6 + 112);
                v43 = *(v6 + 128);
                v44 = *(v6 + 144);
                v45 = *(v6 + 160);
                v38 = *(v6 + 48);
                v39 = *(v6 + 64);
                v40 = *(v6 + 80);
                v41 = *(v6 + 96);
                v35 = *v6;
                v36 = *(v6 + 16);
                v37 = *(v6 + 32);
                v13 = *(v6 - 24);
                *(v6 + 128) = *(v6 - 40);
                *(v6 + 144) = v13;
                *(v6 + 160) = *(v6 - 8);
                v14 = *(v6 - 88);
                *(v6 + 64) = *(v6 - 104);
                *(v6 + 80) = v14;
                v15 = *(v6 - 56);
                *(v6 + 96) = *(v6 - 72);
                *(v6 + 112) = v15;
                v16 = *(v6 - 152);
                *v6 = *v8;
                *(v6 + 16) = v16;
                v17 = *(v6 - 120);
                *(v6 + 32) = *(v6 - 136);
                *(v6 + 48) = v17;
                *(v6 - 56) = v42;
                *(v6 - 40) = v43;
                *(v6 - 24) = v44;
                *(v6 - 8) = v45;
                *(v6 - 120) = v38;
                *(v6 - 104) = v39;
                *(v6 - 88) = v40;
                *(v6 - 72) = v41;
                *v8 = v35;
                *(v6 - 152) = v36;
                *(v6 - 136) = v37;
                v6 -= 168;
                if (!__CFADD__(v7++, 1))
                {
                  continue;
                }
              }

              ++v4;
              v6 = v46 + 168;
              v7 = v20 - 1;
              if (v4 != a2)
              {
                goto LABEL_5;
              }

              return result;
            default:
              goto LABEL_53;
          }

        default:
          goto LABEL_29;
      }
    }
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + (a3 << 6) + 56;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    v9 = v5;
    while (1)
    {
      v10 = v8 - 56;
      v11 = *(v8 - 7);
      v12 = *(v8 - 6);
      v13 = v8 - 120;
      v14 = *(v8 - 15);
      v15 = *(v8 - 14);
      v16 = *(v9 - 64);
      v9 -= 64;
      result = v16;
      if (v12 == v15)
      {
        v17 = *(v8 - 3);
        v18 = *(v8 - 11);
        v19 = v17 < v18;
        if (v17 == v18 && (v20 = *(v8 - 2), v21 = *(v8 - 10), v19 = v20 < v21, v20 == v21) && (v22 = *(v8 - 1), v23 = *(v8 - 9), v19 = v22 < v23, v22 == v23))
        {
          v24 = *v8;
          if (v24 == result)
          {
            if (v11 >= v14)
            {
              goto LABEL_4;
            }
          }

          else if (v24 >= result)
          {
LABEL_4:
            ++a3;
            v5 += 64;
            --v6;
            if (a3 == a2)
            {
              return result;
            }

            goto LABEL_5;
          }
        }

        else if (!v19)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v12)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v25 = *(v10 + 1);
      *v30 = *(v10 + 2);
      *&v30[9] = *(v10 + 41);
      v26 = *v10;
      v27 = *(v13 + 1);
      *v10 = *v13;
      *(v10 + 1) = v27;
      v28 = *(v13 + 3);
      *(v10 + 2) = *(v13 + 2);
      *(v10 + 3) = v28;
      *(v13 + 41) = *&v30[9];
      *(v13 + 1) = v25;
      *(v13 + 2) = *v30;
      v8 = v9;
      *v13 = v26;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * v4);
    v9 = v7;
    v18 = v6;
    while (1)
    {
      v10 = *v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      [v8 frame];
      v12 = v11;
      [v10 frame];
      v14 = v13;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v12 >= v14)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 16;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *(v6 + 16);
      *(v6 + 16) = *v6;
      *v6 = v15;
      v6 -= 16;
      v8 = v15;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NavigationRequest.skipFirstColumn.getter()
{
  v1 = *(v0 + 136) >> 62;
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    v2 = *(v0 + 120);
    if (v2 == 6)
    {
      return 0;
    }
  }

  else
  {
    v2 = *(v0 + 112);
  }

  outlined init with copy of NavigationRequest.Action(v0, &v6);
  if (v10 == 14)
  {
    v3 = &v8;
  }

  else
  {
    if (v10 != 13)
    {
      outlined destroy of NavigationRequest.Action(&v6);
      return 0;
    }

    v3 = &v9;
  }

  v4 = *v3;
  outlined destroy of NavigationLinkSelectionIdentifier(&v7);
  if ((v2 & 0xFE) != 0)
  {
    return 0;
  }

  else
  {
    return v4 ^ 1u;
  }
}

void type metadata accessor for Binding<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NavigationRequest.Action(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEA && *(a1 + 97))
  {
    return (*a1 + 234);
  }

  v3 = *(a1 + 96);
  if (v3 >= 0x17)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for NavigationRequest.TargetedRequest(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 40);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 16, v16);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 16);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 24);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = *(a2 + 32);

      if (v32)
      {
        v33 = *(a2 + 40);
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 8, v32);
      }

      else
      {
        v53 = *(a2 + 24);
        *v31 = *(a2 + 8);
        *(a1 + 24) = v53;
        *(a1 + 40) = *(a2 + 40);
      }

      v54 = *(a2 + 56);
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v54;
      }

      v55 = *(a2 + 72);
      v56 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = *(a2 + 32);

      if (v9)
      {
        v10 = *(a2 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 8, v9);
      }

      else
      {
        v43 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(a1 + 24) = v43;
        *(a1 + 40) = *(a2 + 40);
      }

      v44 = *(a2 + 56);
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v44;
      }

      v45 = *(a2 + 72);
      v46 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = *(a2 + 32);

      if (v20)
      {
        v21 = *(a2 + 40);
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 8, v20);
      }

      else
      {
        v47 = *(a2 + 24);
        *v19 = *(a2 + 8);
        *(a1 + 24) = v47;
        *(a1 + 40) = *(a2 + 40);
      }

      v48 = *(a2 + 56);
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 64);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);

      if (v6)
      {
        v7 = *(a2 + 48);
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 16, v6);
      }

      else
      {
        v38 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v38;
        *(a1 + 48) = *(a2 + 48);
      }

      v39 = *(a2 + 64);
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v39;
      }

      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = *(a2 + 24);
      if (v27)
      {
        v28 = *(a2 + 32);
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = *(a2 + 32);
      }

      v50 = *(a2 + 48);
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = *(a2 + 16);
      if (v51)
      {
        v52 = *(a2 + 24);
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  v57 = (a1 + 216);
  v58 = (a2 + 216);
  v59 = *(a2 + 312);

  switch(v59)
  {
    case 0:
      v60 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v60;
      *(a1 + 312) = 0;

      return a1;
    case 1:
      v71 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v71;
      v72 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v72;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 312) = 1;

      goto LABEL_80;
    case 2:
      v75 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v75;
      v76 = *(a2 + 256);
      *(a1 + 256) = v76;
      v77 = v76;
      v78 = **(v76 - 8);

      v78(a1 + 232, a2 + 232, v77);
      *(a1 + 272) = *(a2 + 272);
      v79 = 2;
      goto LABEL_115;
    case 3:
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 312) = 3;

      return a1;
    case 4:
      v68 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v68;
      *(a1 + 232) = *(a2 + 232);
      v69 = 4;
      goto LABEL_78;
    case 5:
      v70 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v70;
      *(a1 + 232) = *(a2 + 232);
      v69 = 5;
      goto LABEL_78;
    case 6:
      v89 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v89;
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 312) = 6;

LABEL_80:

      return a1;
    case 10:
      v73 = *(a2 + 240);
      *(a1 + 240) = v73;
      (**(v73 - 8))(a1 + 216, a2 + 216);
      v74 = *(a2 + 264);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = v74;
      *(a1 + 272) = *(a2 + 272);
      v69 = 10;
      goto LABEL_78;
    case 11:
      v90 = *(a2 + 240);
      *(a1 + 240) = v90;
      (**(v90 - 8))(a1 + 216, a2 + 216);
      v79 = 11;
      goto LABEL_115;
    case 12:
      *(a1 + 216) = *(a2 + 216);
      v66 = *(a2 + 248);

      if (v66)
      {
        v67 = *(a2 + 256);
        *(a1 + 248) = v66;
        *(a1 + 256) = v67;
        (**(v66 - 8))(a1 + 224, a2 + 224, v66);
      }

      else
      {
        v94 = *(a2 + 240);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v94;
        *(a1 + 256) = *(a2 + 256);
      }

      v95 = (a2 + 264);
      v96 = *(a2 + 272);
      if (v96 == 1)
      {
        *(a1 + 264) = *v95;
      }

      else
      {
        *(a1 + 264) = *v95;
        *(a1 + 272) = v96;
      }

      v97 = *(a2 + 288);
      v98 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = v97;
      *(a1 + 296) = v98;
      v99 = 12;
      goto LABEL_109;
    case 13:
      *(a1 + 216) = *(a2 + 216);
      v80 = *(a2 + 248);

      if (v80)
      {
        v81 = *(a2 + 256);
        *(a1 + 248) = v80;
        *(a1 + 256) = v81;
        (**(v80 - 8))(a1 + 224, a2 + 224, v80);
      }

      else
      {
        v100 = *(a2 + 240);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v100;
        *(a1 + 256) = *(a2 + 256);
      }

      v101 = (a2 + 264);
      v102 = *(a2 + 272);
      if (v102 == 1)
      {
        *(a1 + 264) = *v101;
      }

      else
      {
        *(a1 + 264) = *v101;
        *(a1 + 272) = v102;
      }

      v103 = *(a2 + 288);
      v104 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = v103;
      *(a1 + 296) = v104;
      *(a1 + 304) = *(a2 + 304);
      v99 = 13;
      goto LABEL_109;
    case 14:
      *(a1 + 216) = *(a2 + 216);
      v82 = *(a2 + 248);

      if (v82)
      {
        v83 = *(a2 + 256);
        *(a1 + 248) = v82;
        *(a1 + 256) = v83;
        (**(v82 - 8))(a1 + 224, a2 + 224, v82);
      }

      else
      {
        v105 = *(a2 + 240);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v105;
        *(a1 + 256) = *(a2 + 256);
      }

      v106 = (a2 + 264);
      v107 = *(a2 + 272);
      if (v107 == 1)
      {
        *(a1 + 264) = *v106;
      }

      else
      {
        *(a1 + 264) = *v106;
        *(a1 + 272) = v107;
      }

      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = *(a2 + 288);
      v79 = 14;
      goto LABEL_115;
    case 17:
      v87 = *(a2 + 240);
      *(a1 + 240) = v87;
      (**(v87 - 8))(a1 + 216, a2 + 216);
      *(a1 + 256) = *(a2 + 256);
      v88 = *(a2 + 272);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = v88;
      *(a1 + 280) = *(a2 + 280);
      v69 = 17;
LABEL_78:
      *(a1 + 312) = v69;

      return a1;
    case 18:
      v84 = *(a2 + 224);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = v84;
      v85 = *(a2 + 256);

      if (v85)
      {
        v86 = *(a2 + 264);
        *(a1 + 256) = v85;
        *(a1 + 264) = v86;
        (**(v85 - 8))(a1 + 232, a2 + 232, v85);
      }

      else
      {
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = *(a2 + 264);
      }

      v108 = *(a2 + 280);
      if (v108 == 1)
      {
        *(a1 + 272) = *(a2 + 272);
      }

      else
      {
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = v108;
      }

      v109 = *(a2 + 296);
      v110 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = v109;
      *(a1 + 304) = v110;
      v99 = 18;
LABEL_109:
      *(a1 + 312) = v99;

      return a1;
    case 19:
      v64 = *(a2 + 240);
      if (v64)
      {
        v65 = *(a2 + 248);
        *(a1 + 240) = v64;
        *(a1 + 248) = v65;
        (**(v64 - 8))(a1 + 216, a2 + 216);
      }

      else
      {
        v92 = *(a2 + 232);
        *v57 = *v58;
        *(a1 + 232) = v92;
        *(a1 + 248) = *(a2 + 248);
      }

      v93 = *(a2 + 264);
      if (v93 == 1)
      {
        *(a1 + 256) = *(a2 + 256);
      }

      else
      {
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = v93;
      }

      *(a1 + 272) = *(a2 + 272);
      v79 = 19;
      goto LABEL_115;
    case 21:
      if (*v58)
      {
        v91 = *(a2 + 224);
        *(a1 + 216) = *v58;
        *(a1 + 224) = v91;
      }

      else
      {
        *v57 = *v58;
      }

      v111 = *(a2 + 232);
      if (v111)
      {
        v112 = *(a2 + 240);
        *(a1 + 232) = v111;
        *(a1 + 240) = v112;
      }

      else
      {
        *(a1 + 232) = *(a2 + 232);
      }

      v79 = 21;
LABEL_115:
      *(a1 + 312) = v79;
      break;
    default:
      v61 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 296) = v61;
      *(a1 + 312) = *(a2 + 312);
      v62 = *(a2 + 232);
      *v57 = *v58;
      *(a1 + 232) = v62;
      v63 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v63;
      break;
  }

  return a1;
}

uint64_t outlined init with copy of (NavigationState.UpdateResult, NavigationState.Seeds)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (NavigationState.UpdateResult, NavigationState.Seeds)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Binding<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Decodable & Encodable.Type>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *specialized Dictionary.subscript.setter(void *__src, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if (*(__src + 31))
  {
    memcpy(__dst, __src, 0x163uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__dst, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    outlined destroy of TabEntry?(__src, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        specialized _NativeDictionary.copy()();
        v15 = v17;
      }

      memcpy(__dst, (*(v15 + 56) + 360 * v13), 0x163uLL);
      specialized _NativeDictionary._delete(at:)(v13, v15);
      *v5 = v15;
    }

    else
    {
      memset(__dst, 0, 355);
    }

    return outlined destroy of TabEntry?(__dst, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
  }

  return result;
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 360 * v13;

    return outlined assign with take of NavigationColumnState(a1, v24);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v23);
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  MEMORY[0x18D00F6F0](a2);
  MEMORY[0x18D00F6F0](a3);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      if (v10 == a1 && a2 == v11 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *__src, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a6[6] + 24 * a1;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  result = memcpy((a6[7] + 360 * a1), __src, 0x163uLL);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t destroy for NavigationColumnState(uint64_t a1)
{
  if (*(a1 + 48))
  {
  }

  if (*(a1 + 104))
  {
  }

  v2 = *(a1 + 208);
  if (*(a1 + 240))
  {
    if (v2 != 255)
    {
      if (v2)
      {

        if (*(a1 + 152))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 128);
        }

        if (*(a1 + 176) != 1)
        {
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 120);
      }
    }
  }

  else
  {
    if (v2 != 255)
    {
      if (v2)
      {

        if (*(a1 + 152))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 128);
        }

        if (*(a1 + 176) != 1)
        {
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 120);
      }
    }
  }
}

uint64_t outlined init with copy of NavigationState.Base?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t storeEnumTagSinglePayload for NavigationColumnState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 354) = 0;
    *(result + 352) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 355) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 355) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5))(uint64_t *a1)
{
  v6 = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x2F0uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 736) = v5;
  *(v12 + 728) = a4;
  *(v12 + 355) = a3;
  *(v12 + 720) = a2;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  *(v13 + 356) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 93) = v15;
  if (v21)
  {
    memcpy(v13, (*(*v6 + 56) + 360 * v15), 0x163uLL);
  }

  else
  {
    v13[20] = 0u;
    v13[21] = 0u;
    v13[18] = 0u;
    v13[19] = 0u;
    v13[16] = 0u;
    v13[17] = 0u;
    v13[14] = 0u;
    v13[15] = 0u;
    v13[12] = 0u;
    v13[13] = 0u;
    v13[10] = 0u;
    v13[11] = 0u;
    v13[8] = 0u;
    v13[9] = 0u;
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    *(v13 + 351) = 0;
  }

  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t outlined init with copy of NavigationRequest.Action?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for NavigationRequest.Action?(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

_OWORD *NavigationColumnState.update(for:shouldAnimate:splitViewState:)(_OWORD *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of NavigationRequest.Action?(a2 + 216, v206, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
  v186 = a1;
  LOBYTE(v187) = a3;
  v188 = a2;
  if (LOBYTE(v206[6]) == 255)
  {
    outlined init with copy of NavigationRequest.Action(a2, v208);
    if (LOBYTE(v206[6]) != 255)
    {
      outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    *&v208[64] = v206[4];
    *&v208[80] = v206[5];
    v209 = v206[6];
    *v208 = v206[0];
    *&v208[16] = v206[1];
    *&v208[48] = v206[3];
    *&v208[32] = v206[2];
  }

  v10 = v210;
  v11 = v195;
  v13 = *&v208[8];
  v12 = *v208;
  switch(v209)
  {
    case 1:
      v206[0] = *&v208[24];
      v60 = v211;
      NavigationColumnState.setPath(_:environment:)(*v208, *&v208[8], *&v208[16], v206, v210);
      v5 = v4;

      v24 = v60;

      goto LABEL_42;
    case 2:
      v43 = *(a4 + 16);
      v44 = *(a4 + 48);
      v207[2] = *(a4 + 32);
      v207[3] = v44;
      v45 = *a4;
      v46 = *a4;
      v207[1] = *(a4 + 16);
      v207[0] = v45;
      v47 = *(a4 + 48);
      v189[2] = v207[2];
      v189[3] = v47;
      LOWORD(v207[4]) = *(a4 + 64);
      LOWORD(v189[4]) = *(a4 + 64);
      v189[0] = v46;
      v189[1] = v43;
      outlined init with copy of NavigationRequest.Action?(v207, v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v211;
      NavigationColumnState.setSelection(from:splitViewState:)(v188, v189, v206);
      if (v4)
      {
        v195[2] = v189[2];
        v195[3] = v189[3];
        LOWORD(v195[4]) = v189[4];
        v195[0] = v189[0];
        v195[1] = v189[1];
        outlined destroy of NavigationRequest.Action?(v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        v30 = &lazy cache variable for type metadata for Binding<AnyListSelection>;
        v31 = &type metadata for AnyListSelection;
        v32 = MEMORY[0x1E6981948];
        v33 = v208;
        goto LABEL_24;
      }

      v195[2] = v189[2];
      v195[3] = v189[3];
      LOWORD(v195[4]) = v189[4];
      v195[0] = v189[0];
      v195[1] = v189[1];
      outlined destroy of NavigationRequest.Action?(v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      memcpy(v210, v206, 0x15CuLL);
      outlined destroy of NavigationRequest.Action?(v208, &lazy cache variable for type metadata for Binding<AnyListSelection>, &type metadata for AnyListSelection, MEMORY[0x1E6981948]);
      goto LABEL_128;
    case 3:

      *(&v210[8] + 8) = 0u;
      *(&v210[7] + 8) = 0u;
      *(&v210[6] + 8) = 0u;
      *(&v210[5] + 8) = 0u;
      *(&v210[4] + 8) = 0u;
      *(&v210[3] + 8) = 0u;
      *(&v210[2] + 8) = 0u;
      *(&v210[1] + 8) = 0u;
      *(&v210[9] + 1) = 0;
      *&v210[10] = 0x1FFFFFFFCLL;
      *(&v210[16] + 8) = 0u;
      *(&v210[17] + 8) = 0u;
      *(&v210[18] + 8) = 0u;
      *(&v210[19] + 8) = 0u;
      *(&v210[20] + 1) = 0u;
      *(&v210[10] + 8) = 0u;
      *(&v210[11] + 8) = 0u;
      *(&v210[12] + 8) = 0u;
      *(&v210[13] + 8) = 0u;
      *(&v210[14] + 8) = 0u;
      *(&v210[15] + 8) = 0u;
      v210[0] = __PAIR128__(v13, v12);
      LOBYTE(v210[1]) = 0;
      goto LABEL_33;
    case 4:
    case 5:
    case 21:
      outlined destroy of NavigationRequest.Action(v208);
      v14 = 0uLL;
      *(&v210[1] + 8) = 0u;
      *(&v210[2] + 8) = 0u;
      *(&v210[3] + 8) = 0u;
      *(&v210[4] + 8) = 0u;
      *(&v210[5] + 8) = 0u;
      *(&v210[6] + 8) = 0u;
      *(&v210[7] + 8) = 0u;
      *(&v210[8] + 8) = 0u;
      v15 = 0x1FFFFFFFELL;
      goto LABEL_7;
    case 6:
      v206[0] = *&v208[8];
      v34 = v211;
      NavigationColumnState.boundPathChange(to:environment:)(*v208, v206, v210);

      v5 = v4;
      v24 = v34;
LABEL_42:

      goto LABEL_128;
    case 7:
      v38 = *(a4 + 16);
      v39 = *(a4 + 48);
      v207[2] = *(a4 + 32);
      v207[3] = v39;
      v40 = *a4;
      v41 = *a4;
      v207[1] = *(a4 + 16);
      v207[0] = v40;
      v42 = *(a4 + 48);
      v189[2] = v207[2];
      v189[3] = v42;
      LOWORD(v207[4]) = *(a4 + 64);
      LOWORD(v189[4]) = *(a4 + 64);
      v189[0] = v41;
      v189[1] = v38;
      outlined init with copy of NavigationRequest.Action?(v207, v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v211;
      NavigationColumnState.boundSelectionChange(request:splitViewState:)(v188, v189, v206);
      if (!v4)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    case 8:
      v25 = *(a4 + 16);
      v26 = *(a4 + 48);
      v207[2] = *(a4 + 32);
      v207[3] = v26;
      v27 = *a4;
      v28 = *a4;
      v207[1] = *(a4 + 16);
      v207[0] = v27;
      v29 = *(a4 + 48);
      v189[2] = v207[2];
      v189[3] = v29;
      LOWORD(v207[4]) = *(a4 + 64);
      LOWORD(v189[4]) = *(a4 + 64);
      v189[0] = v28;
      v189[1] = v25;
      outlined init with copy of NavigationRequest.Action?(v207, v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v24 = v211;
      NavigationColumnState.editingChanged(request:splitViewState:)(v188, v189, v206);
      if (!v4)
      {
LABEL_21:
        v195[2] = v189[2];
        v195[3] = v189[3];
        LOWORD(v195[4]) = v189[4];
        v195[0] = v189[0];
        v195[1] = v189[1];
        outlined destroy of NavigationRequest.Action?(v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        memcpy(v210, v206, 0x15CuLL);
        goto LABEL_128;
      }

LABEL_12:
      v195[2] = v189[2];
      v195[3] = v189[3];
      LOWORD(v195[4]) = v189[4];
      v195[0] = v189[0];
      v195[1] = v189[1];
      v30 = &lazy cache variable for type metadata for NavigationSplitViewState?;
      v31 = &type metadata for NavigationSplitViewState;
      v32 = MEMORY[0x1E69E6720];
      v33 = v195;
LABEL_24:
      outlined destroy of NavigationRequest.Action?(v33, v30, v31, v32);
      return v10;
    case 9:
      v24 = v211;
      if (*(v211 + 104))
      {
        v187 = (Transaction.disablesAnimations.getter() ^ 1) & a3;
      }

      NavigationColumnState.pop(_:writesSelectionAt:request:splitViewState:)(v12, v13 & 1, v188, a4, v210);
      goto LABEL_128;
    case 10:

      v201 = *v208;
      v202 = *&v208[16];
      v16 = *(a4 + 16);
      v17 = *(a4 + 48);
      v207[2] = *(a4 + 32);
      v207[3] = v17;
      v18 = *a4;
      v19 = *a4;
      v207[1] = *(a4 + 16);
      v207[0] = v18;
      v20 = *(a4 + 48);
      v189[2] = v207[2];
      v189[3] = v20;
      *&v203 = *&v208[32];
      LOWORD(v207[4]) = *(a4 + 64);
      LOWORD(v189[4]) = *(a4 + 64);
      v189[0] = v19;
      v189[1] = v16;
      outlined init with copy of NavigationRequest.Action?(v207, v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v21 = v211;
      NavigationColumnState.presentValue(_:request:splitViewState:)(&v201, v188, v189, v206);
      v5 = v4;
      if (v4)
      {
        v195[2] = v189[2];
        v195[3] = v189[3];
        LOWORD(v195[4]) = v189[4];
        v195[0] = v189[0];
        v195[1] = v189[1];
        outlined destroy of NavigationRequest.Action?(v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
        outlined destroy of AnyNavigationLinkPresentedValue(&v201);
        return v10;
      }

      v195[2] = v189[2];
      v195[3] = v189[3];
      LOWORD(v195[4]) = v189[4];
      v195[0] = v189[0];
      v195[1] = v189[1];
      outlined destroy of NavigationRequest.Action?(v195, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      outlined destroy of AnyNavigationLinkPresentedValue(&v201);
      memcpy(v210, v206, 0x15CuLL);
      v24 = v21;
      goto LABEL_128;
    case 11:
      v207[0] = *v208;
      v207[1] = *&v208[16];
      *&v207[2] = *&v208[32];
      v22 = v211;
      NavigationColumnState.ejectAll()();
      NavigationColumnState.ColumnContent.replaceRoot(_:)(v207);
      v23 = v4;
      *(v22 + 352) = 1;
      memset(v206, 0, 136);
      *(&v206[8] + 1) = 0x1FFFFFFFELL;
      memset(&v206[9], 0, 169);
      NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v206, (&v210[1] + 8));
      outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
      outlined destroy of AnyNavigationLinkPresentedValue(v207);
      v210[0] = xmmword_18CD79D60;
      LOBYTE(v210[1]) = 2;
      v24 = v22;
      goto LABEL_16;
    case 12:
      v23 = v4;
      v35 = *&v208[72];
      v36 = *&v208[80];
      v207[0] = *&v208[8];
      v207[1] = *&v208[24];
      v207[2] = *&v208[40];
      v207[3] = *&v208[56];
      v37 = v211;
      NavigationColumnState.ejectAll()();
      outlined init with copy of NavigationLinkSelectionIdentifier(v207, v206 + 8);
      *&v206[0] = v12;
      *(&v206[4] + 1) = v35;
      *&v206[5] = v36;

      NavigationColumnState.ColumnContent.replaceRoot(_:)(v206);
      outlined destroy of NavigationViewDestinationView(v206);
      *(v37 + 352) = 1;
      memset(v206, 0, 136);
      *(&v206[8] + 1) = 0x1FFFFFFFELL;
      memset(&v206[9], 0, 169);
      NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v206, (&v210[1] + 8));

      outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationLinkSelectionIdentifier(v207);
      v210[0] = xmmword_18CD79D60;
      LOBYTE(v210[1]) = 2;
      v24 = v37;
LABEL_16:
      *(&v210[21] + 4) = 1;
      v5 = v23;
      goto LABEL_128;
    case 13:
      v195[0] = *&v208[8];
      v195[1] = *&v208[24];
      v195[2] = *&v208[40];
      v195[3] = *&v208[56];
      v185 = *&v208[72];
      outlined init with copy of NavigationLinkSelectionIdentifier(v195, v189 + 8);
      *&v189[0] = v12;
      *(&v189[4] + 8) = v185;
      v24 = v211;
      v77 = *(v188 + 136) >> 62;
      if (v77)
      {
        if (v77 != 1)
        {
          goto LABEL_80;
        }

        v78 = *(v188 + 120);
        if (v78 == 6)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v78 = *(v188 + 112);
      }

      if (*(v211 + 24) != v78)
      {
        goto LABEL_80;
      }

      outlined init with copy of NavigationColumnState.ColumnContent(v211 + 120, v206);
      if (BYTE8(v206[7]))
      {
        outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_80:
        *(v24 + 352) = 1;
        NavigationColumnState.ejectAll()();
        NavigationColumnState.ColumnContent.replaceRoot(_:)(v189);
        outlined init with copy of NavigationRequest.TargetedRequest(v188, v207);
        NavigationColumnState.requestPreviousColumnSelectionSeedBump(_:)(v207, v206);
        outlined destroy of NavigationRequest.Action?(v207, &lazy cache variable for type metadata for NavigationRequest.TargetedRequest?, &type metadata for NavigationRequest.TargetedRequest, MEMORY[0x1E69E6720]);
        outlined destroy of NavigationLinkSelectionIdentifier(v195);
        goto LABEL_81;
      }

      v113 = outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      if (*(v24 + 352) >= 2u)
      {
        *(v24 + 352) = 0;
      }

      MEMORY[0x1EEE9AC00](v113);
      specialized NavigationColumnState.ColumnContent.mutateViewDestinationViews<A>(transform:)(partial apply for closure #1 in NavigationColumnState.presentView(_:identifier:dismiss:request:));
      v24 = v211;
      outlined destroy of NavigationLinkSelectionIdentifier(v195);
      memset(v206, 0, 136);
      *(&v206[8] + 1) = 0x1FFFFFFFCLL;
      memset(&v206[9], 0, 169);
LABEL_81:
      v210[0] = xmmword_18CD6A6D0;
      LOBYTE(v210[1]) = 2;
      memcpy(&v210[1] + 8, v206, 0x139uLL);
      *(&v210[21] + 4) = 1;
      outlined destroy of NavigationViewDestinationView(v189);
      goto LABEL_128;
    case 14:
      v206[0] = *&v208[8];
      v206[1] = *&v208[24];
      v206[2] = *&v208[40];
      v206[3] = *&v208[56];
      v24 = v211;
      NavigationColumnState.updateView(_:identifier:request:)(*v208, v206, v188, v210);

      goto LABEL_35;
    case 15:
      v24 = v211;
      NavigationColumnState.accumulatedDismiss(count:request:)(*v208, v188, v210);
      goto LABEL_128;
    case 16:
      if (v208[8])
      {
        if (!*(v211 + 48))
        {
          goto LABEL_121;
        }

        v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI15NavigationStateV7ListKeyV_SD4KeysVyAhD0dfE0V9Selection33_0DC81BD289CFCD22E83D257AB997227BLLV_GTt0g5(v48);
        v11 = v211;
        v50 = *(v211 + 48);
        if (!v50)
        {

          goto LABEL_121;
        }

        v184 = v4;
        v178 = v49;
        v10 = (v211 + 80);
        v51 = *(v211 + 80);
        v52 = *(v211 + 56);
        v53 = *(v211 + 64);
        v54 = *(v211 + 72);
        v55 = *(v211 + 88);
        LODWORD(v206[0]) = *(v211 + 40);
        *(&v206[0] + 1) = v50;
        *&v206[1] = v52;
        *(&v206[1] + 1) = v53;
        *&v206[2] = v54;
        *(&v206[2] + 1) = v51;
        LODWORD(v206[3]) = v55;

        v56 = NavigationListState.wouldDeselect()();

        if (*(v11 + 6))
        {
          NavigationListState.dismissLegacyLinks()();
          v5 = v184;
          if (*(v11 + 6))
          {
            specialized Set.formUnion<A>(_:)(v178);
            if (!v56)
            {
              goto LABEL_121;
            }

            goto LABEL_63;
          }

          if (!v56)
          {
LABEL_121:
            if ((v13 & 0x10100) == 0x100)
            {
              v87 = __OFSUB__(v12--, 1);
              if (v87)
              {
                __break(1u);
                JUMPOUT(0x18BEBFE94);
              }
            }

            goto LABEL_123;
          }
        }

        else
        {

          v5 = v184;
          if (!v56)
          {
            goto LABEL_121;
          }
        }
      }

      else if (!*(v211 + 48) || !NavigationListState.clearAllSelections()())
      {
        goto LABEL_121;
      }

LABEL_63:
      v87 = __OFSUB__(v12--, 1);
      if (!v87)
      {
LABEL_123:
        if (v12 < 1)
        {
          memset(v206, 0, 136);
          *(&v206[8] + 1) = 0x1FFFFFFFCLL;
          memset(&v206[9], 0, 169);
        }

        else
        {
          outlined init with copy of NavigationRequest(v188, v207);
          *&v189[0] = v12;
          BYTE8(v189[0]) = v13 & 1;
          LOBYTE(v190) = 9;
          *(&v206[16] + 8) = 0u;
          *(&v206[17] + 8) = 0u;
          *(&v206[18] + 8) = 0u;
          *(&v206[13] + 8) = 0u;
          *(&v206[14] + 8) = 0u;
          *(&v206[15] + 8) = 0u;
          BYTE8(v206[19]) = -1;
          v206[8] = v207[8];
          v206[9] = v207[9];
          *&v206[10] = *&v207[10];
          v206[4] = v207[4];
          v206[5] = v207[5];
          v206[6] = v207[6];
          v206[7] = v207[7];
          v206[0] = v207[0];
          v206[1] = v207[1];
          v206[2] = v207[2];
          v206[3] = v207[3];
          *(&v206[10] + 8) = *(v188 + 168);
          *(&v206[11] + 8) = *(v188 + 184);
          *(&v206[12] + 8) = *(v188 + 200);
          outlined assign with take of NavigationRequest.Action?(v189, &v206[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        }

        v24 = v211;
        v210[0] = xmmword_18CD6A6D0;
        LOBYTE(v210[1]) = 2;
        memcpy(&v210[1] + 8, v206, 0x139uLL);
        goto LABEL_127;
      }

      __break(1u);
LABEL_66:
      outlined init with copy of AnyNavigationLinkPresentedValue(&v198, v189);
      *(&v189[2] + 1) = v178;
      *&v189[3] = v12;
      BYTE8(v189[3]) = v5;
      BYTE9(v189[3]) = v11;
      LOBYTE(v190) = 10;
      outlined init with copy of NavigationRequest(v188, v207);
      v88 = *(v188 + 168);
      v89 = *(v188 + 184);
      v90 = *(v188 + 200);
      if (v190 == 255)
      {
        v177 = *(v188 + 184);
        v181 = *(v188 + 168);
        v174 = *(v188 + 200);
        outlined init with copy of NavigationRequest.Action?(v188 + 216, v195, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
        v90 = v174;
        v89 = v177;
        v88 = v181;
      }

      else
      {
        v195[4] = v189[4];
        v196 = v189[5];
        v197 = v190;
        v195[0] = v189[0];
        v195[1] = v189[1];
        v195[2] = v189[2];
        v195[3] = v189[3];
      }

      *(&v206[17] + 8) = 0u;
      *(&v206[18] + 8) = 0u;
      *(&v206[16] + 8) = 0u;
      *(&v206[15] + 8) = 0u;
      *(&v206[14] + 8) = 0u;
      *(&v206[13] + 8) = 0u;
      BYTE8(v206[19]) = -1;
      v206[8] = v207[8];
      v206[9] = v207[9];
      *&v206[10] = *&v207[10];
      v206[4] = v207[4];
      v206[5] = v207[5];
      v206[6] = v207[6];
      v206[7] = v207[7];
      v206[0] = v207[0];
      v206[1] = v207[1];
      v206[2] = v207[2];
      v206[3] = v207[3];
      *(&v206[10] + 8) = v88;
      *(&v206[11] + 8) = v89;
      *(&v206[12] + 8) = v90;
      outlined assign with take of NavigationRequest.Action?(v195, &v206[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
      v173 = v206[1];
      v175 = v206[0];
      v169 = v206[3];
      v171 = v206[2];
      v167 = v206[5];
      v168 = v206[4];
      v165 = v206[7];
      v166 = v206[6];
      v179 = v206[8];
      v163 = v206[10];
      v164 = v206[9];
      v161 = v206[12];
      v162 = v206[11];
      v158 = v206[15];
      v159 = v206[13];
      v160 = v206[14];
      v156 = v206[17];
      v157 = v206[16];
      v73 = *(&v206[18] + 1);
      v72 = *&v206[18];
      v74 = *&v206[19];
      v75 = BYTE8(v206[19]);
LABEL_91:
      outlined destroy of AnyNavigationLinkPresentedValue(&v198);
      v210[0] = xmmword_18CD6A6D0;
      LOBYTE(v210[1]) = 2;
      *(v10 + 40) = v173;
      *(v10 + 24) = v175;
      *(v10 + 72) = v169;
      *(v10 + 56) = v171;
      *(v10 + 104) = v167;
      *(v10 + 88) = v168;
      *(v10 + 136) = v165;
      *(v10 + 120) = v166;
      *(v10 + 168) = v164;
      *(v10 + 152) = v179;
      *(v10 + 200) = v162;
      *(v10 + 184) = v163;
      *(v10 + 232) = v159;
      *(v10 + 216) = v161;
      *(&v210[16] + 8) = v158;
      *(v10 + 248) = v160;
      *(&v210[17] + 8) = v157;
      *(&v210[18] + 8) = v156;
      *(&v210[19] + 1) = v72;
      *&v210[20] = v73;
      *(&v210[20] + 1) = v74;
      LOBYTE(v210[21]) = v75;
      *(&v210[21] + 1) = v206[0];
      BYTE3(v210[21]) = BYTE2(v206[0]);
      *(&v210[21] + 4) = 0;
      v5 = v184;
      v24 = v211;
LABEL_128:
      v119 = v210[0];
      v120 = LOBYTE(v210[1]);
      v121 = DWORD1(v210[21]);
      v122 = DWORD2(v210[21]);
      outlined init with copy of NavigationState.UpdateResult(&v210[1] + 8, v207);
      outlined init with copy of NavigationState.UpdateResult(v207, v206);
      v123 = *(&v206[8] + 1);
      outlined destroy of NavigationState.UpdateResult(v206);
      if (v123 >> 1 != 0xFFFFFFFF && (v120 != 2 || v119 != 1))
      {
        outlined init with copy of NavigationColumnState.ColumnContent(v24 + 120, v206);
        if (BYTE8(v206[7]))
        {
          outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
          if (!v120)
          {
            v206[2] = MEMORY[0x1E69E7CC0];
            *&v206[1] = 0;
            v206[0] = MEMORY[0x1E69E7CC0];
            BYTE8(v206[1]) = 0;
            v128 = ResolvedNavigationDestinations.updatePossibilities(for:over:)(v119, *(&v119 + 1), 0, v206);
            if (v5)
            {

              v129 = 0;
              LODWORD(v130) = 0;
            }

            else
            {
              v129 = v128;
              v130 = HIDWORD(v128);
            }

            v124 = v186;
            v125 = v187;
            outlined consume of NavigationPath.Representation(*&v206[0], *(&v206[0] + 1), *&v206[1], SBYTE8(v206[1]));

            LODWORD(v121) = v129 + v121;
            v122 = (v130 + v122);
            v24 = v211;
            goto LABEL_131;
          }

          goto LABEL_129;
        }

        outlined destroy of NavigationRequest.Action?(v206, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        outlined copy of ResolvedNavigationDestinations.ChangeRequest(v119, *(&v119 + 1), v120);
        v131 = v5;
        v132 = specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(v24 + 120, v119, *(&v119 + 1), v120, v24);
        if (!v5)
        {
          v141 = v132;
          v142 = v133;
          outlined consume of ResolvedNavigationDestinations.ChangeRequest(v119, *(&v119 + 1), v120);
          v143 = HIDWORD(v141);
          if (v142)
          {
            v144 = 0;
          }

          else
          {
            v144 = v141;
          }

          if (v142)
          {
            LODWORD(v143) = 0;
          }

          LODWORD(v121) = v144 + v121;
          v122 = (v143 + v122);
          v124 = v186;
          v24 = v211;
          goto LABEL_130;
        }

        outlined consume of ResolvedNavigationDestinations.ChangeRequest(v119, *(&v119 + 1), v120);
        *v208 = v5;
        v134 = v5;
        v10 = type metadata accessor for Error();
        if ((swift_dynamicCast() & 1) != 0 && *(&v206[0] + 1) >> 62 == 1)
        {
          v135 = *&v206[0];

          *&v189[0] = v135;
          type metadata accessor for Any.Type();
          v136 = String.init<A>(describing:)();
          v138 = v137;
          *&v189[0] = 0;
          *(&v189[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(310);
          MEMORY[0x18D00C9B0](0x1000000000000032, 0x800000018CD4CBA0);
          MEMORY[0x18D00C9B0](v136, v138);
          MEMORY[0x18D00C9B0](0x1000000000000102, 0x800000018CD4CBE0);

          MEMORY[0x18D009810](*&v189[0], *(&v189[0] + 1));

          outlined destroy of NavigationState.UpdateResult(v207);
          outlined destroy of NavigationState.RequestResults(v210);
          *v186 = 0u;
          v186[1] = 0u;
          v186[2] = 0u;
          v186[3] = 0u;
          v186[4] = 0u;
          v186[5] = 0u;
          v186[6] = 0u;
          v186[7] = 0u;
          *(v186 + 16) = 0;
          *(v186 + 17) = 0x1FFFFFFFELL;
          v186[10] = 0u;
          v186[11] = 0u;
          v186[12] = 0u;
          v186[13] = 0u;
          v186[14] = 0u;
          v186[15] = 0u;
          v186[16] = 0u;
          v186[17] = 0u;
          v186[18] = 0u;
          v186[9] = 0u;
          *(v186 + 297) = 0u;

          return (v121 | (v122 << 32));
        }

        *&v195[0] = v5;
        v139 = v5;
        if (!swift_dynamicCast())
        {
LABEL_146:
          outlined destroy of NavigationState.UpdateResult(v207);
          outlined destroy of NavigationState.RequestResults(v210);

          return v10;
        }

        v140 = *&v208[8];
        v10 = *v208;
        if (*&v208[8] < 2uLL)
        {
          outlined consume of NavigationPath.Error(*v208, *&v208[8]);
          goto LABEL_146;
        }

        v24 = v211;
        outlined init with copy of NavigationColumnState(v211, v206);
        outlined init with copy of NavigationColumnState.ColumnContent(&v206[7] + 8, v189);
        outlined destroy of NavigationColumnState(v206);
        if (BYTE8(v191) == 1)
        {
          outlined destroy of NavigationColumnState.ColumnContent(v189);
        }

        else
        {
          v145 = v190;

          outlined destroy of NavigationRequest.Action?(v189, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
          LOBYTE(v206[0]) = 17;
          v146 = *(v24 + 96);
          v147 = *(v211 + 104);
          v183 = v10;
          v148 = *(v211 + 112);
          v149 = swift_allocObject();
          v149[2] = v146;
          v149[3] = v147;
          v149[4] = v148;
          v149[5] = v145;
          v150 = v147;
          v24 = v211;
          v10 = v183;
          outlined copy of Binding<AnyNavigationPath>?(v146, v150);

          static Update.enqueueAction(reason:_:)();

          LODWORD(v121) = v121 + 1;
        }

        *&v206[0] = 0;
        *(&v206[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(151);
        MEMORY[0x18D00C9B0](0xD00000000000005FLL, 0x800000018CD4CB00);
        MEMORY[0x18D00C9B0](v10, v140);
        outlined consume of NavigationPath.Error(v10, v140);
        MEMORY[0x18D00C9B0](0x1000000000000036, 0x800000018CD4CB60);
        MEMORY[0x18D009810](*&v206[0], *(&v206[0] + 1));
      }

LABEL_129:
      v124 = v186;
LABEL_130:
      v125 = v187;
LABEL_131:
      v10 = (v121 | (v122 << 32));
      NavigationColumnState.updateAnimationState(requestAnimation:disablesAnimations:seedDelta:)(*(v188 + 160), (v125 & 1) == 0, v10);
      v126 = *(v24 + 4) + v122;
      *v24 += v121;
      *(v24 + 4) = v126;
      outlined destroy of NavigationState.RequestResults(v210);
      memcpy(v124, v207, 0x139uLL);
      return v10;
    case 17:
      v184 = v4;
      v12 = *&v208[56];
      LOBYTE(v5) = v208[64];
      LOBYTE(v11) = v208[65];
      v198 = *v208;
      v199 = *&v208[16];
      v178 = *&v208[48];
      v200 = *&v208[32];
      v61 = *a4;
      v62 = *(a4 + 16);
      v63 = *(a4 + 32);
      v64 = *(a4 + 48);
      v205 = *(a4 + 64);
      v203 = v63;
      v204 = v64;
      v201 = v61;
      v202 = v62;
      if (v62 == 1)
      {
        goto LABEL_66;
      }

      v65 = v203;
      if (!v203)
      {
        goto LABEL_66;
      }

      v66 = *(&v203 + 1);
      v67 = *(&v199 + 1);
      v68 = v200;
      __swift_project_boxed_opaque_existential_1(&v198, *(&v199 + 1));
      v170 = *(v68 + 40);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v65, v66);
      v172 = MEMORY[0x1E69E6720];
      outlined init with copy of NavigationRequest.Action?(&v201, v206, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, MEMORY[0x1E69E6720]);
      v170(v206, v67, v68);
      v69 = *(v211 + 24);
      if (v69 >= 3)
      {
        LOBYTE(v69) = 3;
      }

      BYTE9(v206[3]) = v69;
      LOBYTE(v189[0]) = 17;
      outlined init with copy of NavigationUpdateEvent(v206, v207);
      v70 = swift_allocObject();
      *(v70 + 16) = v65;
      *(v70 + 24) = v66;
      v71 = v207[1];
      *(v70 + 32) = v207[0];
      *(v70 + 48) = v71;
      *(v70 + 64) = v207[2];
      *(v70 + 74) = *(&v207[2] + 10);

      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationRequest.Action?(&v201, &lazy cache variable for type metadata for NavigationSplitViewState?, &type metadata for NavigationSplitViewState, v172);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v65);

      outlined destroy of NavigationUpdateEvent(v206);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v175 = 0u;
      v179 = xmmword_18CDAF4D0;
      v171 = 0u;
      v173 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      goto LABEL_91;
    case 18:
      v10 = *&v208[88];
      v201 = *&v208[16];
      v202 = *&v208[32];
      v203 = *&v208[48];
      v204 = *&v208[64];
      if (*&v208[8] != -1)
      {
        v79 = *&v208[80];
        v80 = v211;
        if ((NavigationColumnState.ColumnContent.isPresentingViewDestinationView(_:)(&v201) & 1) == 0)
        {
          if (*(v80 + 352) >= 2u)
          {
            *(v80 + 352) = 0;
          }

          outlined init with copy of NavigationLinkSelectionIdentifier(&v201, v207 + 8);
          *&v207[0] = v12;
          *(&v207[4] + 8) = v79;

          v96 = NavigationColumnState.ColumnContent.presentView(_:from:)(v207, v13);
          v98 = v97;
          v180 = v99;
          v100 = v99;
          outlined destroy of NavigationViewDestinationView(v207);
          if (v100 == 1)
          {
            LOBYTE(v207[0]) = 17;
            v176 = v98;
            v101 = *(v80 + 96);
            v102 = *(v80 + 104);
            v103 = *(v80 + 112);
            v104 = swift_allocObject();
            v104[2] = v96;
            v104[3] = v101;
            v104[4] = v102;
            v104[5] = v103;
            v105 = v102;
            v98 = v176;
            outlined copy of Binding<AnyNavigationPath>?(v101, v105);
            static Update.enqueueAction(reason:_:)();
          }

          outlined destroy of NavigationLinkSelectionIdentifier(&v201);
          v5 = v4;
          *(&v206[8] + 8) = 0u;
          *(&v206[7] + 8) = 0u;
          *(&v206[6] + 8) = 0u;
          *(&v206[5] + 8) = 0u;
          *(&v206[4] + 8) = 0u;
          *(&v206[3] + 8) = 0u;
          *(&v206[2] + 8) = 0u;
          *(&v206[1] + 8) = 0u;
          *(&v206[9] + 1) = 0;
          *&v206[10] = 0x1FFFFFFFCLL;
          *(&v206[16] + 8) = 0u;
          *(&v206[17] + 8) = 0u;
          *(&v206[18] + 8) = 0u;
          *(&v206[19] + 8) = 0u;
          *(&v206[20] + 1) = 0u;
          *(&v206[10] + 8) = 0u;
          *(&v206[11] + 8) = 0u;
          *(&v206[12] + 8) = 0u;
          *(&v206[13] + 8) = 0u;
          *(&v206[14] + 8) = 0u;
          *(&v206[15] + 8) = 0u;
          *&v206[0] = v96;
          *(&v206[0] + 1) = v98;
          LOBYTE(v206[1]) = v180;
          *(&v206[21] + 4) = 1;
          goto LABEL_102;
        }

        v81 = *(v188 + 200);
        if (v81 >> 1 == 0xFFFFFFFF)
        {
          v82 = (v188 + 104);
          v83 = (v188 + 112);
          v84 = (v188 + 120);
          v85 = (v188 + 128);
          v81 = *(v188 + 136);
          v86 = (v188 + 144);
        }

        else
        {
          v82 = (v188 + 168);
          v83 = (v188 + 176);
          v84 = (v188 + 184);
          v85 = (v188 + 192);
          v86 = (v188 + 208);
        }

        v182 = *v86;
        v109 = *v85;
        v110 = *v84;
        v111 = *v83;
        v112 = *v82;
        v207[0] = v201;
        v207[1] = v202;
        v207[2] = v203;
        v207[3] = v204;
        outlined init with copy of NavigationRequest(v188, v189);
        *&v195[0] = v12;
        *(v195 + 8) = v207[0];
        *(&v195[1] + 8) = v207[1];
        *(&v195[2] + 8) = v207[2];
        *(&v195[3] + 8) = v207[3];
        BYTE8(v195[4]) = 1;
        v197 = 14;
        *(&v207[16] + 8) = 0u;
        *(&v207[17] + 8) = 0u;
        *(&v207[18] + 8) = 0u;
        *(&v207[13] + 8) = 0u;
        *(&v207[14] + 8) = 0u;
        *(&v207[15] + 8) = 0u;
        BYTE8(v207[19]) = -1;
        v207[1] = v189[1];
        v207[0] = v189[0];
        v207[5] = v189[5];
        v207[4] = v189[4];
        v207[2] = v189[2];
        v207[3] = v189[3];
        v207[9] = v193;
        v207[8] = v192;
        v207[6] = v190;
        v207[7] = v191;
        *&v207[10] = v194;
        *(&v207[10] + 1) = v112;
        *&v207[11] = v111;
        *(&v207[11] + 1) = v110;
        *&v207[12] = v109;
        *(&v207[12] + 1) = v81;
        *&v207[13] = v182;
        outlined assign with take of NavigationRequest.Action?(v195, &v207[13] + 8, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        v206[0] = xmmword_18CD6A6D0;
        LOBYTE(v206[1]) = 2;
        memcpy(&v206[1] + 8, v207, 0x139uLL);
LABEL_100:
        *(&v206[21] + 4) = 0;
        v5 = v4;
LABEL_102:
        memcpy(v210, v206, 0x15CuLL);
        v24 = v211;
        goto LABEL_128;
      }

      if (*(v211 + 24) >= 2u)
      {
        goto LABEL_119;
      }

      v91 = *(v188 + 200);
      if (v91 >> 1 == 0xFFFFFFFF)
      {
        v92 = (v188 + 104);
        v93 = (v188 + 112);
        v94 = (v188 + 120);
        v95 = (v188 + 128);
        v91 = *(v188 + 136);
      }

      else
      {
        v92 = (v188 + 168);
        v93 = (v188 + 176);
        v94 = (v188 + 184);
        v95 = (v188 + 192);
      }

      v114 = *v94;
      v115 = *v93;
      v116 = v91 >> 62;
      if (v116)
      {
        if (v116 != 1 || *v94 == 6)
        {
          goto LABEL_119;
        }

        v117 = v115;
        v115 = *v94;
        v114 = *v95;
      }

      else
      {
        v117 = *v92;
      }

      if (v115 - 2 >= 4)
      {
        v153 = *&v208[88];
        v154 = *&v208[80];
        if (v115)
        {
          v155 = 2;
        }

        else if (v114 == 3)
        {
          v155 = 1;
        }

        else
        {
          v155 = 2;
        }

        v195[0] = *&v208[16];
        v195[1] = *&v208[32];
        v195[2] = *&v208[48];
        v195[3] = *&v208[64];
        outlined init with copy of NavigationRequest(v188, v207);
        *&v189[0] = v12;
        *(v189 + 8) = v195[0];
        *(&v189[1] + 8) = v195[1];
        *(&v189[2] + 8) = v195[2];
        *(&v189[3] + 8) = v195[3];
        *(&v189[4] + 1) = v154;
        *&v189[5] = v153;
        LOBYTE(v190) = 12;
        LOBYTE(v206[21]) = -1;
        *(&v206[3] + 8) = v207[2];
        *(&v206[2] + 8) = v207[1];
        *(&v206[1] + 8) = v207[0];
        *(&v206[7] + 8) = v207[6];
        *(&v206[6] + 8) = v207[5];
        *(&v206[5] + 8) = v207[4];
        *(&v206[4] + 8) = v207[3];
        *(&v206[10] + 8) = v207[9];
        *(&v206[9] + 8) = v207[8];
        *(&v206[8] + 8) = v207[7];
        *(&v206[11] + 1) = *&v207[10];
        *&v206[12] = v117;
        *(&v206[12] + 1) = v155;
        v206[13] = v114;
        memset(&v206[14], 0, 112);
        outlined assign with take of NavigationRequest.Action?(v189, &v206[15], &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action);
        v206[0] = xmmword_18CD6A6D0;
        LOBYTE(v206[1]) = 2;
        goto LABEL_100;
      }

LABEL_119:
      lazy protocol witness table accessor for type NavigationAuthority.RequestError and conformance NavigationAuthority.RequestError();
      swift_allocError();
      *v118 = 0u;
      *(v118 + 16) = 0u;
      *(v118 + 32) = 5;
      swift_willThrow();

      outlined destroy of NavigationLinkSelectionIdentifier(&v201);
      return v10;
    case 19:
      v206[0] = *v208;
      v206[1] = *&v208[16];
      v206[2] = *&v208[32];
      v206[3] = *&v208[48];
      v24 = v211;
      NavigationColumnState.programmaticallyDismissView(identifier:request:)(v206, v188, v210);
LABEL_35:
      outlined destroy of NavigationLinkSelectionIdentifier(v206);
      goto LABEL_128;
    case 20:
      v24 = v211;
      NavigationColumnState.popAllForSelectionChange(popReplacedRoots:)(v208[0] & 1, v210);
      goto LABEL_128;
    case 22:
      if (!(*&v208[8] | *v208 | *&v208[24] | *&v208[88] | *&v208[80] | *&v208[72] | *&v208[64] | *&v208[56] | *&v208[48] | *&v208[40] | *&v208[32] | *&v208[16]))
      {
        v14 = 0uLL;
        *(&v210[8] + 8) = 0u;
        *(&v210[7] + 8) = 0u;
        *(&v210[6] + 8) = 0u;
        *(&v210[5] + 8) = 0u;
        *(&v210[4] + 8) = 0u;
        *(&v210[3] + 8) = 0u;
        *(&v210[2] + 8) = 0u;
        *(&v210[1] + 8) = 0u;
        v15 = 0x1FFFFFFFCLL;
LABEL_7:
        *(&v210[9] + 1) = 0;
        *&v210[10] = v15;
        *(&v210[16] + 8) = v14;
        *(&v210[17] + 8) = v14;
        *(&v210[18] + 8) = v14;
        *(&v210[19] + 8) = v14;
        *(&v210[20] + 1) = v14;
        *(&v210[10] + 8) = v14;
        *(&v210[11] + 8) = v14;
        *(&v210[12] + 8) = v14;
        *(&v210[13] + 8) = v14;
        *(&v210[14] + 8) = v14;
        *(&v210[15] + 8) = v14;
        v210[0] = xmmword_18CD6A6D0;
        LOBYTE(v210[1]) = 2;
LABEL_33:
        *(&v210[21] + 4) = 0;
        v24 = v211;
        goto LABEL_128;
      }

      v76 = *&v208[24] | *&v208[8] | *&v208[88] | *&v208[80] | *&v208[72] | *&v208[64] | *&v208[56] | *&v208[48] | *&v208[40] | *&v208[32] | *&v208[16];
      v24 = v211;
      if (*v208 == 1 && !v76)
      {
        NavigationColumnState.ejectAll()();
        *(v24 + 352) = 0;
        *(&v210[1] + 8) = 0u;
        *(&v210[2] + 8) = 0u;
        *(&v210[3] + 8) = 0u;
        *(&v210[4] + 8) = 0u;
        *(&v210[5] + 8) = 0u;
        *(&v210[6] + 8) = 0u;
        *(&v210[7] + 8) = 0u;
        *(&v210[8] + 8) = 0u;
        *(&v210[9] + 1) = 0;
        *&v210[10] = 0x1FFFFFFFCLL;
        *(&v210[16] + 8) = 0u;
        *(&v210[17] + 8) = 0u;
        *(&v210[18] + 8) = 0u;
        *(&v210[19] + 8) = 0u;
        *(&v210[20] + 1) = 0u;
        *(&v210[10] + 8) = 0u;
        *(&v210[11] + 8) = 0u;
        *(&v210[12] + 8) = 0u;
        *(&v210[13] + 8) = 0u;
        *(&v210[14] + 8) = 0u;
        *(&v210[15] + 8) = 0u;
        v210[0] = xmmword_18CD79D60;
        LOBYTE(v210[1]) = 2;
LABEL_127:
        *(&v210[21] + 4) = 1;
        goto LABEL_128;
      }

      if (*v208 == 2 && !v76)
      {
        NavigationColumnState.dismissSplitViewColumn(request:)(v188, v210);
        goto LABEL_128;
      }

      if (*v208 != 3 || v76)
      {
        if (*v208 != 4 || v76)
        {
          if (*v208 != 5 || v76)
          {
            NavigationColumnState.revealedBySubsequentPop()(v210);
          }

          else
          {
            v151 = *(v211 + 8);
            if (v151 != -1)
            {
              if (v151)
              {
                v152 = merge32(_:_:)(v151, 1u);
              }

              else
              {
                v152 = 1;
              }

              *(v24 + 8) = v152;
            }

            *(&v210[8] + 8) = 0u;
            *(&v210[7] + 8) = 0u;
            *(&v210[6] + 8) = 0u;
            *(&v210[5] + 8) = 0u;
            *(&v210[4] + 8) = 0u;
            *(&v210[3] + 8) = 0u;
            *(&v210[2] + 8) = 0u;
            *(&v210[1] + 8) = 0u;
            *(&v210[9] + 1) = 0;
            *&v210[10] = 0x1FFFFFFFCLL;
            *(&v210[16] + 8) = 0u;
            *(&v210[17] + 8) = 0u;
            *(&v210[18] + 8) = 0u;
            *(&v210[19] + 8) = 0u;
            *(&v210[20] + 1) = 0u;
            *(&v210[10] + 8) = 0u;
            *(&v210[11] + 8) = 0u;
            *(&v210[12] + 8) = 0u;
            *(&v210[13] + 8) = 0u;
            *(&v210[14] + 8) = 0u;
            *(&v210[15] + 8) = 0u;
            v210[0] = xmmword_18CD6A6D0;
            LOBYTE(v210[1]) = 2;
            *(&v210[21] + 4) = 0;
          }
        }

        else
        {
          NavigationColumnState.applyPendingDeselections(_:)(v188, v210);
        }

        goto LABEL_128;
      }

      if (*(v211 + 48))
      {
        v106 = NavigationListState.clearAllSelections()();
        v107 = *(v24 + 8);
        if (v107 != -1)
        {
          if (!v107)
          {
LABEL_97:
            v108 = 1;
LABEL_171:
            *(v24 + 8) = v108;
            goto LABEL_172;
          }

LABEL_170:
          v108 = merge32(_:_:)(v107, 1u);
          goto LABEL_171;
        }
      }

      else
      {
        v106 = 0;
        v107 = *(v211 + 8);
        if (v107 != -1)
        {
          if (!v107)
          {
            goto LABEL_97;
          }

          goto LABEL_170;
        }
      }

LABEL_172:
      v210[0] = xmmword_18CD6A6D0;
      LOBYTE(v210[1]) = 2;
      *(&v210[1] + 8) = 0u;
      *(&v210[2] + 8) = 0u;
      *(&v210[3] + 8) = 0u;
      *(&v210[4] + 8) = 0u;
      *(&v210[5] + 8) = 0u;
      *(&v210[6] + 8) = 0u;
      *(&v210[7] + 8) = 0u;
      *(&v210[8] + 8) = 0u;
      *(&v210[9] + 1) = 0;
      *&v210[10] = 0x1FFFFFFFCLL;
      *(&v210[16] + 8) = 0u;
      *(&v210[17] + 8) = 0u;
      *(&v210[18] + 8) = 0u;
      *(&v210[19] + 8) = 0u;
      *(&v210[20] + 1) = 0u;
      *(&v210[10] + 8) = 0u;
      *(&v210[11] + 8) = 0u;
      *(&v210[12] + 8) = 0u;
      *(&v210[13] + 8) = 0u;
      *(&v210[14] + 8) = 0u;
      *(&v210[15] + 8) = 0u;
      *(&v210[21] + 4) = v106;
      goto LABEL_128;
    default:
      outlined init with copy of NavigationColumnState(v211, v206);
      v189[2] = *(&v206[17] + 8);
      v189[3] = *(&v206[18] + 8);
      v189[4] = *(&v206[19] + 8);
      *&v189[5] = *(&v206[20] + 1);
      v189[0] = *(&v206[15] + 8);
      v189[1] = *(&v206[16] + 8);
      v195[2] = *(&v206[17] + 8);
      v195[3] = *(&v206[18] + 8);
      v195[4] = *(&v206[19] + 8);
      *&v196 = *(&v206[20] + 1);
      v195[0] = *(&v206[15] + 8);
      v195[1] = *(&v206[16] + 8);
      outlined init with copy of ResolvedNavigationDestinations(v189, v207);
      v57 = (v12)(v195);
      v207[2] = v195[2];
      v207[3] = v195[3];
      v207[4] = v195[4];
      *&v207[5] = v196;
      v207[0] = v195[0];
      v207[1] = v195[1];
      outlined destroy of ResolvedNavigationDestinations(v207);
      if (v57 >> 62)
      {
        v58 = __CocoaSet.count.getter();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      outlined destroy of NavigationColumnState(v206);
      if (v58)
      {
        v59 = 0;
      }

      else
      {

        v59 = 2;
        v57 = 1;
      }

      *(&v210[8] + 8) = 0u;
      *(&v210[7] + 8) = 0u;
      *(&v210[6] + 8) = 0u;
      *(&v210[5] + 8) = 0u;
      *(&v210[4] + 8) = 0u;
      *(&v210[3] + 8) = 0u;
      *(&v210[2] + 8) = 0u;
      *(&v210[1] + 8) = 0u;
      *(&v210[9] + 1) = 0;
      *&v210[10] = 0x1FFFFFFFCLL;
      *(&v210[16] + 8) = 0u;
      *(&v210[17] + 8) = 0u;
      *(&v210[18] + 8) = 0u;
      *(&v210[19] + 8) = 0u;
      *(&v210[20] + 1) = 0u;
      *(&v210[10] + 8) = 0u;
      *(&v210[11] + 8) = 0u;
      *(&v210[12] + 8) = 0u;
      *(&v210[13] + 8) = 0u;
      *(&v210[14] + 8) = 0u;
      *(&v210[15] + 8) = 0u;

      v210[0] = v57;
      LOBYTE(v210[1]) = v59;
      *(&v210[21] + 4) = 0;
      v5 = v4;
      v24 = v211;
      goto LABEL_128;
  }
}

uint64_t sub_18BEBFEF8()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void type metadata accessor for NavigationRequest.Action?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t destroy for NavigationState.UpdateResult(uint64_t result)
{
  if ((*(result + 136) >> 1) <= 0x80000000)
  {
    v1 = result;
    switch(*(result + 96))
    {
      case 0:
        goto LABEL_30;
      case 1:

        goto LABEL_30;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(v1 + 16);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_30;
      case 6:

        goto LABEL_30;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(result);

        goto LABEL_30;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(result);
        break;
      case 0xC:
      case 0xD:

        if (*(v1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 8);
        }

        if (*(v1 + 56) != 1)
        {
        }

        goto LABEL_30;
      case 0xE:

        if (*(v1 + 32))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 8);
        }

        v2 = *(v1 + 56);
        goto LABEL_25;
      case 0x12:

        if (*(v1 + 40))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 16);
        }

        if (*(v1 + 64) != 1)
        {
        }

        goto LABEL_30;
      case 0x13:
        if (*(result + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(result);
        }

        v2 = *(v1 + 48);
LABEL_25:
        if (v2 == 1)
        {
          break;
        }

        goto LABEL_30;
      case 0x15:
        if (*result)
        {
        }

        if (*(v1 + 16))
        {
LABEL_30:
        }

        break;
      default:
        break;
    }

    switch(*(v1 + 312))
    {
      case 0:
        goto LABEL_61;
      case 1:

        goto LABEL_61;
      case 2:

        v3 = v1 + 232;
        goto LABEL_67;
      case 3:

      case 4:
      case 5:

        goto LABEL_61;
      case 6:

        goto LABEL_61;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(v1 + 216);

        goto LABEL_61;
      case 0xB:
        v3 = v1 + 216;
LABEL_67:

        return __swift_destroy_boxed_opaque_existential_1(v3);
      case 0xC:
      case 0xD:

        if (*(v1 + 248))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 224);
        }

        if (*(v1 + 272) != 1)
        {
        }

        goto LABEL_61;
      case 0xE:

        if (*(v1 + 248))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 224);
        }

        result = *(v1 + 272);
        if (result == 1)
        {
          return result;
        }

        goto LABEL_61;
      case 0x12:

        if (*(v1 + 256))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 232);
        }

        if (*(v1 + 280) != 1)
        {
        }

        goto LABEL_61;
      case 0x13:
        if (*(v1 + 240))
        {
          __swift_destroy_boxed_opaque_existential_1(v1 + 216);
        }

        result = *(v1 + 264);
        if (result == 1)
        {
          return result;
        }

        goto LABEL_61;
      case 0x15:
        if (*(v1 + 216))
        {
        }

        if (*(v1 + 232))
        {
LABEL_61:
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t NavigationColumnState.updateAnimationState(requestAnimation:disablesAnimations:seedDelta:)(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(v3 + 353);
  if (v4 == 2)
  {
    goto LABEL_15;
  }

  if ((a2 & 1) == 0 || !a3)
  {
    if (!result || (a2 & 1) != 0)
    {
      v5 = *(v3 + 353);
      goto LABEL_10;
    }

    v6 = *(v3 + 340);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      v9 = a2;
      *(v3 + 340) = v8;
      v10 = result;

      *(v3 + 344) = v10;
      LOBYTE(v5) = 1;
      a2 = v9;
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  ++*(v3 + 336);
  LOBYTE(v5) = 1;
LABEL_10:
  if ((a2 | ((v4 & 0x100) >> 8)))
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *(v3 + 353) = v11 & 0xFFFE | v5 & 1;
  return result;
}

uint64_t destroy for NavigationState.RequestResults(uint64_t a1)
{
  result = outlined consume of ResolvedNavigationDestinations.ChangeRequest(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 160) >> 2 != 0x7FFFFFFFLL)
  {
    switch(*(a1 + 120))
    {
      case 0:
        goto LABEL_31;
      case 1:

        goto LABEL_31;
      case 2:

        __swift_destroy_boxed_opaque_existential_1(a1 + 40);
        break;
      case 3:

        break;
      case 4:
      case 5:

        goto LABEL_31;
      case 6:

        goto LABEL_31;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(a1 + 24);

        goto LABEL_31;
      case 0xB:
        __swift_destroy_boxed_opaque_existential_1(a1 + 24);
        break;
      case 0xC:
      case 0xD:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 32);
        }

        if (*(a1 + 80) != 1)
        {
        }

        goto LABEL_31;
      case 0xE:

        if (*(a1 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 32);
        }

        v3 = *(a1 + 80);
        goto LABEL_26;
      case 0x12:

        if (*(a1 + 64))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 40);
        }

        if (*(a1 + 88) != 1)
        {
        }

        goto LABEL_31;
      case 0x13:
        if (*(a1 + 48))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 24);
        }

        v3 = *(a1 + 72);
LABEL_26:
        if (v3 == 1)
        {
          break;
        }

        goto LABEL_31;
      case 0x15:
        if (*(a1 + 24))
        {
        }

        if (*(a1 + 40))
        {
LABEL_31:
        }

        break;
      default:
        break;
    }

    switch(*(a1 + 336))
    {
      case 0:
        goto LABEL_62;
      case 1:

        goto LABEL_62;
      case 2:

        v4 = a1 + 256;
        goto LABEL_67;
      case 3:

      case 4:
      case 5:

        goto LABEL_62;
      case 6:

        goto LABEL_62;
      case 0xA:
      case 0x11:
        __swift_destroy_boxed_opaque_existential_1(a1 + 240);

        goto LABEL_62;
      case 0xB:
        v4 = a1 + 240;
LABEL_67:

        return __swift_destroy_boxed_opaque_existential_1(v4);
      case 0xC:
      case 0xD:

        if (*(a1 + 272))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 248);
        }

        if (*(a1 + 296) != 1)
        {
        }

        goto LABEL_62;
      case 0xE:

        if (*(a1 + 272))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 248);
        }

        result = *(a1 + 296);
        goto LABEL_57;
      case 0x12:

        if (*(a1 + 280))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 256);
        }

        if (*(a1 + 304) != 1)
        {
        }

        goto LABEL_62;
      case 0x13:
        if (*(a1 + 264))
        {
          __swift_destroy_boxed_opaque_existential_1(a1 + 240);
        }

        result = *(a1 + 288);
LABEL_57:
        if (result != 1)
        {
          goto LABEL_62;
        }

        return result;
      case 0x15:
        if (*(a1 + 240))
        {
        }

        if (*(a1 + 256))
        {
LABEL_62:
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t outlined consume of ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

{
  v1 = *a1;
  v2 = *a1 + 40;
  v3 = *(*a1 + 104);
  (*(*a1 + 112))();
  outlined destroy of ToolbarPlacement.Role(v1);
  v3(v2, 0);

  free(v1);
}

{
  v1 = *a1;
  v2 = *a1 + 128;
  v3 = *(*a1 + 192);
  (*(*a1 + 200))();
  outlined destroy of IdentifiedDocumentGroupConfiguration(v1);
  v3(v2, 0);

  free(v1);
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t *a1)
{
  v1 = *a1;
  outlined init with copy of NavigationState.Base?(*a1, *a1 + 360, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState);
  v2 = *(v1 + 356);
  if (*(v1 + 608))
  {
    v3 = *(v1 + 736);
    memcpy(v9, (v1 + 360), sizeof(v9));
    v4 = *v3;
    v5 = *(v1 + 744);
    if (v2)
    {
      memcpy((v4[7] + 360 * v5), v9, 0x163uLL);
    }

    else
    {
      v6 = *(v1 + 728);
      v7 = *(v1 + 720);
      v8 = *(v1 + 355);
      memcpy(__dst, v9, 0x163uLL);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v7, v8, v6, __dst, v4);
    }
  }

  else
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v1 + 360, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
    if (v2)
    {
      specialized _NativeDictionary._delete(at:)(*(v1 + 744), **(v1 + 736));
    }
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v1, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 35);
  if (v2 == 3)
  {
    if (*(*a1 + 35))
    {
      v4 = *(v1 + 24);
      v5 = **(v1 + 16);
      outlined destroy of TabCustomizationID(*(v5 + 48) + 24 * v4);
      specialized _NativeDictionary._delete(at:)(v4, v5);
    }
  }

  else
  {
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);
    if (v3)
    {
      *((*v7)[7] + 2 * v6) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v6, *v1, *(v1 + 8), *(v1 + 34) & 1, v2, *v7);
      outlined copy of TabCustomizationID.Base();
    }
  }

  free(v1);
}

{
  v1 = *a1;
  outlined init with copy of NavigationState.Base?(*a1, *a1 + 368, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog);
  v2 = *(v1 + 178);
  if (*(v1 + 384))
  {
    v3 = *(v1 + 552);
    outlined init with take of ConfirmationDialog(v1 + 368, v1 + 184);
    v4 = *v3;
    v5 = *(v1 + 560);
    if (v2)
    {
      outlined init with take of ConfirmationDialog(v1 + 184, v4[7] + 184 * v5);
    }

    else
    {
      v6 = *(v1 + 180);
      outlined init with take of ConfirmationDialog(v1 + 184, v1 + 368);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v6, v1 + 368, v4);
    }
  }

  else
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(v1 + 368, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);
    if (v2)
    {
      specialized _NativeDictionary._delete(at:)(*(v1 + 560), **(v1 + 552));
    }
  }

  outlined destroy of Binding<NavigationSplitViewColumn>(v1, &lazy cache variable for type metadata for ConfirmationDialog?, &type metadata for ConfirmationDialog, MEMORY[0x1E69E6720]);

  free(v1);
}

{
  v1 = *a1;
  v2 = *(*a1 + 128);
  if (v2)
  {
    v3 = *(v1 + 152);
    v4 = **(v1 + 144);
    if (*(*a1 + 121))
    {
      *(v4[7] + 8 * v3) = v2;
    }

    else
    {
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v1 + 136), v1);
      specialized _NativeDictionary._insert(at:key:value:)(v3, v1, v2, v4);
    }
  }

  else if (*(*a1 + 121))
  {
    v5 = *(v1 + 152);
    v6 = **(v1 + 144);
    outlined destroy of IdentifiedDocumentGroupConfiguration(*(v6 + 48) + (v5 << 7));
    specialized _NativeDictionary._delete(at:)(v5, v6);
  }

  free(v1);
}

uint64_t destroy for NavigationRequest.TargetedRequest(uint64_t a1)
{
  switch(*(a1 + 96))
  {
    case 0:
      goto LABEL_29;
    case 1:

      goto LABEL_29;
    case 2:

      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      break;
    case 3:

      break;
    case 4:
    case 5:

      goto LABEL_29;
    case 6:

      goto LABEL_29;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_29;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1(a1);
      break;
    case 0xC:
    case 0xD:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      if (*(a1 + 56) != 1)
      {
      }

      goto LABEL_29;
    case 0xE:

      if (*(a1 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 8);
      }

      v2 = *(a1 + 56);
      goto LABEL_24;
    case 0x12:

      if (*(a1 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      }

      if (*(a1 + 64) != 1)
      {
      }

      goto LABEL_29;
    case 0x13:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v2 = *(a1 + 48);
LABEL_24:
      if (v2 == 1)
      {
        break;
      }

      goto LABEL_29;
    case 0x15:
      if (*a1)
      {
      }

      if (*(a1 + 16))
      {
LABEL_29:
      }

      break;
    default:
      break;
  }

  switch(*(a1 + 312))
  {
    case 0:
      goto LABEL_60;
    case 1:

      goto LABEL_60;
    case 2:

      v4 = a1 + 232;
      goto LABEL_66;
    case 3:

    case 4:
    case 5:

      goto LABEL_60;
    case 6:

      goto LABEL_60;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(a1 + 216);

      goto LABEL_60;
    case 0xB:
      v4 = a1 + 216;
LABEL_66:

      return __swift_destroy_boxed_opaque_existential_1(v4);
    case 0xC:
    case 0xD:

      if (*(a1 + 248))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 224);
      }

      if (*(a1 + 272) != 1)
      {
      }

      goto LABEL_60;
    case 0xE:

      if (*(a1 + 248))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 224);
      }

      result = *(a1 + 272);
      if (result == 1)
      {
        return result;
      }

      goto LABEL_60;
    case 0x12:

      if (*(a1 + 256))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 232);
      }

      if (*(a1 + 280) != 1)
      {
      }

      goto LABEL_60;
    case 0x13:
      if (*(a1 + 240))
      {
        __swift_destroy_boxed_opaque_existential_1(a1 + 216);
      }

      result = *(a1 + 264);
      if (result == 1)
      {
        return result;
      }

      goto LABEL_60;
    case 0x15:
      if (*(a1 + 216))
      {
      }

      if (*(a1 + 232))
      {
LABEL_60:
      }

      break;
    default:
      return result;
  }

  return result;
}