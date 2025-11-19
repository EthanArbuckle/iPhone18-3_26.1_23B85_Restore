unint64_t instantiation function for generic protocol witness table for GlassEffectContextState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextState and conformance GlassEffectContextState();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectContextUpdatedMaterial(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectContextEnvironment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectContextTransaction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial()
{
  result = lazy protocol witness table cache variable for type GlassEffectMaterial and conformance GlassEffectMaterial;
  if (!lazy protocol witness table cache variable for type GlassEffectMaterial and conformance GlassEffectMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectMaterial and conformance GlassEffectMaterial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet()
{
  result = lazy protocol witness table cache variable for type GlassEffectShapeSet and conformance GlassEffectShapeSet;
  if (!lazy protocol witness table cache variable for type GlassEffectShapeSet and conformance GlassEffectShapeSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectShapeSet and conformance GlassEffectShapeSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial;
  if (!lazy protocol witness table cache variable for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData;
  if (!lazy protocol witness table cache variable for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList()
{
  result = lazy protocol witness table cache variable for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList;
  if (!lazy protocol witness table cache variable for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList);
  }

  return result;
}

uint64_t outlined copy of GlassEffectContextResolvedData.Data?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {

    outlined copy of Material.ID(a3, a4);
  }

  return result;
}

uint64_t outlined consume of GlassEffectContextResolvedData.Data?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result)
  {

    outlined consume of Material.ID(a3, a4);
  }

  return result;
}

uint64_t outlined destroy of _AnyAnimatableData?(uint64_t a1)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>()
{
  result = lazy protocol witness table cache variable for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>;
  if (!lazy protocol witness table cache variable for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>)
  {
    type metadata accessor for _SizedShape<OffsetShape<AnyShape>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>);
  }

  return result;
}

uint64_t destroy for GlassMaterialShape(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }
}

uint64_t initializeWithCopy for GlassMaterialShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = v17;
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  v22 = *(a2 + 296);
  if (v22 == 1)
  {
    v23 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v23;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v24 = *(a2 + 272);
    v25 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v24, v25);
    *(a1 + 272) = v24;
    *(a1 + 280) = v25;
    *(a1 + 288) = *(a2 + 288);
    v26 = *(a2 + 304);
    *(a1 + 296) = v22;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v27 = *(a2 + 344);
  v28 = *(a2 + 352);
  *(a1 + 344) = v27;
  *(a1 + 352) = v28;

  return a1;
}

uint64_t assignWithCopy for GlassMaterialShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
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
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);

  return a1;
}

uint64_t assignWithTake for GlassMaterialShape(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v7, v8, v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v11, v12);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 248) == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v15 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v15;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v16 = *(a1 + 224);
  v17 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) != 1)
  {
    if (*(a2 + 296) != 1)
    {
      v19 = *(a1 + 272);
      v20 = *(a1 + 280);
      *(a1 + 272) = *(a2 + 272);
      outlined consume of _Glass.Variant.Role(v19, v20);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);

      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 272);
  }

  v18 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v18;
  *(a1 + 297) = *(a2 + 297);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassMaterialShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassMaterialShape(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassEffectContextResolvedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassEffectContextResolvedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 3;
    }
  }

  return result;
}

uint64_t destroy for GlassEffectContextResolvedData.Data(uint64_t a1)
{

  outlined consume of Material.ID(*(a1 + 16), *(a1 + 24));
}

uint64_t initializeWithCopy for GlassEffectContextResolvedData.Data(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  outlined copy of Material.ID(v5, v6);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 28) = *(a2 + 28);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;

  return a1;
}

uint64_t assignWithCopy for GlassEffectContextResolvedData.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  outlined copy of Material.ID(v4, v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  v7 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for GlassEffectContextResolvedData.Data(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 28) = *(a2 + 28);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t destroy for GlassContainerCache.UnwrappedMaterial(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 255)
  {
    return outlined consume of Material.ID(*result, v1);
  }

  return result;
}

_OWORD *initializeBufferWithCopyOfBuffer for GlassContainerCache.UnwrappedMaterial(_OWORD *result, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 8) == 0xFF)
  {
    *result = *a2;
  }

  else
  {
    v3 = *a2;
    v4 = result;
    outlined copy of Material.ID(*a2, a2[1]);
    *v4 = v3;
    *(v4 + 8) = v2;
    *(v4 + 3) = HIDWORD(v2);
    return v4;
  }

  return result;
}

uint64_t assignWithCopy for GlassContainerCache.UnwrappedMaterial(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 0xFF)
  {
    if (v4 != 255)
    {
      v5 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      *a1 = v5;
      *(a1 + 8) = v4;
LABEL_8:
      *(a1 + 12) = *(a2 + 12);
      return a1;
    }
  }

  else
  {
    if (v4 != 255)
    {
      v6 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      v7 = *a1;
      *a1 = v6;
      v8 = *(a1 + 8);
      *(a1 + 8) = v4;
      outlined consume of Material.ID(v7, v8);
      goto LABEL_8;
    }

    outlined destroy of Material(a1);
  }

  *a1 = *a2;
  return a1;
}

uint64_t assignWithTake for GlassContainerCache.UnwrappedMaterial(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  if (v3 == 255)
  {
    *result = *a2;
  }

  else
  {
    v4 = a2[1];
    if (*(a2 + 8) == 0xFF)
    {
      v5 = result;
      v6 = a2;
      outlined destroy of Material(result);
      *v5 = *v6;
    }

    else
    {
      v7 = HIDWORD(v4);
      v8 = *a2;
      v9 = *result;
      *result = v8;
      *(result + 8) = v4;
      v5 = result;
      outlined consume of Material.ID(v9, v3);
      *(v5 + 12) = v7;
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainerCache.UnwrappedMaterial(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainerCache.UnwrappedMaterial(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassEffectMaterial(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for GlassEffectMaterial(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for GlassEffectMaterial(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t destroy for GlassMaterialEffect(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }
}

uint64_t initializeWithCopy for GlassMaterialEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v18 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v18;
  v19 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v19;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);

  return a1;
}

uint64_t assignWithCopy for GlassMaterialEffect(uint64_t a1, uint64_t a2)
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

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 252) = *(a2 + 252);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithTake for GlassMaterialEffect(uint64_t a1, uint64_t a2)
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

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassMaterialEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 268))
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

uint64_t storeEnumTagSinglePayload for GlassMaterialEffect(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 268) = 1;
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

    *(result + 268) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassMaterialContext.TransactionKind and conformance GlassMaterialContext.TransactionKind()
{
  result = lazy protocol witness table cache variable for type GlassMaterialContext.TransactionKind and conformance GlassMaterialContext.TransactionKind;
  if (!lazy protocol witness table cache variable for type GlassMaterialContext.TransactionKind and conformance GlassMaterialContext.TransactionKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassMaterialContext.TransactionKind and conformance GlassMaterialContext.TransactionKind);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectMaterial(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectContextUnwrappedMaterial(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlassEffectContextResolvedData(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData();
  *(a1 + 8) = result;
  return result;
}

void _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t specialized static GlassEffectContextResolvedData.Data.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 28);
  v19 = *(a1 + 40);
  v20 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 28);
  v12 = *(a2 + 32);
  v18 = *(a2 + 40);

  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(v2, v7);

  result = 0;
  if ((v13 & 1) == 0)
  {
    return result;
  }

  if (v3 != v8)
  {
    return result;
  }

  v23 = v4;
  v24 = v5;
  v21 = v9;
  v22 = v10;
  outlined copy of Material.ID(v4, v5);
  outlined copy of Material.ID(v9, v10);
  v15 = static Material.ID.== infix(_:_:)(&v23, &v21);
  outlined consume of Material.ID(v21, v22);
  outlined consume of Material.ID(v23, v24);
  result = 0;
  if ((v15 & 1) == 0 || v6 != v11)
  {
    return result;
  }

  if (v20)
  {
    if (v12)
    {
      if (v20 == v12)
      {
        goto LABEL_10;
      }

      return 0;
    }

LABEL_19:

    return 0;
  }

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (v18)
  {
    v16 = v19 == v18;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  if (v19)
  {
    return v17;
  }

  else
  {
    return v18 == 0;
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlassEffectShapeModifier>, _AnchorWritingModifier<CGRect, GlassMaterialShapeKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for OffsetShape<AnyShape>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _GraphInputs.makeReusable(indirectMap:)(uint64_t a1)
{
  v2 = v1;
  specialized Attribute.makeReusable(indirectMap:withoutInvalidation:)(a1);
  specialized Attribute.makeReusable(indirectMap:withoutInvalidation:)(a1);
  v4 = *(v1 + 32);
  if ((v4 & 0x40) == 0)
  {
    *(v1 + 32) = v4 | 0x40;
  }

  v5 = *(v1 + 16);
  swift_beginAccess();
  LODWORD(v14) = *(v5 + 16);
  specialized Attribute.makeReusable(indirectMap:withoutInvalidation:)(a1);
  _GraphInputs.environment.setter(v14);
  specialized Attribute.makeReusable(indirectMap:withoutInvalidation:)(a1);
  v6 = *v2;
  BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v6, v14);
  if (v7)
  {
    v8 = (v7 + 80);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v8 = &qword_1ED566B30;
  }

  v9 = *v8;

  if (v9)
  {
    do
    {
      v12 = v9[3];
      v11 = v9[4];
      v13 = v9[2];

      project #1 <A>(_:) in _GraphInputs.makeReusable(indirectMap:)(v13, v2, a1, v13, v12);

      v9 = v11;
    }

    while (v11);
  }

  return result;
}

BOOL _GraphInputs.tryToReuse(by:indirectMap:testOnly:)(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v80 = a3;
  type metadata accessor for Logger?();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v71 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v73 = *a1;
  *&v23 = a1[1];
  v78 = v23;
  v77 = a1[2];
  v24 = *(a1 + 7);
  v75 = *(a1 + 6);
  v72 = v24;
  v71 = *v3;
  *&v23 = *(v3 + 8);
  v81 = v23;
  v76 = *(v3 + 16);
  v25 = *(v3 + 28);
  v79 = *(v3 + 24);
  v74 = v25;
  swift_beginAccess();
  if (*(*(a2 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v81), (v26 & 1) != 0))
  {
    swift_endAccess();
    if ((v80 & 1) == 0)
    {
      AGGraphSetIndirectAttribute2();
    }

    swift_beginAccess();
    if (!*(*(a2 + 24) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v79), (v27 & 1) == 0))
    {
      swift_endAccess();
      if (one-time initialization token for graphReuse != -1)
      {
        swift_once();
      }

      v34 = v8;
      v43 = __swift_project_value_buffer(v8, static Log.graphReuse);
      outlined init with copy of Logger?(v43, v19);
      v44 = type metadata accessor for Logger();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v19, 1, v44) == 1)
      {
        _s2os6LoggerVSgWOhTm_2(v19, type metadata accessor for Logger?);
      }

      else
      {
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v87[0] = v49;
          *v48 = 136315138;
          *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573616850, 0xE500000000000000, v87);
          _os_log_impl(&dword_18D018000, v46, v47, "Reuse failed: missing indirection for %s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x193AC4820](v49, -1, -1);
          MEMORY[0x193AC4820](v48, -1, -1);
        }

        (*(v45 + 8))(v19, v44);
      }

      goto LABEL_33;
    }

    swift_endAccess();
    if ((v80 & 1) == 0)
    {
      AGGraphSetIndirectAttribute2();
    }

    v28 = v76;
    swift_beginAccess();
    v29 = *(v28 + 16);
    swift_beginAccess();
    swift_beginAccess();
    if (*(*(a2 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v29), (v30 & 1) != 0))
    {
      swift_endAccess();
      if ((v80 & 1) == 0)
      {
        AGGraphSetIndirectAttribute2();
      }

      swift_beginAccess();
      if (*(*(a2 + 24) + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v74);
        if (v31)
        {
          swift_endAccess();
          v32 = v72;
          if ((v80 & 1) == 0)
          {
            AGGraphSetIndirectAttribute2();
          }

          v87[0] = v71;
          v87[1] = v81;
          v87[2] = v76;
          v88 = v79;
          v89 = v74;
          v90 = *(v4 + 32);
          *&v82 = v73;
          *(&v82 + 1) = v78;
          v83 = v77;
          v84 = v75;
          v85 = v32;
          v86 = *(a1 + 2);
          return _GraphInputs.reuseCustomInputs(by:indirectMap:testOnly:)(&v82, a2, v80 & 1);
        }
      }

      swift_endAccess();
      if (one-time initialization token for graphReuse != -1)
      {
        swift_once();
      }

      v34 = v8;
      v64 = __swift_project_value_buffer(v8, static Log.graphReuse);
      outlined init with copy of Logger?(v64, v13);
      v65 = type metadata accessor for Logger();
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v13, 1, v65) != 1)
      {
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v87[0] = v70;
          *v69 = 136315138;
          *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x746361736E617254, 0xEB000000006E6F69, v87);
          _os_log_impl(&dword_18D018000, v67, v68, "Reuse failed: missing indirection for %s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x193AC4820](v70, -1, -1);
          MEMORY[0x193AC4820](v69, -1, -1);
        }

        (*(v66 + 8))(v13, v65);
        goto LABEL_33;
      }

      v38 = v13;
    }

    else
    {
      swift_endAccess();
      if (one-time initialization token for graphReuse != -1)
      {
        swift_once();
      }

      v34 = v8;
      v57 = __swift_project_value_buffer(v8, static Log.graphReuse);
      outlined init with copy of Logger?(v57, v16);
      v58 = type metadata accessor for Logger();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v16, 1, v58) != 1)
      {
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v87[0] = v63;
          *v62 = 136315138;
          *(v62 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018DD82E00, v87);
          _os_log_impl(&dword_18D018000, v60, v61, "Reuse failed: missing indirection for %s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x193AC4820](v63, -1, -1);
          MEMORY[0x193AC4820](v62, -1, -1);
        }

        (*(v59 + 8))(v16, v58);
        goto LABEL_33;
      }

      v38 = v16;
    }
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v34 = v8;
    v35 = __swift_project_value_buffer(v8, static Log.graphReuse);
    outlined init with copy of Logger?(v35, v22);
    v36 = type metadata accessor for Logger();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v22, 1, v36) != 1)
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v87[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1701669204, 0xE400000000000000, v87);
        _os_log_impl(&dword_18D018000, v39, v40, "Reuse failed: missing indirection for %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x193AC4820](v42, -1, -1);
        MEMORY[0x193AC4820](v41, -1, -1);
      }

      (*(v37 + 8))(v22, v36);
      goto LABEL_33;
    }

    v38 = v22;
  }

  _s2os6LoggerVSgWOhTm_2(v38, type metadata accessor for Logger?);
