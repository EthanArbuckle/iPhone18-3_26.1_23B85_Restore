void FocusBridge.preferencesDidChange(_:)()
{
  v1 = v0;
  v2 = FocusBridge.host.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    PreferenceValues.subscript.getter();
    v6 = *(v35 + 16);
    if (v6)
    {
      v7 = v35 + 32;

      v8 = 0;
      do
      {
        outlined init with copy of FocusStoreList.Item(v7, &v35);
        v9 = v35;
        outlined destroy of FocusStoreList.Item(&v35);
        if (v9 > v8)
        {
          v8 = v9;
        }

        v7 += 72;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = 0;
    }

    swift_beginAccess();
    if (*(v1 + 48) == v8)
    {
    }

    else
    {
      v35 = 0;
      *&v36 = MEMORY[0x1E69E7CC0];
      *(&v36 + 1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

      FocusStore.makeStoreContent(_:)(v10);
      swift_bridgeObjectRelease_n();
      v11 = v36;
      *(v1 + 48) = v35;
      *(v1 + 56) = v11;

      v12 = FocusBridge.host.getter();
      if (v12)
      {
        v13 = v12;
        swift_getObjectType();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    PreferenceValues.subscript.getter();
    v14 = v35;
    v15 = *(v35 + 16);
    if (v15)
    {
      if (v15 >= 5)
      {
        v18 = *(v35 + 16) & 3;
        if ((v15 & 3) == 0)
        {
          v18 = 4;
        }

        v17 = v15 - v18;
        v19 = (v35 + 96);
        v20 = 0uLL;
        v21 = v17;
        v22 = 0uLL;
        do
        {
          v23 = v19 - 8;
          v24 = vld4q_f64(v23);
          v25 = vld4q_f64(v19);
          v20 = vbslq_s8(vcgtq_s64(v24, v20), v24, v20);
          v22 = vbslq_s8(vcgtq_s64(v25, v22), v25, v22);
          v19 += 16;
          v21 -= 4;
        }

        while (v21);
        v26 = vbslq_s8(vcgtq_s64(v20, v22), v20, v22);
        v27 = vextq_s8(v26, v26, 8uLL).u64[0];
        v16 = vbsl_s8(vcgtd_s64(v26.i64[0], v27), *v26.i8, v27);
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v28 = v15 - v17;
      v29 = (v35 + 32 * v17 + 32);
      do
      {
        v31 = *v29;
        v29 += 4;
        v30 = v31;
        if (*&v31 > *&v16)
        {
          v16 = v30;
        }

        --v28;
      }

      while (v28);
    }

    else
    {
      v16 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 24))(&v35, ObjectType, v5);
    v33 = v37;

    if (v33 == *&v16)
    {
    }

    else
    {
      FocusedValues.init(_:)(v14, &v35);
      v34 = *(v5 + 32);

      v34(&v35, ObjectType, v5);
      ViewRendererHost.isRootHost.getter();
    }
  }
}

uint64_t sub_18BD757A0()
{
  outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 176))
  {
    outlined consume of Text.Storage(*(v0 + 152), *(v0 + 160), *(v0 + 168));

    if (*(v0 + 184))
    {
    }
  }

  if (*(v0 + 208))
  {
  }

  if (*(v0 + 256))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  }

  return swift_deallocObject();
}

void type metadata accessor for PreferenceValues.Value<AnyHashable?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    _ss11AnyHashableVSgMaTm_2(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for PreferenceValues.Value();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeWithCopy for PresentationOptionsPreference(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 16);

  if (v5)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 24);
    *v4 = *(a2 + 8);
    *(a1 + 24) = v6;
  }

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      *(a1 + 48) = v7;
      v8 = v7;
      goto LABEL_9;
    }

    v7 = 2;
  }

  *(a1 + 48) = v7;
LABEL_9:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 120);
  if (v9)
  {
    v10 = *(a2 + 128);
    *(a1 + 120) = v9;
    *(a1 + 128) = v10;
    (**(v9 - 8))(a1 + 96, a2 + 96);
  }

  else
  {
    v11 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v11;
    *(a1 + 128) = *(a2 + 128);
  }

  *(a1 + 136) = *(a2 + 136);
  return a1;
}

_WORD *storeEnumTagSinglePayload for OutlineRootConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OutlineRootConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance Alert.Presentation.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t outlined destroy of PreferenceValues.Value<AnyHashable?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PreferenceValues.Value<AnyHashable?>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ActionSheet.Presentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance ActionSheet.Presentation.Key@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double protocol witness for ImageProvider.resolveNamedImage(in:) in conformance UIImage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for AccessibilityRelationshipScope.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityRelationshipScope.Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t getEnumTagSinglePayload for SheetPreference.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 107))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 106);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for PresentationOptionsPreference(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 138))
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

uint64_t storeEnumTagSinglePayload for PresentationOptionsPreference(uint64_t result, int a2, int a3)
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
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance PresentationOptionsPreferenceKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of PresentationOptionsPreference(&static PresentationOptionsPreferenceKey.defaultValue, v2);
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

void destroy for PresentationOptionsPreference(void *a1)
{

  if (a1[2])
  {
  }

  v2 = a1[6];
  if (v2 >= 3)
  {
  }

  if (a1[15])
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 12));
  }
}

double storeEnumTagSinglePayload for AccessibilityLargeContentViewTree(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 232) = 0;
    result = 0.0;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 240) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 242) = 1;
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
      result = 0.0;
      *(a1 + 160) = 0u;
      *(a1 + 176) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 192) = 0;
      *(a1 + 200) = -a2 << 24;
      *(a1 + 208) = 0u;
      *(a1 + 224) = 0u;
      *(a1 + 240) = 0;
      return result;
    }

    *(a1 + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityLargeContentViewTree.Key@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI33AccessibilityLargeContentViewTreeOWOi1_(v10);
  v2 = v22;
  *(a1 + 192) = v21;
  *(a1 + 208) = v2;
  *(a1 + 224) = v23;
  *(a1 + 240) = v24;
  v3 = v18;
  *(a1 + 128) = v17;
  *(a1 + 144) = v3;
  v4 = v20;
  *(a1 + 160) = v19;
  *(a1 + 176) = v4;
  v5 = v14;
  *(a1 + 64) = v13;
  *(a1 + 80) = v5;
  v6 = v16;
  *(a1 + 96) = v15;
  *(a1 + 112) = v6;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewTree(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 203);
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

__n128 __swift_memcpy242_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for SheetPreference.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 91) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 107) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 107) = 0;
    }

    if (a2)
    {
      *(result + 106) = -a2;
    }
  }

  return result;
}

void outlined consume of AccessibilityLargeContentViewTree(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int16 a31)
{
  v31 = a31 >> 14;
  if (v31 == 1)
  {
  }

  else if (!v31)
  {

    outlined consume of Image.Resolved?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
  }
}

uint64_t storeEnumTagSinglePayload for Alert.Presentation(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t destroy for SheetPreference.Value(uint64_t result)
{
  v1 = result;
  v2 = *(result + 106);
  if (v2 >= 2)
  {
    v2 = *result + 2;
  }

  if (v2 == 1)
  {

    if (*(v1 + 8))
    {
    }

    if (*(v1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_1(v1 + 32);
    }
  }

  else if (!v2)
  {
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SheetPreference.Key@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = a2;
  v5 = a3;
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
    v5 = a3;
    v4 = a2;
  }

  return outlined init with copy of SheetPreference.Value(v4, v5);
}

uint64_t initializeWithCopy for SheetPreference.Value(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 106);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    v6 = (a2 + 8);
    v5 = *(a2 + 8);

    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
    }

    else
    {
      *(a1 + 8) = *v6;
    }

    *(a1 + 24) = *(a2 + 24);
    v11 = *(a2 + 56);
    if (v11)
    {
      v12 = *(a2 + 64);
      *(a1 + 56) = v11;
      *(a1 + 64) = v12;
      (**(v11 - 8))(a1 + 32, a2 + 32);
    }

    else
    {
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      *(a1 + 64) = *(a2 + 64);
    }

    *(a1 + 72) = *(a2 + 72);
    v14 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v14;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 106) = 1;
  }

  else if (v4)
  {
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
    *(a1 + 91) = *(a2 + 91);
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    v10 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v10;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 106) = 0;
  }

  return a1;
}

