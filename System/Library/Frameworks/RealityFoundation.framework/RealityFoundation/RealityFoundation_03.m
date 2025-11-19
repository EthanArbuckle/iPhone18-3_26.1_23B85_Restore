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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19REMaterialAssetTypeV_10RealityKit8Material_ps13OpaquePointerV_AE26__RKMaterialParameterBlockV0G10Foundation19DirectUniformsStateOSgtctGMd, &_ss23_ContiguousArrayStorageCySo19REMaterialAssetTypeV_10RealityKit8Material_ps13OpaquePointerV_AE26__RKMaterialParameterBlockV0G10Foundation19DirectUniformsStateOSgtctGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19REMaterialAssetTypeV_yyctMd, &_sSo19REMaterialAssetTypeV_yyctMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22MeshInstancesComponentV4PartVSgGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22MeshInstancesComponentV4PartVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit27__RKRuntimeSceneCoordinatorC12WeakObserver33_896B2FD40EBECAD6FA53729956690E0BLLVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit27__RKRuntimeSceneCoordinatorC12WeakObserver33_896B2FD40EBECAD6FA53729956690E0BLLVGMR);
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
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit23__RKActiveSceneObserver_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit23__RKActiveSceneObserver_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKActiveSceneObserver_pMd, &_s10RealityKit23__RKActiveSceneObserver_pMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySS_SStGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySS_SStGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySS_SStGtMd, &_sSS_SaySS_SStGtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAH_pGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAH_pGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[38 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 304 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAIGGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAIGGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 432);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[54 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 432 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC20PiecewiseBezierCurveAELLVGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC20PiecewiseBezierCurveAELLVGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA20PiecewiseBezierCurveACLLVGMd, &_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA20PiecewiseBezierCurveACLLVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_10RealityKit6EntityCtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_10RealityKit6EntityCtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10RealityKit6EntityCtMd, &_ss6UInt64V_10RealityKit6EntityCtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtMd, &_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC22PiecewiseLinearPolygonAELLVySrys5SIMD2VySdGGGGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC22PiecewiseLinearPolygonAELLVySrys5SIMD2VySdGGGGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA22PiecewiseLinearPolygonACLLVySrys5SIMD2VySdGGGGMd, &_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA22PiecewiseLinearPolygonACLLVySrys5SIMD2VySdGGGGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation15JointTransformsVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15JointTransformsVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation17BlendShapeWeightsVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17BlendShapeWeightsVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation27SpatialPhotoStereoAggressorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation27SpatialPhotoStereoAggressorVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation21TriangleOpacityResultOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21TriangleOpacityResultOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPys4Int8VGGMd, &_ss23_ContiguousArrayStorageCySPys4Int8VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo34RESkeletalModelSpacePoseDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo34RESkeletalModelSpacePoseDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo24RESkeletalPoseDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo24RESkeletalPoseDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC8ObserverC3LogVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC8ObserverC3LogVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySPySPys4Int8VGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo24REBlendWeightsDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo24REBlendWeightsDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation7ContactVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation7ContactVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation12PhysicsJoint_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12PhysicsJoint_pGMR, &_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR, &_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMR, &_s17RealityFoundation15ForceEffectBase_pMd, &_s17RealityFoundation15ForceEffectBase_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR, &_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit9Component_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9Component_pGMR, &_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMR, &_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMR, &_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd, &_sSaySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo13simd_float4x4aGGMd, &_ss23_ContiguousArrayStorageCySaySo13simd_float4x4aGGMR, &_sSaySo13simd_float4x4aGMd, &_sSaySo13simd_float4x4aGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo5RESRTaGGMd, &_ss23_ContiguousArrayStorageCySaySo5RESRTaGGMR, &_sSaySo5RESRTaGMd, &_sSaySo5RESRTaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR, &_sSaySPys4Int8VGGMd, &_sSaySPys4Int8VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pGMR, &_s17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineConditionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineConditionProtocol_pGMR, &_s17RealityFoundation29StateMachineConditionProtocol_pMd, &_s17RealityFoundation29StateMachineConditionProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation19StateMachineCommand_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19StateMachineCommand_pGMR, &_s17RealityFoundation19StateMachineCommand_pMd, &_s17RealityFoundation19StateMachineCommand_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGGMR, &_sSay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMd, &_sSay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation12VFXParameter_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12VFXParameter_pGMR, &_s17RealityFoundation12VFXParameter_pMd, &_s17RealityFoundation12VFXParameter_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMR, &_sSay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_sSay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR, MEMORY[0x1E6968E10]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV17RotorTypeInternalOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV17RotorTypeInternalOGMR, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV13CustomContentVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV13CustomContentVGMR, type metadata accessor for AccessibilityComponent.CustomContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, type metadata accessor for __RKEntityInteractionSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, type metadata accessor for __RKEntityTriggerSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, type metadata accessor for __RKEntityActionSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGMR, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR, type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMR, &_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMR, type metadata accessor for __SceneResourceCache.ImportedScene);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC08ImportedF0VGMR, type metadata accessor for __SceneImportOperation.ImportedScene);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit5SceneC5scene_So5RERaya3rayScCy0D10Foundation12PixelCastHitVSgs5Error_pG12continuationtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit5SceneC5scene_So5RERaya3rayScCy0D10Foundation12PixelCastHitVSgs5Error_pG12continuationtGMR, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 48 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 80);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 80 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV10ConstraintV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV5JointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10RealityKit17AnimationResourceC5valuet_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8InstanceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8Level_v1V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12SkeletalPoseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE4PartV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 + 31;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 6);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation11IKComponentV10ConstraintC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12PhysicsJoint_p_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation23ExtrudedGlyphDescriptorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedGlyphDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedGlyphDescriptorVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation13AudioMixGroupV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 5) + (v9 >> 63));
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 16 * v5);
    v4 += 16 * v5;
  }

  return v4;
}

uint64_t keypath_set_166Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 208);

  result = a5(v8);
  *(a2 + 208) = v7;
  return result;
}

uint64_t keypath_set_170Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 216);

  result = a5(v8);
  *(a2 + 216) = v7;
  return result;
}

uint64_t keypath_set_174Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 224);

  result = a5(v8);
  *(a2 + 224) = v7;
  return result;
}