LABEL_33:
  if (one-time initialization token for graphReuse != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v34, static Log.graphReuse);
  outlined init with copy of Logger?(v50, v10);
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v10, 1, v51) == 1)
  {
    _s2os6LoggerVSgWOhTm_2(v10, type metadata accessor for Logger?);
  }

  else
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_18D018000, v53, v54, "Reuse failed: standard inputs", v55, 2u);
      MEMORY[0x193AC4820](v55, -1, -1);
    }

    (*(v52 + 8))(v10, v51);
  }

  return 0;
}

uint64_t static GraphReuseOptions.current.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = &static GraphReuseOptions.overrideValue;
  result = swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      result = swift_once();
    }

    v2 = &static GraphReuseOptions.defaultsValue;
  }

  *a1 = *v2;
  return result;
}

uint64_t IndirectAttributeMap.__allocating_init(subgraph:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t static GraphReuseOptions.overrideValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_1EAB273F0;
  *a1 = static GraphReuseOptions.overrideValue;
  *(a1 + 8) = v3;
  return result;
}

uint64_t static GraphReuseOptions.overrideValue.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  static GraphReuseOptions.overrideValue = v1;
  byte_1EAB273F0 = v2;
  return result;
}

uint64_t IndirectAttributeMap.map.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t IndirectAttributeMap.init(subgraph:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t IndirectAttributeMap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _GraphValue.makeReusable(indirectMap:)(uint64_t a1)
{
  type metadata accessor for Attribute();

  return Attribute.makeReusable(indirectMap:withoutInvalidation:)(a1);
}

uint64_t specialized Attribute.makeReusable(indirectMap:withoutInvalidation:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    IndirectAttribute3 = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    swift_endAccess();
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute3 = AGGraphCreateIndirectAttribute3();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(IndirectAttribute3, v4, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v12;
  }

  result = swift_endAccess();
  *v2 = IndirectAttribute3;
  return result;
}

uint64_t Attribute.makeReusable(indirectMap:withoutInvalidation:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) != 0))
  {
    IndirectAttribute3 = *(*(v5 + 56) + 4 * v6);
  }

  else
  {
    swift_endAccess();
    AGGraphClearUpdate();
    v9 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    IndirectAttribute3 = AGGraphCreateIndirectAttribute3();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(IndirectAttribute3, v4, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v12;
  }

  result = swift_endAccess();
  *v2 = IndirectAttribute3;
  return result;
}

uint64_t project #1 <A>(_:) in _GraphInputs.makeReusable(indirectMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v15 - v12;
  result = (*(a5 + 16))(a4, a5, v11);
  if ((result & 1) == 0)
  {
    _GraphInputs.subscript.getter(a1, a4, a5);
    (*(a5 + 24))(a3, v13, a4, a5);
    specialized _ViewListCountInputs.subscript.setter(v13, a1, a4, a5);
    return (*(v10 + 8))(v13, AssociatedTypeWitness);
  }

  return result;
}

uint64_t Attribute.tryToReuse(by:indirectMap:withoutInvalidation:testOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  type metadata accessor for Logger?();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a2 + 24) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a5), (v12 & 1) != 0))
  {
    swift_endAccess();
    if ((a4 & 1) == 0)
    {
      AGGraphSetIndirectAttribute2();
    }

    return 1;
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, static Log.graphReuse);
    outlined init with copy of Logger?(v14, v11);
    v15 = type metadata accessor for Logger();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      _s2os6LoggerVSgWOhTm_2(v11, type metadata accessor for Logger?);
    }

    else
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        v21 = _typeName(_:qualified:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_18D018000, v17, v18, "Reuse failed: missing indirection for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x193AC4820](v20, -1, -1);
        MEMORY[0x193AC4820](v19, -1, -1);
      }

      (*(v16 + 8))(v11, v15);
    }

    return 0;
  }
}

BOOL _GraphInputs.reuseCustomInputs(by:indirectMap:testOnly:)(__int128 *a1, uint64_t a2, int a3)
{
  type metadata accessor for Logger?();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  v14 = a1[1];
  v75[0] = *a1;
  v75[1] = v14;
  v75[2] = a1[2];
  v15 = v3[1];
  v74[0] = *v3;
  v74[1] = v15;
  v74[2] = v3[2];
  v16 = &static GraphReuseOptions.overrideValue;
  swift_beginAccess();
  if (byte_1EAB273F0 == 1)
  {
    if (one-time initialization token for defaultsValue != -1)
    {
      swift_once();
    }

    v16 = &static GraphReuseOptions.defaultsValue;
  }

  v17 = *&v74[0];
  if ((*v16 & 8) == 0)
  {
    v18 = *&v75[0];
    v76 = *&v75[0];
    v77[0] = *&v74[0];
    v19 = (*&v74[0] | *&v75[0]) == 0;
    if (*&v74[0] && *&v75[0])
    {
      v73 = MEMORY[0x1E69E7CC0];
      outlined init with copy of PropertyList(v77, &v72);
      outlined init with copy of PropertyList(&v76, &v72);
      v19 = compareLists(_:_:ignoredTypes:)(v17, v18, &v73);

      outlined destroy of PropertyList(&v76);
      outlined destroy of PropertyList(v77);
    }

    return v19;
  }

  v77[0] = *&v74[0];
  BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
  v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v17, v76);
  v69 = v8;
  if (v20)
  {
    v21 = (v20 + 72);
    v22 = (v20 + 80);
  }

  else
  {
    v21 = &static ReusableInputs.defaultValue;
    v22 = &qword_1ED566B30;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v23 = *v22;
  v24 = *v21;
  v25 = *&v75[0];
  v76 = *&v75[0];
  BloomFilter.init(hashValue:)(&type metadata for ReusableInputs);
  v26 = v73;

  v27 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(v25, v26);
  if (v27)
  {
    v28 = (v27 + 72);
    v29 = (v27 + 80);
  }

  else
  {
    v28 = &static ReusableInputs.defaultValue;
    v29 = &qword_1ED566B30;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  if (v24 != *v28)
  {

    return 0;
  }

  v65 = a2;
  v66 = a3;
  v67 = v10;
  v30 = *v29;

  v70 = v30;

  v68 = v23;
  v31 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    do
    {
      v32 = *(v23 + 32);
      v33 = *(v23 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v35 = *(v31 + 2);
      v34 = *(v31 + 3);
      if (v35 >= v34 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v31);
      }

      *(v31 + 2) = v35 + 1;
      *&v31[8 * v35 + 32] = v33;
      v23 = v32;
    }

    while (v32);
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v38 = v36;
    do
    {
      v39 = *(v38 + 32);
      v40 = *(v38 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v42 = *(v37 + 2);
      v41 = *(v37 + 3);
      if (v42 >= v41 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
      }

      *(v37 + 2) = v42 + 1;
      *&v37[8 * v42 + 32] = v40;
      v38 = v39;
    }

    while (v39);
  }

  v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSO_Tt1g5(v31, v37);

  if ((v43 & 1) == 0)
  {

    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v69, static Log.graphReuse);
    outlined init with copy of Logger?(v47, v13);
    v48 = type metadata accessor for Logger();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v13, 1, v48) == 1)
    {
      goto LABEL_52;
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_18D018000, v50, v51, "Reuse failed: custom inputs type mismatch", v52, 2u);
      MEMORY[0x193AC4820](v52, -1, -1);
    }

    goto LABEL_60;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  }

  v45 = *(v31 + 2);
  v44 = *(v31 + 3);
  if (v45 >= v44 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v31);
  }

  *(v31 + 2) = v45 + 1;
  *&v31[8 * v45 + 32] = &type metadata for ReusableInputs;
  v73 = v31;
  if (v17)
  {
    if (v25)
    {
      v72 = v31;
      outlined init with copy of PropertyList(v77, v71);
      outlined init with copy of PropertyList(&v76, v71);

      v46 = compareLists(_:_:ignoredTypes:)(v17, v25, &v72);

      outlined destroy of PropertyList(&v76);
      outlined destroy of PropertyList(v77);
      if (v46)
      {
        v45 = *(v31 + 2) - 1;
        goto LABEL_53;
      }
    }

    goto LABEL_49;
  }

  if (v25)
  {
LABEL_49:

    if (one-time initialization token for graphReuse != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v69, static Log.graphReuse);
    v13 = v67;
    outlined init with copy of Logger?(v53, v67);
    v48 = type metadata accessor for Logger();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v13, 1, v48) == 1)
    {
LABEL_52:

      _s2os6LoggerVSgWOhTm_2(v13, type metadata accessor for Logger?);
      return 0;
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_18D018000, v61, v62, "Reuse failed: custom inputs plist equality", v63, 2u);
      MEMORY[0x193AC4820](v63, -1, -1);
    }

LABEL_60:
    (*(v49 + 8))(v13, v48);
    return 0;
  }

LABEL_53:
  v54 = v66;
  v55 = v65;
  v72 = v45;
  v56 = v68;

  v57 = v56;
  while (v57)
  {
    v59 = v57[3];
    v58 = v57[4];
    v60 = v57[2];

    v57 = v58;
    if ((specialized project #1 <A>(_:) in _GraphInputs.reuseCustomInputs(by:indirectMap:testOnly:)(v60, &v73, &v72, v74, v75, v55, v54 & 1, v60, v59) & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t specialized project #1 <A>(_:) in _GraphInputs.reuseCustomInputs(by:indirectMap:testOnly:)(uint64_t a1, uint64_t *a2, unint64_t *a3, _OWORD *a4, __int128 *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v51 = a7;
  v52 = a6;
  v50 = a5;
  v48 = a4;
  type metadata accessor for Logger?();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  swift_beginAccess();
  v22 = *a3;
  swift_beginAccess();
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = *a2;
  if (*(*a2 + 16) < v23)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
LABEL_14:
    v33 = __swift_project_value_buffer(v47, static Log.graphReuse);
    v34 = v46;
    outlined init with copy of Logger?(v33, v46);
    v35 = type metadata accessor for Logger();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {
      _s2os6LoggerVSgWOhTm_2(v34, type metadata accessor for Logger?);
      return 0;
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v56[0] = v40;
        *v39 = 136315138;
        v41 = _typeName(_:qualified:)();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v56);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_18D018000, v37, v38, "Reuse failed: custom input %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x193AC4820](v40, -1, -1);
        v44 = v39;
        v34 = v46;
        MEMORY[0x193AC4820](v44, -1, -1);
      }

      (*(v36 + 8))(v34, v35);
      return 0;
    }
  }

  if (v22 == -1)
  {
    return 1;
  }

  v46 = v15;
  v25 = 0;
  v26 = v24 + 32;
  while (*(v26 + 8 * v25) != a1)
  {
    if (v22 + 1 == ++v25)
    {
      return 1;
    }
  }

  swift_beginAccess();
  specialized MutableCollection.swapAt(_:_:)(v25, v22);
  swift_endAccess();
  v27 = 1;
  swift_beginAccess();
  --*a3;
  if (((*(a9 + 16))(a8, a9) & 1) == 0)
  {
    v28 = v48[1];
    v56[0] = *v48;
    v56[1] = v28;
    v56[2] = v48[2];
    _GraphInputs.subscript.getter(a1, a8, a9);
    v29 = v50[1];
    v53 = *v50;
    v54 = v29;
    v55 = v50[2];
    _GraphInputs.subscript.getter(a1, a8, a9);
    v30 = (*(a9 + 32))(v21, v18, v52, v51 & 1, a8, a9);
    v31 = *(v49 + 8);
    v31(v18, AssociatedTypeWitness);
    v31(v21, AssociatedTypeWitness);
    if (v30)
    {
      return 1;
    }

    if (one-time initialization token for graphReuse == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  return v27;
}

unint64_t lazy protocol witness table accessor for type GraphReuseOptions and conformance GraphReuseOptions()
{
  result = lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions;
  if (!lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions;
  if (!lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions;
  if (!lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions;
  if (!lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphReuseOptions and conformance GraphReuseOptions);
  }

  return result;
}

uint64_t ForEach.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t ForEach.content.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t ForEach.idGenerator.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 64);

  *(v2 + v4) = v3;
  return result;
}

uint64_t ForEach.reuseID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);

  *(v2 + v4) = a1;
  return result;
}

uint64_t ForEach.init<A>(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a7;
  v40 = a2;
  v35 = a5;
  v36 = a6;
  v41 = a3;
  v42 = a4;
  v34 = a9;
  v43 = a5;
  v44 = a7;
  v45 = a8;
  v46 = a10;
  v37 = a10;
  v38 = a8;
  v15 = type metadata accessor for ForEach();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a8;
  v46 = a10;
  v19 = type metadata accessor for ForEach();
  v20 = v34;
  *(v34 + v19[17]) = 0;
  (*(*(a4 - 8) + 16))(v20, a1, a4);
  *(v20 + v19[16]) = *(a1 + *(v15 + 64));
  (*(v16 + 16))(v18, a1, v15);
  v21 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v23 = v35;
  v24 = v36;
  *(v22 + 2) = a4;
  *(v22 + 3) = v23;
  v26 = v38;
  v25 = v39;
  *(v22 + 4) = v24;
  *(v22 + 5) = v25;
  v27 = v37;
  *(v22 + 6) = v26;
  *(v22 + 7) = v27;
  v28 = v41;
  *(v22 + 8) = v40;
  *(v22 + 9) = v28;
  (*(v16 + 32))(&v22[v21], v18, v15);
  v29 = (v20 + v19[15]);
  *v29 = partial apply for closure #1 in ForEach.init<A>(_:transform:);
  v29[1] = v22;
  v30 = *(a1 + *(v15 + 72));
  v31 = *(v16 + 8);

  result = v31(a1, v15);
  *(v20 + v19[18]) = v30;
  return result;
}