uint64_t specialized SheetBridge.preferencesDidChange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(_BYTE *))
{
  v13 = v11;
  *&v115 = a1;
  PreferenceValues.subscript.getter();
  if (*(v11 + direct field offset for SheetBridge.lastEnvironment + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation>, &type metadata for ContainerBackgroundKeys.TransparentPresentation, &protocol witness table for ContainerBackgroundKeys.TransparentPresentation, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentPresentation> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  if (v115)
  {
    v15 = 0;
  }

  else
  {
    *&v115 = a1;
    PreferenceValues.subscript.getter();
    v15 = v102;
  }

  *&v115 = a1;
  PreferenceValues.subscript.getter();
  v16 = direct field offset for SheetBridge.interactiveDismissHandlerSeed;
  swift_beginAccess();
  *&v122[0] = a1;
  PreferenceValues.subscript.getter();
  v17 = *(v11 + v16);
  if (v17 == -1 || v103 == -1 || v17 != v103)
  {
    *(v11 + v16) = v103;
    v18 = v102;
    if (v102)
    {
      v19 = *(&v102 + 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = (v13 + direct field offset for SheetBridge.interactiveDismissHandler);
    v21 = *(v13 + direct field offset for SheetBridge.interactiveDismissHandler);
    *v20 = v102;
    v20[1] = v19;
    outlined copy of AppIntentExecutor?(v18);
    outlined copy of AppIntentExecutor?(v18);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
  }

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v102);
  swift_endAccess();
  v22 = v13 + direct field offset for SheetBridge.host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v24 = *(v22 + 1);
  ObjectType = swift_getObjectType();
  v26 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v24 + 16) + 8));
  swift_unknownObjectRelease();
  if (v26)
  {
    type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
LABEL_28:

      goto LABEL_29;
    }

    v28 = *(v27 + direct field offset for PresentationHostingController.presentingBridgeKind);

    if (!v28)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v29 = *(v22 + 1);
      v30 = swift_getObjectType();
      v26 = ViewGraphDelegate.uiViewController.getter(v30, *(*(v29 + 16) + 8));
      swift_unknownObjectRelease();
      if (v26)
      {
        v31 = swift_dynamicCastClass();
        if (v31)
        {
          v32 = v31;
          v97 = a7;
          v33 = direct field offset for SheetBridge.remotePresentationDelayTracker;
          swift_beginAccess();
          *&v122[0] = a1;
          PreferenceValues.subscript.getter();
          v34 = *(v13 + v33);
          if (v34 == -1 || DWORD1(v102) == -1 || v34 != DWORD1(v102))
          {
            *(v13 + v33) = DWORD1(v102);
            v35 = direct field offset for PresentationHostingController.isDelayingRemotePresentation;
            if (*(v32 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) == 1 && (v102 & 1) == 0)
            {
              [v32 _endDelayingPresentation];
              *(v32 + v35) = 0;
            }
          }

          swift_endAccess();
          a7 = v97;
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:
  v36 = *(v13 + direct field offset for SheetBridge.seed);
  if (v36 != -1 && v127 != -1 && v36 == v127)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v37 = *(v22 + 1);
      v38 = swift_getObjectType();
      v39 = ViewGraphDelegate.uiViewController.getter(v38, *(*(v37 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v39)
      {
        goto LABEL_91;
      }

      type metadata accessor for EnvironmentPropertyKey<InheritedColorSeedKey>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
      v40 = swift_dynamicCastClass();
      if (!v40)
      {

        goto LABEL_91;
      }

      v41 = *(v40 + direct field offset for PresentationHostingController.presentingBridgeKind);

      if (v41)
      {
LABEL_91:
        v94 = &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>;
        v95 = &type metadata for SheetPreference.Value;
        v96 = MEMORY[0x1E697EA38];
        v81 = v126;
        goto LABEL_92;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
LABEL_39:
        v45 = swift_dynamicCastClass();
        if (v45)
        {
          v46 = v45;
          MEMORY[0x1EEE9AC00](v45);
          swift_beginAccess();
          specialized VersionSeedTracker.didChange(_:action:)(a1, a11);
          swift_endAccess();
          v47 = direct field offset for SheetBridge.backgroundTracker;
          swift_beginAccess();
          *&v122[0] = a1;
          PreferenceValues.subscript.getter();
          v48 = *(v13 + v47);
          if (v48 == -1 || DWORD1(v102) == -1 || v48 != DWORD1(v102))
          {
            *(v13 + v47) = DWORD1(v102);
            specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v15);
          }

          swift_endAccess();
          v49 = direct field offset for SheetBridge.interactiveDismissTracker;
          swift_beginAccess();
          *&v122[0] = a1;
          PreferenceValues.subscript.getter();
          v50 = *(v13 + v49);
          if (v50 == -1 || DWORD1(v102) == -1 || v50 != DWORD1(v102))
          {
            *(v13 + v49) = DWORD1(v102);
            specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(v102);
          }

          swift_endAccess();
          *&v115 = a1;
          PreferenceValues.subscript.getter();
          _ss11AnyHashableVSgWOhTm_1(v126, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
          *(v46 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = v102;

          return _ss11AnyHashableVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
        }

        goto LABEL_91;
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v43 = *(v22 + 1);
        v44 = swift_getObjectType();
        Strong = ViewGraphDelegate.uiPresenterViewController.getter(v44, *(*(v43 + 16) + 8));
        swift_unknownObjectRelease();
        if (Strong)
        {
          goto LABEL_39;
        }

        goto LABEL_91;
      }

      goto LABEL_100;
    }

    goto LABEL_96;
  }

  *(v13 + direct field offset for SheetBridge.seed) = v127;
  outlined init with copy of SheetPreference.Value(v126, &v115);
  if (BYTE10(v120[1]))
  {
    if (BYTE10(v120[1]) == 1)
    {
      v51 = v115;
      v52 = v116;
      v53 = v117;
      v54 = v118;
      v55 = v119;
      v56 = v120[0];
      v57 = *&v120[1];
      v58 = WORD4(v120[1]);
      goto LABEL_54;
    }
  }

  else
  {
    outlined destroy of SheetPreference.Value(&v115);
  }

  v58 = 0;
  v57 = 0;
  v51 = 0uLL;
  v52 = 0uLL;
  v53 = 0uLL;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
LABEL_54:
  v122[0] = v51;
  v122[1] = v52;
  v122[2] = v53;
  v122[3] = v54;
  v122[4] = v55;
  v122[5] = v56;
  v123 = v57;
  v124 = v58;
  outlined init with copy of AnyShareConfiguration?(v122, &v102, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  v98 = a7;
  if (v102)
  {
    v119 = v106;
    v120[0] = v107[0];
    *(v120 + 10) = *(v107 + 10);
    v115 = v102;
    v116 = v103;
    v117 = v104;
    v118 = v105;
    v59 = *&v107[0];

    outlined destroy of SheetPreference(&v115);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_1(&v102, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    v60 = direct field offset for SheetBridge.presentationState;
    swift_beginAccess();
    outlined init with copy of PresentationState(v13 + v60, &v115);
    v61 = PresentationState.presentingViewID.getter();
    LOBYTE(v60) = v62;
    outlined destroy of PresentationState(&v115);
    if (v60)
    {
      v59 = 1;
    }

    else
    {
      v59 = SheetPreference.Value.dismissalTransaction(for:)(v61);
      outlined copy of Transaction?(v59);
    }
  }

  v63 = direct field offset for SheetBridge.presentationState;
  swift_beginAccess();
  outlined init with copy of PresentationState(v13 + v63, &v115);
  v64 = PresentationState.presentingViewID.getter();
  v66 = v65;
  outlined destroy of PresentationState(&v115);
  if ((v66 & 1) != 0 || (v67 = SheetPreference.Value.viewIDs.getter(), v68 = specialized Set.contains(_:)(v64, v67), , (v68 & 1) == 0))
  {
    v69 = 1;
    if (v59 != 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v69 = 0;
    if (v59 != 1)
    {
LABEL_63:
      v70 = Transaction.disablesAnimations.getter();
      outlined consume of ListItemTint?(v59);
      v71 = v70 ^ 1;
      goto LABEL_66;
    }
  }

  v71 = 0;
LABEL_66:
  swift_beginAccess();
  v99 = v71;
  PresentationState.presentationDidChange(_:animated:hasNoModifier:)(v122, v71 & 1, v69);
  swift_endAccess();
  outlined init with copy of PresentationState(v13 + v63, &v115);
  v113 = v120[7];
  v114[0] = v121[0];
  *(v114 + 11) = *(v121 + 11);
  v109 = v120[3];
  v110 = v120[4];
  v111 = v120[5];
  v112 = v120[6];
  v106 = v119;
  v107[0] = v120[0];
  v107[1] = v120[1];
  v108 = v120[2];
  v102 = v115;
  v103 = v116;
  v104 = v117;
  v105 = v118;
  if (BYTE10(v121[1]) >= 2u)
  {
    outlined destroy of PresentationState.Base(&v102);
    v73 = swift_unknownObjectWeakLoadStrong();
    if (!v73)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v74 = *(v22 + 1);
      v75 = swift_getObjectType();
      v73 = ViewGraphDelegate.uiPresenterViewController.getter(v75, *(*(v74 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v73)
      {
        outlined consume of ListItemTint?(v59);
        goto LABEL_90;
      }
    }

    outlined init with copy of AnyShareConfiguration?(v122, &v102, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    if (v102)
    {
      v119 = v106;
      v120[0] = v107[0];
      *(v120 + 10) = *(v107 + 10);
      v76 = *MEMORY[0x1E69E7D40] & *v13;
      v115 = v102;
      v116 = v103;
      v117 = v104;
      v118 = v105;
      (*(v76 + 592))(&v115, v73, v71 & 1);

      outlined consume of ListItemTint?(v59);
      outlined destroy of SheetPreference(&v115);
LABEL_90:
      _ss11AnyHashableVSgWOhTm_1(v122, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
      goto LABEL_91;
    }

    outlined consume of ListItemTint?(v59);
    v80 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOhTm_1(v122, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v126, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
    v81 = &v102;
LABEL_88:
    v94 = &lazy cache variable for type metadata for SheetPreference?;
    v95 = &type metadata for SheetPreference;
    v96 = v80;
LABEL_92:
    _ss11AnyHashableVSgWOhTm_1(v81, v94, v95, v96);
    return _ss11AnyHashableVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  }

  outlined destroy of SheetPreference(&v102);
  outlined init with copy of PresentationState(v13 + v63, &v115);
  v72 = PresentationState.Base.presentedVC.getter();
  result = outlined destroy of PresentationState(&v115);
  if (!v72)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  outlined init with copy of AnyShareConfiguration?(v122, &v115, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (!v115)
  {
    _ss11AnyHashableVSgWOhTm_1(&v115, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    goto LABEL_77;
  }

  v106 = v119;
  v107[0] = v120[0];
  *(v107 + 10) = *(v120 + 10);
  v102 = v115;
  v103 = v116;
  v104 = v117;
  v105 = v118;
  if (v59 == 1)
  {
    outlined destroy of SheetPreference(&v102);
LABEL_77:
    swift_beginAccess();
    PresentationState.dismiss(willPresentAgain:hasNoModifier:)(0, v69);
    swift_endAccess();
    if (v69)
    {
      v72[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 1;
    }

    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v78 = swift_allocObject();
    *(v78 + 16) = v72;
    *(v78 + 24) = v99 & 1;
    *(v78 + 32) = v77;
    v79 = v72;

    onNextMainRunLoop(do:)();

    outlined consume of ListItemTint?(v59);

    _ss11AnyHashableVSgWOhTm_1(v122, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v126, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);

    return _ss11AnyHashableVSgWOhTm_1(&v125, &lazy cache variable for type metadata for PreferenceValues.Value<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, MEMORY[0x1E697EA38]);
  }

  outlined init with copy of PresentationState(v13 + v63, &v115);
  outlined init with copy of SheetPreference(&v102, v100);
  v82 = PresentationState.hasIdentityMatching(_:)(v100);
  _ss11AnyHashableVSgWOhTm_1(v100, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
  outlined destroy of PresentationState(&v115);
  if (v82)
  {
    (*((*MEMORY[0x1E69E7D40] & *v13) + 0x248))(&v102, v72, v59);
LABEL_83:
    outlined consume of ListItemTint?(v59);

    outlined destroy of SheetPreference(&v102);
    goto LABEL_90;
  }

  v83 = swift_unknownObjectWeakLoadStrong();
  if (v83)
  {
LABEL_87:
    outlined init with copy of SheetPreference(&v102, &v115);
    swift_beginAccess();
    PresentationState.dismiss(willPresentAgain:hasNoModifier:)(1, 1);
    swift_endAccess();
    v72[direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively] = 1;
    v86 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of AnyShareConfiguration?(&v115, v100, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v87 = swift_allocObject();
    v88 = v100[2];
    *(v87 + 72) = v100[3];
    v89 = v101[0];
    *(v87 + 88) = v100[4];
    *(v87 + 104) = v89;
    *(v87 + 114) = *(v101 + 10);
    v90 = v100[1];
    *(v87 + 24) = v100[0];
    *(v87 + 40) = v90;
    *(v87 + 16) = v86;
    *(v87 + 56) = v88;
    *(v87 + 136) = v72;
    *(v87 + 144) = v83;
    *(v87 + 152) = v99 & 1;
    LOBYTE(v100[0]) = 17;
    v91 = swift_allocObject();
    *(v91 + 16) = v72;
    *(v91 + 24) = v98;
    *(v91 + 32) = v87;
    *(v91 + 40) = v99 & 1;
    v92 = v72;
    v93 = v83;

    static Update.enqueueAction(reason:_:)();
    outlined consume of ListItemTint?(v59);

    outlined destroy of SheetPreference(&v102);
    v80 = MEMORY[0x1E69E6720];
    _ss11AnyHashableVSgWOhTm_1(v122, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference, MEMORY[0x1E69E6720]);
    _ss11AnyHashableVSgWOhTm_1(v126, &lazy cache variable for type metadata for PreferenceValues.Value<SheetPreference.Value>, &type metadata for SheetPreference.Value, MEMORY[0x1E697EA38]);
    v81 = &v115;
    goto LABEL_88;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v84 = *(v22 + 1);
    v85 = swift_getObjectType();
    v83 = ViewGraphDelegate.uiPresenterViewController.getter(v85, *(*(v84 + 16) + 8));
    swift_unknownObjectRelease();
    if (!v83)
    {
      goto LABEL_83;
    }

    goto LABEL_87;
  }

LABEL_101:
  __break(1u);
  return result;
}

uint64_t outlined consume of EditMenuPresentation?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void EditMenuBridge.preferencesDidChange(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v40 = *a1;
  PreferenceValues.subscript.getter();
  v4 = v33;
  v5 = v34;
  v7 = v35;
  v6 = v36;
  if (v39 != -1 && v39 == *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed))
  {
    outlined consume of EditMenuPresentation?(v33, v34, v35, v36);
    return;
  }

  v31 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_editMenuPresentationSeed;
  v32 = v39;
  v8 = v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = ViewGraphDelegate.shouldCreateUIInteractions.getter(ObjectType, *(*(v9 + 16) + 8));
  swift_unknownObjectRelease();
  if (v11)
  {
    v13 = v38;
    v12 = v37;
    if (!v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = v38;
    v12 = v37;
    if (!v36)
    {
      goto LABEL_14;
    }

    if (!v34)
    {
      v33 = v3;
      PreferenceValues.subscript.getter();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        if (v40)
        {
          v30 = [objc_allocWithZone(MEMORY[0x1E69DC9E0]) initWithDelegate_];
          [v29 swiftui:v30 addManagedInteraction:?];
          outlined consume of EditMenuPresentation?(v4, 0, v35, v36);
        }

        else
        {
          outlined consume of EditMenuPresentation?(v4, 0, v35, v36);
        }

        goto LABEL_21;
      }

      v14 = v4;
      v15 = 0;
      goto LABEL_12;
    }
  }

  v33 = v35;
  v34 = v36;
  LOBYTE(v35) = v12 & 1;
  outlined copy of EditMenuPresentation?(v4, v5, v7, v36);
  type metadata accessor for PlatformItemList?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v40);
  if (v40 == 1)
  {
    LODWORD(v33) = v4;
    v34 = v5;
    v35 = v7;
    LOBYTE(v37) = v12 & 1;
    v38 = v13;
    EditMenuBridge.presentMenu(_:)(&v33);
    outlined consume of EditMenuPresentation?(v4, v5, v7, v6);
    v14 = v4;
    v15 = v5;
LABEL_12:
    v16 = v7;
    v17 = v6;
LABEL_20:
    outlined consume of EditMenuPresentation?(v14, v15, v16, v17);
LABEL_21:
    *(v2 + v31) = v32;
    return;
  }

  outlined consume of EditMenuPresentation?(v4, v5, v7, v36);
LABEL_14:
  v18 = OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction;
  v19 = *(v1 + OBJC_IVAR____TtC7SwiftUI14EditMenuBridge_interaction);
  if (!v19 || ([v19 dismissMenu], (v20 = *(v1 + v18)) == 0))
  {
    v14 = v4;
    v15 = v5;
    v16 = v7;
    v17 = v36;
    goto LABEL_20;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v8 + 8);
    v22 = swift_getObjectType();
    v23 = *(*(v21 + 16) + 8);
    v24 = v20;
    v25 = ViewGraphDelegate.uiView.getter(v22, v23);
    swift_unknownObjectRelease();
    if (v25)
    {
      v26 = v24;
      [v25 removeInteraction_];
      outlined consume of EditMenuPresentation?(v4, v5, v7, v36);

      v27 = *(v2 + v18);
      *(v2 + v18) = 0;
    }

    else
    {
      outlined consume of EditMenuPresentation?(v4, v5, v7, v36);
    }

    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
}

uint64_t AVKitCaptureButtonBridge.preferencesDidChange(_:)()
{
  v1 = v0;
  result = PreferenceValues.seed.getter();
  if (v10)
  {
    v3 = OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_seedTracker;
    swift_beginAccess();
    PreferenceValues.subscript.getter();
    v4 = *(v0 + v3);
    if (v4 == -1 || v12 == -1 || v4 != v12)
    {
      *(v0 + v3) = v12;
      if (v10)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v10;
        *(v7 + 24) = v11;
        v8 = (v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
        v9 = *(v0 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_dispatch);
        *v8 = _s7SwiftUI27AVKitPressableCaptureButtonVAC5PhaseOytIegnnr_AcEIegnn_TRTA_0;
        v8[1] = v7;
        outlined copy of AppIntentExecutor?(v10);
        outlined copy of AppIntentExecutor?(v10);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v9);
        if (!*(v1 + OBJC_IVAR____TtC7SwiftUI24AVKitCaptureButtonBridge_interaction))
        {
          AVKitCaptureButtonBridge.attachInteraction()();
        }

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
      }

      else
      {
        AVKitCaptureButtonBridge.removeInteraction()();
      }
    }

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_18BD77E5C()
{

  return swift_deallocObject();
}

void PencilEventsBridge.updateState(wantsPencilEvents:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_wantsPencilEventsSeed;
  if (v4 == -1 || v4 != *(v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_wantsPencilEventsSeed))
  {
    v6 = v1 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilInteraction;
        v11 = *(v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_pencilInteraction);
        if (v3)
        {
          if (!v11)
          {
            v12 = [objc_allocWithZone(MEMORY[0x1E69DCD58]) init];
            [v12 setDelegate_];
            [v9 swiftui:v12 addManagedInteraction:?];
            v13 = *(v2 + v10);
            *(v2 + v10) = v12;
            v14 = v12;

            type metadata accessor for UIPencilInteraction();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v16 = MEMORY[0x18D00C850](0xD000000000000012, 0x800000018CD42D60);
            [ObjCClassFromMetadata addObserver:v2 forKeyPath:v16 options:3 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext];

            v17 = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD42D80);
            [ObjCClassFromMetadata addObserver:v2 forKeyPath:v17 options:3 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext];
LABEL_10:

LABEL_12:
            *(v2 + v5) = v4;
            return;
          }
        }

        else if (v11)
        {
          v14 = v11;
          [v9 removeInteraction_];
          v18 = *(v2 + v10);
          *(v2 + v10) = 0;

          type metadata accessor for UIPencilInteraction();
          v19 = swift_getObjCClassFromMetadata();
          v20 = MEMORY[0x18D00C850](0xD000000000000012, 0x800000018CD42D60);
          [v19 removeObserver:v2 forKeyPath:v20 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredTapActionContext];

          v17 = MEMORY[0x18D00C850](0xD000000000000016, 0x800000018CD42D80);
          [v19 removeObserver:v2 forKeyPath:v17 context:v2 + OBJC_IVAR____TtC7SwiftUI18PencilEventsBridge_preferredSqueezeActionContext];
          goto LABEL_10;
        }

        v17 = v9;
        goto LABEL_12;
      }
    }
  }
}

uint64_t one-time initialization function for defaultValue(uint64_t a1)
{
  return one-time initialization function for defaultValue(a1, &static SheetPreference.Key.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, &static SheetPreference.InspectorKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static SearchKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static NavigationPropertiesKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static SearchContentKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, static NavigationPropertiesContentKey.defaultValue);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for URL?, static EnvironmentValues.FileDialogDefaultDirectoryKey.defaultValue, MEMORY[0x1E6968FB0]);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for Predicate<Pack{URL}>?, static EnvironmentValues.FileDialogURLEnabledKey.defaultValue, type metadata accessor for Predicate<Pack{URL}>);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for WidgetAuxiliaryViewMetadata?, static WidgetAuxiliaryViewMetadata.Key.defaultValue, type metadata accessor for WidgetAuxiliaryViewMetadata);
}

{
  return one-time initialization function for defaultValue(a1, type metadata accessor for URL?, static WidgetAuxiliaryURLPreferenceKey.defaultValue, MEMORY[0x1E6968FB0]);
}

double one-time initialization function for defaultValue()
{
  result = 0.0;
  unk_1ED5A762A = 0u;
  xmmword_1ED5A7610 = 0u;
  unk_1ED5A7620 = 0u;
  xmmword_1ED5A75F0 = 0u;
  unk_1ED5A7600 = 0u;
  static SheetPreference.defaultValue = 0u;
  unk_1ED5A75E0 = 0u;
  byte_1ED5A763A = 2;
  return result;
}

{
  static PresentationOptionsPreferenceKey.defaultValue = MEMORY[0x1E69E7CD0];
  result = 0.0;
  unk_1ED5A7648 = 0u;
  unk_1ED5A7658 = 0u;
  word_1ED5A7668 = 1542;
  qword_1ED5A7670 = 2;
  word_1ED5A7678 = 3;
  byte_1ED5A767A = 0;
  qword_1ED5A7680 = 0;
  byte_1ED5A7688 = 1;
  qword_1ED5A7690 = 0;
  byte_1ED5A7698 = 1;
  xmmword_1ED5A76A0 = 0u;
  unk_1ED5A76B0 = 0u;
  unk_1ED5A76B9 = 0u;
  byte_1ED5A76C9 = 2;
  return result;
}

{
  result = 0.0;
  *&algn_1ED5A74F0[9] = 0u;
  static ToolbarKey.defaultValue = 0u;
  *algn_1ED5A74F0 = 0u;
  qword_1ED5A7510 = MEMORY[0x1E69E7CC0];
  byte_1ED5A7518 = 1;
  qword_1ED5A7520 = MEMORY[0x1E69E7CD0];
  return result;
}

{
  dword_1EAA12E58 = 0;
  result = 0.0;
  static PPTTestCaseEnvironmentKey.defaultValue = 0u;
  unk_1EAA12E48 = 0u;
  return result;
}

{
  static EnvironmentValues.WindowToolbarConfigurationKey.defaultValue = 773;
  result = 0.0;
  *&qword_1ED576448 = xmmword_18CDE1060;
  byte_1ED576458 = -4;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA05C68 = 0u;
  unk_1EAA05C78 = 0u;
  xmmword_1EAA05C48 = 0u;
  unk_1EAA05C58 = 0u;
  static SearchFocusContextKey.defaultValue = 0u;
  return result;
}

{
  result = 0.0;
  unk_1EAB09AA9 = 0u;
  static ToolbarContentKey.defaultValue = 0u;
  unk_1EAB09AA0 = 0u;
  qword_1EAB09AC0 = MEMORY[0x1E69E7CC0];
  byte_1EAB09AC8 = 1;
  qword_1EAB09AD0 = MEMORY[0x1E69E7CD0];
  return result;
}

{
  static NavigationTransitionKey.defaultValue = 0u;
  unk_1EAB09908 = 0u;
  *&result = 1;
  xmmword_1EAB09918 = xmmword_18CD6A6D0;
  return result;
}

{
  qword_1ED5A7258 = 0;
  result = 0.0;
  xmmword_1ED5A7238 = 0u;
  unk_1ED5A7248 = 0u;
  xmmword_1ED5A7218 = 0u;
  unk_1ED5A7228 = 0u;
  xmmword_1ED5A71F8 = 0u;
  unk_1ED5A7208 = 0u;
  xmmword_1ED5A71D8 = 0u;
  unk_1ED5A71E8 = 0u;
  xmmword_1ED5A71B8 = 0u;
  unk_1ED5A71C8 = 0u;
  xmmword_1ED5A7198 = 0u;
  unk_1ED5A71A8 = 0u;
  xmmword_1ED5A7178 = 0u;
  unk_1ED5A7188 = 0u;
  xmmword_1ED5A7158 = 0u;
  unk_1ED5A7168 = 0u;
  static AccessibilityAttachment.Key.defaultValue = 0u;
  unk_1ED5A7148 = 0u;
  byte_1ED5A7260 = 2;
  return result;
}

{
  v0 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CellConfiguration();
  __swift_allocate_value_buffer(v3, static CellConfigurationKey.defaultValue);
  v4 = __swift_project_value_buffer(v3, static CellConfigurationKey.defaultValue);
  v5 = type metadata accessor for UICellConfigurationState();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  *(v4 + v3[7]) = 2;
  outlined destroy of UICellConfigurationState?(v4, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8]);
  v6(v4, 1, 1, v5);
  *(v4 + v3[5]) = 0;
  static UIListContentConfiguration.cell()();
  specialized CellConfiguration.Values.init(_:)(v2, v11);
  v7 = (v4 + v3[9]);
  v8 = v11[1];
  *v7 = v11[0];
  v7[1] = v8;
  result = *&v12;
  v10 = v13;
  v7[2] = v12;
  v7[3] = v10;
  *(v4 + v3[6]) = 0;
  *(v4 + v3[8]) = 0;
  return result;
}

{
  result = 0.0;
  xmmword_1EAB09BC0 = 0u;
  unk_1EAB09BD0 = 0u;
  static DropOntoTraitKey.defaultValue = 0u;
  return result;
}

{
  qword_1EA9FB1D8 = 0;
  result = 0.0;
  static ToolbarItemPlacementKey.defaultValue = 0u;
  unk_1EA9FB1C8 = 0u;
  byte_1EA9FB1E0 = 2;
  return result;
}

{
  if (one-time initialization token for defaultGridCellMinWidth != -1)
  {
    swift_once();
  }

  result = *&static ClarityUIMetrics.defaultGridCellMinWidth;
  static DefaultGridCellMinWidthEnvironmentKey.defaultValue = static ClarityUIMetrics.defaultGridCellMinWidth;
  return result;
}

{
  qword_1EAA04278 = 0;
  result = 0.0;
  static SearchFieldToolbarItemPlacementKey.defaultValue = 0u;
  unk_1EAA04268 = 0u;
  byte_1EAA04280 = -1;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA34AA0 = 0u;
  unk_1EAA34AB0 = 0u;
  xmmword_1EAA34A80 = 0u;
  unk_1EAA34A90 = 0u;
  static ControlGroupCollapsedViewKey.defaultValue = 0u;
  *algn_1EAA34A70 = 0u;
  return result;
}

{
  qword_1EAA36110 = 0;
  result = 0.0;
  xmmword_1EAA360F0 = 0u;
  unk_1EAA36100 = 0u;
  xmmword_1EAA360D0 = 0u;
  unk_1EAA360E0 = 0u;
  xmmword_1EAA360B0 = 0u;
  unk_1EAA360C0 = 0u;
  xmmword_1EAA36090 = 0u;
  unk_1EAA360A0 = 0u;
  static _IdentifiedViewsKey.defaultValue = 0u;
  unk_1EAA36080 = 0u;
  byte_1EAA36118 = 2;
  return result;
}

{
  qword_1EAA37698 = 0;
  result = 0.0;
  static TextInputValidationKey.defaultValue = 0u;
  unk_1EAA37688 = 0u;
  return result;
}

{
  result = 0.0;
  xmmword_1EAA38EE8 = 0u;
  unk_1EAA38EF8 = 0u;
  xmmword_1EAA38EC8 = 0u;
  unk_1EAA38ED8 = 0u;
  static EnvironmentValues.ToolbarUpdateContextKey.defaultValue = 0u;
  unk_1EAA38EB8 = 0u;
  return result;
}

{
  v0 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  word_1EAA3A060 = 0;
  LOWORD(static HeaderFooterConfigurationKey.defaultValue) = 0;
  *(&static HeaderFooterConfigurationKey.defaultValue + 1) = 0;
  static UIListContentConfiguration.header()();
  specialized HeaderFooterConfiguration.Values.init(_:)(v2, v4);
  *&algn_1EAA3A062[6] = v4[0];
  *(&xmmword_1EAA3A070 + 8) = v4[1];
  result = *&v5;
  unk_1EAA3A088 = v5;
  return result;
}

{
  result = 0.0;
  static FocusDelegation.Key.defaultValue = 0u;
  unk_1EAB09F98 = 0u;
  xmmword_1EAB09FA8 = 0u;
  unk_1EAB09FB8 = xmmword_18CD6A6D0;
  return result;
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  return outlined init with copy of SheetPreference.Value(&static SheetPreference.defaultValue, a2);
}

uint64_t static App.main()(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)() & 1) == 0 || (AGTypeID.isValueType.getter())
  {
    (*(a2 + 32))(a1, a2);
    runApp<A>(_:)();
  }

  _StringGuts.grow(_:)(40);

  v4 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v4);

  MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SceneID and conformance SceneID()
{
  result = lazy protocol witness table cache variable for type SceneID and conformance SceneID;
  if (!lazy protocol witness table cache variable for type SceneID and conformance SceneID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneID and conformance SceneID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneID and conformance SceneID;
  if (!lazy protocol witness table cache variable for type SceneID and conformance SceneID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneID and conformance SceneID);
  }

  return result;
}

uint64_t closure #1 in AppGraph.instantiateOutputs()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v2 = *(a1 + 88);
  v14[0] = *(a1 + 72);
  v14[1] = v2;
  v15 = *(a1 + 104);
  v11 = v14[0];
  v12 = v2;
  *v13 = v15;
  outlined init with copy of _GraphInputs(v14, v20);
  PreferencesInputs.init(hostKeys:)();
  *&v13[16] = *&v20[0];
  *&v13[24] = DWORD2(v20[0]);
  v3 = *(a1 + 88);
  swift_beginAccess();
  v4 = *(a1 + 200);
  v5 = *(a1 + 224);
  LODWORD(v20[0]) = *(v3 + 16);
  *(v20 + 4) = __PAIR64__(v5, v4);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RootEnvironment and conformance RootEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  PreferenceKeys.add(_:)();
  LODWORD(v20[0]) = *(a1 + 216);
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.setter();
  LODWORD(v20[0]) = *(a1 + 220);
  lazy protocol witness table accessor for type FocusStoreInputKey and conformance FocusStoreInputKey();
  PropertyList.subscript.setter();
  v6 = *(a1 + 176);
  v16[0] = v11;
  v16[1] = v12;
  v17[0] = *v13;
  *(v17 + 12) = *&v13[12];
  v8 = v11;
  v9 = v12;
  v10[0] = *v13;
  *(v10 + 12) = *&v13[12];

  outlined init with copy of _SceneInputs(v16, v20);
  v6(&v8);

  v18[0] = v8;
  v18[1] = v9;
  v19[0] = v10[0];
  *(v19 + 12) = *(v10 + 12);
  outlined destroy of _SceneInputs(v18);
  v20[0] = v11;
  v20[1] = v12;
  v21[0] = *v13;
  *(v21 + 12) = *&v13[12];
  return outlined destroy of _SceneInputs(v20);
}

uint64_t UIApplicationDelegateAdaptor.init(_:)()
{
  type metadata accessor for FallbackDelegateBox();
  static AppGraph.delegateBox = FallbackDelegateBox.__allocating_init(_:)(0);
}

uint64_t type metadata completion function for FallbackDelegateBox()
{
  return type metadata completion function for FallbackDelegateBox();
}

{
  return swift_initClassMetadata2();
}

uint64_t FallbackDelegateBox.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = a1;
  if (!a1)
  {
    v3 = *(*result + 104);
  }

  *(result + 16) = v3;
  *(result + 24) = a1 != 0;
  return result;
}

void runApp<A>(_:)()
{
  static Update.dispatchImmediately<A>(reason:_:)();
  type metadata accessor for AppDelegate();
  v0 = MEMORY[0x18D00E850]();
  closure #1 in KitRendererCommon(_:)(v0);
}

void closure #1 in runApp<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppGraph();
  v6 = specialized AppGraph.__allocating_init<A>(app:)(a1, a2, a3);
  if ((*(v6 + 234) & 1) == 0)
  {
    if (AppGraph.traceLaunch.getter())
    {
      type metadata accessor for AGGraphRef(0);
      static AGGraphRef.startTracing(options:)();
    }

    else if ((AppGraph.launchProfileOptions.getter() & 2) != 0)
    {
      AGGraphStartProfiling();
    }
  }

  GraphHost.instantiate()();
  if (static AppGraph.shared)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    static AppGraph.shared = v6;
  }
}

uint64_t type metadata accessor for AppGraph()
{
  result = type metadata singleton initialization cache for AppGraph;
  if (!type metadata singleton initialization cache for AppGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized AppGraph.__allocating_init<A>(app:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  swift_allocObject();
  return AppGraph.init(makeRootScene:)(partial apply for closure #1 in AppGraph.init<A>(app:), v10);
}

uint64_t sub_18BD78C10()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t AppGraph.init(makeRootScene:)(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *(v2 + 192) = MEMORY[0x1E69E7CD0];
  *(v2 + 204) = 0;
  *(v2 + 208) = 1;
  *(v2 + 228) = 0;
  *(v2 + 232) = 1;
  *(v2 + 233) = 2;
  *(v2 + 236) = *MEMORY[0x1E698D3F8];
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;

  GraphHost.Data.init()();
  v9 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v3 = *(&v18[0] + 1);
  static CustomEventTrace.instantiateBegin(_:)();

  *(v2 + 200) = Attribute.init<A>(body:value:flags:update:)();
  v4 = MEMORY[0x1E69E7CC0];
  type metadata accessor for HashableWeakBox<Swift.AnyObject>(0, &lazy cache variable for type metadata for [SceneList.Item.Summary], &type metadata for SceneList.Item.Summary, MEMORY[0x1E69E62F8]);
  *(v2 + 212) = Attribute.init<A>(body:value:flags:update:)();
  *(v2 + 216) = Attribute.init<A>(body:value:flags:update:)();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI12PropertyListVTt0g5Tf4g_n(v4);
  v5 = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 220) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt0g5Tf4g_n(v4);
  type metadata accessor for [SceneID : KeyboardShortcut](0, &lazy cache variable for type metadata for [SceneID : KeyboardShortcut], lazy protocol witness table accessor for type SceneID and conformance SceneID);
  v6 = Attribute.init<A>(body:value:flags:update:)();

  *(v2 + 224) = v6;
  v15 = v18[4];
  v16 = v18[5];
  v17 = v19;
  v11 = v18[0];
  v12 = v18[1];
  v13 = v18[2];
  v14 = v18[3];
  outlined init with copy of GraphHost.Data(v18, v10);
  v7 = GraphHost.init(data:)();

  AGSubgraphSetCurrent();
  static CustomEventTrace.instantiateEnd(_:)();

  outlined destroy of GraphHost.Data(v18);

  return v7;
}

void type metadata accessor for HashableWeakBox<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneID, KeyboardShortcut>, lazy protocol witness table accessor for type SceneID and conformance SceneID);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 32);
      v9 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;
      outlined copy of SceneID(v5, v6, v7);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 8) = v6;
      *(v14 + 16) = v7;
      v15 = v3[7] + 32 * result;
      *v15 = v9;
      *(v15 + 8) = v8;
      *(v15 + 16) = v10;
      *(v15 + 24) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