void type metadata completion function for FromToByAnimation(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v3 <= 0x3F)
    {
      type metadata accessor for [String]?();
      if (v4 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FromToByAnimation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 >= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v4 + 80);
  if (v11 >= a2)
  {
    goto LABEL_37;
  }

  v13 = ((((((v10 + ((v10 + v12 + ((v10 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v11;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (v19)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (v19)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if ((v9 & 0x80000000) == 0)
    {
      v22 = *(a1 + 144);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    if (v5 >= 2)
    {
      v23 = (*(v4 + 48))((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12);
      v24 = v23 >= 2;
      result = v23 - 2;
      if (result != 0 && v24)
      {
        return result;
      }
    }

    return 0;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = *(a1 + v13);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_33:
  v20 = v19 - 1;
  if (v15)
  {
    v20 = 0;
    LODWORD(v15) = *a1;
  }

  return v11 + (v15 | v20) + 1;
}

void storeEnumTagSinglePayload for FromToByAnimation(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (!v7)
  {
    ++v8;
  }

  if (v7 >= 2)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v8 + 1;
  }

  v12 = *(v6 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  v14 = ((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 < a3)
  {
    v15 = a3 - v13;
    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v13;
    }

    else
    {
      v18 = 1;
    }

    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v13 + a2;
      v20 = a1;
      bzero(a1, ((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v20;
      *v20 = v19;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v14) = v18;
      }

      else
      {
        *(a1 + v14) = v18;
      }
    }

    else if (v5)
    {
      *(a1 + v14) = v18;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v14) = 0;
  }

  else if (v5)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v10 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 17) = 0u;
      *(a1 + 15) = 0u;
      *(a1 + 13) = 0u;
      *(a1 + 11) = 0u;
      *(a1 + 9) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 1) = 0u;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[18] = a2 - 1;
    }

    return;
  }

  v21 = (((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;
  if (v10 >= a2)
  {
    if (a2 + 1 <= v9)
    {
      if (a2 != -1 && v7 >= 2)
      {
        v26 = *(v6 + 56);
        v27 = a2 + 2;
        v28 = (((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;

        v26(v28, v27);
      }
    }

    else
    {
      if (v8 <= 3)
      {
        v25 = ~(-1 << (8 * v8));
      }

      else
      {
        v25 = -1;
      }

      if (v8)
      {
        v23 = v25 & (a2 - v9);
        if (v8 <= 3)
        {
          v24 = v8;
        }

        else
        {
          v24 = 4;
        }

        bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12), v8);
        if (v24 <= 2)
        {
          if (v24 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_74;
        }

LABEL_80:
        if (v24 == 3)
        {
          *v21 = v23;
          *(v21 + 2) = BYTE2(v23);
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v22 = ~(-1 << (8 * v11));
    }

    else
    {
      v22 = -1;
    }

    if (v11)
    {
      v23 = v22 & (~v10 + a2);
      if (v11 <= 3)
      {
        v24 = v11;
      }

      else
      {
        v24 = 4;
      }

      bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12), v11);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
LABEL_61:
          *v21 = v23;
          return;
        }

LABEL_74:
        *v21 = v23;
        return;
      }

      goto LABEL_80;
    }
  }
}

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimationError and conformance AnimationError()
{
  result = lazy protocol witness table cache variable for type AnimationError and conformance AnimationError;
  if (!lazy protocol witness table cache variable for type AnimationError and conformance AnimationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationError and conformance AnimationError);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t __RKEntityTriggerSpecification.init(decodeContext:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v5 = *a1;
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7372656767697274, 0xE800000000000000, 0, *a1);
  v7 = v2;
  if (v2)
  {

    v8 = v3[2];

    v73 = v3[3];
    outlined destroy of BodyTrackingComponent?(&v73, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v72 = v3[4];
    outlined destroy of BodyTrackingComponent?(&v72, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v71 = v3[5];
    v9 = &v71;
    return outlined destroy of BodyTrackingComponent?(v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v10 = result;
  if (result >> 62)
  {
    goto LABEL_51;
  }

  v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v53 = v3;
    v50 = a2;
    v51 = v5;
    if (v11)
    {
      if (v11 >= 1)
      {
        v12 = 0;
        v5 = v3[1];
        v62 = v10 & 0xC000000000000001;
        v13 = MEMORY[0x1E69E7CC0];
        v52 = v10;
        v54 = v11;
        v55 = v5;
        while (1)
        {
          v14 = v62 ? MEMORY[0x1C68F41F0](v12, v10) : *(v10 + 8 * v12 + 32);
          v15 = v14;
          v16 = [v5 objectAtPath_];
          if (v16)
          {
            break;
          }

LABEL_10:
          if (v11 == ++v12)
          {
            goto LABEL_44;
          }
        }

        v17 = v16;
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {

LABEL_42:
          v11 = v54;
          goto LABEL_10;
        }

        v19 = v18;
        v56 = v15;
        v58 = v13;
        v3 = v53[2];
        v20 = v53[3];
        v21 = v7;
        v22 = v53[4];
        v23 = v53[5];
        v57 = v5;

        v61 = v20;

        v60 = v22;

        v10 = v17;
        v24 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 2, v19);
        v59 = v23;
        if (v21)
        {

          v7 = MEMORY[0x1E69E7CC0];
          v13 = v58;
        }

        else
        {
          v26 = v25;
          v13 = v58;
          if (v25)
          {
            v27 = v24;
            if (one-time initialization token for triggerTypeToTriggerSpecificationsGenerator != -1)
            {
              swift_once();
            }

            v28 = static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator;
            if (*(static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator + 2))
            {
              v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
              if (v30)
              {
                v31 = v29;

                v32 = v28[7] + 16 * v31;
                v34 = *v32;
                v33 = *(v32 + 8);
                v35 = v57;
                v64[0] = v19;
                v64[1] = v57;
                v64[2] = v3;
                v64[3] = v61;
                v64[4] = v60;
                v64[5] = v59;

                v34(&v63, v64);

                v7 = v63;
LABEL_28:
                v38 = v7[2];
                a2 = v13[2];
                v5 = a2 + v38;
                if (__OFADD__(a2, v38))
                {
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
LABEL_51:
                  result = __CocoaSet.count.getter();
                  v11 = result;
                  continue;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v40 = v13[3] >> 1, v40 < v5))
                {
                  if (a2 <= v5)
                  {
                    v41 = a2 + v38;
                  }

                  else
                  {
                    v41 = a2;
                  }

                  v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v41, 1, v13);
                  v40 = v13[3] >> 1;
                }

                v5 = v55;
                if (v7[2])
                {
                  a2 = v13[2];
                  v5 = (v40 - a2);
                  v42 = *(type metadata accessor for __RKEntityTriggerSpecification(0) - 8);
                  if (v5 < v38)
                  {
                    goto LABEL_49;
                  }

                  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
                  v44 = *(v42 + 72);
                  swift_arrayInitWithCopy();

                  v7 = 0;
                  v5 = v55;
                  if (v38)
                  {
                    v45 = v13[2];
                    v46 = __OFADD__(v45, v38);
                    v47 = v45 + v38;
                    if (v46)
                    {
                      goto LABEL_50;
                    }

                    v13[2] = v47;
                  }
                }

                else
                {

                  v7 = 0;
                  if (v38)
                  {
                    goto LABEL_48;
                  }
                }

                v10 = v52;
                goto LABEL_42;
              }
            }

            static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_1C1887600;
            *(v36 + 56) = MEMORY[0x1E69E6158];
            *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v36 + 32) = v27;
            *(v36 + 40) = v26;
            type metadata accessor for OS_os_log();
            v37 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)();
          }

          v7 = MEMORY[0x1E69E7CC0];
        }

        v35 = v57;
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if (!v13[2])
      {

        lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError();
        swift_allocError();
        swift_willThrow();

        v49 = v53[2];

        v67 = v53[3];
        outlined destroy of BodyTrackingComponent?(&v67, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v66 = v53[4];
        outlined destroy of BodyTrackingComponent?(&v66, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v65 = v53[5];
        v9 = &v65;
        return outlined destroy of BodyTrackingComponent?(v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      v48 = v53[2];

      v70 = v53[3];
      outlined destroy of BodyTrackingComponent?(&v70, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v69 = v53[4];
      outlined destroy of BodyTrackingComponent?(&v69, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v68 = v53[5];
      outlined destroy of BodyTrackingComponent?(&v68, &_sSDyS2SGMd, &_sSDyS2SGMR);
      *v50 = v13;
      type metadata accessor for __RKEntityTriggerSpecification(0);
      return swift_storeEnumTagMultiPayload();
    }

    return result;
  }
}

uint64_t one-time initialization function for triggerTypeToTriggerSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for triggerTypeToTriggerSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator = v0;
  return result;
}

void *implicit closure #5 in variable initialization expression of static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = v5;
  v6 = v1;
  v7 = v2;

  outlined init with copy of [String : String](&v13, v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v12, v9, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v11, v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, v6, v7, v3, v4, &v10, v3);

  outlined destroy of BodyTrackingComponent?(&v13, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(&v12, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined destroy of BodyTrackingComponent?(&v11, &_sSDyS2SGMd, &_sSDyS2SGMR);
  return v10;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

void *specialized static __RKEntityTriggerSpecification.generateCollisionTriggerSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x726564696C6C6F63, 0xE900000000000073, 2, a1, a2, a3, a4, &v11);
  if (v11[2])
  {
    v10 = v8;
    specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, a1, a2, a3, a4, &v10, &v11);

    return v10;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t IntrospectionDataCleanupHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RECIntrospectionFree();

  return swift_deallocClassInstance();
}

uint64_t BindTarget.TextureCoordinateTransformPath.offset.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  result = swift_isUniquelyReferenced_nonNull_native();
  if (v3 == 1)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 16);
    v10 = *(v4 + 24);
    v8 = v7 + 1;
    if (v7 >= v10 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = 0xE900000000000031;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = 0xE800000000000000;
  }

  *(v4 + 16) = v8;
  v11 = v4 + 24 * v7;
  *(v11 + 32) = 0x74657366664F7675;
  *(v11 + 40) = v9;
  *(v11 + 48) = 10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t BindTarget.MaterialPath.parameter(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = PbrCommonKeys.Constants.rawValue.getter(a1);
  v7 = v6;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  v11 = &v4[24 * v9];
  *(v11 + 4) = v5;
  *(v11 + 5) = v7;
  v11[48] = 10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t BindTarget.MaterialPath.textureCoordinate.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t BindTarget.MaterialPath.secondaryTextureCoordinate.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 1;
}

uint64_t BindTarget.ScenePath.anchorEntity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 24 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = 2;
  *a3 = v7;
  return result;
}

uint64_t BindTarget.EntityPath.transform.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 24 * v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = a1;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t BindTarget.EntityPath.blendShapeWeightsAtIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  v9 = v5 + 24 * v8;
  *(v9 + 32) = a1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 4;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

__n128 BindTarget.MaterialPath.customValue.getter@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v6 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[24 * v8];
  result = a3;
  v9[2] = a3;
  v9[3].n128_u8[0] = a1;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

RealityFoundation::BindTarget::MaterialPath __swiftcall BindTarget.EntityPath.material(_:)(Swift::Int a1)
{
  v4 = v1;
  rawValue = *v2;

  result.bindPath.parts._rawValue = swift_isUniquelyReferenced_nonNull_native();
  if ((result.bindPath.parts._rawValue & 1) == 0)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  v8 = *(rawValue + 2);
  v7 = *(rawValue + 3);
  if (v8 >= v7 >> 1)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  *(rawValue + 2) = v8 + 1;
  v9 = &rawValue[24 * v8];
  *(v9 + 4) = a1;
  *(v9 + 5) = 0;
  v9[48] = 9;
  *v4 = rawValue;
  return result;
}

uint64_t BindTarget.EntityPath.self.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

RealityFoundation::BindTarget::IkSolverPath __swiftcall BindTarget.EntityPath.ikSolver(_:)(RealityFoundation::IKComponent::Solver::ID_optional a1)
{
  v3 = v1;
  v4 = *a1.value.nameHash;
  v5 = *(a1.value.nameHash + 8);
  rawValue = *v2;

  result.bindPath.parts._rawValue = swift_isUniquelyReferenced_nonNull_native();
  if ((result.bindPath.parts._rawValue & 1) == 0)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  v9 = *(rawValue + 2);
  v8 = *(rawValue + 3);
  if (v9 >= v8 >> 1)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  *(rawValue + 2) = v9 + 1;
  v10 = &rawValue[24 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v5;
  v10[48] = 6;
  *v3 = rawValue;
  return result;
}

uint64_t BindTarget.IkSolverPath.constraintTarget(_:)@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  lazy protocol witness table accessor for type String and conformance String();
  v6 = StringProtocol.hash.getter();

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v9 + 1;
  v10 = v5 + 24 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = 0;
  *(v10 + 48) = a1;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t BindTarget.EntityPath.blendShapeWeightsWithID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *v4;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  v13 = v9 + 24 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  return result;
}

uint64_t static BindTarget.scene(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1887600;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *a4 = v8;
}

double static BindTarget.material(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMR);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C1887600;
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  *a2 = v4;
  return result;
}

unint64_t static InternalBindPath.bindPathVersion0(_:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return specialized static InternalBindPath.pathFromTarget(_:_:)(&v3, 0);
}

unint64_t _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5()
{
  if (Substring.distance(from:to:)() < 3)
  {
    return 0;
  }

  if (Substring.subscript.getter() == 91 && v0 == 0xE100000000000000)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  v2 = Substring.index(before:)();
  if (Substring.subscript.getter() == 93 && v3 == 0xE100000000000000)
  {

    goto LABEL_10;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = Substring.index(after:)();
  if (v2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    Substring.subscript.getter();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.init<A>(_:)();
    String.utf8CString.getter();

    v6 = REBindKeyUnescape();

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v7;
  }

  return result;
}

uint64_t static InternalBindPath.targetFromPath(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v189 = &v189 - v11;
  v12 = specialized Collection.subscript.getter();
  v16 = v15;
  v191 = a2;
  v192 = a3;
  v190 = a1;
  if ((v12 ^ v13) < 0x4000)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_3:

    v18 = *(v17 + 2);
    v19 = v18 - 2;
    if (v18 == 2)
    {
      v3 = 0xE90000000000006DLL;
      v20 = *(v17 + 4);
      v21 = *(v17 + 5);
      v22 = String.lowercased()();
      object = v22._object;
      v23 = v22._countAndFlagsBits == 0x726F66736E617274 && v22._object == 0xE90000000000006DLL;
      if (v23 || (countAndFlagsBits = v22._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || ((v18 = 0xD000000000000015, v22._countAndFlagsBits == 0xD000000000000015) ? (v24 = 0x80000001C18DE530 == v22._object) : (v24 = 0), v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        if (*(v17 + 2) < 2uLL)
        {
          goto LABEL_160;
        }

        v25 = *(v17 + 6);
        v26 = *(v17 + 7);

        v27 = String.lowercased()();

        if (v27._countAndFlagsBits == 0x726F66736E617274 && v27._object == 0xE90000000000006DLL)
        {

          a2 = v192;
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v192;
          if ((v29 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        *a2 = 0;
        *(a2 + 8) = 0;
        goto LABEL_69;
      }

      v61 = 0x6C6174656C656B73;
      if (v22._countAndFlagsBits == 0x6C6174656C656B73 && v22._object == 0xEC00000065736F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v22._countAndFlagsBits == 0xD000000000000018 && 0x80000001C18DE550 == v22._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (*(v17 + 2) >= 2uLL)
        {
          v72 = *(v17 + 6);
          v73 = *(v17 + 7);
          v74 = String.lowercased()();
          if (v74._countAndFlagsBits == 0xD000000000000010 && 0x80000001C18DE5D0 == v74._object)
          {
          }

          else
          {
            v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v80 & 1) == 0)
            {
              v82 = *(v17 + 7);
              v196._countAndFlagsBits = *(v17 + 6);
              v196._object = v82;
              strcpy(v195, "skeletalposes");
              HIWORD(v195[1]) = -4864;
              v83 = type metadata accessor for Locale();
              v84 = v189;
              (*(*(v83 - 8) + 56))(v189, 1, 1, v83);
              lazy protocol witness table accessor for type String and conformance String();

              StringProtocol.range<A>(of:options:range:locale:)();
              v86 = v85;
              v88 = v87;
              outlined destroy of BodyTrackingComponent?(v84, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

              if (v88)
              {
                goto LABEL_107;
              }

              v93 = *(v17 + 6);
              v94 = *(v17 + 7);

              specialized Collection.subscript.getter(v86, v93, v94);

              v95 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
              v97 = v96;

              v98 = HIBYTE(v97) & 0xF;
              if ((v97 & 0x2000000000000000) == 0)
              {
                v98 = v95 & 0xFFFFFFFFFFFFLL;
              }

              if (!v98)
              {
                goto LABEL_107;
              }

              v99 = v192;
              *v192 = v95;
              v99[1] = v97;
              *(v99 + 16) = 5;
              return result;
            }
          }

          v81 = v192;
          *v192 = xmmword_1C1887610;
          *(v81 + 16) = 6;
          return result;
        }

        __break(1u);
        goto LABEL_197;
      }

      if ((v22._countAndFlagsBits != 0x65756C617679656BLL || v22._object != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v22._countAndFlagsBits != 0xD000000000000014 || 0x80000001C18DE570 != v22._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_162;
      }

      if (*(v17 + 2) >= 2uLL)
      {
        v107 = *(v17 + 7);
        v196._countAndFlagsBits = *(v17 + 6);
        v196._object = v107;
        strcpy(v195, "keyValueStore");
        HIWORD(v195[1]) = -4864;
        v108 = type metadata accessor for Locale();
        v109 = v189;
        (*(*(v108 - 8) + 56))(v189, 1, 1, v108);
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.range<A>(of:options:range:locale:)();
        v111 = v110;
        v113 = v112;
        outlined destroy of BodyTrackingComponent?(v109, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v113)
        {
          goto LABEL_107;
        }

        v114 = *(v17 + 6);
        v115 = *(v17 + 7);

        specialized Collection.subscript.getter(v111, v114, v115);

        v116 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
        v118 = v117;

        v119 = HIBYTE(v118) & 0xF;
        if ((v118 & 0x2000000000000000) == 0)
        {
          v119 = v116 & 0xFFFFFFFFFFFFLL;
        }

        if (!v119)
        {
          goto LABEL_107;
        }

        v120 = v192;
        *v192 = v116;
        v120[1] = v118;
        *(v120 + 16) = 1;
        return result;
      }

      __break(1u);
      goto LABEL_209;
    }

    if (v18 < 3)
    {
      goto LABEL_107;
    }

    countAndFlagsBits = (v17 + 32);

    static InternalBindPath.entityPathFromParts(_:)((v17 + 32), 0, (2 * v19) | 1, &v196);

    if (v19 >= *(v17 + 2))
    {
      goto LABEL_161;
    }

    object = v196._countAndFlagsBits;
    v3 = 0xE90000000000006DLL;
    v56 = &v17[16 * v18];
    v57 = *v56;
    v58 = *(v56 + 1);
    v59 = String.lowercased()();
    v60 = v59._countAndFlagsBits == 0x726F66736E617274 && v59._object == 0xE90000000000006DLL;
    if (v60 || (v61 = v59._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      goto LABEL_60;
    }

    v194 = v17;
    v17 = 0xD000000000000015;
    v71 = v59._countAndFlagsBits == 0xD000000000000015 && 0x80000001C18DE530 == v59._object;
    if (v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v17 = v194;
LABEL_60:
      if (v18 > *(v17 + 2))
      {
        __break(1u);
      }

      else
      {
        v62 = countAndFlagsBits + 16 * v18;
        v63 = *(v62 - 16);
        v64 = *(v62 - 8);

        v65 = String.lowercased()();

        if (v65._countAndFlagsBits == 0x726F66736E617274 && v65._object == 0xE90000000000006DLL)
        {

          a2 = v192;
        }

        else
        {
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v192;
          if ((v67 & 1) == 0)
          {

            goto LABEL_108;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_72;
        }
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
      object = result;
LABEL_72:
      v69 = *(object + 16);
      v68 = *(object + 24);
      if (v69 >= v68 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, object);
        object = result;
      }

      *(object + 16) = v69 + 1;
      v70 = object + 24 * v69;
      *(v70 + 32) = 0;
      *(v70 + 40) = 0;
LABEL_75:
      *(v70 + 48) = 12;
      *a2 = object;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      return result;
    }

    v75 = v59._countAndFlagsBits == 0x6C6174656C656B73 && v59._object == 0xEC00000065736F70;
    if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v59._countAndFlagsBits == 0xD000000000000018 && 0x80000001C18DE550 == v59._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v18 > *(v194 + 2))
      {
        __break(1u);
        goto LABEL_207;
      }

      v76 = countAndFlagsBits + 16 * v18;
      v77 = *(v76 - 16);
      v78 = *(v76 - 8);
      v79 = String.lowercased()();
      if (v79._countAndFlagsBits == 0xD000000000000010 && 0x80000001C18DE5D0 == v79._object)
      {

        goto LABEL_110;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v90)
      {
LABEL_110:

        a2 = v192;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_111:
          v92 = *(object + 16);
          v91 = *(object + 24);
          if (v92 >= v91 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, object);
            object = result;
          }

          *(object + 16) = v92 + 1;
          v70 = object + 24 * v92;
          *(v70 + 32) = xmmword_1C1887610;
          goto LABEL_75;
        }

LABEL_207:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
        object = result;
        goto LABEL_111;
      }

      v100 = *(v76 - 8);
      v196._countAndFlagsBits = *(v76 - 16);
      v196._object = v100;
      strcpy(v195, "skeletalposes");
      HIWORD(v195[1]) = -4864;
      v101 = type metadata accessor for Locale();
      v102 = v189;
      (*(*(v101 - 8) + 56))(v189, 1, 1, v101);
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol.range<A>(of:options:range:locale:)();
      v104 = v103;
      v106 = v105;
      outlined destroy of BodyTrackingComponent?(v102, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if ((v106 & 1) == 0)
      {
        v121 = *(v76 - 16);
        v122 = *(v76 - 8);

        specialized Collection.subscript.getter(v104, v121, v122);

        v18 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
        v61 = v123;

        v124 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v124 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v124)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_136:
            v126 = *(object + 16);
            v125 = *(object + 24);
            if (v126 >= v125 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v126 + 1, 1, object);
              object = result;
            }

            *(object + 16) = v126 + 1;
            v127 = object + 24 * v126;
            *(v127 + 32) = v18;
            *(v127 + 40) = v61;
            v128 = 11;
            goto LABEL_139;
          }

LABEL_209:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
          object = result;
          goto LABEL_136;
        }
      }

LABEL_164:

      goto LABEL_107;
    }

    if (v59._countAndFlagsBits == 0x65756C617679656BLL && v59._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v59._countAndFlagsBits == 0xD000000000000014 && 0x80000001C18DE570 == v59._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v18 > *(v194 + 2))
      {
        __break(1u);
      }

      else
      {
        v130 = countAndFlagsBits + 16 * v18;
        v131 = *(v130 - 8);
        v196._countAndFlagsBits = *(v130 - 16);
        v196._object = v131;
        strcpy(v195, "keyValueStore");
        HIWORD(v195[1]) = -4864;
        v132 = type metadata accessor for Locale();
        v133 = v189;
        (*(*(v132 - 8) + 56))(v189, 1, 1, v132);
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.range<A>(of:options:range:locale:)();
        v135 = v134;
        v137 = v136;
        outlined destroy of BodyTrackingComponent?(v133, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v137)
        {
          goto LABEL_164;
        }

        v138 = *(v130 - 16);
        v139 = *(v130 - 8);

        specialized Collection.subscript.getter(v135, v138, v139);

        v18 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
        v61 = v140;

        v141 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v141 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (!v141)
        {
          goto LABEL_164;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_154:
          v143 = *(object + 16);
          v142 = *(object + 24);
          if (v143 >= v142 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1, object);
            object = result;
          }

          *(object + 16) = v143 + 1;
          v127 = object + 24 * v143;
          *(v127 + 32) = v18;
          *(v127 + 40) = v61;
          v128 = 3;
          goto LABEL_139;
        }
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
      object = result;
      goto LABEL_154;
    }

    v144 = 0x80000001C18DE590;
    a2 = 0xD00000000000001BLL;
    v156._countAndFlagsBits = 0xD00000000000001BLL;
    v156._object = 0x80000001C18DE590;
    if (!String.hasPrefix(_:)(v156))
    {

      v171._object = 0xE900000000000064;
      v171._countAndFlagsBits = 0x72616F626C6C6962;
      if (String.hasPrefix(_:)(v171) || v59._countAndFlagsBits == 0xD000000000000015 && 0x80000001C18DE5B0 == v59._object)
      {

        goto LABEL_185;
      }

LABEL_197:
      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v144 & 1) == 0)
      {
        goto LABEL_107;
      }

LABEL_185:
      v153 = *(v194 + 2);
      if (v18 <= v153)
      {
        v172 = countAndFlagsBits + 16 * v18;
        v173 = *(v172 - 16);
        v174 = *(v172 - 8);

LABEL_187:

        v175 = String.lowercased()();

        if (v175._countAndFlagsBits == 0x636146646E656C62 && v175._object == 0xEB00000000726F74)
        {

          a2 = v192;
        }

        else
        {
          v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v192;
          if ((v176 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        *a2 = xmmword_1C1898EF0;
LABEL_69:
        *(a2 + 16) = 6;
        return result;
      }

      goto LABEL_213;
    }

    v196 = v59;
    v195[0] = 0xD00000000000001BLL;
    v195[1] = 0x80000001C18DE590;
    v157 = type metadata accessor for Locale();
    v158 = v189;
    (*(*(v157 - 8) + 56))(v189, 1, 1, v157);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.range<A>(of:options:range:locale:)();
    v160 = v159;
    v162 = v161;
    outlined destroy of BodyTrackingComponent?(v158, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v162)
    {

      goto LABEL_164;
    }

    specialized Collection.subscript.getter(v160, v59._countAndFlagsBits, v59._object);

    v177 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
    v179 = v178;

    v180 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v177, v179);
    if (v181)
    {
      goto LABEL_164;
    }

    v182 = v180;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    }

    v184 = *(object + 16);
    v183 = *(object + 24);
    v185 = v184 + 1;
    if (v184 >= v183 >> 1)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v183 > 1), v184 + 1, 1, object);
    }

    *(object + 16) = v185;
    v186 = object + 24 * v184;
    *(v186 + 32) = v182;
    *(v186 + 40) = 0;
    *(v186 + 48) = 9;
    v187 = *(v194 + 2);
    if (v18 > v187)
    {
      __break(1u);
    }

    else
    {
      v188 = countAndFlagsBits + 16 * v18;
      v184 = *(v188 - 16);
      v182 = *(v188 - 8);

      v18 = *(object + 16);
      v187 = *(object + 24);
      v185 = v18 + 1;
      if (v18 < v187 >> 1)
      {
LABEL_205:
        *(object + 16) = v185;
        v127 = object + 24 * v18;
        *(v127 + 32) = v184;
        *(v127 + 40) = v182;
        v128 = 10;
LABEL_139:
        *(v127 + 48) = v128;
        v129 = v192;
        *v192 = object;
LABEL_140:
        v129[1] = 0;
        *(v129 + 16) = 2;
        return result;
      }
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v185, 1, object);
    object = result;
    goto LABEL_205;
  }

  object = v12;
  countAndFlagsBits = v13;
  v31 = v14;
  v17 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v194 = v17;
    v3 = countAndFlagsBits >> 14;

    v193 = object >> 14;
    if (object >> 14 == countAndFlagsBits >> 14)
    {
LABEL_23:

      goto LABEL_24;
    }

    v41 = 0;
    v42 = object;
    while (1)
    {
      v18 = Substring.index(after:)();
      if (Substring.subscript.getter() != 92 || v43 != 0xE100000000000000)
      {
        break;
      }

LABEL_33:
      v41 ^= 1u;
LABEL_34:
      v42 = v18;
      if (v3 == v18 >> 14)
      {
        goto LABEL_23;
      }
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (a2)
    {
      goto LABEL_33;
    }

    if (Substring.subscript.getter() == 46 && v44 == 0xE100000000000000)
    {

      goto LABEL_42;
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((a2 & 1) == 0)
    {
LABEL_43:
      v41 = 0;
      goto LABEL_34;
    }

LABEL_42:
    if (v41)
    {
      goto LABEL_43;
    }

    if (v42 >> 14 == v3)
    {
LABEL_24:
      v32 = MEMORY[0x1C68F3380](object, countAndFlagsBits, v31, v16);
      v34 = v33;

      v17 = v194;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
      }

      v36 = *(v17 + 2);
      v35 = *(v17 + 3);
      if (v36 >= v35 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v17);
      }

      *(v17 + 2) = v36 + 1;
      v37 = &v17[16 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
      object = MEMORY[0x1C68F3E40](0, 0xE000000000000000);
      countAndFlagsBits = v38;
      v31 = v39;
      v16 = v40;
LABEL_29:
      if ((object ^ countAndFlagsBits) < 0x4000)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  v17 = v194;
  if (v42 >> 14 < v193)
  {
    __break(1u);
  }

  else
  {
    v45 = Substring.subscript.getter();
    v18 = MEMORY[0x1C68F3380](v45);
    a2 = v46;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v47 = v17;
    v48 = *(v17 + 2);
    v49 = v47;
    v50 = *(v47 + 3);
    if (v48 >= v50 >> 1)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v48 + 1, 1, v49);
    }

    *(v49 + 2) = v48 + 1;
    v51 = &v49[16 * v48];
    v17 = v49;
    *(v51 + 4) = v18;
    *(v51 + 5) = a2;
    if (v3 >= Substring.index(after:)() >> 14)
    {
      object = Substring.subscript.getter();
      countAndFlagsBits = v52;
      v31 = v53;
      v55 = v54;

      v16 = v55;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v144 = 0x80000001C18DE590;
  v61 = v18 + 6;
  v145._countAndFlagsBits = v18 + 6;
  v145._object = 0x80000001C18DE590;
  if (!String.hasPrefix(_:)(v145))
  {
    v152._object = (v3 - 9);
    v152._countAndFlagsBits = 0x72616F626C6C6962;
    if (String.hasPrefix(_:)(v152) || countAndFlagsBits == v18 && 0x80000001C18DE5B0 == object)
    {
    }

    else
    {
      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v144 & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    v153 = *(v17 + 2);
    if (v153 >= 2)
    {
      v154 = *(v17 + 6);
      v155 = *(v17 + 7);

      goto LABEL_187;
    }

    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v144, 1, v61);
LABEL_178:
    *(v61 + 16) = v144;
    v168 = v61 + 24 * v18;
    *(v168 + 32) = a2;
    *(v168 + 40) = 0;
    *(v168 + 48) = 9;
    v169 = *(v17 + 2);
    if (v169 < 2)
    {
      __break(1u);
    }

    else
    {
      v18 = *(v17 + 6);
      a2 = *(v17 + 7);

      v3 = *(v61 + 16);
      v169 = *(v61 + 24);
      v144 = v3 + 1;
      if (v3 < v169 >> 1)
      {
LABEL_180:
        *(v61 + 16) = v144;
        v170 = v61 + 24 * v3;
        *(v170 + 32) = v18;
        *(v170 + 40) = a2;
        *(v170 + 48) = 10;
        v129 = v192;
        *v192 = v61;
        goto LABEL_140;
      }
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v144, 1, v61);
    v61 = result;
    goto LABEL_180;
  }

  v196._countAndFlagsBits = countAndFlagsBits;
  v196._object = object;
  v195[0] = v18 + 6;
  v195[1] = 0x80000001C18DE590;
  v146 = type metadata accessor for Locale();
  v147 = v189;
  (*(*(v146 - 8) + 56))(v189, 1, 1, v146);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  v149 = v148;
  v151 = v150;
  outlined destroy of BodyTrackingComponent?(v147, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v151)
  {
    goto LABEL_164;
  }

  specialized Collection.subscript.getter(v149, countAndFlagsBits, object);

  v163 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5();
  v165 = v164;

  v166 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v163, v165);
  if ((v167 & 1) == 0)
  {
    a2 = v166;
    v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *(v61 + 16);
    v153 = *(v61 + 24);
    v144 = v18 + 1;
    if (v18 < v153 >> 1)
    {
      goto LABEL_178;
    }

    goto LABEL_214;
  }

LABEL_107:

  a2 = v192;
LABEL_108:
  v89 = v191;
  *a2 = v190;
  *(a2 + 8) = v89;
  *(a2 + 16) = 0;
}

uint64_t static InternalBindPath.entityPathFromParts(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v51 - v14;
  v16 = a3 >> 1;
  v51[0] = a4;
  if (a3 >> 1 != a2)
  {
    if (a2 > 0 || a3 < 2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = *(a1 + 8);
    v54 = *a1;
    v55 = v17;
    v52 = 12079;
    v53 = 0xE200000000000000;
    v4 = &v54;
    v51[1] = lazy protocol witness table accessor for type String and conformance String();
    v18 = StringProtocol.components<A>(separatedBy:)();
    if (v18[2] == 2)
    {
      a3 = v18[4];
      v4 = v18[5];
      v19 = a3 == 0x3A65636976726573 && v4 == 0xE800000000000000;
      if (v19 || (v20 = v18, v21 = v18[4], v22 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v20, (v22 & 1) != 0))
      {
        v23 = v18[6];
        v24 = v18[7];

        String.utf8CString.getter();

        v25 = REBindKeyUnescape();

        a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v26;

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        a4 = result;
        v5 = *(result + 16);
        v14 = *(result + 24);
        v6 = v5 + 1;
        if (v5 >= v14 >> 1)
        {
          goto LABEL_58;
        }

        while (1)
        {
          *(a4 + 16) = v6;
          v27 = a4 + 24 * v5;
          *(v27 + 32) = a3;
          *(v27 + 40) = v4;
          *(v27 + 48) = 0;
          v5 = 1;
LABEL_20:
          v14 = v16 - a2;
          if (__OFSUB__(v16, a2))
          {
            break;
          }

          if (v14 < v5)
          {
            goto LABEL_54;
          }

          if (v5 == v14)
          {
            goto LABEL_23;
          }

          if (v5 >= v14)
          {
            goto LABEL_55;
          }

          if (v5 >= v16)
          {
            goto LABEL_56;
          }

          if (--v14 < v16)
          {
            v35 = v5 + a2 - v16;
            v5 = a1 + 16 * v5 + 8;
            while (1)
            {
              a1 = *(v5 - 8);
              v16 = *v5;
              if ((*v5 & 0x2000000000000000) != 0)
              {
                v36 = HIBYTE(*v5) & 0xFLL;
              }

              else
              {
                v36 = a1 & 0xFFFFFFFFFFFFLL;
              }

              if (v36)
              {
                v54 = *(v5 - 8);
                v55 = v16;
                v52 = 0x7365697469746E65;
                v53 = 0xE90000000000005BLL;
                v37 = type metadata accessor for Locale();
                (*(*(v37 - 8) + 56))(v15, 1, 1, v37);

                a2 = StringProtocol.range<A>(of:options:range:locale:)();
                v4 = v38;
                v6 = v39;
                outlined destroy of BodyTrackingComponent?(v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
                v40 = String.index(before:)();
                if ((v6 & 1) != 0 || a2 >= 0x4000)
                {
                  goto LABEL_44;
                }

                a3 = v40;
                if (String.subscript.getter() == 93 && v41 == 0xE100000000000000)
                {
                }

                else
                {
                  a2 = v41;
                  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v6 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                v14 = a3 >> 14;
                if (a3 >> 14 < v4 >> 14)
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v43 = String.subscript.getter();
                MEMORY[0x1C68F3380](v43);

                String.utf8CString.getter();

                v44 = REBindKeyUnescape();

                a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v46 = v45;

                v16 = v46;
              }

              else
              {
                a1 = 0;
                v16 = 0xE000000000000000;
              }

LABEL_44:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 16) + 1, 1, a4);
                a4 = result;
              }

              v48 = *(a4 + 16);
              v47 = *(a4 + 24);
              if (v48 >= v47 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, a4);
                a4 = result;
              }

              *(a4 + 16) = v48 + 1;
              v49 = a4 + 24 * v48;
              *(v49 + 32) = a1;
              *(v49 + 40) = v16;
              *(v49 + 48) = 2;
              v5 += 16;
              if (__CFADD__(v35++, 1))
              {
                goto LABEL_23;
              }
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6, 1, a4);
          a4 = result;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (a3 == 0x3A656E656373 && v4 == 0xE600000000000000 || (v28 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = v20, (v28 & 1) != 0))
      {
        v29 = v18[6];
        v30 = v18[7];

        a3 = specialized static InternalBindPath.entityNameFromKey(_:)(v29, v30);
        v4 = v31;

        v5 = 1;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        a4 = result;
        v33 = *(result + 16);
        v32 = *(result + 24);
        v6 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, result);
          a4 = result;
        }

        *(a4 + 16) = v6;
        v34 = a4 + 24 * v33;
        *(v34 + 32) = a3;
        *(v34 + 40) = v4;
        *(v34 + 48) = 1;
        goto LABEL_20;
      }
    }

    v5 = 0;
    a4 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_23:
  *v51[0] = a4;
  return result;
}

unint64_t static InternalBindPath.entityPathFromPath(_:)@<X0>(uint64_t a1@<X8>)
{
  v1 = String.subscript.getter();
  v5 = v4;
  if ((v1 ^ v2) < 0x4000)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:

    static InternalBindPath.entityPathFromParts(_:)((v6 + 32), 0, (2 * *(v6 + 2)) | 1, a1);
  }

  v8 = v1;
  v9 = v2;
  v10 = v3;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v42 = v6;
    v11 = v9 >> 14;

    if (v8 >> 14 == v9 >> 14)
    {
LABEL_8:

      goto LABEL_9;
    }

    v21 = 0;
    v22 = v8;
    while (1)
    {
      v23 = Substring.index(after:)();
      if (Substring.subscript.getter() != 92 || v24 != 0xE100000000000000)
      {
        break;
      }

LABEL_18:
      v21 ^= 1u;
LABEL_19:
      v22 = v23;
      if (v11 == v23 >> 14)
      {
        goto LABEL_8;
      }
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_18;
    }

    if (Substring.subscript.getter() == 46 && v26 == 0xE100000000000000)
    {

      goto LABEL_27;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
LABEL_28:
      v21 = 0;
      goto LABEL_19;
    }

LABEL_27:
    if (v21)
    {
      goto LABEL_28;
    }

    if (v22 >> 14 == v11)
    {
LABEL_9:
      v12 = MEMORY[0x1C68F3380](v8, v9, v10, v5);
      v14 = v13;

      v6 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      v8 = MEMORY[0x1C68F3E40](0, 0xE000000000000000);
      v9 = v18;
      v10 = v19;
      v5 = v20;
LABEL_14:
      if ((v8 ^ v9) < 0x4000)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  if (v22 >> 14 < v8 >> 14)
  {
    __break(1u);
  }

  else
  {
    v28 = Substring.subscript.getter();
    v29 = MEMORY[0x1C68F3380](v28);
    v31 = v30;

    v32 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v32;
    if (v34 >= v33 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    *(v35 + 2) = v34 + 1;
    v6 = v35;
    v36 = &v35[16 * v34];
    *(v36 + 4) = v29;
    *(v36 + 5) = v31;
    result = Substring.index(after:)();
    if (v11 >= result >> 14)
    {
      v8 = Substring.subscript.getter();
      v9 = v37;
      v10 = v38;
      v40 = v39;

      v5 = v40;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t BindableValue.init(_:animatedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for BindableValue() + 36);
  v9 = *(a3 - 8);
  (*(v9 + 56))(a4 + v8, 1, 1, a3);
  (*(v9 + 32))(a4, a1, a3);
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 40);

  return v11(a4 + v8, a2, v10);
}

uint64_t BindableValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 36), v6);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v11 + 16))(a2, v2, v5);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t key path setter for BindableValue.value : <A>BindableValue<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = type metadata accessor for BindableValue();
  return BindableValue.baseValue.setter(v8, v10);
}

void (*BindableValue.value.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
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
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  BindableValue.value.getter(a2, v11);
  return BindableValue.value.modify;
}

void BindableValue.value.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    v9 = v2[1];
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t BindableValue.animatedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t BindableValue.animatedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*BindableValue.animatedValue.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 36);
  return result;
}

BOOL BindableValue.isOverriden.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  (*(v5 + 16))(&v12 - v8, v1 + *(a1 + 36), v4, v7);
  v10 = (*(*(v3 - 8) + 48))(v9, 1, v3) != 1;
  (*(v5 + 8))(v9, v4);
  return v10;
}

uint64_t BindableValuesReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v69 = type metadata accessor for Optional();
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v70 = *(a2 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = *v4;
  v24 = swift_conformsToProtocol2();
  if (!v24 || !a2)
  {
    goto LABEL_5;
  }

  v25 = v24;
  v62 = v19;
  v56 = v13;
  v64 = a3;
  v65 = a4;
  v60 = v20;
  v80[0] = v20;
  v80[1] = v21;
  v59 = v21;
  v58 = v22;
  v81 = v22;
  v26 = specialized static InternalBindPath.pathFromTarget(_:_:)(v80, 1);
  v27 = *(v25 + 40);
  v57 = v23;
  v61 = v27;
  v28 = v27(v26);

  v63 = &v51;
  v30 = *(v25 + 24);
  v31 = v71;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v55 = v33;
  v33(v28, a2, v25, v32);
  v34 = v70;
  v35 = *(v70 + 48);
  if (v35(&v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), 1, a2) == 1)
  {
    (*(v68 + 8))(&v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
    REBindPointDestroy();
    a4 = v65;
LABEL_5:
    v36 = type metadata accessor for BindableValue();
    return (*(*(v36 - 8) + 56))(a4, 1, 1, v36);
  }

  v53 = v35;
  v54 = v28;
  v78 = a2;
  v79 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
  v52 = *(v34 + 32);
  v52(boxed_opaque_existential_1, &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  outlined init with take of ForceEffectBase(&v76, v80);
  *&v76 = v60;
  *(&v76 + 1) = v59;
  v77 = v58;
  v39 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v76, 1);
  v40 = v61(v39);

  if (REBindPointIsOverrideEnabled())
  {
    v67 = (v34 + 32);
    outlined init with copy of __REAssetService(v80, &v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
    v41 = swift_dynamicCast();
    v42 = MEMORY[0x1EEE9AC00](v41);
    v71 = v40;
    v55(v40, a2, v25, v42);
    if (v53(&v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), 1, a2) == 1)
    {
      (*(v68 + 8))(&v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v69);
      v43 = v56;
      (*(v34 + 56))(v56, 1, 1, a2);
    }

    else
    {
      v73 = a2;
      v74 = v25;
      v48 = __swift_allocate_boxed_opaque_existential_1(&v72);
      v52(v48, &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      outlined init with take of ForceEffectBase(&v72, v75);
      v43 = v56;
      swift_dynamicCast();
      (*(v34 + 56))(v43, 0, 1, a2);
    }

    v49 = v65;
    BindableValue.init(_:animatedValue:)(v62, v43, a2, v65);
    v50 = type metadata accessor for BindableValue();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    REBindPointDestroy();
    __swift_destroy_boxed_opaque_existential_1(v80);
    return REBindPointDestroy();
  }

  else
  {
    outlined init with copy of __REAssetService(v80, &v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
    v44 = v66;
    swift_dynamicCast();
    v45 = v67;
    (*(v34 + 56))(v67, 1, 1, a2);
    v46 = v65;
    BindableValue.init(_:animatedValue:)(v44, v45, a2, v65);
    v47 = type metadata accessor for BindableValue();
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    REBindPointDestroy();
    __swift_destroy_boxed_opaque_existential_1(v80);
    return REBindPointDestroy();
  }
}

uint64_t BindableValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v6 = type metadata accessor for Optional();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v56 - v8;
  v69 = *(a4 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - v13;
  v70 = a4;
  v14 = type metadata accessor for BindableValue();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  v20 = *(v14 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - v24;
  v27 = *a2;
  v26 = *(a2 + 8);
  v28 = *(a2 + 16);
  v29 = v71;
  (*(v16 + 16))(v19, v23);
  if ((*(v20 + 48))(v19, 1, v14) == 1)
  {
    v30 = *(v16 + 8);
    v30(v29, v15);
    outlined consume of BindTarget(v27, v26, v28);
    return (v30)(v19, v15);
  }

  else
  {
    v61 = v16;
    v62 = v20;
    (*(v20 + 32))(v25, v19, v14);
    v32 = swift_conformsToProtocol2();
    v33 = v25;
    if (v32)
    {
      v34 = v32;
      v60 = v15;
      v72[0] = v27;
      v72[1] = v26;
      v73 = v28;
      v35 = specialized static InternalBindPath.pathFromTarget(_:_:)(v72, 1);
      v37 = v36;
      outlined consume of BindTarget(v27, v26, v28);
      v38 = v70;
      v39 = (*(v34 + 40))(v35, v37, *v64, 1, 0, v70, v34);

      v40 = v69;
      v41 = v65;
      v57 = *(v69 + 16);
      v57(v65, v25, v38);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
      swift_dynamicCast();
      v42 = v74;
      v43 = v75;
      __swift_project_boxed_opaque_existential_1(v72, v74);
      v44 = *(v43 + 8);
      v58 = v39;
      v44(v39, 0, v42, v43);
      __swift_destroy_boxed_opaque_existential_1(v72);
      v59 = v14;
      v45 = *(v14 + 36);
      v47 = v66;
      v46 = v67;
      v48 = *(v67 + 16);
      v64 = v25;
      v49 = v68;
      v48(v66, &v33[v45], v68);
      if ((*(v40 + 48))(v47, 1, v38) == 1)
      {
        (*(v46 + 8))(v47, v49);
      }

      else
      {
        v52 = v63;
        v53 = v70;
        (*(v40 + 32))(v63, v47, v70);
        v57(v41, v52, v53);
        swift_dynamicCast();
        v54 = v74;
        v55 = v75;
        __swift_project_boxed_opaque_existential_1(v72, v74);
        (*(v55 + 8))(v58, 1, v54, v55);
        (*(v40 + 8))(v52, v53);
        __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v29 = v71;
      v15 = v60;
      v51 = v61;
      v50 = v62;
      REBindPointDestroy();
      v33 = v64;
      v14 = v59;
    }

    else
    {
      outlined consume of BindTarget(v27, v26, v28);
      v51 = v61;
      v50 = v62;
    }

    (*(v51 + 8))(v29, v15);
    return (*(v50 + 8))(v33, v14);
  }
}

void (*BindableValuesReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2, uint64_t a3)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x58uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  type metadata accessor for BindableValue();
  v14 = type metadata accessor for Optional();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v19 = *a2;
  v20 = *(a2 + 8);
  v13[7] = v17;
  v13[8] = v19;
  v13[9] = v20;
  v21 = *(a2 + 16);
  *(v13 + 80) = v21;
  v25 = *v5;
  v23[0] = v19;
  v23[1] = v20;
  v24 = v21;
  outlined copy of BindTarget(v19, v20, v21);
  outlined copy of BindTarget(v19, v20, v21);
  BindableValuesReference.subscript.getter(v23, a4, a5, v18);
  outlined consume of BindTarget(v19, v20, v21);
  return BindableValuesReference.subscript.modify;
}

void BindableValuesReference.subscript.modify(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[2];
    v17 = v3[3];
    v12 = v3[1];
    (*(v10 + 16))(v7, v8, v9);
    v18 = v6;
    v19 = v5;
    v20 = v4;
    BindableValuesReference.subscript.setter(v7, &v18, v13, v12);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v14 = v3[2];
    v15 = v3[3];
    v16 = v3[1];
    v18 = *(*a1 + 64);
    v19 = v5;
    v20 = v4;
    BindableValuesReference.subscript.setter(v8, &v18, a3, v16);
  }

  free(v8);
  free(v7);

  free(v3);
}

uint64_t (*ParameterSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  type metadata accessor for BindableValue();
  v16 = type metadata accessor for Optional();
  v15[6] = v16;
  v17 = *(v16 - 8);
  v15[7] = v17;
  v18 = *(v17 + 64);
  if (v13)
  {
    v15[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v15[8] = malloc(*(v17 + 64));
    v19 = malloc(v18);
  }

  v15[9] = v19;
  v21 = *v6;
  Entity.ParameterSet.subscript.getter(a2, a3);
  return ParameterSet.subscript.modify;
}

uint64_t (*Entity.bindableValues.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.bindableValues.modify;
}

uint64_t ParameterSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *v5;
  v12[0] = a1;
  v12[1] = a2;
  v13 = 1;

  BindableValuesReference.subscript.getter(v12, a3, a4, a5);
  outlined consume of BindTarget(a1, a2, 1u);
}

uint64_t ParameterSet.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized ParameterSet.subscript.setter(a1, a2, a3, a4, a5, a6);
  type metadata accessor for BindableValue();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t (*Entity.ParameterSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  type metadata accessor for BindableValue();
  v16 = type metadata accessor for Optional();
  v15[6] = v16;
  v17 = *(v16 - 8);
  v15[7] = v17;
  v18 = *(v17 + 64);
  if (v13)
  {
    v15[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v15[8] = malloc(*(v17 + 64));
    v19 = malloc(v18);
  }

  v15[9] = v19;
  v21 = *v6;
  Entity.ParameterSet.subscript.getter(a2, a3);
  return Entity.ParameterSet.subscript.modify;
}

void ParameterSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v14 = (*a1)[5];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))(v3, v4, v5);

    specialized ParameterSet.subscript.setter(v3, v11, v10, v9, v8, v7);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    v13 = v2[1];

    specialized ParameterSet.subscript.setter(v4, v11, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Entity.bindableValues.setter(uint64_t *a1)
{
  v2 = *a1;

  if (v2 != v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.parameters.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.parameters.modify;
}

uint64_t *Entity.bindableValues.modify(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 1) == 0)
  {
    v5 = *result;

    if (v2 == v3)
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *result;
}

uint64_t Entity.subscript.getter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {

    return v2;
  }

  v5 = v3 + 32;

  v6 = 0;
  v143 = v3 + 32;
  v141 = v3;
  v142 = v4;
LABEL_6:
  if (!v2)
  {
    return v2;
  }

  if (v6 >= *(v3 + 16))
  {
    goto LABEL_161;
  }

  v8 = v5 + 24 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v145 = v10;
  v146 = *v8;
  if (!*(v8 + 16))
  {
    v113 = *(v2 + 16);

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v115 = SceneNullable;
      v116 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v116)
      {
        v117 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v117 = Scene.init(coreScene:)(v115);
      }

      v148 = v117;
      v149 = 0;

      if (Scene.AnchorCollection.endIndex.getter() < 1)
      {
        v134 = 0;
      }

      else
      {
        v134 = 0;
        do
        {
          v135 = Scene.AnchorCollection.subscript.getter(v134++);
          if ((*(*v135 + 128))(v135) == v9 && v10 == v136)
          {

LABEL_151:
            outlined consume of BindPath.Part(v146, v10, 0);

            v149 = v134;

            v2 = v135;
            goto LABEL_5;
          }

          v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v138)
          {
            goto LABEL_151;
          }

          v9 = v146;
        }

        while (v134 < Scene.AnchorCollection.endIndex.getter());
      }

      outlined consume of BindPath.Part(v9, v10, 0);

      v149 = v134;
LABEL_147:

      v2 = 0;
      goto LABEL_5;
    }

    v131 = v9;
    v132 = v10;
    v133 = 0;
LABEL_133:
    outlined consume of BindPath.Part(v131, v132, v133);
    goto LABEL_147;
  }

  if (v11 == 1)
  {

    v63 = Entity.anchor.getter();
    if (v63)
    {
      v144 = v6;
      v64 = *v63;
      HasHierarchy.children.getter(&v151);

      v65 = v151;

      v66 = *(v65 + 16);
      if (REEntityGetChildCount() < 1)
      {
LABEL_134:
        outlined consume of BindPath.Part(v9, v10, 1u);

        v7 = 0;
        goto LABEL_4;
      }

      v67 = 0;
      while (1)
      {
        v68 = *(v65 + 16);
        if (v67 >= REEntityGetChildCount())
        {
          goto LABEL_159;
        }

        v69 = *(v65 + 16);
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_169;
        }

        v71 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v72 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_164;
          }

          if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v73 = static SceneManager.customComponentTypeObjectIdToHandles;
          if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (v74 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v75 & 1) != 0))
          {
            v76 = *(*(v73 + 56) + 8 * v74);
            swift_endAccess();
          }

          else
          {
            v77 = v3;
            swift_endAccess();
            v78 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = static SceneManager.customComponentTypeObjectIdToHandles;
            v147 = static SceneManager.customComponentTypeObjectIdToHandles;
            static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
            v82 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
            v83 = *(v80 + 16);
            v84 = (v81 & 1) == 0;
            v85 = v83 + v84;
            if (__OFADD__(v83, v84))
            {
              goto LABEL_165;
            }

            v86 = v81;
            if (*(v80 + 24) >= v85)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v85, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
              v87 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
              if ((v86 & 1) != (v88 & 1))
              {
                goto LABEL_172;
              }

              v82 = v87;
            }

            v3 = v77;
            if (v86)
            {
              *(v147[7] + 8 * v82) = v78;
              v5 = v143;
            }

            else
            {
              v147[(v82 >> 6) + 8] |= 1 << v82;
              *(v147[6] + 8 * v82) = &type metadata for __EntityInfoComponent;
              *(v147[7] + 8 * v82) = v78;
              v89 = v147[2];
              v33 = __OFADD__(v89, 1);
              v90 = v89 + 1;
              v5 = v143;
              if (v33)
              {
                goto LABEL_167;
              }

              v147[2] = v90;
            }

            static SceneManager.customComponentTypeObjectIdToHandles = v147;
            swift_endAccess();
            v9 = v146;
          }

          if (REEntityGetCustomComponent())
          {
            Object = RECustomComponentGetObject();
            if (Object)
            {
              v92 = *Object;
              if (*(Object + 8))
              {
                v93 = 1;
              }

              else
              {
                v93 = v92 == 0;
              }

              if (v93)
              {
                v94 = *(Object + 8);
              }

              else
              {
                v95 = *v92;
                v96 = String.init(utf8String:)();
                if (v97)
                {
                  v98 = v96;
                }

                else
                {
                  v98 = 0;
                }

                if (v97)
                {
                  v99 = v97;
                }

                else
                {
                  v99 = 0xE000000000000000;
                }

                v92 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v95 == 42, v98, v99);

                type metadata accessor for IntrospectionDataCleanupHelper();
                *(swift_allocObject() + 16) = v92;
              }

              if (!v92)
              {
                goto LABEL_171;
              }

              v100 = String.init(utf8String:)();
              if (v101)
              {
                v102 = v101;
              }

              else
              {
                v100 = 0;
                v102 = 0xE000000000000000;
              }

              v103 = MEMORY[0x1C68F3280](v100, v102);

              v104 = NSClassFromString(v103);

              v9 = v146;
              if (v104)
              {
                swift_getObjCClassMetadata();
                type metadata accessor for Entity();
                v105 = swift_dynamicCastMetatype();
                if (v105)
                {
                  v7 = (*(v105 + 232))();
                  v106 = *(v7 + 16);

                  MEMORY[0x1C68F9740](v106, 0);
                  *(v7 + 16) = v71;
                  MEMORY[0x1C68F9740](v71, v7);

                  goto LABEL_114;
                }
              }
            }
          }

          v72 = makeEntity(for:)(v71);
        }

        v7 = v72;