uint64_t closure #1 in ForEach.init<A>(_:transform:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v22[5] = v19;
  v20 = type metadata accessor for ForEach();
  (*(a4 + *(v20 + 60)))(a1);
  a2(v14);
  return (*(v12 + 8))(v14, a8);
}

uint64_t static ForEach<>._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a1;
  v29 = *a1;
  result = static ForEach<>.makeForEachView(view:inputs:)(&v29, a2, a5, &v23);
  if (v23)
  {
    v17 = DWORD2(v23);
    v18 = HIDWORD(*(&v23 + 1));
    *a8 = v23;
    *(a8 + 8) = v17;
    *(a8 + 12) = v18;
  }

  else
  {
    *&v23 = a3;
    *(&v23 + 1) = a4;
    *&v24 = a5;
    *(&v24 + 1) = a6;
    *&v25 = a7;
    v19 = type metadata accessor for ForEach();
    v29 = v15;
    v20 = *(a2 + 48);
    v25 = *(a2 + 32);
    v26 = v20;
    v27 = *(a2 + 64);
    v28 = *(a2 + 80);
    v21 = *(a2 + 16);
    v23 = *a2;
    v24 = v21;
    WitnessTable = swift_getWitnessTable();
    return static View.makeImplicitRoot(view:inputs:)(&v29, &v23, v19, WitnessTable, a8);
  }

  return result;
}

uint64_t static ForEach<>.makeForEachView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[3];
  v37 = a2[2];
  v38 = v6;
  v39 = a2[4];
  v40 = *(a2 + 20);
  v7 = a2[1];
  v35 = *a2;
  v36 = v7;
  LODWORD(v23) = v5;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  *&v29 = type metadata accessor for ForEachSubviewCollection();
  *(&v29 + 1) = &type metadata for Subview.ID;
  *&v30 = a3;
  *(&v30 + 1) = swift_getWitnessTable();
  *&v31 = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v8 = swift_dynamicCast();
  if (v8)
  {
    MEMORY[0x1EEE9AC00](v8);
    v19 = v9;
    v10 = partial apply for closure #1 in static ForEach<>.makeForEachView(view:inputs:);
  }

  else
  {
    LODWORD(v23) = v5;
    *&v29 = type metadata accessor for ForEachSectionCollection();
    *(&v29 + 1) = &type metadata for SectionConfiguration.ID;
    *&v30 = a3;
    *(&v30 + 1) = swift_getWitnessTable();
    *&v31 = lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
    type metadata accessor for ForEach();
    type metadata accessor for _GraphValue();
    result = swift_dynamicCast();
    if (!result)
    {
      *a4 = 0;
      a4[1] = 0;
      return result;
    }

    MEMORY[0x1EEE9AC00](result);
    v19 = v12;
    v10 = partial apply for closure #2 in static ForEach<>.makeForEachViewList(view:inputs:);
  }

  _GraphValue.subscript.getter(v10, &type metadata for AnyView, &v18);
  v13 = v18;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v26 = v38;
  v27 = v39;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v15 = v37;
  v28 = v40;
  LODWORD(v25) = 0;
  v34 = v40;
  v32 = v38;
  v33 = v39;
  v29 = v35;
  v30 = v36;
  v31 = v25;
  outlined init with copy of _ViewInputs(&v35, v21);
  outlined init with copy of _ViewInputs(&v29, v21);
  _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5(v13, &v29, v20);
  outlined destroy of _ViewInputs(&v29);
  LODWORD(v25) = v15;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(v20, &v23);
    AGSubgraphEndTreeElement();
  }

  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v22 = v28;
  v21[0] = v23;
  v21[1] = v24;
  result = outlined destroy of _ViewInputs(v21);
  v16 = v20[1];
  *a4 = v20[0];
  a4[1] = v16;
  return result;
}

uint64_t ForEachState.__allocating_init(inputs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ForEachState.init(inputs:)(a1);
  return v2;
}

uint64_t closure #2 in static ForEach<>.makeForEachViewList(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for ForEachSectionCollection();
  v16 = &type metadata for SectionConfiguration.ID;
  v17 = a4;
  WitnessTable = swift_getWitnessTable();
  v19 = lazy protocol witness table accessor for type SectionConfiguration.ID and conformance SectionConfiguration.ID();
  v14[2] = type metadata accessor for ForEach();
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a8, v14, &type metadata for AnyView, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t closure #1 in static ForEach<>.makeForEachView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for ForEachSubviewCollection();
  v16 = &type metadata for Subview.ID;
  v17 = a4;
  WitnessTable = swift_getWitnessTable();
  v19 = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  v14[2] = type metadata accessor for ForEach();
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a8, v14, &type metadata for AnyView, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t static ForEachEvictionInput.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static ForEachEvictionInput.defaultValue;
}

uint64_t static ForEachEvictionInput.evictByDefault.getter()
{
  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  return static ForEachEvictionInput.evictByDefault;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance ForEachEvictionInput@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static ForEachEvictionInput.defaultValue;
  *a1 = static ForEachEvictionInput.defaultValue;
  return result;
}

uint64_t partial apply for closure #1 in ForEach.init<A>(_:transform:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = *(v1 + 40);
  v4 = *(type metadata accessor for ForEach() - 8);
  return closure #1 in ForEach.init<A>(_:transform:)(a1, *(v1 + 64), *(v1 + 72), v1 + ((*(v4 + 80) + 80) & ~*(v4 + 80)), v6, *(&v6 + 1), v3, v7);
}

uint64_t ForEachState.uneraseItem(_:)(_DWORD *a1)
{
  ++a1[6];
  *(a1 + *(*a1 + 240)) = 0;
  *(a1 + *(*a1 + 232)) = 8;
  AGSubgraphAddChild();

  return AGSubgraphApply();
}

uint64_t closure #3 in ForEachState.item(at:offset:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v22[2] = a3;
  v29 = *a2;
  v6 = v29;
  v7 = *(v29 + 104);
  v22[1] = *(*(v7 + 8) + 8);
  v8 = *(v29 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v22 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v22[0] = *a1;
  v16 = *(v6 + 160);
  swift_beginAccess();
  v17 = *(v6 + 112);
  v25 = v8;
  v26 = *(v29 + 88);
  v27 = v7;
  v28 = v17;
  v18 = type metadata accessor for ForEach();
  result = (*(*(v18 - 8) + 48))(&a2[v16], 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 16))(v15, &a2[v16], v8);
    v20 = dispatch thunk of Collection.subscript.read();
    v21 = AssociatedTypeWitness;
    (*(v9 + 16))(v11);
    v20(&v25, 0);
    (*(v12 + 8))(v15, v8);
    swift_getAtKeyPath();
    return (*(v9 + 8))(v11, v21);
  }

  return result;
}

uint64_t closure #1 in ForEachState.count(style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, _BYTE *a6, uint64_t *a7)
{
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), v32);
  if ((v33 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (a6[172] == 1)
  {
    goto LABEL_20;
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  InputValue = AGGraphGetInputValue();
  outlined init with copy of AnyTrackedValue(InputValue, v29);
  v13 = v30;
  v14 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v28 = a5;
  v15 = (*(v14 + 16))(&v28, v13, v14);
  v16 = *a4 + v15;
  if (__OFADD__(*a4, v15))
  {
    __break(1u);
LABEL_6:
    outlined init with take of AnyTrackedValue(v32, v29);
    v17 = v30;
    v18 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    result = (*(v18 + 8))(v17, v18);
    if ((a5 & 1) == 0 || (v19 = (result * (a5 >> 1)) >> 64, result *= a5 >> 1, v19 == result >> 63))
    {
      v16 = *a4 + result;
      if (!__OFADD__(*a4, result))
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  *a4 = v16;
  __swift_destroy_boxed_opaque_existential_1(v29);
  v20 = *(*a6 + 184);
  v21 = *&a6[v20];
  v22 = *(v21 + 2);
  if (!v22 || (v23 = *a7, v22 == *a7) && (v23 = *(v21 + 2), *&a6[*(*a6 + 192)] == a5))
  {
    v24 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a6[v20] = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 + 1, 1, v21);
      *&a6[v20] = v21;
    }

    v27 = *(v21 + 2);
    v26 = *(v21 + 3);
    if (v27 >= v26 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v21);
    }

    *(v21 + 2) = v27 + 1;
    *&v21[8 * v27 + 32] = v24;
    *&a6[v20] = v21;
    *&a6[*(*a6 + 192)] = a5;
    v23 = *a7;
  }

  *a7 = v23 + 1;
  return 1;
}

uint64_t closure #1 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t *, _BYTE *, uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v15 = a4;
  outlined init with copy of _ViewList_Sublist(a5, v14);
  v14[93] = 1;
  v12 = v9;
  v13 = v10;
  LOBYTE(a3) = a2(a3, &v15, v14, &v12);
  result = outlined destroy of _ViewList_Node(v14);
  *a6 = a3 & 1;
  return result;
}

uint64_t closure #1 in closure #1 in ForEachState.firstOffset<A>(forID:style:)(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v7 = *a4;
  v8 = *a5;
  if (*a4 == *a5)
  {
    return v7 != v8;
  }

  v11 = *a2;
  *a4 = v7 + 1;
  outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), v25);
  if (v26)
  {

    if (*(a7 + 172) == 1)
    {
      goto LABEL_14;
    }

    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    InputValue = AGGraphGetInputValue();
    outlined init with copy of AnyTrackedValue(InputValue, v22);
    v14 = v23;
    v15 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v21 = v11;
    v16 = (*(v15 + 16))(&v21, v14, v15);
    v17 = *a6 + v16;
    if (!__OFADD__(*a6, v16))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  outlined init with take of AnyTrackedValue(v25, v22);
  v18 = v23;
  v19 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  result = (*(v19 + 8))(v18, v19);
  if ((v11 & 1) == 0 || (v20 = (result * (v11 >> 1)) >> 64, result *= v11 >> 1, v20 == result >> 63))
  {
    v17 = *a6 + result;
    if (!__OFADD__(*a6, result))
    {
LABEL_10:
      *a6 = v17;
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v7 != v8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t protocol witness for _ViewList_SublistTransform_Item.bindID(_:) in conformance ForEachState<A, B, C>.Transform(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 8);
  if (*(v2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return ForEachState.Transform.bindID(_:)(a1, *v2, v4 | v5, *(a2 + 16), *(a2 + 24));
}

BOOL closure #1 in ForEachState.Item.invalidate()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(*a3 + 120);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v15 = *a2;
  v16 = *(v6 - 8);
  (*(v16 + 16))(&v19 - v13, a1, v6, v12);
  *&v14[*(TupleTypeMetadata2 + 48)] = v15;
  (*(v8 + 32))(v10, v14, TupleTypeMetadata2);
  v17 = *&v10[*(TupleTypeMetadata2 + 48)];

  (*(v16 + 8))(v10, v6);
  return v17 != a3;
}

uint64_t ForEachState.Item.__ivar_destroyer()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 160));
  outlined destroy of _ViewListOutputs.Views(v0 + *(*v0 + 176));
  swift_weakDestroy();
  v1 = *(*v0 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

Swift::Int ForEachState.ItemOffset.value.getter(int a1, uint64_t a2)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v3 = 0;
    if (!a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v3 = *AGGraphGetValue();
    if (!a2)
    {
      goto LABEL_21;
    }
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(*a2 + 200);
    if (*(a2 + v6) < 1)
    {
LABEL_20:

      goto LABEL_21;
    }

    v21 = ForEachState.fetchViewsPerElement()();
    if (v21.is_nil)
    {
      value = *(*v5 + 184);
      v8 = *(v5 + value);
      v9 = *(v8 + 16);
      v10 = *(a2 + v6);
      if (v9 < v10 || *(v5 + *(*v5 + 192)) != 2)
      {
        goto LABEL_18;
      }

      if (v10 - 1 >= v9)
      {
LABEL_28:
        __break(1u);
        return v21.value;
      }

      v11 = *(v8 + 8 * (v10 - 1) + 32);

      v12 = __OFADD__(v11, v3);
      v3 += v11;
      if (!v12)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    value = v21.value;

    v5 = *(a2 + v6);

    v13 = v5 * value;
    if ((v5 * value) >> 64 != (v5 * value) >> 63)
    {
      goto LABEL_26;
    }

    v12 = __OFADD__(v13, v3);
    v3 += v13;
    if (!v12)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_18:
    v20 = 2;
    v21.value = ForEachState.count(style:)(&v20);
    v14 = *(v5 + value);
    v15 = *(v14 + 16);
    v16 = *(a2 + v6);
    if (v15 < v16)
    {

      goto LABEL_20;
    }

    v17 = v16 - 1;
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    v18 = *(v14 + 8 * v17 + 32);

    v12 = __OFADD__(v18, v3);
    v3 += v18;
    if (!v12)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_21:
  v21.value = v3;
  return v21.value;
}

Swift::Int protocol witness for Rule.value.getter in conformance ForEachState<A, B, C>.ItemOffset@<X0>(Swift::Int *a1@<X8>)
{
  result = ForEachState.ItemOffset.value.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t ForEachState.ItemList.value.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  outlined init with copy of AnyTrackedValue(Value, v7);
  a2[3] = type metadata accessor for ForEachState.ItemList.WrappedList();
  a2[4] = swift_getWitnessTable();
  v5 = swift_allocObject();
  *a2 = v5;
  outlined init with take of AnyTrackedValue(v7, v5 + 16);
  *(v5 + 56) = a1;
}

void ForEachState.ItemList.WrappedList.traits.getter(SwiftUI::ViewTraitCollection *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 56))(&to, v3, v4);
  if (v1[5])
  {
    ForEachState.Item.applyTraits(to:)(&to);
  }

  a1->storage._rawValue = to.storage._rawValue;
}

uint64_t ForEachState.ItemList.WrappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = v6[3];
  v15 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  v19 = v11;
  v17 = v12;
  v18 = v13;
  return (*(v15 + 64))(a1, &v19, a3 | ((HIDWORD(a3) & 1) << 32), &v17, a5, a6, v14, v15) & 1;
}