uint64_t AppGraph.traceLaunch.getter()
{
  v1 = *(v0 + 233);
  if (v1 == 2)
  {
    LOBYTE(v1) = static ProcessEnvironment.BOOL(forKey:defaultValue:)();
    *(v0 + 233) = v1 & 1;
  }

  return v1 & 1;
}

const char *AppGraph.launchProfileOptions.getter()
{
  if (*(v0 + 232) != 1)
  {
    return *(v0 + 228);
  }

  result = getenv("SWIFTUI_PROFILE_LAUNCH");
  if (result)
  {
    result = atoi(result);
  }

  *(v0 + 228) = result;
  *(v0 + 232) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppGraph and conformance AppGraph()
{
  result = lazy protocol witness table cache variable for type AppGraph and conformance AppGraph;
  if (!lazy protocol witness table cache variable for type AppGraph and conformance AppGraph)
  {
    type metadata accessor for AppGraph();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppGraph and conformance AppGraph);
  }

  return result;
}

Swift::Void __swiftcall AppGraph.instantiateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v0 + 96);
  v30 = *(v0 + 80);
  v31 = v3;
  v4 = *(v0 + 32);
  v27[0] = *(v0 + 16);
  v27[1] = v4;
  v5 = *(v0 + 64);
  v7 = *(v0 + 16);
  v6 = *(v0 + 32);
  v28 = *(v0 + 48);
  v29 = v5;
  v8 = *(v0 + 96);
  v24 = v30;
  v25 = v8;
  v20 = v7;
  v21 = v6;
  v32 = *(v0 + 112);
  v26 = *(v0 + 112);
  v22 = v28;
  v23 = v2;
  outlined init with copy of GraphHost.Data(v27, v19);
  v9 = GraphHost.Data.updateSeed.modify();
  ++*v10;
  v9(v19, 0);
  outlined destroy of GraphHost.Data(v27);
  v11 = *(v0 + 32);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in AppGraph.instantiateOutputs()(v1);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v13 = v20;
  v14 = DWORD2(v20);
  v15 = *(v1 + 32);
  AGGraphClearUpdate();
  v16 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  *&v20 = v13;
  DWORD2(v20) = v14;
  if ((PreferencesOutputs.subscript.getter() & 0x100000000) == 0)
  {
    *(v1 + 204) = AGGraphCreateIndirectAttribute2();
    *(v1 + 208) = 0;
  }

  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  *&v20 = v13;
  DWORD2(v20) = v14;
  v17 = PreferencesOutputs.subscript.getter();
  if ((v17 & 0x100000000) != 0)
  {
    v18 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v18 = v17;
  }

  *(v1 + 236) = v18;
  *&v20 = v13;
  DWORD2(v20) = v14;
  PreferencesOutputs.subscript.getter();

  swift_beginAccess();
  *(v1 + 132) = AGCreateWeakAttribute();
  swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type RootEnvironment and conformance RootEnvironment()
{
  result = lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment;
  if (!lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootEnvironment and conformance RootEnvironment);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t initializeWithCopy for _SceneInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t closure #1 in AppGraph.init<A>(app:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v23 = *a1;
  v24 = v5;
  v25[0] = a1[2];
  *(v25 + 12) = *(a1 + 44);
  static DynamicPropertyCache.fields(of:)();
  v6 = v30;
  v7 = v31;
  v8 = DWORD1(v31);
  v20 = v23;
  v21 = v24;
  v22[0] = v25[0];
  *(v22 + 12) = *(v25 + 12);
  v15[2] = a3;
  outlined init with copy of _SceneInputs(&v23, &v30);
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in Attribute.init(value:), v15, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  _GraphValue.init(_:)();
  v30 = v6;
  LOBYTE(v31) = v7;
  DWORD1(v31) = v8;
  type metadata accessor for AppBodyAccessor();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = v20;
  v26[1] = v21;
  v27[0] = v22[0];
  *(v27 + 12) = *(v22 + 12);
  v16 = v20;
  v17 = v21;
  v18[0] = v22[0];
  *(v18 + 12) = *(v22 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(v26, &v30);
  v13(v19, &v16, AssociatedTypeWitness, AssociatedConformanceWitness);
  v28[0] = v16;
  v28[1] = v17;
  v29[0] = v18[0];
  *(v29 + 12) = *(v18 + 12);
  outlined destroy of _SceneInputs(v28);
  v30 = v20;
  v31 = v21;
  v32[0] = v22[0];
  *(v32 + 12) = *(v22 + 12);
  return outlined destroy of _SceneInputs(&v30);
}

uint64_t protocol witness for static DynamicProperty._makeProperty<A>(in:container:fieldOffset:inputs:) in conformance UIApplicationDelegateAdaptor<A>()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for AppGraph();
  v0 = swift_dynamicCastClass();

  if (!v0)
  {

    JUMPOUT(0x18D009810);
  }

  return result;
}