LABEL_114:
        v107 = *(v65 + 16);
        v10 = v145;
        if (v67 >= REEntityGetChildCount())
        {
          goto LABEL_160;
        }

        v108 = *(v7 + 16);
        REEntityGetName();
        if (String.init(cString:)() == v9 && v145 == v109)
        {

          v139 = v9;
          goto LABEL_154;
        }

        v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v111)
        {
          v139 = v146;
LABEL_154:
          outlined consume of BindPath.Part(v139, v145, 1u);

LABEL_4:

          v2 = v7;
          v6 = v144;
LABEL_5:
          if (++v6 == v4)
          {
            return v2;
          }

          goto LABEL_6;
        }

        ++v67;

        v112 = *(v65 + 16);
        v9 = v146;
        if (v67 >= REEntityGetChildCount())
        {
          goto LABEL_134;
        }
      }
    }

    v131 = v9;
    v132 = v10;
    v133 = 1;
    goto LABEL_133;
  }

  if (v11 != 2)
  {
    v148 = 0;
    v149 = 0xE000000000000000;
    outlined copy of BindPath.Part(v9, v10, v11);
    _StringGuts.grow(_:)(63);
    v151 = v148;
    v152 = v149;
    MEMORY[0x1C68F3410](0xD000000000000026, 0x80000001C18DE390);
    v148 = v6;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v118);

    MEMORY[0x1C68F3410](10272, 0xE200000000000000);
    v148 = v9;
    v149 = v10;
    v150 = v11;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0xD000000000000013, 0x80000001C18DE3C0);
    v120 = v151;
    v119 = v152;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v121 = type metadata accessor for Logger();
    __swift_project_value_buffer(v121, static AnimationLogger.logger);

    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = v9;
      v125 = swift_slowAlloc();
      v126 = v5;
      v127 = v6;
      v128 = swift_slowAlloc();
      v148 = v128;
      *v125 = 136315138;
      *(v125 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v119, &v148);
      _os_log_impl(&dword_1C1358000, v122, v123, "%s", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      v129 = v128;
      v6 = v127;
      v5 = v126;
      MEMORY[0x1C6902A30](v129, -1, -1);
      MEMORY[0x1C6902A30](v125, -1, -1);

      v130 = v124;
    }

    else
    {

      v130 = v9;
    }

    outlined consume of BindPath.Part(v130, v145, v11);

    v2 = 0;
    v3 = v141;
    v4 = v142;
    goto LABEL_5;
  }

  v144 = v6;
  swift_retain_n();
  outlined copy of BindPath.Part(v9, v10, 2u);
  v12 = *(v2 + 16);
  if (REEntityGetChildCount() < 1)
  {
LABEL_3:
    outlined consume of BindPath.Part(v9, v10, 2u);

    v7 = 0;
    goto LABEL_4;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v2 + 16);
    if (v13 >= REEntityGetChildCount())
    {
      break;
    }

    v15 = *(v2 + 16);
    v16 = REEntityGetChild();
    if (!v16)
    {
      goto LABEL_168;
    }

    v17 = v16;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v18 = swift_dynamicCastClassUnconditional();
      goto LABEL_57;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_162;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = static SceneManager.customComponentTypeObjectIdToHandles;
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v21 & 1) == 0))
    {
      v23 = v4;
      v24 = v3;
      v25 = v2;
      swift_endAccess();
      v26 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v28 = static SceneManager.customComponentTypeObjectIdToHandles;
      v151 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v31 = *(v28 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_163;
      }

      v35 = v30;
      if (*(v28 + 24) >= v34)
      {
        v9 = v146;
        if (v27)
        {
          goto LABEL_28;
        }

        v38 = v29;
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
        v29 = v38;
        v37 = v151;
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        *(v37[7] + 8 * v29) = v26;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v27, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        v9 = v146;
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_172;
        }

LABEL_28:
        v37 = v151;
        if (v35)
        {
          goto LABEL_29;
        }

LABEL_31:
        v37[(v29 >> 6) + 8] |= 1 << v29;
        *(v37[6] + 8 * v29) = &type metadata for __EntityInfoComponent;
        *(v37[7] + 8 * v29) = v26;
        v39 = v37[2];
        v33 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v33)
        {
          goto LABEL_166;
        }

        v37[2] = v40;
      }

      static SceneManager.customComponentTypeObjectIdToHandles = v37;
      swift_endAccess();
      v2 = v25;
      v3 = v24;
      v4 = v23;
      v5 = v143;
      goto LABEL_34;
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
LABEL_34:
    v10 = v145;
    if (REEntityGetCustomComponent())
    {
      v41 = RECustomComponentGetObject();
      if (v41)
      {
        v42 = *v41;
        if (*(v41 + 8))
        {
          v43 = 1;
        }

        else
        {
          v43 = v42 == 0;
        }

        if (v43)
        {
          v44 = *(v41 + 8);
        }

        else
        {
          v45 = *v42;
          v46 = String.init(utf8String:)();
          if (v47)
          {
            v48 = v46;
          }

          else
          {
            v48 = 0;
          }

          if (v47)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0xE000000000000000;
          }

          v42 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v45 == 42, v48, v49);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v42;
        }

        if (!v42)
        {
          goto LABEL_170;
        }

        v50 = String.init(utf8String:)();
        if (v51)
        {
          v52 = v51;
        }

        else
        {
          v50 = 0;
          v52 = 0xE000000000000000;
        }

        v53 = MEMORY[0x1C68F3280](v50, v52);

        v54 = NSClassFromString(v53);

        v9 = v146;
        if (v54)
        {
          swift_getObjCClassMetadata();
          type metadata accessor for Entity();
          v55 = swift_dynamicCastMetatype();
          if (v55)
          {
            v7 = (*(v55 + 232))();
            v56 = *(v7 + 16);

            MEMORY[0x1C68F9740](v56, 0);
            *(v7 + 16) = v17;
            MEMORY[0x1C68F9740](v17, v7);

            goto LABEL_58;
          }
        }
      }
    }

    v18 = makeEntity(for:)(v17);