uint64_t ForEachState.ItemList.WrappedList.print(into:)(void *a1)
{
  v2 = v1;
  v4 = a1[2];
  if (v4)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x2D68636165726F66, 0xEC0000006D657469);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    a1[2] = v4 + 1;
    v6 = 8224;
    v7 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v6 = 0x2D68636165726F66;
    v7 = 0xEC0000006D657469;
  }

  MEMORY[0x193ABEDD0](v6, v7);
  v8 = v1[5];
  if (v8)
  {

    MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0, 0xE000000000000000);

    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x20646565733A23, 0xE700000000000000);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v10);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x756F636665723A23, 0xEB0000000020746ELL);

    v11 = *v8;
    if (*(v8 + *(*v8 + 224)) == 1)
    {
      MEMORY[0x193ABEDD0](32, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x6174736E6F633A23, 0xEA0000000000746ELL);
      v11 = *v8;
    }

    if (*(v8 + *(v11 + 240)) == 1)
    {
      MEMORY[0x193ABEDD0](32, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x65766F6D65723A23, 0xE900000000000064);
    }

    if (v8[6])
    {
      IsValid = AGSubgraphIsValid();

      if (IsValid)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x64696C61766E69, 0xE700000000000000);
LABEL_15:
  }

  v13 = v2[3];
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v13);
  result = (*(v14 + 88))(a1, v13, v14);
  v15 = a1[2];
  if (!v15)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (!v16)
  {
    a1[2] = v17;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForEachState<A, B, C>.ItemList.WrappedList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ViewList.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEachState<A, B, C>.StaticViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ForEachState<A, B, C>.StaticViewIDCollection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _ViewInputs.base.modify(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ForEachState<A, B, C>.StaticViewIDCollection(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = ForEachState.StaticViewIDCollection.subscript.read(v4, *a2);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*ForEachState.StaticViewIDCollection.subscript.read(uint64_t (*result)(), uint64_t a2))()
{
  *(result + 1) = 0;
  *(result + 1) = MEMORY[0x1E69E7CC0];
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    *result = a2;
    return destroy for GlassContainer.TranslationKick;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance ForEachState<A, B, C>.StaticViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEachState<A, B, C>.StaticViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEachState<A, B, C>.StaticViewIDCollection(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEachState<A, B, C>.StaticViewIDCollection(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t ForEachState.ForEachViewIDCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = a1;
  v61 = *(a2 + 24);
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v10 + 40);
  v11 = *(*(v60 + 8) + 8);
  v12 = *(v10 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v62 = &v49 - v19;
  v20 = *(v4 + *(a2 + 88));
  if (!v20)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_19;
  }

  v21 = v6 / v20 * v20;
  if ((v6 / v20 * v20) >> 64 != v21 >> 63)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(v6, v21))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    goto LABEL_12;
  }

  v50 = v8;
  v59 = a3;
  v22 = v6 / v20;
  (*(**v4 + 96))(&v69, v6 % v20, v18);
  v23 = *(a2 + 68);
  dispatch thunk of Collection.startIndex.getter();
  v49 = v23;
  v24 = v62;
  v55 = v22;
  v25 = v4;
  v26 = v60;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v27 = *(v14 + 8);
  v57 = v14 + 8;
  v58 = AssociatedTypeWitness;
  v56 = v27;
  v28 = v27(v16, AssociatedTypeWitness);
  v54 = &v49;
  v68 = *(v25 + *(a2 + 76));
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v49 - 10;
  v29 = v61;
  *(&v49 - 8) = v12;
  *(&v49 - 7) = v29;
  v30 = *(a2 + 32);
  *(&v49 - 6) = v30;
  *(&v49 - 5) = v26;
  v53 = *(a2 + 48);
  *(&v49 - 2) = v53;
  *(&v49 - 2) = v25;
  *(&v49 - 1) = v24;
  swift_getAssociatedTypeWitness();
  v31 = MEMORY[0x1E69E6530];
  type metadata accessor for KeyPath();
  type metadata accessor for Optional();

  v32 = v29;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ForEachState.ForEachViewIDCollection.subscript.getter, v52, MEMORY[0x1E69E73E0], v31, v33, &v63);

  if (v64)
  {
    v11 = v30;
  }

  else
  {
    v11 = v63;
  }

  v34 = *(v25 + *(a2 + 72));
  v63 = v12;
  v64 = v32;
  v65 = v30;
  v66 = v26;
  v67 = v53;
  v35 = type metadata accessor for ForEach.IDGenerator();
  if (v34)
  {
    v36 = v35;
    v63 = v34;

    v37 = v51;
    v38 = v62;
    ForEach.IDGenerator.makeID(data:index:offset:)(v55, v36, v51);

    _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(v37, *(v25 + *(a2 + 84)), *(v25 + *(a2 + 80)), v11, v32);
    (*(v50 + 1))(v37, v32);
    v8 = v70;
    v39 = v58;
    v40 = v38;
    goto LABEL_15;
  }

  LODWORD(AssociatedTypeWitness) = *(v25 + *(a2 + 84));
  LOBYTE(a3) = *(v25 + *(a2 + 80));
  type metadata accessor for _AnyHashableBox<ForEachConstantID>();
  v6 = swift_allocObject();
  *(v6 + 16) = v55;
  *(v6 + 24) = AssociatedTypeWitness;
  v8 = v70;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v39 = v58;
  v40 = v62;
  v42 = *(v8 + 2);
  v41 = *(v8 + 3);
  if (v42 >= v41 >> 1)
  {
    v46 = v62;
    v47 = v58;
    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v8);
    v39 = v47;
    v8 = v48;
    v40 = v46;
  }

  *(v8 + 2) = v42 + 1;
  v43 = &v8[24 * v42];
  *(v43 + 4) = v6;
  *(v43 + 5) = v11;
  *(v43 + 12) = AssociatedTypeWitness;
  v43[52] = a3;
  v70 = v8;
LABEL_15:
  v44 = v59;
  *v59 = v69;
  v44[1] = v8;
  return v56(v40, v39);
}