uint64_t closure #1 in Attribute.init(value:)(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[2] = a2;
  v5[3] = a1;
  v2 = type metadata accessor for Attribute();
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v2, partial apply for closure #1 in closure #1 in Attribute.init(value:), v5, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
}

uint64_t partial apply for closure #1 in closure #1 in Attribute.init(value:)@<X0>(_DWORD *a1@<X8>)
{
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for WindowGroup()
{
  result = type metadata accessor for WindowGroupRootContent();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for WindowGroupRootContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_18BD79E00(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for closure #1 in Attribute.init<A>(_:)@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_1@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for (_:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *a1@<X8>)
{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for TableColumnList();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_3(type metadata accessor for (_:), a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2(a1);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15(a1);
}

{
  type metadata accessor for (_:)();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for ((_:))?(0, &lazy cache variable for type metadata for ((_:))?, &lazy cache variable for type metadata for (_:), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_4(type metadata accessor for (_:), a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_14(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_1(type metadata accessor for (_:), a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_14(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_2(type metadata accessor for (_:), a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_18(a1);
}

{
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:));
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  result = Attribute.init<A>(body:value:flags:update:)();
  *a1 = result;
  return result;
}

{
  type metadata accessor for Attribute<LayoutComputer>(0, &lazy cache variable for type metadata for [ArchivedViewState], &type metadata for ArchivedViewState, MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TATm_4(type metadata accessor for (_:), a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for [Selectable](0);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration](0, &lazy cache variable for type metadata for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration], lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for (_:)(0);
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  type metadata accessor for AccessibilityQuickActionProxy();
  return closure #1 in Attribute.init<A>(_:)(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)(a1);
}

void *destructiveInjectEnumTag for PPTTestCase.ScrollMode(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t type metadata completion function for SubscriptionView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t static Scene.makeBody(scene:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for SceneBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(28);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static Scene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v31 = *a2;
  v32 = v4;
  v33[0] = a2[2];
  *(v33 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v5 = v38;
  v28 = v31;
  v29 = v32;
  v30[0] = v33[0];
  *(v30 + 12) = *(v33 + 12);
  v14 = DWORD1(v38);
  v15 = v3;
  v16 = *(&v37 + 1);
  v17 = v37;
  v34 = v37;
  LOBYTE(v35) = v38;
  DWORD1(v35) = DWORD1(v38);
  outlined init with copy of _SceneInputs(&v31, &v37);
  static Scene.makeBody(scene:inputs:fields:)();
  v6 = *(&v37 + 1);
  v13 = v37;
  LOBYTE(v3) = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = v28;
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 12) = *(v30 + 12);
  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _SceneInputs(&v34, &v37);
  v9(&v19, v24, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = v25;
  v38 = v26;
  v39[0] = v27[0];
  *(v39 + 12) = *(v27 + 12);
  outlined destroy of _SceneInputs(&v37);
  v10 = v19;
  v11 = v20;
  if ((v3 & 1) == 0)
  {
    v24[0] = v13;
    v24[1] = v6;
    v23 = v15;
    v19 = v17;
    v20 = v16;
    v21 = v5;
    v22 = v14;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  outlined destroy of _SceneInputs(&v25);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for WindowSceneList();
  v6 = type metadata accessor for WindowSceneConfiguration();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

unint64_t lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput()
{
  result = lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput;
  if (!lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput;
  if (!lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput);
  }

  return result;
}

void protocol witness for static PropertyKey.defaultValue.getter in conformance _SceneInputs.NamespaceInput(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _sSSSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in implicit closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for WindowSceneList();
  v3 = *(v2 + 36);
  v9[2] = v2;
  type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #3 in implicit closure #1 in static WindowSceneList._makeScene(scene:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for WindowSceneList();
  v3 = *(v2 + 40);
  v8[2] = v2;
  v4 = type metadata accessor for Any.Type();
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_3, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

unint64_t type metadata accessor for Any.Type()
{
  result = lazy cache variable for type metadata for Any.Type;
  if (!lazy cache variable for type metadata for Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Any.Type);
  }

  return result;
}

__n128 initializeWithCopy for WindowSceneList.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (v2 == 255)
  {
    result = *(a2 + 16);
    *(a1 + 16) = result;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = v2 & 1;
    outlined copy of SceneID(v3, v4, v2 & 1);
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t destroy for WindowSceneList.MakeList(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != 255)
  {
    return outlined consume of SceneID(*(result + 16), *(result + 24), v1 & 1);
  }

  return result;
}

uint64_t implicit closure #1 in _SceneOutputs.writeSceneList(inputs:value:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for [SceneList.Namespace : SceneList]();
  lazy protocol witness table accessor for type WriteSceneList and conformance WriteSceneList();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t destroy for _SceneInputs()
{
}

unint64_t lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace()
{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace and conformance SceneList.Namespace);
  }

  return result;
}

uint64_t initializeWithCopy for WriteSceneList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t type metadata completion function for WindowSceneList()
{
  result = type metadata accessor for WindowSceneConfiguration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void closure #1 in KitRendererCommon(_:)(char **a1)
{
  v2 = static CommandLine.argc.getter();
  type metadata accessor for SwiftUIApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18D00C850](v5);
  }

  v6 = swift_getObjCClassFromMetadata();
  v7 = NSStringFromClass(v6);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x18D00C850](v8);
  }

  v9 = UIApplicationMain(v2, a1, v4, v7);

  exit(v9);
}

uint64_t type metadata completion function for WindowSceneConfiguration()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static WindowSceneList._makeScene(scene:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 16);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v27 = a3;
  v28 = a4;
  LODWORD(v31) = v6;
  type metadata accessor for WindowSceneList();
  type metadata accessor for _GraphValue();
  type metadata accessor for WindowSceneConfiguration();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v8 = _GraphValue.value.getter();
  PreferencesOutputs.init()();
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v15 = *(&v31 + 1);
  v16 = v31;
  v9 = v32;
  swift_beginAccess();
  v10 = *(v7 + 16);
  v25 = a3;
  v26 = a4;
  type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _GraphValue.subscript.getter();
  v23 = a3;
  v24 = a4;
  type metadata accessor for Any.Type();
  _GraphValue.subscript.getter();
  *&v31 = __PAIR64__(v10, v8);
  DWORD2(v31) = v19;
  v32 = 0uLL;
  v33 = -1;
  v29[0] = v31;
  v29[1] = 0uLL;
  v30 = -1;
  List = type metadata accessor for WindowSceneList.MakeList();
  v21 = List;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for String?(0, &lazy cache variable for type metadata for Attribute<SceneList>, &type metadata for SceneList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_5, v20, List, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  (*(*(List - 8) + 8))(&v31, List);
  *&v29[0] = v17;
  DWORD2(v29[0]) = v18;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  outlined consume of SceneList.Namespace(v16, v15, v9);
}

unint64_t lazy protocol witness table accessor for type WriteSceneList and conformance WriteSceneList()
{
  result = lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList;
  if (!lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WriteSceneList and conformance WriteSceneList);
  }

  return result;
}

uint64_t WriteSceneList.updateValue()()
{
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;

  AGGraphGetValue();
  if (((v3 | v5) & 1) != 0 || (type metadata accessor for [SceneList.Namespace : SceneList](), !AGGraphGetOutputValue()))
  {

    v6 = AGGraphGetValue();
    v7 = *v6;
    v8 = v6[1];

    type metadata accessor for _ContiguousArrayStorage<(SceneList.Namespace, SceneList)>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    v10 = *v0;
    v11 = *(v0 + 8);
    v12 = *(v0 + 16);
    *(inited + 32) = *v0;
    *(inited + 40) = v11;
    *(inited + 48) = v12;
    *(inited + 56) = v4;
    *(inited + 64) = v7;
    *(inited + 72) = v8;
    outlined copy of SceneList.Namespace(v10, v11, v12);

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9SceneListV9NamespaceO_AETt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (SceneList.Namespace, SceneList)(inited + 32);
    type metadata accessor for [SceneList.Namespace : SceneList]();
    AGGraphSetOutputValue();
  }
}

uint64_t WindowSceneList.MakeList.updateValue()()
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for WindowSceneConfiguration();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v18 - v3;
  v5 = *(v0 + 32);
  if (v5 == 255)
  {
    type metadata accessor for String?(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    v6 = Value[1];
    if (v6)
    {
      v7 = *Value;
      *(v0 + 16) = *Value;
      *(v0 + 24) = v6;
      *(v0 + 32) = 0;

      LOBYTE(v5) = 0;
    }

    else
    {
      ++windowGroupCounter;
      type metadata accessor for Any.Type();
      v9 = AGGraphGetValue();
      v7 = *v9;
      v6 = windowGroupCounter;
      *(v0 + 16) = *v9;
      *(v0 + 24) = v6;
      LOBYTE(v5) = 1;
      *(v0 + 32) = 1;
    }
  }

  else
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
  }

  *&v53[136] = *v0;
  v54 = v7;
  v55 = v6;
  v56 = v5;
  WindowSceneList.MakeList.configuration.getter(v4);
  WindowSceneConfiguration.sceneListValue()(v1);
  (*(v2 + 8))(v4, v1);
  outlined init with copy of SceneList.Item.Value(v53, v19);
  v10 = v5 & 1;
  outlined copy of SceneID(v7, v6, v5 & 1);
  DisplayList.Version.init(forUpdate:)();
  v11 = v18[71];
  WindowSceneList.MakeList.environment.getter(v18);
  v12 = v18[0];
  v13 = v18[1];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_Say7SwiftUI28AnyConnectionOptionActionBoxCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v19[17] = v7;
  v19[18] = v6;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0u;
  v46 = 1;
  v47 = 0u;
  v48 = 1;
  v49 = 0;
  v50 = v14;
  v51 = v15;
  v52 = 0;
  outlined init with copy of SceneList.Item(v19, v18);
  EnvironmentValues.init()();
  type metadata accessor for String?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18CD63400;
  memcpy((v16 + 32), v18, 0x231uLL);
  v18[0] = v16;
  v18[1] = v18[72];
  v18[2] = v18[73];
  AGGraphSetOutputValue();
  outlined destroy of SceneList.Item(v19);
  outlined destroy of SceneList.Item.Value(v53);
}

uint64_t AppDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI11AppDelegate_mainMenuController] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v11, sel_init);
  if (static AppDelegate.shared)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = v2;
  static AppDelegate.shared = v2;
  if (!static AppGraph.delegateBox)
  {
    v9 = v2;
    goto LABEL_7;
  }

  v4 = *(*static AppGraph.delegateBox + 80);
  v5 = v2;

  v7 = v4(v6);

  if (!v7)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = swift_dynamicCastObjCProtocolConditional();
  if (!v8)
  {

    goto LABEL_7;
  }

LABEL_8:
  *&v3[OBJC_IVAR____TtC7SwiftUI11AppDelegate_fallbackDelegate] = v8;
  swift_unknownObjectRelease();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  static SceneNavigationStrategy_Phone.shared = 1;
  return v3;
}

id specialized AppDelegate.application(_:configurationForConnecting:options:)(void *a1)
{
  type metadata accessor for [SceneList.Item]?();
  static Update.ensure<A>(_:)();
  v2 = v68[0];
  v3 = [a1 role];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    goto LABEL_14;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_6:

LABEL_15:

    goto LABEL_16;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_6;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
LABEL_14:

    goto LABEL_15;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_6;
  }

  v24 = one-time initialization token for carPlay;
  v25 = v3;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v26;
  v32 = v29;
  if (v31 != v30 || v28 != v29)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {

      goto LABEL_25;
    }

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v44;
    if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v45)
    {

LABEL_46:
      if (!v68[0])
      {
        goto LABEL_78;
      }

      v47 = *(v68[0] + 16);
      if (!v47)
      {
        goto LABEL_77;
      }

      v48 = 0;
      v49 = v68[0] + 32;
      while (1)
      {
        if (v48 >= *(v2 + 16))
        {
          goto LABEL_84;
        }

        outlined init with copy of SceneList.Item(v49, v68);
        outlined init with copy of SceneList.Item.Value(v68, &v62);
        if (v67 > 3u && v67 <= 6u)
        {
          if (v67 == 5)
          {
            outlined destroy of SceneList.Item(v68);
            v39 = v62;
            v40 = v63;
            v41 = v64;
            v32 = v66;
            if (v66 < 2)
            {
              outlined consume of SceneID(v62, v63, v64);
            }

            else
            {
              if (v66 == 2)
              {
LABEL_81:
                v55 = v39;
                v56 = v41;
                v57 = v40;

                outlined consume of SceneID(v55, v57, v56);
                goto LABEL_82;
              }

              v50 = v65;
              outlined consume of SceneID(v62, v63, v64);
              outlined consume of UISceneAdaptorConfiguration.Kind(v50, v32);
            }

            goto LABEL_50;
          }

          if (v67 != 6)
          {
            goto LABEL_76;
          }
        }

        outlined destroy of SceneList.Item(v68);
        result = outlined destroy of SceneList.Item.Value(&v62);
LABEL_50:
        ++v48;
        v49 += 568;
        if (v47 == v48)
        {
          goto LABEL_77;
        }
      }
    }

    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_46;
    }

    if (!v68[0])
    {
      goto LABEL_78;
    }

    v51 = *(v68[0] + 16);
    if (!v51)
    {
      goto LABEL_77;
    }

    v52 = 0;
    v53 = v68[0] + 32;
    while (1)
    {
      if (v52 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of SceneList.Item(v53, v68);
      outlined init with copy of SceneList.Item.Value(v68, &v62);
      if (v67 > 3u && v67 <= 6u)
      {
        if (v67 == 5)
        {
          outlined destroy of SceneList.Item(v68);
          result = v62;
          v33 = v63;
          v34 = v64;
          v32 = v66;
          if (v66 && v66 != 2 && v66 != 1)
          {
            goto LABEL_85;
          }

          outlined consume of SceneID(v62, v63, v64);

          goto LABEL_66;
        }

        if (v67 != 6)
        {
LABEL_76:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
LABEL_77:

LABEL_78:
          v54 = [a1 configuration];

          return v54;
        }
      }

      outlined destroy of SceneList.Item(v68);
      result = outlined destroy of SceneList.Item.Value(&v62);
LABEL_66:
      ++v52;
      v53 += 568;
      if (v51 == v52)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_25:
  if (!v68[0])
  {
    goto LABEL_78;
  }

  v36 = *(v68[0] + 16);
  if (!v36)
  {
    goto LABEL_77;
  }

  v37 = 0;
  v38 = v68[0] + 32;
  while (v37 < *(v2 + 16))
  {
    outlined init with copy of SceneList.Item(v38, v68);
    outlined init with copy of SceneList.Item.Value(v68, &v62);
    if (v67 <= 3u || v67 > 6u)
    {
      goto LABEL_28;
    }

    if (v67 != 5)
    {
      if (v67 != 6)
      {
        goto LABEL_76;
      }

LABEL_28:
      outlined destroy of SceneList.Item(v68);
      result = outlined destroy of SceneList.Item.Value(&v62);
      goto LABEL_29;
    }

    outlined destroy of SceneList.Item(v68);
    v39 = v62;
    v40 = v63;
    v41 = v64;
    v32 = v66;
    if (v66 == 1 || v66 == 2)
    {
      outlined consume of SceneID(v62, v63, v64);
    }

    else
    {
      if (!v66)
      {
        goto LABEL_81;
      }

      v42 = v65;
      outlined consume of SceneID(v62, v63, v64);
      outlined consume of UISceneAdaptorConfiguration.Kind(v42, v32);
    }

LABEL_29:
    ++v37;
    v38 += 568;
    if (v36 == v37)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v58 = v65;
  v59 = result;
  v60 = v34;
  v61 = v33;

  outlined consume of SceneID(v59, v61, v60);
  outlined consume of UISceneAdaptorConfiguration.Kind(v58, v32);
LABEL_82:

LABEL_16:
  v20 = [a1 role];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCE88]) initWithName:0 sessionRole:v20];

  type metadata accessor for AppSceneDelegate();
  [v21 setDelegateClass_];
  return v21;
}