LABEL_57:
    v7 = v18;
LABEL_58:
    v57 = *(v2 + 16);
    if (v13 >= REEntityGetChildCount())
    {
      goto LABEL_158;
    }

    v58 = *(v7 + 16);
    REEntityGetName();
    if (String.init(cString:)() == v9 && v10 == v59)
    {

LABEL_149:
      outlined consume of BindPath.Part(v146, v10, 2u);

      goto LABEL_4;
    }

    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v61)
    {
      goto LABEL_149;
    }

    ++v13;

    v62 = *(v2 + 16);
    v9 = v146;
    if (v13 >= REEntityGetChildCount())
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Entity.ChildCollection.IndexingIterator.next()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  ChildCount = REEntityGetChildCount();
  v4 = v0[1];
  if (v4 >= ChildCount)
  {
    return 0;
  }

  result = Entity.ChildCollection.subscript.getter(v0[1]);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 16);
    result = REEntityGetChildCount();
    if (v4 < result)
    {
      v0[1] = v4 + 1;
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v6 = Hasher._finalize()();
  return a2(a1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt32 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v4);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v3);
    v6 = a1[2];
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (a1[4])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v6 = a1[2];
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v6);
  if (a1[4])
  {
LABEL_4:
    v7 = a1[3];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v3 = a1 >> 16;
  v4 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](HIDWORD(a1) & 1);
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (a1 >> 40) & 1;
  }

  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFFFFFF0001, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v7 = HIWORD(a1);
  v8 = *(v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](a2);
  }

  if ((a3 & 0xFF00) == 0x200)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10]((a3 >> 8) & 1);
  }

  if ((a3 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = HIWORD(a3) & 1;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a1 & 1);
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68F4C10](a1);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 0x101, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AnyKeyPath();
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68F40A0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v3;
  v37[6] = *(a1 + 96);
  v38 = *(a1 + 112);
  v4 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v4;
  v5 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v5;
  v6 = -1 << *(v2 + 32);
  v7 = a2 & ~v6;
  if ((*(v2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v2 + 48) + 120 * v7;
      v10 = *(v9 + 48);
      v12 = *v9;
      v11 = *(v9 + 16);
      v33[2] = *(v9 + 32);
      v33[3] = v10;
      v33[0] = v12;
      v33[1] = v11;
      v14 = *(v9 + 80);
      v13 = *(v9 + 96);
      v15 = *(v9 + 64);
      v34 = *(v9 + 112);
      v33[5] = v14;
      v33[6] = v13;
      v33[4] = v15;
      v16 = *v9;
      v17 = *(v9 + 32);
      v18 = *(v9 + 48);
      v26 = *(v9 + 16);
      v27 = v17;
      v25 = v16;
      v19 = *(v9 + 64);
      v20 = *(v9 + 80);
      v21 = *(v9 + 96);
      v32 = *(v9 + 112);
      v30 = v20;
      v31 = v21;
      v28 = v18;
      v29 = v19;
      outlined init with copy of CustomMaterial.CustomShaderParameters(v33, v24);
      v22 = specialized static CustomMaterial.CustomShaderParameters.== infix(_:_:)(&v25, v37);
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      v35[0] = v25;
      v35[1] = v26;
      v36 = v32;
      v35[2] = v27;
      v35[3] = v28;
      outlined destroy of CustomMaterial.CustomShaderParameters(v35);
      if (v22)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    do
    {
      if (*(*(*(v2 + 48) + 8 * result) + 16) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 40 * v5);
      if (*v10 != v8)
      {
        goto LABEL_4;
      }

      v12 = v10[1];
      v11 = v10[2];
      v13 = v10[3];
      v14 = v10[4];
      v15 = a1[1];
      if (v12)
      {
        if (!v15 || v12 != v15)
        {
          goto LABEL_4;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      v16 = a1[2];
      if (v11)
      {
        if (!v16 || v11 != v16)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = a1[4];
      if (v14)
      {
        if (v17)
        {
          v18 = v13 == a1[3] && v14 == v17;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v5;
          }
        }
      }

      else if (!v17)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = WORD1(a1);
    v7 = ~v4;
    v8 = BYTE4(a1);
    v9 = a1 & 0xFF0000000000;
    v10 = HIDWORD(a1) & 1;
    v11 = a1 & 1;
    v12 = (a1 >> 40) & 1;
    do
    {
      v13 = (*(v2 + 48) + 6 * result);
      if (*v13 != v11 || *(v13 + 1) != v6)
      {
        goto LABEL_4;
      }

      v15 = v13[4];
      v16 = v13[5];
      if (v15 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (v8 == 2 || v10 != (v15 & 1))
      {
        goto LABEL_4;
      }

      if (v16 == 2)
      {
        if (v9 == 0x20000000000)
        {
          return result;
        }
      }

      else if (v9 != 0x20000000000 && ((v12 ^ v16) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = a3 & 0xFF00;
    v10 = a3 & 0xFF0000;
    do
    {
      v11 = *(v4 + 48) + 24 * result;
      if (*v11 != (a1 & 1) || *(v11 + 2) != HIWORD(a1))
      {
        goto LABEL_4;
      }

      v13 = *(v11 + 17);
      v14 = *(v11 + 18);
      if (*(v11 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((a3 & 1) != 0 || *(v11 + 8) != a2)
      {
        goto LABEL_4;
      }

      if (v13 == 2)
      {
        if (v9 != 512)
        {
          goto LABEL_4;
        }
      }

      else if (v9 == 512 || ((a3 >> 8) & 1) != (v13 & 1))
      {
        goto LABEL_4;
      }

      if (v14 == 2)
      {
        if (v10 == 0x20000)
        {
          return result;
        }
      }

      else if (v10 != 0x20000 && ((v14 ^ ((a3 & 0x10000) >> 16)) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = *a1;
    v10 = a1[1];
    v22 = v10;
    do
    {
      v11 = *(v6 + 48) + 56 * v5;
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      v27 = *(v11 + 48);
      v25 = v13;
      v26 = v12;
      v24 = v14;
      if (v14 != __PAIR128__(v10, v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v25 != *(a1 + 2))
      {
        goto LABEL_4;
      }

      v15 = a1[3];
      if (*(&v25 + 1))
      {
        if (!v15)
        {
          goto LABEL_4;
        }

        type metadata accessor for CGColorRef(0);
        outlined init with copy of ExtrudedGlyphDescriptor.Info(&v24, v23);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
        v16 = v15;
        v10 = v22;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
LABEL_3:
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v24);
          goto LABEL_4;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_4;
        }

        outlined init with copy of ExtrudedGlyphDescriptor.Info(&v24, v23);
      }

      v18 = a1[5];
      if (*(&v26 + 1))
      {
        if (!v18)
        {
          goto LABEL_3;
        }

        if (v26 == *(a1 + 2))
        {
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v24);
        }

        else
        {
          v19 = a1[5];
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v24);
          if ((v20 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v24);
        if (v18)
        {
          goto LABEL_4;
        }
      }

      if (__PAIR64__(HIDWORD(v27), v27) == __PAIR64__(*(a1 + 13), *(a1 + 24)))
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v8 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySOs6UInt64VGMd, &_ss18_DictionaryStorageCySOs6UInt64VGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      v33 = *v23;
      v34 = v23[1];
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 32 * v16);
      *v17 = v33;
      v17[1] = v34;
      ++*(v8 + 16);
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMd, &_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMd, &_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v22);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v37;
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
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMd, &_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v21);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 56 * v22;
      v41 = *(v26 + 16);
      v42 = *v26;
      v40 = *(v26 + 32);
      v27 = *(v26 + 48);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 56 * v16;
      *v18 = v42;
      *(v18 + 16) = v41;
      *(v18 + 32) = v40;
      *(v18 + 48) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMd, &_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        outlined init with take of ForceEffectBase(v22, v32);
      }

      else
      {
        outlined init with copy of __REAssetService(v22, v32);
      }

      result = MEMORY[0x1C68F4BE0](*(v8 + 40), v21);
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of ForceEffectBase(v32, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays4Int8VG9REECSCore23ObservationKeyPathTableV5ValueVGMd, &_ss18_DictionaryStorageCySays4Int8VG9REECSCore23ObservationKeyPathTableV5ValueVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 32 * v22;
      v42 = *v24;
      v25 = *(v24 + 24);
      v41 = *(v24 + 16);
      if ((v40 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v23 + 16));
      v27 = *(v23 + 16);
      if (v27)
      {
        v28 = (v23 + 32);
        do
        {
          v29 = *v28++;
          Hasher._combine(_:)(v29);
          --v27;
        }

        while (v27);
      }

      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v25;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v25;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v42;
      *(v18 + 16) = v41;
      *(v18 + 24) = v17;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_38;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV9REECSCore23ObservationKeyPathTableV5ValueVGMd, &_ss18_DictionaryStorageCys13OpaquePointerV9REECSCore23ObservationKeyPathTableV5ValueVGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 32 * v21;
      v38 = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 24);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v22);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 32 * v16;
      *v17 = v38;
      *(v17 + 16) = v24;
      *(v17 + 24) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v21);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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
        goto LABEL_17;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v32;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMd, &_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v21);
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
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      if (v38)
      {
        v39 = *(v23 + 8);
        v40 = *v23;
        v41 = *(v23 + 24);
        v24 = *(v23 + 36);
        v44 = *(v23 + 32);
        v45 = *(v23 + 48);
        v46 = *(v23 + 64);
        v47 = *(v23 + 56);
        v42 = *(v23 + 72);
        v43 = *(v23 + 40);
      }

      else
      {
        v25 = *(v23 + 16);
        v26 = *(v23 + 32);
        v27 = *(v23 + 64);
        v51 = *(v23 + 48);
        v52 = v27;
        *&v49[16] = v25;
        v50 = v26;
        *v49 = *v23;
        v46 = v27;
        v47 = *(&v51 + 1);
        v42 = *(&v27 + 1);
        v43 = *(&v26 + 1);
        v44 = v26;
        v45 = v51;
        v24 = BYTE4(v26);
        v40 = *v49;
        v41 = *(&v25 + 1);
        v39 = *&v49[8];
        outlined init with copy of ComponentInfo(v49, v48);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v22);
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v49[0] = v24;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v40;
      *(v17 + 8) = v39;
      *(v17 + 24) = v41;
      *(v17 + 32) = v44;
      *(v17 + 36) = v24;
      *(v17 + 40) = v43;
      *(v17 + 48) = v45;
      *(v17 + 56) = v47;
      *(v17 + 64) = v46;
      *(v17 + 72) = v42;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      if (v38)
      {
        v24 = *v23;
        v39 = *(v23 + 8);
        v40 = *(v23 + 24);
        v25 = *(v23 + 36);
        v42 = *(v23 + 40);
        v43 = *(v23 + 32);
        v44 = *(v23 + 48);
        v45 = *(v23 + 56);
        v41 = *(v23 + 64);
      }

      else
      {
        v26 = *(v23 + 16);
        v27 = *(v23 + 32);
        v28 = *(v23 + 64);
        v49 = *(v23 + 48);
        v50 = v28;
        *&v47[16] = v26;
        v48 = v27;
        *v47 = *v23;
        v45 = *(&v49 + 1);
        v41 = v28;
        v42 = *(&v27 + 1);
        v43 = v27;
        v44 = v49;
        v25 = BYTE4(v27);
        v40 = *(&v26 + 1);
        v24 = *v47;
        v39 = *&v47[8];
        outlined init with copy of ComponentInfo(v47, v46);
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v47[0] = v25;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v24;
      *(v17 + 8) = v39;
      *(v17 + 24) = v40;
      *(v17 + 32) = v43;
      *(v17 + 36) = v25;
      *(v17 + 40) = v42;
      *(v17 + 48) = v44;
      *(v17 + 56) = v45;
      *(v17 + 64) = v41;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (v38)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMd, &_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit17AnimationResourceCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 80 * v22);
      if (v40)
      {
        v46 = v26[1];
        v47 = v26[2];
        v48[0] = v26[3];
        *(v48 + 9) = *(v26 + 57);
        v45 = *v26;
      }

      else
      {
        v41 = *v26;
        v28 = v26[2];
        v27 = v26[3];
        v29 = v26[1];
        *&v44[9] = *(v26 + 57);
        v43 = v28;
        *v44 = v27;
        v42 = v29;

        outlined init with copy of AudioMixGroup(&v41, &v45);
        v47 = v43;
        v48[0] = *v44;
        *(v48 + 9) = *&v44[9];
        v45 = v41;
        v46 = v42;
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 80 * v16);
      v18[1] = v46;
      v18[2] = v47;
      v18[3] = v48[0];
      *(v18 + 57) = *(v48 + 9);
      *v18 = v45;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMd, &_ss18_DictionaryStorageCySS10RealityKit13AudioResourceCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation11IKComponentV6SolverC2IDVSiGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(v23, v34);
      }

      else
      {
        outlined init with copy of [String : String](v23, v34, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(v34, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSSGMd, &_ss18_DictionaryStorageCySOSSGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G3SetVGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G3SetVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 40 * v22);
      v26 = v25[1];
      v43 = *v25;
      v44 = *v23;
      v27 = v25[3];
      v42 = v25[2];
      v28 = v25[4];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 40 * v16);
      *v18 = v43;
      v18[1] = v26;
      v18[2] = v42;
      v18[3] = v27;
      v18[4] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS17RealityFoundation18MaterialParametersV5ValueOGMd, &_ss18_DictionaryStorageCySS17RealityFoundation18MaterialParametersV5ValueOGMR, outlined init with copy of MaterialParameters.Value);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLVypGMd, "$M\a");
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_45;
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
            goto LABEL_17;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_43;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v2;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 40 * v21);
      v24 = v23[1];
      v40 = *v23;
      v25 = v23[2];
      v39 = v23[3];
      v26 = v23[4];
      v27 = (v22 + 32 * v21);
      if (v38)
      {
        outlined init with take of Any(v27, v41);
      }

      else
      {
        outlined init with copy of Any(v27, v41);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C50](v40);
      if (v24)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v24);
        if (v25)
        {
          goto LABEL_22;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v25)
        {
LABEL_22:
          Hasher._combine(_:)(1u);
          MEMORY[0x1C68F4C10](v25);
          if (v26)
          {
            goto LABEL_23;
          }

          goto LABEL_26;
        }
      }

      Hasher._combine(_:)(0);
      if (v26)
      {
LABEL_23:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_27;
      }

LABEL_26:
      Hasher._combine(_:)(0);
LABEL_27:
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 40 * v16);
      *v17 = v40;
      v17[1] = v24;
      v17[2] = v25;
      v17[3] = v39;
      v17[4] = v26;
      result = outlined init with take of Any(v41, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v37;
    }
  }