uint64_t closure #1 in ForEachState.ForEachViewIDCollection.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v19 = a5;
  v20 = a7;
  v21 = a1;
  v22 = a2;
  v23 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18 - v14;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = v19;
  v24[3] = a6;
  v24[4] = v20;
  v24[5] = a9;
  type metadata accessor for ForEachState.ForEachViewIDCollection();
  v16 = dispatch thunk of Collection.subscript.read();
  (*(v13 + 16))(v15);
  v16(v24, 0);
  swift_getAtKeyPath();
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t static ForEachState.ForEachViewIDCollection.== infix(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((*(**a1 + 104))(*a2) & 1) == 0)
  {
    return 0;
  }

  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v16 = type metadata accessor for ForEachState.ForEachViewIDCollection();
  if (*(a1 + *(v16 + 80)) != *(a2 + *(v16 + 80)) || *(a1 + *(v16 + 84)) != *(a2 + *(v16 + 84)))
  {
    return 0;
  }

  MEMORY[0x1EEE9AC00](v16);
  v21[2] = a3;
  v21[3] = v17;
  v22 = 515;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v18, partial apply for closure #1 in compareValues<A>(_:_:options:), v21, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v19);
  return v23;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ForEachState<A, B, C>.ForEachViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ForEachState<A, B, C>.ForEachViewIDCollection(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = ForEachState.ForEachViewIDCollection.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

uint64_t protocol witness for Collection.indices.getter in conformance ForEachState<A, B, C>.ForEachViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance ForEachState<A, B, C>.ForEachViewIDCollection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

uint64_t protocol witness for Collection.index(after:) in conformance ForEachState<A, B, C>.ForEachViewIDCollection()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ForEachState<A, B, C>.ForEachViewIDCollection(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ForEachState<A, B, C>.ForEachViewIDCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ForEachState<A, B, C>.ForEachViewIDCollection(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ForEachState<A, B, C>.ForEachViewIDCollection(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t ForEachList.print(into:)(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x68636165726F66, 0xE700000000000000);
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    a1[2] = v4;
    v7 = 8224;
    v8 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v7 = 0x68636165726F66;
    v8 = 0xE700000000000000;
  }

  result = MEMORY[0x193ABEDD0](v7, v8);
  if ((*(a2 + 172) & 1) == 0)
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
    v9 = AGAttribute.description.getter();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x20727474613A23, 0xE700000000000000);

    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v10);

    MEMORY[0x193ABEDD0](32, 0xE100000000000000);
    MEMORY[0x193ABEDD0](0x20646565733A23, 0xE700000000000000);

    result = AGSubgraphIsValid();
    if ((result & 1) == 0)
    {
      MEMORY[0x193ABEDD0](32, 0xE100000000000000);
      result = MEMORY[0x193ABEDD0](0x64696C61766E69, 0xE700000000000000);
    }

    if (!v4)
    {
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    if (!__OFSUB__(v4, 1))
    {
      a1[2] = v4 - 1;
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForEachList<A, B, C>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ViewList.debugDescription.getter(a1, WitnessTable);
}

uint64_t ForEachChild.description.getter()
{
  MEMORY[0x193ABEDD0](0x697463656C6C6F43, 0xEB000000005B6E6FLL);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](93, 0xE100000000000000);
  return 0;
}

uint64_t initializeWithTake for ForEach(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEachState.LazyEdits(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 & 0xF8 | 7;
  v12 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v13 = *(v9 + 64);
  if (((v13 + (v12 & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v13 + (v12 & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
  {
    v14 = ((v13 + (v12 & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v14 = 16;
  }

  v15 = v10 | *(v6 + 80);
  if ((v15 & 0x1000F8) != 0 || (v14 | 1) > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + (((v15 & 0xF8 | 7u) + 16) & ~(v15 & 0xF8 | 7u)));
  }

  else
  {
    v18 = *(a2 + v14);
    if (v18 >= 2)
    {
      v18 = *a2 + 2;
    }

    if (v18 == 1)
    {
      v19 = *a2;
      v20 = a2[1];
      *a1 = v19;
      a1[1] = v20;
      *(a1 + v14) = 1;
    }

    else
    {
      v21 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
      v22 = v8;
      (*(v6 + 16))(a1, a2, v5);
      v23 = a2 + v7;
      *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      v24 = a1 + v7 + 15;
      v25 = v23 + 15;
      v26 = *(v9 + 16);

      v26(v24 & 0xFFFFFFFFFFFFFFF8, v25 & 0xFFFFFFFFFFFFFFF8, v22);
      v27 = ((v24 | 7) + v13) & 0xFFFFFFFFFFFFFFF8;
      v28 = ((v25 | 7) + v13) & 0xFFFFFFFFFFFFFFF8;
      v29 = *v28;
      *(v27 + 16) = *(v28 + 16);
      *v27 = v29;
      v30 = ((v24 | 7) + v21);
      v31 = ((v25 | 7) + v21);
      *v30 = *v31;
      v30[1] = v31[1];
      *(a1 + v14) = 0;
    }
  }

  return a1;
}

void *initializeWithCopy for ForEachState.LazyEdits(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = *(v10 + 64);
  v13 = v12 + 31;
  if (((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
  {
    v14 = ((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v14 = 16;
  }

  v15 = *(a2 + v14);
  if (v15 >= 2 && v14 != 0)
  {
    v15 = *a2 + 2;
  }

  if (v15 == 1)
  {
    v17 = 1;
    v18 = a1;
  }

  else
  {
    v28 = v9;
    (*(v6 + 16))(a1, a2, v5);
    v19 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = (v19 + v11 + 8) & ~v11;
    v22 = (v20 + v11 + 8) & ~v11;
    v23 = *(v10 + 16);

    v23(v21, v22, v28);
    v17 = 0;
    v24 = (v12 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v12 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v25 + 16);
    *v24 = *v25;
    *(v24 + 16) = v26;
    v18 = ((v13 + v21) & 0xFFFFFFFFFFFFFFF8);
    a2 = (v13 + v22) & 0xFFFFFFFFFFFFFFF8;
  }

  *v18 = *a2;
  v18[1] = *(a2 + 8);

  *(a1 + v14) = v17;
  return a1;
}

_DWORD *assignWithCopy for ForEachState.LazyEdits(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v28 = *(a3 + 16);
    v27 = *(v28 - 8);
    v5 = *(v27 + 64);
    v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = type metadata accessor for IndexSet();
    v7 = *(v29 - 8);
    v8 = *(v7 + 80) & 0xF8 | 7;
    v26 = *(v7 + 64);
    v9 = v26 + 31;
    if (((v26 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v26 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
    {
      v10 = ((v26 + 31 + ((v8 + v6 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v10 = 16;
    }

    v11 = *(a1 + v10);
    if (v11 >= 2 && v10 != 0)
    {
      v11 = *a1 + 2;
    }

    v13 = ~v8;
    if (v11 != 1)
    {
      (*(v27 + 8))(a1, v28);

      (*(v7 + 8))((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & v13, v29);
    }

    v14 = *(v4 + v10);
    if (v10)
    {
      v15 = v14 >= 2;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v14 = *v4 + 2;
    }

    if (v14 == 1)
    {
      v16 = a1;
    }

    else
    {
      (*(v27 + 16))(a1, v4, v28);
      v17 = ((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v18 = ((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v17 = *v18;
      v19 = (v17 + v8 + 8) & v13;
      v20 = (v18 + v8 + 8) & v13;
      v21 = *(v7 + 16);

      v21(v19, v20, v29);
      LOBYTE(v14) = 0;
      v22 = (v26 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v26 + 7 + v20) & 0xFFFFFFFFFFFFFFF8;
      v24 = *(v23 + 16);
      *v22 = *v23;
      *(v22 + 16) = v24;
      v16 = ((v9 + v19) & 0xFFFFFFFFFFFFFFF8);
      v4 = (v9 + v20) & 0xFFFFFFFFFFFFFFF8;
    }

    *v16 = *v4;
    v16[1] = *(v4 + 8);
    *(a1 + v10) = v14;
  }

  return a1;
}

_OWORD *initializeWithTake for ForEachState.LazyEdits(_OWORD *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80) & 0xF8 | 7;
  v12 = *(v10 + 64);
  if (((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFF0)
  {
    v13 = ((v12 + 31 + ((v11 + v8 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    v13 = 16;
  }

  v14 = *(a2 + v13);
  if (v14 >= 2 && v13 != 0)
  {
    v14 = *a2 + 2;
  }

  if (v14 == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v24 = v9;
    (*(v6 + 32))(a1, a2, v5);
    v16 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v17;
    v18 = (v16 + v11 + 8) & ~v11;
    v19 = (v17 + v11 + 8) & ~v11;
    (*(v10 + 32))(v18, v19, v24);
    LOBYTE(v14) = 0;
    v20 = (v12 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v12 + 7 + v19) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    *(v20 + 16) = *(v21 + 16);
    *v20 = v22;
    *((v12 + 31 + v18) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 31 + v19) & 0xFFFFFFFFFFFFFFF8);
  }

  *(a1 + v13) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for ForEachState.LazyEdits(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for IndexSet() - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((*(v6 + 64) + ((v5 + v7 + 8) & ~v7) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v9 = v8 | 1;
  if ((v8 | 1) <= 3)
  {
    v10 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *&a1[v9];
      if (v13)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v17 = a1[v8];
    if (v17 >= 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_27;
  }

LABEL_23:
  v15 = (v13 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return (v16 | v15) + 255;
}

void storeEnumTagSinglePayload for ForEachState.LazyEdits(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for IndexSet() - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((*(v8 + 64) + ((v7 + v9 + 8) & ~v9) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v11 = v10 | 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v11] = 0;
    }

    else if (v14)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v10] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 + 1) >> 8) + 1;
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

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v15 = a2 - 255;
  bzero(a1, v10 | 1);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_21:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t getEnumTag for ForEachState.LazyEdits(_DWORD *a1, uint64_t a2)
{
  v3 = (*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for IndexSet() - 8);
  v5 = *(v4 + 80) & 0xF8 | 7;
  v6 = ((*(v4 + 64) + ((v3 + v5 + 8) & ~v5) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 <= 0x10)
  {
    v6 = 16;
  }

  result = *(a1 + v6);
  if (result >= 2 && v6 != 0)
  {
    return (*a1 + 2);
  }

  return result;
}

void destructiveInjectEnumTag for ForEachState.LazyEdits(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (a2 > 1)
  {
    v9 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
    v10 = *(type metadata accessor for IndexSet() - 8);
    v11 = *(v10 + 80) & 0xF8 | 7;
    v12 = ((*(v10 + 64) + ((v9 + v11 + 8) & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = a2;
    }

    *(a1 + v13) = v14;
    if (v13)
    {
      bzero(a1, v13);
      *a1 = a2 - 2;
    }
  }

  else
  {
    v6 = *(type metadata accessor for IndexSet() - 8);
    v7 = *(v6 + 80) & 0xF8 | 7;
    v8 = ((*(v6 + 64) + ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
    if (v8 <= 0x10)
    {
      v8 = 16;
    }

    *(a1 + v8) = a2;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEachState.EditsBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v11 + ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + (v10 & 0xF8 | 7) + 8) & ~(v10 & 0xF8 | 7)) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v10 | *(v6 + 80);
  if ((v13 & 0x1000F8) != 0 || v12 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v13 & 0xF8 | 7u) + 16) & ~(v13 & 0xF8 | 7u)));
  }

  else
  {
    v16 = v8;
    v17 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    (*(v6 + 16))(a1, a2, v5);
    v18 = a2 + v7;
    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = a1 + v7 + 15;
    v20 = v18 + 15;
    v21 = *(v9 + 16);

    v21(v19 & 0xFFFFFFFFFFFFFFF8, v20 & 0xFFFFFFFFFFFFFFF8, v16);
    v22 = ((v19 | 7) + v11) & 0xFFFFFFFFFFFFFFF8;
    v23 = ((v20 | 7) + v11) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
    v25 = ((v19 | 7) + v17);
    v26 = ((v20 | 7) + v17);
    *v25 = *v26;
    v25[1] = v26[1];
  }

  return a1;
}

uint64_t assignWithCopy for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80) & 0xF8;
  v13 = v12 + 15;
  v14 = v7 + v12 + 15;
  v15 = ~v12 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v8 + v13) & v15;
  (*(v10 + 24))(v14 & v15, v17, v9);
  v18 = *(v11 + 40) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 16) = *(v20 + 16);
  *v19 = v21;
  v22 = (v18 & 0xFFFFFFFFFFFFFFF8) + 17;
  v23 = v22 + v16;
  v24 = v22 + v17;
  *(v22 + v16 + 7) = *(v24 + 7);

  *(v23 + 15) = *(v24 + 15);

  return a1;
}

uint64_t initializeWithTake for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80) & 0xF8;
  v13 = v12 + 15;
  v14 = v7 + v12 + 15;
  v15 = ~v12 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v8 + v13) & v15;
  (*(v10 + 32))(v14 & v15, v17, v9);
  v18 = *(v11 + 32) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  *((v18 & 0xFFFFFFFFFFFFFFF8) + 17 + v16 + 7) = *((v18 & 0xFFFFFFFFFFFFFFF8) + 17 + v17 + 7);
  return a1;
}

uint64_t assignWithTake for ForEachState.EditsBuilder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80) & 0xF8;
  v13 = v12 + 15;
  v14 = v7 + v12 + 15;
  v15 = ~v12 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v8 + v13) & v15;
  (*(v10 + 40))(v14 & v15, v17, v9);
  v18 = *(v11 + 24) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 16) = *(v20 + 16);
  *v19 = v21;
  v22 = (v18 & 0xFFFFFFFFFFFFFFF8) + 17;
  v23 = v22 + v16;
  v24 = v22 + v17;
  *(v23 + 7) = *(v24 + 7);

  *(v23 + 15) = *(v24 + 15);

  return a1;
}

uint64_t getEnumTagSinglePayload for ForEachState.EditsBuilder(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for IndexSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  if (v7 <= v10)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = *(*(v8 - 8) + 64) + 31;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + ((v13 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void storeEnumTagSinglePayload for ForEachState.EditsBuilder(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for IndexSet() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  if (v9 <= v11)
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v10 + 80) & 0xF8 | 7;
  v15 = *(v10 + 64) + 31;
  v16 = ((v15 + ((v14 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v15 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          v26 = ((v15 + v24) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v26 = a2 & 0x7FFFFFFF;
            v26[1] = 0;
          }

          else
          {
            *v26 = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((v15 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((v15 + ((v14 + ((v12 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((v15 + ((v14 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t assignWithCopy for ForEachState.Evictor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ForEachState.Evictor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t specialized Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v40 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  if (MEMORY[0x193ABF270](v13))
  {
    type metadata accessor for _SetStorage();
    v16 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v44 = MEMORY[0x193ABF2D0](v5, a2);
  if (!v44)
  {
    return v16;
  }

  v17 = 0;
  v49 = (v6 + 16);
  v50 = v16 + 56;
  v46 = v6 + 32;
  v48 = (v6 + 8);
  v41 = v6;
  v42 = v5;
  v43 = v15;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v40 != 8)
      {
        goto LABEL_23;
      }

      v52 = result;
      v19 = *v49;
      (*v49)(v15, &v52, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v47 = v21;
    v45 = *(v6 + 32);
    v45(v51, v15, a2);
    v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v23 = v16;
    v24 = -1 << *(v16 + 32);
    v25 = v22 & ~v24;
    v26 = v25 >> 6;
    v27 = *(v50 + 8 * (v25 >> 6));
    v28 = 1 << v25;
    v29 = *(v6 + 72);
    if (((1 << v25) & v27) != 0)
    {
      v30 = ~v24;
      do
      {
        v19(v8, (*(v23 + 48) + v29 * v25), a2);
        v31 = a3;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v48;
        (*v48)(v8, a2);
        if (v32)
        {
          v33(v51, a2);
          a3 = v31;
          v6 = v41;
          v5 = v42;
          v16 = v23;
          goto LABEL_7;
        }

        v25 = (v25 + 1) & v30;
        v26 = v25 >> 6;
        v27 = *(v50 + 8 * (v25 >> 6));
        v28 = 1 << v25;
        a3 = v31;
      }

      while (((1 << v25) & v27) != 0);
      v6 = v41;
      v5 = v42;
    }

    v34 = v51;
    *(v50 + 8 * v26) = v28 | v27;
    v35 = *(v23 + 48) + v29 * v25;
    v16 = v23;
    result = (v45)(v35, v34, a2);
    v37 = *(v23 + 16);
    v20 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v20)
    {
      break;
    }

    *(v23 + 16) = v38;
LABEL_7:
    v15 = v43;
    v17 = v47;
    if (v47 == v44)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ForEachList<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of IndexingIterator<IndexSet>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<IndexSet>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for _AnyHashableBox<ForEachConstantID>()
{
  if (!lazy cache variable for type metadata for _AnyHashableBox<ForEachConstantID>)
  {
    lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID();
    v0 = type metadata accessor for _AnyHashableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnyHashableBox<ForEachConstantID>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEachState.ForEachViewIDCollection(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((((((v7 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = (a1 + v6 + 8) & ~v6;
    v13 = (a2 + v6 + 8) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = ((v7 + v12) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 12) = *(v18 + 12);
    v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    *((v19 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

void *assignWithCopy for ForEachState.ForEachViewIDCollection(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v11 + v10;
  v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v12 = *(v13 & 0xFFFFFFFFFFFFFFF8);

  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 &= 0xFFFFFFFFFFFFFFF8;
  *v15 = *v14;

  *(v15 + 8) = *(v14 + 8);
  *(v15 + 12) = *(v14 + 12);
  v16 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *initializeWithTake for ForEachState.ForEachViewIDCollection(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *(v12 + 12) = *(v13 + 12);
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for ForEachState.ForEachViewIDCollection(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  *(v14 + 12) = *(v15 + 12);
  v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  *((v16 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForEachState.ForEachViewIDCollection(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for ForEachState.ForEachViewIDCollection(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t assignWithCopy for ForEachState.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t assignWithTake for ForEachState.Transform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForEachState.Transform(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for ForEachState.Transform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-5 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 4) & ~v5, (a2 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *assignWithCopy for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *initializeWithTake for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for ForEachChild(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ForEachChild(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for ForEachChild(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

uint64_t *assignWithCopy for ForEachState.ItemList.WrappedList(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for ForEachState.ItemList.WrappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t instantiation function for generic protocol witness table for ForEachState<A, B, C>.ItemList.WrappedList(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unsigned int *VersionSeed.merge(_:)(unsigned int *result)
{
  v2 = *result;
  v3 = *v1;
  if (v3 != -1 && v2 != 0)
  {
    if (v3)
    {
      v5 = v2 == -1;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v6 = (v2 | (v3 << 32)) + ~(v2 << 32);
      v7 = (v6 ^ (v6 >> 22)) + ~((v6 ^ (v6 >> 22)) << 13);
      v2 = (9 * (v7 ^ (v7 >> 8))) ^ ((9 * (v7 ^ (v7 >> 8))) >> 15);
      LODWORD(v2) = ((v2 + ~(v2 << 27)) >> 31) ^ (v2 + ~(v2 << 27));
    }

    *v1 = v2;
  }

  return result;
}

uint64_t VersionSeed.description.getter()
{
  if (!*v0)
  {
    return 0x7974706D65;
  }

  if (*v0 == -1)
  {
    return 0x64696C61766E69;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t VersionSeed.init(nodeId:viewSeed:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = (a2 | (result << 32)) + ~(a2 << 32);
  v4 = (v3 ^ (v3 >> 22)) + ~((v3 ^ (v3 >> 22)) << 13);
  v5 = (9 * (v4 ^ (v4 >> 8))) ^ ((9 * (v4 ^ (v4 >> 8))) >> 15);
  *a3 = ((v5 + ~(v5 << 27)) >> 31) ^ (v5 + ~(v5 << 27));
  return result;
}

Swift::Void __swiftcall VersionSeed.mergeValue(_:)(Swift::UInt32 a1)
{
  v2 = *v1;
  if (v2 != -1)
  {
    if (v2)
    {
      v3 = (~(a1 << 32) + a1 + (v2 << 32)) ^ ((~(a1 << 32) + a1 + (v2 << 32)) >> 22);
      v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
      v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
      a1 = (v5 >> 31) ^ v5;
    }

    *v1 = a1;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance VersionSeed()
{
  if (*v0 == -1)
  {
    return 0x64696C61766E69;
  }

  if (*v0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return 0x7974706D65;
}

Swift::Int InterfaceIdiom.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int AnyInterfaceIdiom.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(v2 + 32))(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyInterfaceIdiom()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(v2 + 32))(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyInterfaceIdiom()
{
  Hasher.init(_seed:)();
  (*(*(v0 + 8) + 32))(v2);
  return Hasher._finalize()();
}

uint64_t InterfaceIdiom.description.getter()
{
  result = 0x79616C50726163;
  switch(*v0)
  {
    case 1:
      result = 0x5579746972616C63;
      break;
    case 2:
      result = 0x6163696C706D6F63;
      break;
    case 3:
      result = 0x746567646977;
      break;
    case 4:
      result = 6513005;
      break;
    case 5:
      result = 0x6C6174614363616DLL;
      break;
    case 6:
      result = 0x656E6F6870;
      break;
    case 7:
      result = 6578544;
      break;
    case 8:
      result = 30324;
      break;
    case 9:
      result = 0x7261426863756F74;
      break;
    case 0xA:
      result = 0x6863746177;
      break;
    case 0xB:
      result = 0x6E6F69736976;
      break;
    case 0xC:
      result = 0x74696B6F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiom and conformance InterfaceIdiom()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiom and conformance InterfaceIdiom;
  if (!lazy protocol witness table cache variable for type InterfaceIdiom and conformance InterfaceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiom and conformance InterfaceIdiom);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyInterfaceIdiom and conformance AnyInterfaceIdiom()
{
  result = lazy protocol witness table cache variable for type AnyInterfaceIdiom and conformance AnyInterfaceIdiom;
  if (!lazy protocol witness table cache variable for type AnyInterfaceIdiom and conformance AnyInterfaceIdiom)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyInterfaceIdiom and conformance AnyInterfaceIdiom);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiom.Role and conformance InterfaceIdiom.Role()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiom.Role and conformance InterfaceIdiom.Role;
  if (!lazy protocol witness table cache variable for type InterfaceIdiom.Role and conformance InterfaceIdiom.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiom.Role and conformance InterfaceIdiom.Role);
  }

  return result;
}

uint64_t OffsetShape.offset.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 36));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t OffsetShape.init(shape:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for OffsetShape();
  v9 = (a3 + *(result + 36));
  *v9 = a4;
  v9[1] = a5;
  return result;
}

void (*OffsetShape.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  OffsetShape.animatableData.getter(a2, v16);
  return OffsetShape.animatableData.modify;
}

void (*protocol witness for Animatable.animatableData.modify in conformance OffsetShape<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  OffsetShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance OffsetShape<A>;
}

uint64_t OffsetShape<>.inset(by:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v17 - v10;
  (*(a2 + 32))(v7, a2, a3);
  v12 = (v3 + *(a1 + 36));
  v13 = *v12;
  v14 = v12[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Shape.offset(x:y:)(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), v13, v14);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t ScaledShape.anchor.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 40));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t ScaledShape.init(shape:scale:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for ScaledShape();
  v13 = (a3 + *(result + 36));
  *v13 = a4;
  v13[1] = a5;
  v14 = (a3 + *(result + 40));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

CGFloat ScaledShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = (v6 + *(a1 + 40));
  v14 = *v13 * a5 + a3;
  v15 = v13[1] * a6 + a4;
  CGAffineTransformMakeTranslation(&t1, -v14, -v15);
  tx = t1.tx;
  ty = t1.ty;
  v25 = *&t1.c;
  v27 = *&t1.a;
  CGAffineTransformMakeScale(&t1, *(v6 + *(a1 + 36)), *(v6 + *(a1 + 36) + 8));
  v18 = *&t1.a;
  v19 = *&t1.c;
  v20 = *&t1.tx;
  *&t1.a = v27;
  *&t1.c = v25;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v18;
  *&t2.c = v19;
  *&t2.tx = v20;
  CGAffineTransformConcat(&v29, &t1, &t2);
  v21 = v29.tx;
  v22 = v29.ty;
  v26 = *&v29.c;
  v28 = *&v29.a;
  CGAffineTransformMakeTranslation(&t1, v14, v15);
  *&t2.a = v28;
  *&t2.c = v26;
  t2.tx = v21;
  t2.ty = v22;
  v29 = t1;
  CGAffineTransformConcat(&t1, &t2, &v29);
  (*(*(a1 + 24) + 24))(&v29, *(a1 + 16), a3, a4, a5, a6);
  Path.applying(_:)(&t1.a, &t2);
  outlined destroy of Path(&v29);
  result = t2.a;
  v24 = *&t2.c;
  *a2 = *&t2.a;
  *(a2 + 16) = v24;
  *(a2 + 32) = LOBYTE(t2.tx);
  return result;
}

uint64_t ScaledShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v15 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = vmulq_f64(*(v2 + *(a1 + 40)), vdupq_n_s64(0x4060000000000000uLL));
  v15[0] = *(v2 + *(a1 + 36));
  v15[1] = v11;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  v13 = v12;
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, v15, AssociatedTypeWitness, v13, a2);
}

uint64_t OffsetShape.animatableData.setter(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  a3();
  swift_getAssociatedTypeWitness();
  a4(255);
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(a5, a6);
  v10 = type metadata accessor for AnimatablePair();
  return (*(*(v10 - 8) + 8))(a1, v10);
}

void (*ScaledShape.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  ScaledShape.animatableData.getter(a2, v16);
  return ScaledShape.animatableData.modify;
}

double protocol witness for Shape.path(in:) in conformance ScaledShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  ScaledShape.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance OffsetShape<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t), unint64_t *a6, void (*a7)(uint64_t))
{
  a4();
  swift_getAssociatedTypeWitness();
  a5(255);
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(a6, a7);
  v11 = type metadata accessor for AnimatablePair();
  return (*(*(v11 - 8) + 8))(a1, v11);
}

void (*protocol witness for Animatable.animatableData.modify in conformance ScaledShape<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  ScaledShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance ScaledShape<A>;
}

uint64_t RotatedShape.init(shape:angle:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  result = type metadata accessor for RotatedShape();
  *(a3 + *(result + 36)) = a4;
  v11 = (a3 + *(result + 40));
  *v11 = a5;
  v11[1] = a6;
  return result;
}

uint64_t RotatedShape.path(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v30 = *MEMORY[0x1E69E9840];
  v13 = (v6 + *(a1 + 40));
  v14 = *v13 * a5 + a3;
  v15 = v13[1] * a6 + a4;
  CGAffineTransformMakeTranslation(&t1, -v14, -v15);
  tx = t1.tx;
  ty = t1.ty;
  v23 = *&t1.c;
  v25 = *&t1.a;
  v18 = __sincos_stret(*(v6 + *(a1 + 36)));
  *&t1.a = v25;
  *&t1.c = v23;
  t1.tx = tx;
  t1.ty = ty;
  t2.a = v18.__cosval;
  t2.b = v18.__sinval;
  t2.c = -v18.__sinval;
  t2.d = v18.__cosval;
  t2.tx = 0.0;
  t2.ty = 0.0;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v19 = v28.tx;
  v20 = v28.ty;
  v24 = *&v28.c;
  v26 = *&v28.a;
  CGAffineTransformMakeTranslation(&t1, v14, v15);
  *&t2.c = v24;
  *&t2.a = v26;
  t2.tx = v19;
  t2.ty = v20;
  v28 = t1;
  CGAffineTransformConcat(&t1, &t2, &v28);
  (*(*(a1 + 24) + 24))(&v28, *(a1 + 16), a3, a4, a5, a6);
  Path.applying(_:)(&t1.a, &t2);
  result = outlined destroy of Path(&v28);
  v22 = *&t2.c;
  *a2 = *&t2.a;
  *(a2 + 16) = v22;
  *(a2 + 32) = LOBYTE(t2.tx);
  return result;
}

uint64_t RotatedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = (v2 + *(a1 + 40));
  v12.f64[0] = *(v2 + *(a1 + 36));
  v13 = v11[1] * 128.0;
  v12.f64[1] = *v11;
  v17 = vmulq_f64(v12, vdupq_n_s64(0x4060000000000000uLL));
  v18 = v13;
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v15 = v14;
  swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, &v17, AssociatedTypeWitness, v15, a2);
}

void (*RotatedShape.animatableData.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = a2;
  *(v6 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  RotatedShape.animatableData.getter(a2, v16);
  return RotatedShape.animatableData.modify;
}

void OffsetShape.animatableData.modify(uint64_t a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  v9 = *(*a1 + 32);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 64), v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3(*(*a1 + 72), v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

double protocol witness for Shape.path(in:) in conformance RotatedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  RotatedShape.path(in:)(a1, v9, a3, a4, a5, a6);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance RotatedShape<A>(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  *(v6 + 32) = v2;
  *(v6 + 40) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
  *v7 = AssociatedTypeWitness;
  v7[1] = v10;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v12;
  v13 = type metadata accessor for AnimatablePair();
  v7[6] = v13;
  v14 = *(v13 - 8);
  v7[7] = v14;
  v15 = *(v14 + 64);
  if (v5)
  {
    v7[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v7[8] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v7[9] = v16;
  RotatedShape.animatableData.getter(a2, v16);
  return protocol witness for Animatable.animatableData.modify in conformance RotatedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance OffsetShape<A>(uint64_t a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  v9 = *(*a1 + 40);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 64), v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3(*(*a1 + 72), v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t RotatedShape<>.inset(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v19 - v12;
  (*(a2 + 32))(v9, a2, a4);
  v14 = *(a1 + 40);
  v15 = *(v4 + *(a1 + 36));
  v16 = *(v4 + v14);
  v17 = *(v4 + v14 + 8);
  swift_getAssociatedConformanceWitness();
  Shape.rotation(_:anchor:)(AssociatedTypeWitness, a3, v15, v16, v17);
  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t Shape.rotation(_:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  (*(v11 + 32))(a2, v14, a1);
  result = type metadata accessor for RotatedShape();
  *(a2 + *(result + 36)) = a3;
  v16 = (a2 + *(result + 40));
  *v16 = a4;
  v16[1] = a5;
  return result;
}

__n128 TransformedShape.transform.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

__n128 TransformedShape.transform.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 36);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

__n128 TransformedShape.init(shape:transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for TransformedShape() + 36);
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  result = *(a2 + 32);
  *(v6 + 32) = result;
  return result;
}

double TransformedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v9, *(a1 + 16));
  v5 = (v2 + *(a1 + 36));
  v6 = v5[1];
  v12[0] = *v5;
  v12[1] = v6;
  v12[2] = v5[2];
  Path.applying(_:)(v12, v10);
  outlined destroy of Path(v9);
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v11;
  return result;
}

uint64_t TransformedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  specialized TransformedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*TransformedShape.animatableData.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  (*(v9 + 24))(v8, v9);
  return TransformedShape.animatableData.modify;
}

void TransformedShape.animatableData.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    specialized TransformedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized TransformedShape.animatableData.setter((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double protocol witness for Shape.path(in:) in conformance TransformedShape<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  TransformedShape.path(in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance TransformedShape<A>(uint64_t a1, uint64_t a2)
{
  specialized TransformedShape.animatableData.setter(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*protocol witness for Animatable.animatableData.modify in conformance TransformedShape<A>(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  TransformedShape.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance TransformedShape<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance TransformedShape<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized TransformedShape.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized TransformedShape.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Shape.offset(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  (*(v9 + 32))(a2, v12, a1);
  result = type metadata accessor for OffsetShape();
  v14 = (a2 + *(result + 36));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t Shape.scale(x:y:anchor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v13 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a1, v14);
  (*(v13 + 32))(a2, v16, a1);
  result = type metadata accessor for ScaledShape();
  v18 = (a2 + *(result + 36));
  *v18 = a3;
  v18[1] = a4;
  v19 = (a2 + *(result + 40));
  *v19 = a5;
  v19[1] = a6;
  return result;
}

__n128 Shape.transform(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  v11 = a3 + *(type metadata accessor for TransformedShape() + 36);
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v12;
  result = *(a1 + 32);
  *(v11 + 32) = result;
  return result;
}

uint64_t specialized TransformedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

float64x2_t specialized RotatedShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  *&v7 = COERCE_DOUBLE(swift_getAssociatedTypeWitness());
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>();
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>);
  v17 = *&v7;
  v18.f64[0] = v12;
  *&v18.f64[1] = AssociatedConformanceWitness;
  v19 = v14;
  v15 = type metadata accessor for AnimatablePair();
  AnimatablePair.subscript.getter(v10, &v17, v15);
  (*(v6 + 32))(v10, v5, v6);
  AnimatablePair.subscript.getter(v10, &v17, v15);
  (*(v8 + 8))(v10, v7);
  *(v3 + *(a2 + 36)) = v17 * 0.0078125;
  result = vmulq_f64(v18, vdupq_n_s64(0x3F80000000000000uLL));
  *(v3 + *(a2 + 40)) = result;
  return result;
}

float64x2_t specialized ScaledShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - v9;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(255);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
  *&v18 = AssociatedTypeWitness;
  *(&v18 + 1) = v12;
  *&v19.f64[0] = AssociatedConformanceWitness;
  *&v19.f64[1] = v14;
  v15 = type metadata accessor for AnimatablePair();
  AnimatablePair.subscript.getter(v10, &v18, v15);
  (*(v6 + 32))(v10, v5, v6);
  AnimatablePair.subscript.getter(v10, &v18, v15);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v16 = v19;
  *(v3 + *(a2 + 36)) = v18;
  result = vmulq_f64(v16, vdupq_n_s64(0x3F80000000000000uLL));
  *(v3 + *(a2 + 40)) = result;
  return result;
}

uint64_t specialized OffsetShape.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v18 - v7;
  type metadata accessor for AnimatablePair<CGFloat, CGFloat>();
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_3(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
  v18 = AssociatedTypeWitness;
  v19 = v10;
  v20 = AssociatedConformanceWitness;
  v21 = v12;
  v13 = type metadata accessor for AnimatablePair();
  AnimatablePair.subscript.getter(v8, &v18, v13);
  v14 = v18;
  v15 = v19;
  result = (*(v5 + 32))(v8, v4, v5);
  v17 = (v2 + *(a2 + 36));
  *v17 = v14;
  v17[1] = v15;
  return result;
}

uint64_t associated type witness table accessor for InsettableShape.InsetShape : InsettableShape in <> OffsetShape<A>()
{
  return associated type witness table accessor for InsettableShape.InsetShape : InsettableShape in <> OffsetShape<A>();
}

{
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t instantiation function for generic protocol witness table for <> OffsetShape<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> RotatedShape<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RotatedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for RotatedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for RotatedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t initializeWithTake for RotatedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for RotatedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for RotatedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for RotatedShape(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TransformedShape(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v10[1];
    v11 = v10[2];
    v13 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v10;
    v13[1] = v12;
    v13[2] = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for TransformedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  return a1;
}

uint64_t assignWithCopy for TransformedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v7[5] = v8[5];
  return a1;
}

uint64_t assignWithTake for TransformedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v7[3] = v8[3];
  v7[4] = v8[4];
  v7[5] = v8[5];
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for TransformedShape(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t View.containerCornerOffset(_:sizeToFit:)(char a1, char a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return View.modifier<A>(_:)(v4, a3, &type metadata for ContainerCornerOffsetLayout);
}

void ContainerCornerOffsetLayout.placement(of:in:)(int *a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = 0.0;
  if (v11 == *MEMORY[0x1E698D3F8])
  {
    v13 = 1;
    v14 = 0.0;
LABEL_3:
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    goto LABEL_4;
  }

  InputValue = AGGraphGetInputValue();
  v27 = *(InputValue + 16);
  v35 = *InputValue;
  v36 = v27;
  v38 = v6;
  v39 = v5;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v10;
  v44 = v11;
  v28 = SafeAreaInsets.resolve(regions:cornerAdaptation:in:)(-1, a2, &v38);
  v17 = -v29;
  if (v28 >= 0.0)
  {
    if (v29 >= 0.0)
    {
      if (v30 < 0.0)
      {
        v16 = -v30;
        v17 = 0.0;
        if (v31 >= 0.0)
        {
          v15 = 0.0;
          v18 = 0.0;
          goto LABEL_79;
        }

        v15 = -v31;
        v18 = 0.0;
LABEL_67:
        v13 = 0;
        v14 = 1.0;
        goto LABEL_68;
      }

      v13 = 1;
      v14 = 0.0;
      if (v31 >= 0.0)
      {
        goto LABEL_3;
      }

      v15 = -v31;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
    }

    else
    {
      if (v30 < 0.0)
      {
        v16 = -v30;
        if (v31 >= 0.0)
        {
          v15 = 0.0;
          v18 = 0.0;
          if (v29 <= 0.0)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v15 = -v31;
          v18 = 0.0;
          if (v31 >= v29)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_67;
      }

      if (v31 >= 0.0)
      {
        v13 = 1;
        v14 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        v18 = 0.0;
        if (v29 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = -v31;
        v13 = 1;
        v14 = 0.0;
        v16 = 0.0;
        v18 = 0.0;
        if (v31 >= v29)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_68:
    v32 = AGGraphGetInputValue();
    v20 = v14 * v32[1];
    v21 = *v32 - v15;
    v12 = 1.0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_69;
  }

  v18 = -v28;
  v16 = -v30;
  if (v29 >= 0.0)
  {
    if (v30 >= 0.0)
    {
      if (v31 < 0.0)
      {
        v15 = -v31;
        v14 = 0.0;
        if (v28 <= 0.0)
        {
          v13 = 1;
          v16 = 0.0;
          v17 = 0.0;
          goto LABEL_68;
        }

        v16 = 0.0;
        v17 = 0.0;
        goto LABEL_67;
      }

      v14 = 0.0;
      if (v28 <= 0.0)
      {
        v13 = 1;
        v15 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        goto LABEL_4;
      }

      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
    }

    else
    {
      if (v31 < 0.0)
      {
        v15 = -v31;
        v14 = 0.0;
        if (v30 >= v28)
        {
          v13 = 1;
          v17 = 0.0;
          goto LABEL_68;
        }

        v17 = 0.0;
        goto LABEL_67;
      }

      v14 = 0.0;
      if (v30 >= v28)
      {
        v13 = 1;
        v15 = 0.0;
        v17 = 0.0;
        goto LABEL_4;
      }

      v15 = 0.0;
      v17 = 0.0;
    }
  }

  else
  {
    v15 = -v31;
    if (v30 < 0.0)
    {
      if (v31 >= 0.0)
      {
        v14 = 0.0;
        if (v29 > 0.0)
        {
          if (v30 >= v28)
          {
            v13 = 1;
            v15 = 0.0;
            goto LABEL_68;
          }

          v15 = 0.0;
          goto LABEL_67;
        }

        if (v30 >= v28)
        {
          v13 = 1;
          v15 = 0.0;
          goto LABEL_4;
        }

        v15 = 0.0;
      }

      else
      {
        if (v31 < v29)
        {
          if (v30 >= v28)
          {
            v13 = 1;
            v14 = 0.0;
            goto LABEL_68;
          }

          goto LABEL_67;
        }

        if (v30 >= v28)
        {
          v13 = 1;
          v14 = 0.0;
          goto LABEL_4;
        }
      }

      goto LABEL_79;
    }

    v14 = 0.0;
    if (v31 >= 0.0)
    {
      if (v29 > 0.0)
      {
        if (v28 <= 0.0)
        {
          v13 = 1;
          v15 = 0.0;
          v16 = 0.0;
          goto LABEL_68;
        }

        v15 = 0.0;
        goto LABEL_66;
      }

      if (v28 <= 0.0)
      {
        v13 = 1;
        v15 = 0.0;
        v16 = 0.0;
        goto LABEL_4;
      }

      v15 = 0.0;
    }

    else
    {
      if (v31 < v29)
      {
        if (v28 <= 0.0)
        {
          v13 = 1;
          v16 = 0.0;
          goto LABEL_68;
        }

LABEL_66:
        v16 = 0.0;
        goto LABEL_67;
      }

      if (v28 <= 0.0)
      {
        v13 = 1;
        v16 = 0.0;
        goto LABEL_4;
      }
    }

    v16 = 0.0;
  }

LABEL_79:
  v13 = 0;
  v14 = 1.0;
LABEL_4:
  v19 = AGGraphGetInputValue();
  v20 = v14 * v19[1];
  v21 = v17 + *v19 * 0.0;
  if ((a2 & 0x100) == 0)
  {
LABEL_5:
    v38 = v6;
    v39 = v5;
    v40 = v7;
    v41 = v8;
    v42 = v9;
    v43 = v10;
    v44 = v11;
    _PositionAwarePlacementContext.proposedSize.getter(&v35);
    v22 = *&v35;
    v23 = BYTE8(v35);
    v24 = v36;
    v25 = v37;
    goto LABEL_73;
  }

LABEL_69:
  v33 = AGGraphGetInputValue();
  v23 = 0;
  v25 = 0;
  v22 = *v33 - (v15 + v17);
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  v24 = v33[1] - (v16 + v18);
  if (v24 < 0.0)
  {
    v24 = 0.0;
  }

LABEL_73:
  v34 = -v16;
  if (v13)
  {
    v34 = v18;
  }

  LOBYTE(v38) = v23;
  LOBYTE(v35) = v25;
  *a3 = v22;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v25;
  *(a3 + 32) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = v21;
  *(a3 + 56) = v20 + v34;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance ContainerCornerOffsetLayout(int *a1@<X1>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  ContainerCornerOffsetLayout.placement(of:in:)(a1, v3 | *v2, a2);
}

unint64_t instantiation function for generic protocol witness table for ContainerCornerOffsetLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContainerCornerOffsetLayout and conformance ContainerCornerOffsetLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static ResizeLogs.size(_:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0x657A6973206F6E28;
  }

  v4 = Double.description.getter();
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](979902508, 0xE400000000000000);
  v5 = Double.description.getter();
  MEMORY[0x193ABEDD0](v5);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 3831592;
}

unint64_t specialized static ResizeLogs.proposal(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  result = 0xD000000000000011;
  v6 = byte_1EAB0C548;
  v7 = byte_1EAB0C558;
  if (v2)
  {
    if (!byte_1EAB0C548)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*&static _ProposedSize.zero != v1)
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    if (byte_1EAB0C558)
    {
      return result;
    }
  }

  else
  {
    if (*&qword_1EAB0C550 != v3)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

LABEL_11:
  if (one-time initialization token for infinity != -1)
  {
    swift_once();
    result = 0xD000000000000011;
  }

  v8 = byte_1EAB10040;
  v9 = byte_1EAB10050;
  if (v2)
  {
    if (!byte_1EAB10040)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (*&static _ProposedSize.infinity != v1)
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_21;
    }
  }

  if ((v4 & 1) == 0)
  {
    if (*&qword_1EAB10048 != v3)
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_21;
    }

    return 0xD000000000000015;
  }

  if (byte_1EAB10050)
  {
    return 0xD000000000000015;
  }

LABEL_21:
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
    result = 0xD000000000000011;
  }

  v10 = byte_1ED52ECF8;
  v11 = byte_1ED52ED08;
  if (v2)
  {
    if (!byte_1ED52ECF8)
    {
      return result;
    }
  }

  else
  {
    if (*&static _ProposedSize.unspecified != v1)
    {
      v10 = 1;
    }

    if (v10)
    {
      return result;
    }
  }

  if (v4)
  {
    if ((byte_1ED52ED08 & 1) == 0)
    {
      return result;
    }

    return 0xD000000000000018;
  }

  if (*&qword_1ED52ED00 != v3)
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    return 0xD000000000000018;
  }

  return result;
}

unint64_t specialized static ResizeLogs.animation(_:)(uint64_t a1)
{
  v1 = 0xD000000000000010;
  if (a1 != 1)
  {

    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v3);
    if (v4 && (v5 = v4[9]) != 0)
    {
      v9[0] = 0;
      v9[1] = 0xE000000000000000;

      _StringGuts.grow(_:)(29);

      v10 = 0xD00000000000001BLL;
      v11 = 0x800000018DD831A0;
      (*(*v5 + 88))(v9, v6);
      type metadata accessor for CustomAnimation();
      v7 = String.init<A>(describing:)();
      MEMORY[0x193ABEDD0](v7);

      outlined consume of Transaction?(a1);
      return v10;
    }

    else
    {
      outlined consume of Transaction?(a1);
      return 0xD00000000000001DLL;
    }
  }

  return v1;
}

unint64_t type metadata accessor for CustomAnimation()
{
  result = lazy cache variable for type metadata for CustomAnimation;
  if (!lazy cache variable for type metadata for CustomAnimation)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CustomAnimation);
  }

  return result;
}

uint64_t _ColorMultiplyEffect.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void _ColorMultiplyEffect.resolve(in:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *a3 = (*(*a2 + 112))(&v7);
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
}

float _ColorMultiplyEffect._Resolved.animatableData.getter()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v4 = *(v0 + 8);
  v3 = *(v0 + 12);
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v6, v2, v1, v4, v3);
    v2 = v6.f32[0];
  }

  return v2 * 128.0;
}

void _ColorMultiplyEffect._Resolved.animatableData.setter(float a1, float a2, float a3, float a4)
{
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = a1;
    swift_once();
    a1 = v15;
    a2 = v14;
    a3 = v13;
    a4 = v12;
  }

  v5 = a1 * 0.0078125;
  v6 = a2 * 0.0078125;
  v7 = a3 * 0.0078125;
  v8 = a4 * 0.0078125;
  swift_beginAccess();
  if ((static Color.Resolved.legacyInterpolation & 1) == 0)
  {
    v19 = 2;
    v16 = __PAIR64__(LODWORD(v6), LODWORD(v5));
    v17 = v7;
    v18 = v8;
    v5 = ResolvedGradient.ColorSpace.convertOut(_:)(&v16);
    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
}

void (*_ColorMultiplyEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v8 = *v1;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v5 = v8;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v9, v8.f32[0], v8.u32[1], v8.f32[2], v8.f32[3]);
    v5 = v9;
  }

  v6.i64[0] = 0x4300000043000000;
  v6.i64[1] = 0x4300000043000000;
  v4[2] = vmulq_f32(v5, v6);
  return _ColorMultiplyEffect._Resolved.animatableData.modify;
}

void _ColorMultiplyEffect._Resolved.animatableData.modify(uint64_t a1)
{
  v1 = *a1;
  _ColorMultiplyEffect._Resolved.animatableData.setter(*(*a1 + 32), *(*a1 + 36), *(*a1 + 40), *(*a1 + 44));

  free(v1);
}

double _ColorMultiplyEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ColorMultiplyEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void protocol witness for Animatable.animatableData.getter in conformance _ColorMultiplyEffect._Resolved(uint64_t a1@<X8>)
{
  *a1 = _ColorMultiplyEffect._Resolved.animatableData.getter();
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ColorMultiplyEffect._Resolved(uint64_t **a1))(void *a1)
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
  v2[4] = _ColorMultiplyEffect._Resolved.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t static _ColorMultiplyEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

unint64_t instantiation function for generic protocol witness table for _ColorMultiplyEffect._Resolved(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ColorMultiplyEffect._Resolved and conformance _ColorMultiplyEffect._Resolved();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s7SwiftUI14AnimatablePairVySfACySfACyS2fGGGACyxq_GAA16VectorArithmeticAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for Canvas.renderer : <A>Canvas<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1, double *a2)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Canvas() + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout GraphicsContext, @unowned CGSize) -> ();
  a2[1] = v6;
}

uint64_t key path setter for Canvas.renderer : <A>Canvas<A>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for Canvas() + 36));

  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@inout GraphicsContext, @in_guaranteed CGSize) -> (@out ());
  v6[1] = v5;
  return result;
}

uint64_t Canvas.renderer.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t Canvas.renderer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Canvas.isOpaque.setter(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + *(a2 + 40) + 8) = *(v2 + *(a2 + 40) + 8) & 0xFFFFFFFD | v3;
  return result;
}

uint64_t (*Canvas.isOpaque.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v2 + *(a2 + 40) + 8) & 2) != 0;
  return Canvas.isOpaque.modify;
}

uint64_t Canvas.isOpaque.modify(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v1 = *(result + 8) + *(*result + 40);
  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t (*Canvas.colorMode.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + *(a2 + 40) + 4);
  return Canvas.colorMode.modify;
}

uint64_t Canvas.rendersAsynchronously.setter(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + *(a2 + 40) + 8) = *(v2 + *(a2 + 40) + 8) & 0xFFFFFFFB | v3;
  return result;
}

uint64_t (*Canvas.rendersAsynchronously.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v2 + *(a2 + 40) + 8) & 4) != 0;
  return Canvas.rendersAsynchronously.modify;
}

uint64_t Canvas.rendersAsynchronously.modify(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v1 = *(result + 8) + *(*result + 40);
  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFB | v2;
  return result;
}

uint64_t Canvas.rendersFirstFrameAsynchronously.setter(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + *(a2 + 40) + 8) = *(v2 + *(a2 + 40) + 8) & 0xFFFFFFEF | v3;
  return result;
}

uint64_t (*Canvas.rendersFirstFrameAsynchronously.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v2 + *(a2 + 40) + 8) & 0x10) != 0;
  return Canvas.rendersFirstFrameAsynchronously.modify;
}

uint64_t Canvas.rendersFirstFrameAsynchronously.modify(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  v1 = *(result + 8) + *(*result + 40);
  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*Canvas.isAccelerated.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v2 + *(a2 + 40) + 8) & 1;
  return Canvas.isAccelerated.modify;
}

uint64_t Canvas.isAccelerated.modify(uint64_t result)
{
  v1 = *(result + 8) + *(*result + 40);
  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFFE | *(result + 16);
  return result;
}

uint64_t Canvas.allowsPackedDrawable.setter(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(v2 + *(a2 + 40) + 8) = *(v2 + *(a2 + 40) + 8) & 0xFFFFFFDF | v3;
  return result;
}

uint64_t (*Canvas.allowsPackedDrawable.modify(uint64_t a1, uint64_t a2))(uint64_t result)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = (*(v2 + *(a2 + 40) + 8) & 0x20) != 0;
  return Canvas.allowsPackedDrawable.modify;
}

uint64_t Canvas.allowsPackedDrawable.modify(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  v1 = *(result + 8) + *(*result + 40);
  *(v1 + 8) = *(v1 + 8) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  if (one-time initialization token for defaultFlags != -1)
  {
    v10 = result;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = a3;
    swift_once();
    result = v10;
    a3 = v14;
    a4 = v13;
    a5 = v12;
    a6 = v11;
  }

  v7 = static RasterizationOptions.Flags.defaultFlags | 3;
  if ((result & 1) == 0)
  {
    v7 = (static RasterizationOptions.Flags.defaultFlags & 0xFFFFFFF8) + 1;
  }

  v8 = v7 & 0xFFFFFFFB;
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 16) = -1;
  if (a3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *(a6 + 20) = v6;
  *(a6 + 21) = 3;
  *(a6 + 24) = v8 | v9;
  *(a6 + 28) = 3;
  return result;
}

uint64_t SymbolRenderer.__ivar_destroyer()
{
}

uint64_t closure #1 in closure #1 in CanvasSymbols.updateValue()(uint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, char **a6)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = *(a1 + 56);
  v69 = *(a1 + 40);
  v70 = v10;
  *v71 = *(a1 + 72);
  *&v71[16] = *(a1 + 88);
  v68[0] = *(a1 + 8);
  v68[1] = v9;
  v64 = v68[0];
  v49 = *(&v9 + 1);
  v11 = v9;
  v12 = v69;
  v13 = *(a1 + 44);
  v14 = *(a1 + 60);
  v63 = *(a1 + 76);
  v62 = v14;
  v61 = v13;
  v15 = *&v71[12];
  swift_beginAccess();
  v16 = v11[3];
  v72[1] = v11[2];
  v72[2] = v16;
  v17 = v11[5];
  v72[3] = v11[4];
  v72[4] = v17;
  v72[0] = v11[1];
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v48 = swift_allocObject();
  memmove((v48 + 16), v11 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v68, &v52);
  outlined init with copy of CachedEnvironment(v72, &v52);

  v18 = *MEMORY[0x1E698D3F8];
  LODWORD(v52) = *(a1 + 80);
  DWORD1(v52) = v18;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize();
  v50 = Attribute.init<A>(body:value:flags:update:)();
  v47 = v12 | 0x10;
  v19 = a2[9];
  v51 = 0;
  *&v52 = v19;
  v20 = 0;
  v21 = 0;
  if (_ViewList_SublistSubgraphStorage.isValid.getter())
  {
    v22 = a2[7];
    v23 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v22);
    v52 = v64;
    v53 = v48;
    v54 = v49;
    v55 = v47;
    v56 = v61;
    v57 = v62;
    v58 = v63;
    v59 = v50;
    v60 = v15;
    (*(v23 + 16))(&v65, &v51, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:), 0, v22, v23);
    v20 = *(&v65 + 1);
    v21 = v65;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v42 = v15;
    v43 = a6;
    if (v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](isEscapingClosureAtFileLocation);
    MEMORY[0x1EEE9AC00](v26);
    AGGraphMutateAttribute();
    *&v52 = a2[9];

    v27 = _ViewList_SublistSubgraphStorage.retain()();

    v28 = *(a1 + 112);
    v29 = a2[10];
    v30 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v25);

    if ((v30 & 0x100000000) != 0)
    {
      v31 = v18;
    }

    else
    {
      v31 = v30;
    }

    LOBYTE(v52) = 1;
    type metadata accessor for DisplayList.GraphicsRenderer();
    swift_allocObject();
    v32 = DisplayList.GraphicsRenderer.init(platformViewMode:)(&v52);
    v18 = v43;
    *&v65 = a3;
    *(&v65 + 1) = v27;
    LODWORD(v66) = v28;
    *(&v66 + 1) = v29;
    *&v67 = __PAIR64__(v31, v50);
    *(&v67 + 1) = v32;

    v33 = a3;
    outlined init with copy of CanvasSymbols.Child(&v65, &v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52 = *(a1 + 104);
    *(a1 + 104) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v65, a4, a5, isUniquelyReferenced_nonNull_native);

    *(a1 + 104) = v52;
    v20 = *v43;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v20;
    if (v35)
    {
      goto LABEL_11;
    }
  }

  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
  *v18 = v20;
LABEL_11:
  v37 = *(v20 + 2);
  v36 = *(v20 + 3);
  if (v37 >= v36 >> 1)
  {
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v20);
    *v18 = v20;
  }

  *(v20 + 2) = v37 + 1;
  v38 = &v20[48 * v37];
  v39 = v67;
  v40 = v65;
  *(v38 + 3) = v66;
  *(v38 + 4) = v39;
  *(v38 + 2) = v40;
  v52 = v64;
  v53 = v48;
  v54 = v49;
  v55 = v47;
  v56 = v61;
  v57 = v62;
  v58 = v63;
  v59 = v50;
  v60 = v42;
  return outlined destroy of _ViewInputs(&v52);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH13CanvasSymbols027_F41195D4CD7D6A29110580DFD3R4F891LLV5ChildVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI13o11Symbols027_qrstuv2Q4w4LLV5X4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlQIsgnndzo_Tf1nc_n03_s7i4UI13o11Symbols027_qrstuv2F4w26LLV11updateValueyyFSbAA12_kl5_IDV9n9V3key_AD5X16V5valuet_tXEfU0_AOTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t (*a1)(uint64_t)@<X3>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for Canvas();
  result = a1(v4);
  *a2 = result & 1;
  return result;
}

uint64_t keypath_set_8Tm(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = type metadata accessor for Canvas();
  return a5(v6, v7);
}

uint64_t *initializeBufferWithCopyOfBuffer for Canvas(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 14 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
    v15 = *(v14 + 5);
    *v13 = *v14;
    *(v13 + 5) = v15;
    *(v13 + 13) = *(v14 + 13);
  }

  return v3;
}

uint64_t initializeWithTake for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 5);
  *v9 = *v10;
  *(v9 + 5) = v11;
  *(v9 + 13) = *(v10 + 13);
  return a1;
}

uint64_t assignWithTake for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 19;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 4) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 4);
  *(v10 + 5) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 5);
  *(v10 + 8) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v10 + 12) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 12);
  *(v10 + 13) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 13);
  return a1;
}

uint64_t getEnumTagSinglePayload for SymbolRenderer.CachedResolvedSymbol(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SymbolRenderer.CachedResolvedSymbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SymbolRenderer.CachedResolvedSymbol(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
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

uint64_t assignWithCopy for CanvasDisplayList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for CanvasDisplayList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for CanvasDisplayList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for CanvasDisplayList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for CanvasSymbols(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for CanvasSymbols(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for CanvasSymbols(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t storeEnumTagSinglePayload for CanvasSymbols(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for CanvasSymbols.Child(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for CanvasSymbols(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CanvasSymbols and conformance CanvasSymbols();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize()
{
  result = lazy protocol witness table cache variable for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize;
  if (!lazy protocol witness table cache variable for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout GraphicsContext, @in_guaranteed CGSize) -> (@out ())(uint64_t a1, double a2, double a3)
{
  v4 = *(v3 + 16);
  *v6 = a2;
  *&v6[1] = a3;
  return v4(a1, v6);
}

unint64_t instantiation function for generic protocol witness table for CanvasSymbols.SymbolSize(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CanvasSymbols.SymbolSize and conformance CanvasSymbols.SymbolSize();
  *(a1 + 8) = result;
  return result;
}

float ColorView.init(_:isAntialiased:allowedDynamicRange:)@<S0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 20) = a2;
  *(a4 + 21) = v4;
  return result;
}

float ColorView.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ColorView.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

unint64_t static ColorView._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v5;
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v14[0] = v9[0];
  v14[1] = v6;
  v14[2] = v10;
  v8 = v4;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9ColorViewV_Tt1B5(&v8, v14);
  return _s7SwiftUI16RendererLeafViewPAAE04makedE04view6inputsAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVtFZAA05ColorE0V_Tt2B5(v8, v9, a3);
}

void *ColorView.descriptionAttributes.getter()
{
  v1 = *v0;
  v2 = -COERCE_FLOAT(*v0);
  if (COERCE_FLOAT(*v0) > 0.0)
  {
    LODWORD(v2) = *v0;
  }

  if (v2 > 0.0031308 && v2 != 1.0)
  {
    v10 = *v0;
    powf(v2, 0.41667);
    v1 = v10;
  }

  v3 = -*(&v1 + 1);
  if (*(&v1 + 1) > 0.0)
  {
    v3 = *(&v1 + 1);
  }

  if (v3 > 0.0031308 && v3 != 1.0)
  {
    v11 = DWORD2(v1);
    powf(v3, 0.41667);
    DWORD2(v1) = v11;
  }

  v4 = -*(&v1 + 2);
  if (*(&v1 + 2) > 0.0)
  {
    v4 = *(&v1 + 2);
  }

  if (v4 > 0.0031308 && v4 != 1.0)
  {
    powf(v4, 0.41667);
  }

  type metadata accessor for (Float, Float, Float, Float)();
  _print_unlocked<A, B>(_:_:)();
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[4 * v7];
  v8[4] = 0x726F6C6F63;
  v8[5] = 0xE500000000000000;
  v8[6] = 0;
  v8[7] = 0xE000000000000000;
  return v5;
}

uint64_t ColorView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = 0;
  v7 = *(v5 + 12) <= 0.0 || result == 0;
  if (!v7 && a2)
  {
    v8 = 0;
    v9 = 16 * a2;
    v10 = (result + 8);
    do
    {
      v11 = *(v10 - 1);
      v12 = fmin(v11, *v10);
      v13 = v11 < a4;
      if (*v10 >= a5)
      {
        v13 = 0;
      }

      if (v12 < 0.0)
      {
        v13 = 0;
      }

      if (v8 < 0x41)
      {
        if (v8 == 64)
        {
          v14 = 0;
          if (!v13)
          {
LABEL_18:
            v6 &= ~v14;
            goto LABEL_8;
          }
        }

        else
        {
          v14 = 1 << v8;
          if (!v13)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v14 = 0;
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v6 |= v14;
LABEL_8:
      v10 += 2;
      ++v8;
      v9 -= 16;
    }

    while (v9);
  }

  *a3 = v6;
  return result;
}

__n128 ColorView.content()@<Q0>(uint64_t *a1@<X8>)
{
  v3 = v1[1].n128_u32[0];
  v4 = v1[1].n128_u8[5];
  v5 = swift_allocObject();
  result = *v1;
  *(v5 + 16) = *v1;
  *(v5 + 32) = v3;
  *(v5 + 36) = 1;
  *(v5 + 37) = v4;
  *a1 = v5 | 0x1000000000000000;
  return result;
}

void ColorView.animatableData.getter(float32x4_t *a1@<X8>)
{
  v6 = *v1;
  v3 = v1[1].i32[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v6;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v7, v6.f32[0], v6.u32[1], v6.f32[2], v6.f32[3]);
    v4 = v7;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  *a1 = vmulq_f32(v4, v5);
  a1[1].i32[0] = v3;
}

float key path getter for ColorView.animatableData : ColorView@<S0>(__int128 *a1@<X0>, float32x4_t *a2@<X8>)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  ColorView.animatableData.getter(&v7);
  result = v8;
  *a2 = v7;
  a2[1].f32[0] = result;
  return result;
}

float ColorView.animatableData.setter(float32x4_t *a1)
{
  v1 = a1[1].i32[0];
  v3 = *a1;
  v4 = v1;
  Color.ResolvedHDR.animatableData.setter(&v3);
  return result;
}