void type metadata accessor for [SceneList.Item]?()
{
  if (!lazy cache variable for type metadata for [SceneList.Item]?)
  {
    _ss11AnyHashableVSgMaTm_1(255, &lazy cache variable for type metadata for [SceneList.Item], &type metadata for SceneList.Item, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SceneList.Item]?);
    }
  }
}

uint64_t closure #1 in AppDelegate.application(_:configurationForConnecting:options:)@<X0>(void *a1@<X8>)
{
  if (static AppGraph.shared)
  {

    AppGraph.sceneList(namespace:)(0, 0, 2, &v4);

    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t AppGraph.sceneList(namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if ((*(v4 + 208) & 1) == 0)
  {
    type metadata accessor for [SceneID : KeyboardShortcut](0, &lazy cache variable for type metadata for [SceneList.Namespace : SceneList], lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace);
    Value = AGGraphGetValue();
    v10 = *Value;
    if (*(*Value + 16))
    {

      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3);
      if (v12)
      {
        v13 = (*(v10 + 56) + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];

        *a4 = v14;
        a4[1] = v15;
        a4[2] = v16;
        return result;
      }
    }
  }

  result = EnvironmentValues.init()();
  *a4 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Any?(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

Swift::Void __swiftcall UIHostingController.sizingOptionsDidChange(from:)(SwiftUI::UIHostingControllerSizingOptions from)
{
  v2 = v1;
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *from.rawValue;
  v5 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v6 = *(v1 + v5) & ~v4;
  if ((v6 & 3) != 0)
  {
    v7 = *(v1 + direct field offset for UIHostingController.host);
    _UIHostingView.viewGraph.getter();

    static _ProposedSize.unspecified.getter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = *(v3 + 80);
    v9[3] = *(v3 + 88);
    v9[4] = v8;
    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();

    v10 = *(v2 + direct field offset for UIHostingController.host);
    v11 = _UIHostingView.viewGraph.getter();

    swift_beginAccess();
    LODWORD(v10) = *(v11 + 128);

    if (v10 == 1)
    {
      static CGSize.invalidValue.getter();
      v13 = v12;
      v15 = v14;
      v16 = *(v2 + direct field offset for UIHostingController.host);
      static _ProposedSize.unspecified.getter();
      type metadata accessor for _UIHostingView();
      swift_getWitnessTable();
      ViewRendererHost.sizeThatFits(_:)();
      v18 = v17;
      v20 = v19;

      UIHostingController.idealSizeDidChange(from:to:)(__PAIR128__(v15, v13), __PAIR128__(v20, v18));
    }
  }

  else
  {
    v21 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    if ((*(v2 + v21) & 3) == 0)
    {
      v22 = *(v2 + direct field offset for UIHostingController.host);
      _UIHostingView.viewGraph.getter();

      static _ProposedSize.unspecified.getter();
      swift_beginAccess();
      type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
      ViewGraphGeometryObservers.stopObserving(proposal:)();
      swift_endAccess();
    }
  }

  v23 = v6;
  UIHostingController.updateWindowSizeObservers(_:)(&v23);
}

uint64_t sub_18BD7D904()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BD7D93C()
{

  return swift_deallocObject();
}

uint64_t UIApplicationDelegateAdaptor<>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  static AppGraph.delegateBox = a5();
}

uint64_t ObservableFallbackDelegateBox.__allocating_init()()
{
  v0 = swift_allocObject();
  ObservableObjectFallbackDelegateBox.init()();
  return v0;
}

uint64_t static ModifiedContent<>._makeScene(scene:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17[0] = a2[2];
  *(v17 + 12) = *(a2 + 44);
  v15 = v10;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = a6;
  *(v12 + 48) = v10;
  (*(a6 + 32))(v14, v16, partial apply for closure #2 in static ModifiedContent<>._makeScene(scene:inputs:), v12, a4, a6);
}

uint64_t closure #1 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 + 36);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v14[5];
}

uint64_t static CommandsModifier._makeScene(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a1;
  *&v34[12] = *(a2 + 44);
  v11 = a2[1];
  v32 = *a2;
  v33 = v11;
  *v34 = a2[2];
  *&v30[0] = *&v34[16];
  DWORD2(v30[0]) = *&v34[24];
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return a3();
  }

  v25 = v32;
  v26 = v33;
  *v27 = *v34;
  outlined init with copy of _GraphInputs(&v32, v30);
  PreferencesInputs.init(hostKeys:)();
  *&v27[16] = *&v30[0];
  *&v27[24] = DWORD2(v30[0]);
  PreferenceKeys.add(_:)();
  LODWORD(v30[0]) = v10;
  type metadata accessor for CommandsModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v28[0] = v25;
  v28[1] = v26;
  v29[0] = *v27;
  *(v29 + 12) = *&v27[12];
  v20 = v25;
  v21 = v26;
  v22[0] = *v27;
  *(v22 + 12) = *&v27[12];
  v12 = *(a5 + 32);
  outlined init with copy of _CommandsInputs(v28, v30);
  v12(&v23, &v18, &v20, a4, a5);
  v30[0] = v20;
  v30[1] = v21;
  v31[0] = v22[0];
  *(v31 + 12) = *(v22 + 12);
  v13 = outlined destroy of _CommandsInputs(v30);
  v14 = v23;
  LODWORD(v12) = v24;
  v20 = v32;
  v21 = v33;
  v22[0] = *v34;
  *(v22 + 12) = *&v34[12];
  (a3)(&v23, v13, &v20);
  *&v20 = v14;
  DWORD2(v20) = v12;
  v15 = PreferencesOutputs.subscript.getter();

  if ((v15 & 0x100000000) == 0)
  {
    v18 = *&v27[16];
    v19 = *&v27[24];
    MEMORY[0x1EEE9AC00](*&v27[16]);

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v20 = v25;
  v21 = v26;
  v22[0] = *v27;
  *(v22 + 12) = *&v27[12];
  result = outlined destroy of _CommandsInputs(&v20);
  v17 = v24;
  *a6 = v23;
  *(a6 + 8) = v17;
  return result;
}

uint64_t closure #2 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v13[0] = a2[2];
  *(v13 + 12) = *(a2 + 44);
  v11 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a6 + 32))(v10, v12, a4, a6);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeScene(scene:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = type metadata accessor for ModifiedContent();
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

void type metadata accessor for Attribute<(_:)>()
{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)(255, &lazy cache variable for type metadata for (_:));
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

{
  if (!lazy cache variable for type metadata for Attribute<(_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<(_:)>);
    }
  }
}