LABEL_43:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMd, &_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      if (a2)
      {
        outlined init with take of __RKEntityAction.ActionStateObservation(v22, v32);
      }

      else
      {
        outlined init with copy of __RKEntityAction.ActionStateObservation(v22, v32);
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v21);
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of __RKEntityAction.ActionStateObservation(v32, *(v8 + 56) + 16 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v21 + 16));
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v21 + 16));
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSs5Int64VGMd, &_ss18_DictionaryStorageCySSs5Int64VGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySis5Int64VGMd, &_ss18_DictionaryStorageCySis5Int64VGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v21 + 16));
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit9Component_pXpGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit9Component_pXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v33 = *(*(v5 + 56) + 16 * v20);
      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v21);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v33;
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
        goto LABEL_17;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v32;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v39 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      MEMORY[0x1C68F4C10](v24);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 24 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      *(*(v8 + 56) + 8 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_42;
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
            goto LABEL_17;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_40;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 6 * v21;
      v40 = *v23;
      v41 = *(v23 + 2);
      v24 = *(v23 + 4);
      v25 = *(v23 + 5);
      v26 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v41);
      if (v24 == 2)
      {
        Hasher._combine(_:)(0);
        if (v25 != 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v24 & 1);
        if (v25 != 2)
        {
LABEL_21:
          Hasher._combine(_:)(1u);
          v28 = v25 & 1;
          goto LABEL_24;
        }
      }

      v28 = 0;
LABEL_24:
      Hasher._combine(_:)(v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 6 * v16;
      *v17 = v40;
      *(v17 + 2) = v41;
      *(v17 + 4) = v24;
      *(v17 + 5) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v38;
    }
  }

LABEL_40:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v20 = v9;
        while (1)
        {
          v9 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v9 >= v14)
          {
            break;
          }

          v21 = v10[v9];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v13 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_43;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v38;
        }

        *(v5 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 24 * v22;
      v45 = *v24;
      v25 = *(v24 + 2);
      v43 = *(v24 + 8);
      v44 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = *(v24 + 18);
      v28 = *(v23 + 8 * v22);
      if ((v41 & 1) == 0)
      {
      }

      v42 = v28;
      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v25);
      if (v44)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v43);
      }

      if (v26 == 2)
      {
        Hasher._combine(_:)(0);
        if (v27 != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v26 & 1);
        if (v27 != 2)
        {
LABEL_24:
          Hasher._combine(_:)(1u);
          v30 = v27 & 1;
          goto LABEL_27;
        }
      }

      v30 = 0;
LABEL_27:
      Hasher._combine(_:)(v30);
      Hasher._combine(_:)(v45);
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v45;
      *(v18 + 2) = v25;
      *(v18 + 8) = v43;
      *(v18 + 16) = v44;
      *(v18 + 17) = v26;
      *(v18 + 18) = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v40;
    }
  }