unint64_t type metadata accessor for (_:)()
{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [SceneList.Namespace : SceneList](255, &lazy cache variable for type metadata for [SceneList.Namespace : SceneList], lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ViewIdentity : ConfirmationDialog]();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ViewIdentity : AlertStorage]();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for BLSAlwaysOnFrameSpecifier?(255, &lazy cache variable for type metadata for [DateSequenceTimeline], type metadata accessor for DateSequenceTimeline, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [NavigationDestinationResolverBase](255, &lazy cache variable for type metadata for [NavigationDestinationResolverBase], type metadata accessor for NavigationDestinationResolverBase, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(255, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for SearchEnvironmentStorage.AllProperties?(255, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ToolbarPlacement.Role : ToolbarAppearanceConfiguration]();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [NavigationLinkSelectionIdentifier : UpdateViewDestinationRequest]();
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSUserActivity);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for TextSelection(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [ContentScrollViewBox](255, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for EventFilter<()>(255, &lazy cache variable for type metadata for EditMenuPresentation?, &type metadata for EditMenuPresentation, MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    _sSay10Foundation3URLVGSgMaTm_0(255, &lazy cache variable for type metadata for [URL]?, type metadata accessor for [URL], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

{
  result = lazy cache variable for type metadata for (_:);
  if (!lazy cache variable for type metadata for (_:))
  {
    type metadata accessor for [String](255, &lazy cache variable for type metadata for [PrintAccessoryView], &type metadata for PrintAccessoryView, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for (_:));
  }

  return result;
}

uint64_t static Optional<A>._makeCommands(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v11[0] = a1[2];
  *(v11 + 12) = *(a1 + 44);
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v9[1] = _GraphValue.value.getter();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional<A>.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static _ConditionalContent<>._makeCommands(content:inputs:)(v9, v10, a2, &type metadata for EmptyCommands, a3, &protocol witness table for EmptyCommands, a4);
}

uint64_t type metadata accessor for Optional<A>.Child()
{
  return __swift_instantiateGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance A?<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static _ConditionalContent<>._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  *&v37[12] = *(a2 + 44);
  v13 = a2[1];
  v35 = *a2;
  v36 = v13;
  *v37 = a2[2];
  *&v41 = *&v37[16];
  DWORD2(v41) = *&v37[24];

  PreferencesInputs.makeIndirectOutputs()();

  v14 = v47;
  v15 = DWORD2(v47);
  v38 = v35;
  v39 = v36;
  *v40 = *v37;
  *&v40[12] = *&v37[12];
  *&v40[32] = v47;
  *&v40[40] = DWORD2(v47);
  LODWORD(v29) = v12;
  outlined init with copy of _CommandsInputs(&v35, &v47);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v49 = *v40;
  *v50 = *&v40[16];
  *&v50[12] = *&v40[28];
  v47 = v38;
  v48 = v39;
  *&v41 = a3;
  *(&v41 + 1) = a4;
  *&v42 = a5;
  *(&v42 + 1) = a6;
  v16 = type metadata accessor for _ConditionalContent<>.CommandsProvider();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v41, &v38, v16);
  WitnessTable = swift_getWitnessTable();
  _ConditionalContent.Container.init(content:provider:)();
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v29 = v41;
  v30 = v42;
  v26 = type metadata accessor for _ConditionalContent.Info();
  *&v47 = a3;
  *(&v47 + 1) = a4;
  *&v48 = v16;
  *(&v48 + 1) = WitnessTable;
  v19 = type metadata accessor for _ConditionalContent.Container();
  v27 = v19;
  v28 = swift_getWitnessTable();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v47, &v41, v19);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v25, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v49 = v31;
  *v50 = v32;
  *&v50[16] = v33;
  v51 = v34;
  v47 = v29;
  v48 = v30;
  v23 = *(v20 + 8);
  v23(&v47, v19);
  *&v29 = v14;
  DWORD2(v29) = v15;

  PreferencesOutputs.setIndirectDependency(_:)();
  v23(&v41, v19);
  (*(v17 + 8))(&v38, v16);

  *a7 = v14;
  *(a7 + 8) = v15;
  return result;
}

uint64_t initializeWithCopy for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t destroy for _ConditionalContent<>.CommandsProvider()
{
}

uint64_t type metadata completion function for NavigationStack()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t implicit closure #1 in static CommandsModifier._makeScene(modifier:inputs:body:)(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  updated = type metadata accessor for CommandsModifier.UpdateList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v5, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_25, v6, updated, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  return v4;
}

uint64_t type metadata completion function for Section()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for CommandMenu()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *assignWithTake for DropSession.LocalSession(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>);
    }
  }
}