LABEL_43:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV5JointV2IDVSiGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVSiGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        outlined init with take of ForceEffectBase(v25, v37);
      }

      else
      {
        outlined init with copy of __REAssetService(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of ForceEffectBase(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMd, &_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10RealityKit26__RKMaterialParameterBlockV0F0OGMd, &_ss18_DictionaryStorageCySS10RealityKit26__RKMaterialParameterBlockV0F0OGMR, outlined init with copy of __RKMaterialParameterBlock.Parameter);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v20 = v9;
        while (1)
        {
          v9 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_45;
          }

          if (v9 >= v14)
          {
            break;
          }

          v21 = v10[v9];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v13 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_43;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v38;
        }

        *(v5 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 24 * v22;
      v45 = *v24;
      v25 = *(v24 + 2);
      v43 = *(v24 + 8);
      v44 = *(v24 + 16);
      v26 = *(v24 + 17);
      v27 = *(v24 + 18);
      v28 = *(v23 + 8 * v22);
      if ((v41 & 1) == 0)
      {
      }

      v42 = v28;
      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v25);
      if (v44)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v43);
      }

      if (v26 == 2)
      {
        Hasher._combine(_:)(0);
        if (v27 != 2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v26 & 1);
        if (v27 != 2)
        {
LABEL_24:
          Hasher._combine(_:)(1u);
          v30 = v27 & 1;
          goto LABEL_27;
        }
      }

      v30 = 0;