uint64_t static _PreferenceWritingModifier._makeScene(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  *v13 = a2[2];
  *&v13[12] = *(a2 + 44);
  v9 = v6;
  v10 = v5;
  *v11 = a2[2];
  *&v11[12] = *(a2 + 44);
  outlined init with copy of _SceneInputs(v12, &v18);
  PreferencesInputs.remove<A>(_:)();
  v14[0] = v9;
  v14[1] = v10;
  v15[0] = *v11;
  *(v15 + 12) = *&v11[12];
  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  v7 = outlined init with copy of _SceneInputs(v14, v16);
  a3(v7, &v18);
  v16[0] = v18;
  v16[1] = v19;
  v17[0] = v20[0];
  *(v17 + 12) = *(v20 + 12);
  outlined destroy of _SceneInputs(v16);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  return outlined destroy of _SceneInputs(&v18);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EAA76DA8 == -1)
  {
    if (qword_1EAA76DB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EAA76DB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EAA76DA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EAA76D94 > a3)
      {
        return 1;
      }

      if (dword_1EAA76D94 >= a3)
      {
        return dword_1EAA76D98 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAA76DB0;
  if (qword_1EAA76DB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EAA76DB0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x18D010600](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_1EAA76D94, &dword_1EAA76D98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

uint64_t type metadata completion function for _KeyboardShortcutPickerContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for _TuplePickerContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for Picker()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for Toggle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut()
{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut;
  if (!lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasKeyboardShortcut and conformance HasKeyboardShortcut);
  }

  return result;
}

uint64_t type metadata completion function for CommandGroup()
{
  result = type metadata accessor for CommandOperation();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static TupleCommandContent._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v33 = *a2;
  v5 = *a1;
  v34 = v4;
  *v35 = a2[2];
  *&v35[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08CommandsD0V_Tt1g5(a3, v31);
  v6 = *v31;
  *&v31[52] = *&v35[12];
  *&v31[40] = *v35;
  *&v31[24] = v34;
  *&v31[8] = v33;
  *v31 = v5;
  *&v31[72] = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of _CommandsInputs(&v33, v29);
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 = (v8 + 24);
      *&v31[72] = AGTupleElementOffset();
      v29[0] = v9;
      List = type metadata accessor for TupleCommandContent.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(v31, List, &protocol witness table for TupleCommandContent<A>.MakeList);
      --v7;
    }

    while (v7);

    v11 = v32;
  }

  else
  {
    outlined init with copy of _CommandsInputs(&v33, v29);

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    *&v29[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = *&v29[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      *&v29[0] = v13;
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);

      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v13 = *&v29[0];
      }

      v14 += 4;
      *(v13 + 16) = v17 + 1;
      v19 = v13 + 16 * v17;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v12;
    }

    while (v12);
  }

  PreferencesOutputs.init()();
  v27 = *&v29[0];
  v28 = DWORD2(v29[0]);
  v20 = *(*&v35[16] + 16);
  if (v20)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v21 = -v20;
    v22 = 1;
    do
    {
      v23 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v23(v29, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v22;
    }

    while (v21 + v22 != 1);
  }

  else
  {
  }

  *a4 = v27;
  *(a4 + 8) = v28;
  v29[2] = *&v31[32];
  v29[3] = *&v31[48];
  v29[4] = *&v31[64];
  v30 = v32;
  v29[0] = *v31;
  v29[1] = *&v31[16];
  v24 = type metadata accessor for TupleCommandContent.MakeList();
  return (*(*(v24 - 8) + 8))(v29, v24);
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA08CommandsD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static CommandsDescriptor.typeCache;
  if (*(static CommandsDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static CommandsDescriptor.typeCache;
    static CommandsDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static CommandsDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

void one-time initialization function for typeCache()
{
  static CommandsDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static SceneDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static ToolbarContentDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static AccessibilityRotorContentDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static TableColumnDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static NavigationDestinationDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static WidgetDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

{
  static TableRowDescriptor.typeCache = MEMORY[0x1E69E7CC8];
}

unint64_t lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor()
{
  result = lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor;
  if (!lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsDescriptor and conformance CommandsDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<CommandsDescriptor>, lazy protocol witness table accessor for type CommandsDescriptor and conformance CommandsDescriptor, &type metadata for CommandsDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>);
    }
  }
}

uint64_t TupleCommandContent.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for TupleCommandContent();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  v24[1] = v8;
  v25[0] = *(v4 + 40);
  *(v25 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v18 = *(v4 + 8);
  v19 = v9;
  *v20 = *(v4 + 40);
  *&v20[12] = *(v4 + 52);
  v10 = *(a4 + 32);
  outlined init with copy of _CommandsInputs(v24, v26);
  v10(&v22, v21, &v18, a3, a4);
  v26[0] = v18;
  v26[1] = v19;
  v27[0] = *v20;
  *(v27 + 12) = *&v20[12];
  outlined destroy of _CommandsInputs(v26);
  v11 = v22;
  v12 = v23;
  v13 = *(v4 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 16 * v16;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v5 + 80) = v13;
  return result;
}

uint64_t TypeConformance<>.visitType<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

{
  return (*(a3 + 8))(*v3, *v3, v3[1], a2);
}

uint64_t static CommandGroup._makeCommands(content:inputs:)()
{

  PreferencesOutputs.init()();
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static CommandGroup._makeCommands(content:inputs:)()
{
  v8 = *MEMORY[0x1E69E9840];
  type metadata accessor for CommandGroup();
  type metadata accessor for _GraphValue();
  v4 = _GraphValue.value.getter();
  List = type metadata accessor for CommandGroup.MakeList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<CommandsList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v4, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v5, List, MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v1);
  return v3;
}

void type metadata accessor for Attribute<CommandsList>()
{
  if (!lazy cache variable for type metadata for Attribute<CommandsList>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<CommandsList>);
    }
  }
}