LABEL_27:
      Hasher._combine(_:)(v30);
      Hasher._combine(_:)(v45);
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v17 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v45;
      *(v18 + 2) = v25;
      *(v18 + 8) = v43;
      *(v18 + 16) = v44;
      *(v18 + 17) = v26;
      *(v18 + 18) = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v40;
    }
  }

LABEL_43:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        outlined copy of Data._Representation(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G8SetCacheCGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G8SetCacheCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G15CollectionCacheCGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G15CollectionCacheCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G0VGMd, &_ss18_DictionaryStorageCySS10RealityKit6EntityC0C10FoundationE20ConfigurationCatalogV0G0VGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v24 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = *(*(v5 + 48) + 8 * v27);
      v29 = *(v5 + 56) + (v27 << 7);
      if (a2)
      {
        v30 = *v29;
        v31 = *(v29 + 16);
        v32 = *(v29 + 48);
        v47 = *(v29 + 32);
        v48 = v32;
        v45 = v30;
        v46 = v31;
        v33 = *(v29 + 64);
        v34 = *(v29 + 80);
        v35 = *(v29 + 96);
        v52 = *(v29 + 112);
        v50 = v34;
        v51 = v35;
        v49 = v33;
      }

      else
      {
        outlined init with copy of PhotogrammetrySession.Pose(v29, &v45);
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v28);
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v28;
      v17 = *(v8 + 56) + (v16 << 7);
      v18 = v45;
      v19 = v46;
      v20 = v48;
      *(v17 + 32) = v47;
      *(v17 + 48) = v20;
      *v17 = v18;
      *(v17 + 16) = v19;
      v21 = v49;
      v22 = v50;
      v23 = v51;
      *(v17 + 112) = v52;
      *(v17 + 80) = v22;
      *(v17 + 96) = v23;
      *(v17 + 64) = v21;
      ++*(v8 + 16);
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v13 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v43 = 1 << *(v5 + 32);
      if (v43 >= 64)
      {
        bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v43;
      }

      *(v5 + 16) = 0;
    }

    v3 = v44;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMd, &_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      v35 = *(v23 + 32);
      v36 = *(v23 + 48);
      v37 = *(v23 + 64);
      v33 = *v23;
      v34 = *(v23 + 16);
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *(v17 + 32) = v35;
      *(v17 + 48) = v36;
      *(v17 + 64) = v37;
      *v17 = v33;
      *(v17 + 16) = v34;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_34;
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMd, &_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 40 * v21);
      v40 = *(v23 + 17);
      if (v39)
      {
        outlined init with take of ForceEffectBase(v27, v41);
      }

      else
      {
        outlined init with copy of __REAssetService(v27, v41);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 17) = v40;
      result = outlined init with take of ForceEffectBase(v41, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v40 = *(v23 + 18);
      v41 = *(v23 + 17);
      v38 = *(v23 + 20);
      v39 = *(v23 + 19);
      if ((v37 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 17) = v41;
      *(v17 + 18) = v40;
      *(v17 + 19) = v39;
      *(v17 + 20) = v38;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd, &_ss18_DictionaryStorageCySiSSGMR);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v22);
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVSiGMd, &_ss18_DictionaryStorageCys13OpaquePointerVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVSSGMd, &_ss18_DictionaryStorageCys13OpaquePointerVSSGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v22);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMd, &_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
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
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_pXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_pXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v21);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMd, &_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMR);
  v49 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v48 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 56 * v22;
      if (v49)
      {
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v58 = *(v24 + 32);
        LOWORD(v59) = *(v24 + 48);
        HIDWORD(v59) = *(v24 + 52);
        v29 = (v23 + 72 * v22);
        v50 = v29[1];
        v51 = *v29;
        v30 = v29[2];
        v54 = v29[4];
        v52 = v29[3];
        v53 = v29[5];
        v55 = *(v29 + 24);
        v57 = *(v29 + 13);
        v56 = *(v29 + 7);
      }

      else
      {
        v32 = *(v24 + 16);
        v31 = *(v24 + 32);
        v33 = *v24;
        v64 = *(v24 + 48);
        v62 = v32;
        v63 = v31;
        v61 = v33;
        v34 = v23 + 72 * v22;
        v36 = *(v34 + 32);
        v35 = *(v34 + 48);
        v37 = *(v34 + 16);
        *&v66[16] = *(v34 + 64);
        v65[2] = v36;
        *v66 = v35;
        v65[1] = v37;
        v65[0] = *v34;
        v59 = v64 & 0xFFFFFFFF0000FFFFLL;
        v58 = v63;
        v28 = *(&v62 + 1);
        v27 = *&v62;
        v25 = *(&v61 + 1);
        v26 = v61;
        v56 = *&v66[8];
        v57 = DWORD1(v35);
        v55 = v35;
        v53 = *(&v36 + 1);
        v54 = v36;
        v30 = v37;
        v51 = *&v65[0];
        v52 = *(&v37 + 1);
        v50 = *(&v65[0] + 1);
        outlined init with copy of ExtrudedGlyphDescriptor.Info(&v61, v60);
        outlined init with copy of ExtrudedGlyphDescriptor(v65, v60);
      }

      v38 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v27 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v27;
      }

      MEMORY[0x1C68F4C50](*&v39);
      if (v28)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CGColorRef(0);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v59);
      Hasher._combine(_:)(HIDWORD(v59));
      result = Hasher._finalize()();
      v40 = -1 << *(v8 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v27;
      *(v17 + 24) = v28;
      *(v17 + 32) = v58;
      *(v17 + 48) = v59;
      *(v17 + 52) = HIDWORD(v59);
      v18 = *(v8 + 56) + 72 * v16;
      *v18 = v51;
      *(v18 + 8) = v50;
      *(v18 + 16) = v30;
      *(v18 + 24) = v52;
      *(v18 + 32) = v54;
      *(v18 + 40) = v53;
      *(v18 + 48) = v55;
      *(v18 + 52) = v57;
      *(v18 + 56) = v56;
      ++*(v8 + 16);
      v5 = v48;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_42;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v2;
    if (v47 >= 64)
    {
      bzero(v10, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs5Int32VGMd, &_ss18_DictionaryStorageCySSs5Int32VGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMd, &_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      result = MEMORY[0x1C68F4BD0](*(v8 + 40), v21, 4);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
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
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMd, &_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay17RealityFoundation22StateMachineTransitionVGGMd, &_ss18_DictionaryStorageCySSSay17RealityFoundation22StateMachineTransitionVGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo5RESRTaGMd, &_ss18_DictionaryStorageCySSSo5RESRTaGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 48 * v22);
      v39 = v26[1];
      v40 = *v26;
      v38 = v26[2];
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 48 * v16);
      *v18 = v40;
      v18[1] = v39;
      v18[2] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_42;
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
            goto LABEL_17;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_40;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 6 * v21;
      v40 = *v23;
      v41 = *(v23 + 2);
      v24 = *(v23 + 4);
      v25 = *(v23 + 5);
      v26 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v41);
      if (v24 == 2)
      {
        Hasher._combine(_:)(0);
        if (v25 != 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1C68F4C10](v24 & 1);
        if (v25 != 2)
        {
LABEL_21:
          Hasher._combine(_:)(1u);
          v28 = v25 & 1;
          goto LABEL_24;
        }
      }

      v28 = 0;
LABEL_24:
      Hasher._combine(_:)(v28);
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 6 * v16;
      *v17 = v40;
      *(v17 + 2) = v41;
      *(v17 + 4) = v24;
      *(v17 + 5) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v38;
    }
  }

LABEL_40:
  *v3 = v8;
  return result;
}