uint64_t destroy for TupleWidgetConfiguration.MakeList()
{
}

uint64_t protocol witness for static _SceneModifier._makeScene(modifier:inputs:body:) in conformance _EnvironmentKeyWritingModifier<A>(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static _SceneModifier<>._makeScene(modifier:inputs:body:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static _SceneModifier<>._makeScene(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2[1];
  v22[0] = *a2;
  v22[1] = v9;
  v11 = *a2;
  v10 = a2[1];
  v23[0] = a2[2];
  *(v23 + 12) = *(a2 + 44);
  v12 = *a1;
  v19 = v11;
  v20 = v10;
  v21[0] = a2[2];
  *(v21 + 12) = *(a2 + 44);
  LODWORD(v26[0]) = v12;
  v13 = *(a6 + 8);
  outlined init with copy of _SceneInputs(v22, v28);
  v13(v26, &v19, a5, a6);
  v24[0] = v19;
  v24[1] = v20;
  v25[0] = v21[0];
  *(v25 + 12) = *(v21 + 12);
  v16 = v19;
  v17 = v20;
  v18[0] = v21[0];
  *(v18 + 12) = *(v21 + 12);
  v14 = outlined init with copy of _SceneInputs(v24, v28);
  a3(v14, &v16);
  v26[0] = v16;
  v26[1] = v17;
  v27[0] = v18[0];
  *(v27 + 12) = *(v18 + 12);
  outlined destroy of _SceneInputs(v26);
  v28[0] = v19;
  v28[1] = v20;
  v29[0] = v21[0];
  *(v29 + 12) = *(v21 + 12);
  return outlined destroy of _SceneInputs(v28);
}

uint64_t UIApplicationDelegateAdaptor<>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UIApplicationDelegateAdaptor<>.init(_:)(a1, a2, a3, type metadata accessor for ObservableFallbackDelegateBox, ObservableFallbackDelegateBox.__allocating_init());
}

{
  return UIApplicationDelegateAdaptor<>.init(_:)(a1, a2, a3, type metadata accessor for ObservableObjectFallbackDelegateBox, ObservableObjectFallbackDelegateBox.__allocating_init());
}

void NavigationPath.init()(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v1;
  *(a1 + 24) = 0;
}

uint64_t get_witness_table_7SwiftUI5SceneRzRld__C11Observation10ObservableRd__r__lAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyqd__SgGGAaBHpxAaBHD1__AjA01_cK0HpyHCHCTm()
{
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier();
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

uint64_t type metadata completion function for Menu()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnScrollVisibilityGeometryAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

void *ObservableFallbackDelegateBox.delegate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PreferencesOutputs>, MEMORY[0x1E697F450], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SceneList.Item>, &type metadata for SceneList.Item, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 568);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[568 * v8])
    {
      memmove(v12, v13, 568 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Attribute<ViewList>>, type metadata accessor for Attribute<ViewList>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>, &type metadata for ToolbarPlacement, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationRequest>, &type metadata for NavigationRequest, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.ID>, &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GeneralItem>, &type metadata for GeneralItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 296);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[296 * v8])
    {
      memmove(v12, v13, 296 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabEntry>, &type metadata for TabEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 288);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[288 * v8])
    {
      memmove(v12, v13, 288 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UniqueID>, MEMORY[0x1E6981D00], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGSize>, type metadata accessor for CGSize, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_ScrollableLayoutItem>, &type metadata for _ScrollableLayoutItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabCustomizationID>, &type metadata for TabCustomizationID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScalarDeceleration>, &type metadata for ScalarDeceleration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 88 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ConformingTuple<Pack{Float, Float, Float, Float}>>, type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Float, Float, Float, Float)>, type metadata accessor for (Float, Float, Float, Float), MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(Int, Int)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<InterfaceOrientation>, &type metadata for InterfaceOrientation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, type metadata accessor for AttributedStringKey.Type, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, MEMORY[0x1E697DED0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 632);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[632 * v8])
    {
      memmove(v12, v13, 632 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentLaunchScreenAction>, &type metadata for DocumentLaunchScreenAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TextFormattingControl>, &type metadata for TextFormattingControl, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HostingScrollView.PlatformGroupContainer.SubstitutionCandidate>, &type metadata for HostingScrollView.PlatformGroupContainer.SubstitutionCandidate, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_Preview>, &type metadata for _Preview, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, MEMORY[0x1E6981148], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityAttachment.Tree>, &type metadata for AccessibilityAttachment.Tree, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[304 * v8])
    {
      memmove(v12, v13, 304 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TabItem>, &type metadata for TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Gradient.Stop>, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.Entry.ID>, &type metadata for ToolbarStorage.Entry.ID, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityNodeProxy>, &type metadata for AccessibilityNodeProxy, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<StackItem>, &type metadata for StackItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableFillerBounds>, MEMORY[0x1E697FC28], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 112 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentMarginPlacement.Role>, &type metadata for ContentMarginPlacement.Role);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<Attribute<TableRowList>>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyAccessibilityAction>, &type metadata for AnyAccessibilityAction);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<_SymbolEffect>, MEMORY[0x1E697E2D0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListUpdate<Int, Int>>, type metadata accessor for ListUpdate<Int, Int>, MEMORY[0x1E69E6F90], type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityEnabledTechnology>, MEMORY[0x1E6980970]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, type metadata accessor for _ContiguousArrayStorage<Attribute<AccessibilityRotorEntryList>>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AccessibilityRotorEntryList>, &type metadata for AccessibilityRotorEntryList);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<AnyHashable>, MEMORY[0x1E69E69B8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<SymbolEffect>, &type metadata for SymbolEffect);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowList>, &type metadata for TableRowList);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusableBounds>, MEMORY[0x1E697E780], MEMORY[0x1E69E6F90], _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys()
{
  result = lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys;
  if (!lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreferenceKeys and conformance PreferenceKeys);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 120 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  v6 = *(a3 + 48);
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = v6;
  *(v4 + 112) = *(a3 + 112);
  v7 = *(a3 + 96);
  *(v4 + 80) = *(a3 + 80);
  *(v4 + 96) = v7;
  *(v4 + 64) = *(a3 + 64);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = a4[7] + 40 * result;
  v7 = *(a3 + 16);
  *v6 = *a3;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a3 + 32);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

void type metadata accessor for ViewInputFlagModifier<InAdaptableTabViewContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x18D00F6C0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x18D00F6C0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      result = MEMORY[0x18D00F6C0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v6 + 32);
      if (v30 >= 64)
      {
        bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v37 = (v13 - 1) & v13;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v24 = v22;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v6 = v35;
      v13 = v37;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}