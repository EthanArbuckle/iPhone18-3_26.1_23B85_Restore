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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI26DynamicScanVolumeEstimatorC12SphereSampleVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

uint64_t specialized closure #1 in closure #1 in _RealityViewImpl.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RealityViewCameraContent(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for _RealityViewImpl();
  v14 = *(v13 + 44);
  v15 = type metadata accessor for GeometryProxy();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12, a2 + v14, v15);
  (*(v16 + 56))(v12, 0, 1, v15);
  v17 = a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI23_RealityViewCameraModel_content;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v12, v17 + *(v5 + 32), &_s7SwiftUI13GeometryProxyVSgMd, &_s7SwiftUI13GeometryProxyVSgMR);
  v18 = *(v13 + 48);
  swift_weakLoadStrong();
  v19 = *(v5 + 36);
  swift_weakAssign();
  swift_endAccess();

  outlined init with copy of RealityViewCamera(v17, v8, type metadata accessor for RealityViewCameraContent);
  RealityViewCameraContent.makeSettings()();
  outlined destroy of RealityViewCamera(v8, type metadata accessor for RealityViewCameraContent);
  return *v17;
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.ContentStorage.deinit(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in RealityViewCameraContent.ContentStorage.deinit(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.renderingEffects.didset()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = ARView.PostProcessContext.realityViewPostProcessContext.read();
  v2(v4);
  return v3(&v6, 0);
}

uint64_t partial apply for closure #2 in RealityViewCameraContent.camera.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #2 in RealityViewCameraContent.camera.didset(a1, v4, v5, v6);
}

uint64_t objectdestroy_147Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in RealityViewCameraContent.camera.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in nonisolated_PrivateTearDown(of:);

  return closure #1 in RealityViewCameraContent.camera.didset(a1, v4, v5, v6);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x277CDB4A8]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x277CDB4A8]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x277CDB4C0]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          _s19_RealityKit_SwiftUI0C19UIImplicitAnimationCAC0A10Foundation20EntityChangeModifierAAWlTm_0(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x277CDB4C0]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout RealityViewCameraContent) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata completion function for RealityViewCameraConvertible()
{
  result = type metadata accessor for ARView();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GeometryProxy();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for RealityViewCameraComponent()
{
  type metadata accessor for GeometryProxy?(319, &lazy cache variable for type metadata for GeometryProxy?, MEMORY[0x277CDF6E0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

BOOL specialized static ObjectCaptureSharedSymbols.isNonExistentOrEmptyDirectory(_:)()
{
  v17 = *MEMORY[0x277D85DE8];
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    result = 0;
    goto LABEL_10;
  }

  v0 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v16 = 0;
  v1 = URL.path.getter();
  v2 = MEMORY[0x23EEAF480](v1);

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v16];

  if ((v3 & 1) == 0)
  {

LABEL_8:
    result = 1;
    goto LABEL_10;
  }

  if ((v16 & 1) == 0)
  {

    result = 0;
    goto LABEL_10;
  }

  v4 = URL.path.getter();
  v5 = MEMORY[0x23EEAF480](v4);

  v15 = 0;
  v6 = [v0 contentsOfDirectoryAtPath:v5 error:&v15];

  v7 = v15;
  if (!v6)
  {
    v13 = v15;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_8;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v7;

  v10 = *(v8 + 16);

  result = v10 == 0;
LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for ARFreeformCapturingView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ARFreeformCapturingView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in ARFreeformCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  closure #1 in closure #1 in ARFreeformCapturingView.body.getter(a1, a2, &v37);
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v35[8] = v45;
  v35[9] = v46;
  v35[10] = v47;
  v35[4] = v41;
  v35[5] = v42;
  v35[6] = v43;
  v35[7] = v44;
  v35[0] = v37;
  v35[1] = v38;
  v34 = v48;
  v36 = v48;
  v35[2] = v39;
  v35[3] = v40;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v23, v21, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMR);
  outlined destroy of PerspectiveCameraComponent?(v35, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAF08FreeformjD0VGAA21_TraitWritingModifierVyAA010TransitionL3KeyVGGSg_AEyAEyAF013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA06_FrameV0VGSgtGMR);
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v22 = *a2;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAP08FreeformoD0VGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGSg_AOyAOyAP013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniD0VyAP08FreeformoD0VGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGSg_AOyAOyAP013ARKitCoachingD0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGMR);
  v10 = *(v9 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v21[0] = *(a2 + 24);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *a3 = v6;
  *(a3 + 8) = v8;
  v13 = v46;
  *(a3 + 144) = v45;
  *(a3 + 160) = v13;
  *(a3 + 176) = v47;
  *(a3 + 192) = v48;
  v14 = v42;
  *(a3 + 80) = v41;
  *(a3 + 96) = v14;
  v15 = v44;
  *(a3 + 112) = v43;
  *(a3 + 128) = v15;
  v16 = v38;
  *(a3 + 16) = v37;
  *(a3 + 32) = v16;
  v17 = v40;
  *(a3 + 48) = v39;
  *(a3 + 64) = v17;
  v18 = (a3 + *(v9 + 56));
  *v18 = partial apply for closure #2 in closure #1 in ARFreeformCapturingView.body.getter;
  v18[1] = v11;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v22, v20, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v21, v20, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t closure #1 in closure #1 in ARFreeformCapturingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OpacityTransition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  GeometryProxy.size.getter();
  v15 = v14;
  v51 = a1;
  GeometryProxy.size.getter();
  v17 = v16;
  v102[0] = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  if (v89 == 1)
  {
    v18 = *(a2 + 16);
    type metadata accessor for DataModel(0);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);

    v63 = ObservedObject.init(wrappedValue:)();
    v57 = v19;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v21 = v89;
    if (!v89)
    {
      __break(1u);
      return result;
    }

    if (v17 >= v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 * v18;
    specialized FreeformMiniView.init(model:renderer:)(v89, v101);

    outlined destroy of PerspectiveCameraComponent?(v102, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    outlined destroy of PerspectiveCameraComponent?(v102, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v55 = v101[1];
    v56 = v101[0];
    v53 = v101[3];
    v54 = v101[2];
    v52 = v101[4];
    v61 = v101[6];
    v62 = v101[5];
    v59 = v101[8];
    v60 = v101[7];
    OpacityTransition.init()();
    (*(v7 + 16))(v11, v13, v6);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    *(&v58 + 1) = AnyTransition.init<A>(_:)();
    (*(v7 + 8))(v13, v6);
    *&v58 = 0x4034000000000000;
    v24 = v63;
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v102, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v24 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0uLL;
    v23 = 0.0;
  }

  v89 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v76 == 1)
  {
    type metadata accessor for DataModel(0);
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
    v25 = ObservedObject.init(wrappedValue:)();
    v27 = v26;
    v28 = static Edge.Set.all.getter();
    GeometryProxy.size.getter();
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = v101[9];
    v30 = v101[10];
    v31 = v101[11];
    v32 = v101[12];
    v33 = v28;
    v34 = v101[13];
    v35 = v101[14];
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(v102, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
    v25 = 0;
    v27 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
  }

  v36 = v57;
  *&v76 = v24;
  *(&v76 + 1) = v57;
  *&v77 = v23;
  v63 = v24;
  v38 = v55;
  v37 = v56;
  *(&v77 + 1) = v56;
  *&v78 = v55;
  v40 = v53;
  v39 = v54;
  *(&v78 + 1) = v54;
  *&v79 = v53;
  v41 = v52;
  *(&v79 + 1) = v52;
  *&v80 = v62;
  *(&v80 + 1) = v61;
  *&v81 = v60;
  *(&v81 + 1) = v59;
  v82 = v58;
  *&v83 = v25;
  v64 = v76;
  v65 = v77;
  v68 = v80;
  v69 = v81;
  v66 = v78;
  v67 = v79;
  *(&v83 + 1) = v27;
  *&v84 = v33;
  *(&v84 + 1) = v29;
  *&v85 = v30;
  *(&v85 + 1) = v31;
  *&v86 = v32;
  *(&v86 + 1) = v34;
  v87 = v35;
  v70 = v58;
  v71 = v83;
  v75 = v35;
  v73 = v85;
  v74 = v86;
  v72 = v84;
  v42 = v76;
  v43 = v77;
  v44 = v79;
  *(a3 + 32) = v78;
  *(a3 + 48) = v44;
  *a3 = v42;
  *(a3 + 16) = v43;
  v45 = v68;
  v46 = v69;
  v47 = v71;
  *(a3 + 96) = v70;
  *(a3 + 112) = v47;
  *(a3 + 64) = v45;
  *(a3 + 80) = v46;
  v48 = v72;
  v49 = v73;
  v50 = v74;
  *(a3 + 176) = v75;
  *(a3 + 144) = v49;
  *(a3 + 160) = v50;
  *(a3 + 128) = v48;
  v88[0] = v25;
  v88[1] = v27;
  v88[2] = v33;
  v88[3] = v29;
  v88[4] = v30;
  v88[5] = v31;
  v88[6] = v32;
  v88[7] = v34;
  v88[8] = v35;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v76, &v89, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v83, &v89, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  outlined destroy of PerspectiveCameraComponent?(v88, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMd, &_s7SwiftUI15ModifiedContentVyACy012_RealityKit_aB017ARKitCoachingViewVAA23_SafeAreaIgnoringLayoutVGAA06_FrameM0VGSgMR);
  *&v89 = v63;
  *(&v89 + 1) = v36;
  v90 = v23;
  v91 = v37;
  v92 = v38;
  v93 = v39;
  v94 = v40;
  v95 = v41;
  v96 = v62;
  v97 = v61;
  v98 = v60;
  v99 = v59;
  v100 = v58;
  return outlined destroy of PerspectiveCameraComponent?(&v89, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMd, &_s7SwiftUI15ModifiedContentVy012_RealityKit_aB017StackableMiniViewVyAD08FreeformhI0VGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGSgMR);
}

uint64_t closure #2 in closure #1 in ARFreeformCapturingView.body.getter(char *a1)
{
  v2 = *a1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t protocol witness for View.body.getter in conformance ARFreeformCapturingView@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 24);
  v8 = *v1;
  v9 = v3;
  v4 = swift_allocObject();
  v5 = v1[1];
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 4);
  *a1 = partial apply for closure #1 in ARFreeformCapturingView.body.getter;
  a1[1] = v4;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v8, v7, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMd, &_s7SwiftUI14ObservedObjectVy012_RealityKit_aB09DataModelCGMR);
  return outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v9, v7, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in ARFreeformCapturingView.body.getter()
{
  v3 = *(*(v0 + 16) + 24);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>()
{
  result = lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>;
  if (!lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14GeometryReaderVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleF0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniF0VyAR08FreeformqF0VGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGSg_AQyAQyAR013ARKitCoachingF0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGGMd, &_s7SwiftUI14GeometryReaderVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA05TupleF0VyAA15ModifiedContentVy012_RealityKit_aB0013StackableMiniF0VyAR08FreeformqF0VGAA21_TraitWritingModifierVyAA010TransitionS3KeyVGGSg_AQyAQyAR013ARKitCoachingF0VAA23_SafeAreaIgnoringLayoutVGAA12_FrameLayoutVGSgtGGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeometryReader<SubscriptionView<Published<Bool>.Publisher, ZStack<TupleView<(ModifiedContent<StackableMiniView<FreeformMiniView>, _TraitWritingModifier<TransitionTraitKey>>?, ModifiedContent<ModifiedContent<ARKitCoachingView, _SafeAreaIgnoringLayout>, _FrameLayout>?)>>>> and conformance GeometryReader<A>);
  }

  return result;
}

__n128 closure #1 in ObjectSelectionView.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = static VerticalAlignment.center.getter();
  closure #1 in closure #1 in ObjectSelectionView.body.getter(a1, v9, a3);
  *&v8[55] = v9[3];
  *&v8[71] = v9[4];
  *&v8[87] = v9[5];
  *&v8[7] = v9[0];
  *&v8[23] = v9[1];
  *&v8[39] = v9[2];
  *(a2 + 81) = *&v8[48];
  *(a2 + 97) = *&v8[64];
  *(a2 + 113) = *&v8[80];
  result = *v8;
  *(a2 + 33) = *v8;
  *(a2 + 49) = *&v8[16];
  v8[103] = v10;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 129) = *&v8[96];
  *(a2 + 65) = *&v8[32];
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  return result;
}

double closure #1 in closure #1 in ObjectSelectionView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = a3 * 0.9;
  v5 = *(a1 + 32);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  result = *&v9;
  *(a2 + 72) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  return result;
}

__n128 protocol witness for View.body.getter in conformance ObjectSelectionView@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v11 = *(v1 + 32);
  if (*(&v3 + 1) >= *&v3)
  {
    v4 = *&v3;
  }

  else
  {
    v4 = *(&v3 + 1);
  }

  v5 = static HorizontalAlignment.center.getter();
  closure #1 in ObjectSelectionView.body.getter(v10, v8, v4);
  *&v7[119] = v8[7];
  *&v7[103] = v8[6];
  *&v7[55] = v8[3];
  *&v7[39] = v8[2];
  *&v7[135] = v9[0];
  *&v7[144] = *(v9 + 9);
  *&v7[71] = v8[4];
  *&v7[87] = v8[5];
  *&v7[7] = v8[0];
  *&v7[23] = v8[1];
  *(a1 + 113) = *&v7[96];
  *(a1 + 129) = *&v7[112];
  *(a1 + 145) = *&v7[128];
  *(a1 + 161) = *&v7[144];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  *(a1 + 81) = *&v7[64];
  *(a1 + 97) = *&v7[80];
  result = *v7;
  *(a1 + 17) = *v7;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 33) = *&v7[16];
  return result;
}

uint64_t ReticleView.Corner.segments.getter(unsigned __int8 a1, double a2)
{
  v3 = a2 * 0.42 + 0.08;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI7Segment33_E7C53F01232C1BC4E49961BE0A29AB82LLVGMd, &_ss23_ContiguousArrayStorageCy19_RealityKit_SwiftUI7Segment33_E7C53F01232C1BC4E49961BE0A29AB82LLVGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_23B91A6D0;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *(result + 32) = v3;
      *(result + 40) = xmmword_23B922330;
      v3 = 1.0 - v3;
      *(result + 56) = xmmword_23B922330;
    }

    else
    {
      *(result + 32) = 0x3FF0000000000000;
      *(result + 40) = 1.0 - v3;
      __asm { FMOV            V1.2D, #1.0 }

      *(result + 48) = _Q1;
      *(result + 64) = 1.0 - v3;
      v3 = 1.0;
    }
  }

  else if (a1)
  {
    *(result + 32) = 1.0 - v3;
    *(result + 40) = xmmword_23B91C510;
    *(result + 56) = xmmword_23B91C510;
  }

  else
  {
    *(result + 32) = 0;
    *(result + 40) = v3;
    *(result + 64) = v3;
    v3 = 0.0;
    *(result + 48) = 0;
    *(result + 56) = 0;
  }

  *(result + 72) = v3;
  return result;
}

void closure #1 in ReticleView.Corner.path(in:)(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  v13 = ReticleView.Corner.segments.getter(a7, a1);
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(v13 + 32);

  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  Width = CGRectGetWidth(v32);
  v16 = ReticleView.Corner.segments.getter(a7, a1);
  if (!*(v16 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(v16 + 40);

  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  Height = CGRectGetHeight(v33);
  v18 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v18 + 16) < 2uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = *(v18 + 48);

  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetWidth(v34);
  v19 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v19 + 16) < 2uLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = *(v19 + 56);

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetHeight(v35);
  v20 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v20 + 16) < 3uLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = Width;
  v28 = v14;
  v21 = *(v20 + 64);

  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v22 = CGRectGetWidth(v36);
  v23 = ReticleView.Corner.segments.getter(a7, a1);
  if (*(v23 + 16) >= 3uLL)
  {
    *&v26 = v21 * v22;
    v24 = *(v23 + 72);

    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    *&v25 = v24 * CGRectGetHeight(v37);
    Path.move(to:)(__PAIR128__(v17 * Height, v28 * v27));
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetWidth(v38);
    Path.addArc(tangent1End:tangent2End:radius:transform:)();
    Path.addLine(to:)(__PAIR128__(v25, v26));
    return;
  }

LABEL_13:
  __break(1u);
}

double protocol witness for Shape.path(in:) in conformance ReticleView.Corner@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  Path.init(_:)();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance ReticleView.Corner@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ReticleView.Corner(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner;
}

double protocol witness for Animatable.animatableData.modify in conformance ReticleView.Corner(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReticleView.Corner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ReticleView.Corner(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner();

  return MEMORY[0x282133738](a1, v2);
}

double ReticleView.body.getter@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  closure #1 in ReticleView.body.getter(__src, a2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(__dst, v9, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMd, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMR);
  outlined destroy of PerspectiveCameraComponent?(v12, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMd, &_s7SwiftUI9TupleViewVyAA011StrokeShapeD0Vy012_RealityKit_aB007ReticleD033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyD0VG_A3PtGMR);
  memcpy(__src, __dst, sizeof(__src));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v4;
  *(a1 + 8) = v6;
  memcpy((a1 + 16), __src, 0x160uLL);
  v7 = v9[1];
  *(a1 + 368) = v9[0];
  *(a1 + 384) = v7;
  result = v10[0];
  *(a1 + 400) = *v10;
  return result;
}

uint64_t closure #1 in ReticleView.body.getter@<X0>(void *a1@<X8>, double a2@<D2>)
{
  v21 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v20 = static Alignment.center.getter();
  v4 = v3;
  v18 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v17 = static Alignment.center.getter();
  v6 = v5;
  v15 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = static Alignment.center.getter();
  v13 = v8;
  v14 = v7;
  v16 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = static Alignment.center.getter();
  v11 = v10;
  LOBYTE(v39[0]) = 0;
  *(v39 + 1) = a2;
  v39[1] = v32;
  v39[2] = v33;
  *&v40 = v34;
  *(&v40 + 1) = v21;
  LOWORD(v41) = 256;
  *(&v41 + 1) = v20;
  v42 = v4;
  *&__src[5] = v4;
  __src[3] = v40;
  __src[4] = v41;
  __src[0] = v39[0];
  __src[1] = v32;
  __src[2] = v33;
  LOBYTE(v43[0]) = 1;
  *(v43 + 1) = a2;
  v43[1] = v29;
  v43[2] = v30;
  *&v44 = v31;
  *(&v44 + 1) = v18;
  LOWORD(v45) = 256;
  *(&v45 + 1) = v17;
  v46 = v6;
  *(&__src[6] + 8) = v29;
  *(&__src[5] + 8) = v43[0];
  *(&__src[10] + 1) = v6;
  *(&__src[9] + 8) = v45;
  *(&__src[8] + 8) = v44;
  *(&__src[7] + 8) = v30;
  LOBYTE(v47[0]) = 2;
  DWORD1(v47[0]) = *&v35[3];
  *(v47 + 1) = *v35;
  *(v47 + 1) = a2;
  v47[1] = v26;
  v47[2] = v27;
  *&v48 = v28;
  *(&v48 + 1) = v15;
  LOWORD(v49) = 256;
  *(&v49 + 1) = v14;
  v50 = v13;
  __src[11] = v47[0];
  __src[12] = v26;
  __src[14] = v48;
  __src[15] = v49;
  __src[13] = v27;
  LOBYTE(v51[0]) = 3;
  DWORD1(v51[0]) = *&v38[3];
  *(v51 + 1) = *v38;
  *(v51 + 1) = a2;
  v51[2] = v24;
  v51[1] = v23;
  *&v52 = v25;
  *(&v52 + 1) = v16;
  LOWORD(v53) = 256;
  WORD3(v53) = v37;
  *(&v53 + 2) = v36;
  *(&v53 + 1) = v9;
  v54 = v10;
  *(&__src[16] + 8) = v51[0];
  *(&__src[17] + 8) = v23;
  *(&__src[19] + 8) = v52;
  *(&__src[20] + 8) = v53;
  *(&__src[18] + 8) = v24;
  *&__src[16] = v13;
  *(&__src[21] + 1) = v10;
  memcpy(a1, __src, 0x160uLL);
  v55 = 3;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = a2;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  v61 = v16;
  v62 = 256;
  v63 = v36;
  v64 = v37;
  v65 = v9;
  v66 = v11;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39, v86, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v43, v86, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v47, v86, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v51, v86, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  outlined destroy of PerspectiveCameraComponent?(&v55, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v67 = 2;
  *v68 = *v35;
  *&v68[3] = *&v35[3];
  v69 = a2;
  v70 = v26;
  v71 = v27;
  v72 = v28;
  v73 = v15;
  v74 = 256;
  v75 = v14;
  v76 = v13;
  outlined destroy of PerspectiveCameraComponent?(&v67, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v77[0] = 1;
  v78 = a2;
  v79 = v29;
  v80 = v30;
  v81 = v31;
  v82 = v18;
  v83 = 256;
  v84 = v17;
  v85 = v6;
  outlined destroy of PerspectiveCameraComponent?(v77, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
  v86[0] = 0;
  v87 = a2;
  v88 = v32;
  v89 = v33;
  v90 = v34;
  v91 = v21;
  v92 = 256;
  v93 = v20;
  v94 = v4;
  return outlined destroy of PerspectiveCameraComponent?(v86, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMd, &_s7SwiftUI15StrokeShapeViewVy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VGMR);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReticleView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type ReticleView and conformance ReticleView();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReticleView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type ReticleView and conformance ReticleView();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

double protocol witness for View.body.getter in conformance ReticleView@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  return ReticleView.body.getter(a1, v1[2]);
}

double protocol witness for Animatable.animatableData.getter in conformance ReticleView@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ReticleView(double *a1)
{
  result = *a1;
  *(v1 + 16) = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ReticleView(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return protocol witness for Animatable.animatableData.modify in conformance ReticleView;
}

double protocol witness for Animatable.animatableData.modify in conformance ReticleView(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance ShakeModifier@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance ShakeModifier(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance ShakeModifier(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance ShakeModifier;
}

double protocol witness for Animatable.animatableData.modify in conformance ShakeModifier(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ShakeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ShakeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ShakeModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v6 = v5 * sin((*v2 * v2[2] + *v2 * v2[2]) * 3.14159265);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMR);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMR);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShakeModifier and conformance ShakeModifier()
{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier;
  if (!lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShakeModifier and conformance ShakeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy012_RealityKit_aB005ShakeF0VGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShakeModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy012_RealityKit_aB005ShakeD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShakeModifier>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView and conformance ReticleView()
{
  result = lazy protocol witness table cache variable for type ReticleView and conformance ReticleView;
  if (!lazy protocol witness table cache variable for type ReticleView and conformance ReticleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView and conformance ReticleView);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReticleView.Corner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReticleView.Corner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy012_RealityKit_aB007ReticleG033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyG0VG_A3TtGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0Vy012_RealityKit_aB007ReticleG033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyG0VG_A3TtGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0Vy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VG_A3RtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0Vy012_RealityKit_aB007ReticleE033_E7C53F01232C1BC4E49961BE0A29AB82LLV6CornerVAA5ColorVAA05EmptyE0VG_A3RtGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>, StrokeShapeView<ReticleView.Corner, Color, EmptyView>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView.Corner and conformance ReticleView.Corner()
{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner and conformance ReticleView.Corner);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement()
{
  result = lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement;
  if (!lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReticleView.Corner.Placement and conformance ReticleView.Corner.Placement);
  }

  return result;
}

id PostProcessRenderManager.mpsGaussianBlur.getter()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 40);
    v5 = objc_allocWithZone(MEMORY[0x277CD7520]);
    LODWORD(v6) = v4;
    v7 = [v5 initWithDevice:v3 sigma:v6];
    v8 = *(v0 + 64);
    *(v0 + 64) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id PostProcessRenderManager.mpsAddImages.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD74C0]) initWithDevice_];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id PostProcessRenderManager.mpsConverter.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD74F8]) initWithDevice_];
    v4 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id PostProcessRenderManager.frameUniformsBuffer.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  result = [*(v0 + 16) newBufferWithLength:160 options:0];
  if (result)
  {
    v1 = result;
    v3 = *(v0 + 88);
    *(v0 + 88) = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t PostProcessRenderManager.init(device:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = specialized static ExperimentSettings.loadPostProcessBloomSigma(default:)(9.0);
  *(v4 + 44) = 1;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0x3F4CCCCD3E4CCCCDLL;
  *(v4 + 128) = specialized static ExperimentSettings.loadDepthHazeFloor(default:)(0.025);
  *(v4 + 132) = 2;
  *(v4 + 136) = 0xFFF0000000000000;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0x3FE0000000000000;
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  v28[0] = 1;
  type metadata accessor for UIInterfaceOrientation(0);
  Atomic.init(wrappedValue:)();
  (*(v7 + 32))(v4 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze;
  *(v4 + v12) = (specialized static ExperimentSettings.loadDepthHazeDisabled(default:)(0) & 1) == 0;
  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze;
  *(v4 + v13) = (specialized static ExperimentSettings.loadOcclusionHazeDisabled(default:)(1u) & 1) == 0;
  v14 = (v4 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator);
  *v14 = closure #1 in variable initialization expression of PostProcessRenderManager.mpsCopyAllocator;
  v14[1] = 0;
  *(v4 + 16) = a1;
  v15 = one-time initialization token for bundle;
  swift_unknownObjectRetain();
  if (v15 != -1)
  {
    swift_once();
  }

  v28[0] = 0;
  v16 = [a1 newDefaultLibraryWithBundle:static PostProcessRenderManager.bundle error:v28];
  if (v16)
  {
    v17 = v16;
    v18 = v28[0];
    PostProcessRenderManager.makeCompositingPipeline(library:)(v17);
    if (!v3)
    {
      PostProcessRenderManager.makeOcclusionHazePipeline(library:)(v17);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v28[0];
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23B824000, v22, v23, "Can't get default Metal library for PostProcessRenderManager!", v24, 2u);
      MEMORY[0x23EEB0B70](v24, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
  }

  swift_unknownObjectRelease();

LABEL_13:
  v26 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t PostProcessRenderManager.attach(to:frameProcessor:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_unknownObjectWeakAssign();
    swift_weakAssign();
    *(v1 + 44) = dispatch thunk of ARView.__disableComposition.getter() & 1;
    dispatch thunk of ARView.__disableComposition.setter();
    swift_allocObject();
    swift_weakInit();

    v9 = ARView.renderCallbacks.modify();
    ARView.RenderCallbacks.postProcess.setter();
    v9(v10, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PostProcessRenderManager.attach(to:frameProcessor:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PostProcessRenderManager.render(context:)(a1);
  }

  return result;
}

Swift::Void __swiftcall PostProcessRenderManager.detach()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = ARView.renderCallbacks.modify();
      ARView.RenderCallbacks.postProcess.setter();
      v10(v14, 0);
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v1 + 44);
      dispatch thunk of ARView.__disableComposition.setter();
    }

    swift_weakAssign();
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of PostProcessRenderManager.mpsCopyAllocator(int a1, id a2, void *a3)
{
  v4 = [a2 device];
  v5 = [a3 width];
  v6 = [a3 height];
  v7 = [a3 pixelFormat];
  v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v8 setPixelFormat_];
  [v8 setWidth_];
  [v8 setHeight_];
  [v8 setUsage_];
  v9 = [v4 newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  if (v9)
  {
    return v9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PostProcessRenderManager.updateTempTextures(templateTexture:)(void *a1)
{
  v17 = *(v1 + 16);
  v3 = [a1 width];
  v4 = [a1 height];
  v5 = [a1 pixelFormat];
  swift_beginAccess();
  v6 = *(v1 + 96);
  if (v6 && [*(v1 + 96) width] == v3 && objc_msgSend(v6, sel_height) == v4 && objc_msgSend(v6, sel_pixelFormat) == v5)
  {
    if ([v6 usage] == 7 || !v3 || !v4)
    {
      goto LABEL_14;
    }

LABEL_13:
    v8 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v8 setPixelFormat_];
    [v8 setWidth_];
    [v8 setHeight_];
    [v8 setUsage_];
    v9 = [v17 newTextureWithDescriptor_];

    *(v1 + 96) = v9;
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  swift_endAccess();
  v10 = [a1 width];
  v11 = [a1 height];
  v12 = [a1 pixelFormat];
  swift_beginAccess();
  v13 = *(v1 + 104);
  if ((!v13 || [*(v1 + 104) width] != v10 || objc_msgSend(v13, sel_height) != v11 || objc_msgSend(v13, sel_pixelFormat) != v12 || objc_msgSend(v13, sel_usage) != 7) && v10 && v11)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
    [v14 setPixelFormat_];
    [v14 setWidth_];
    [v14 setHeight_];
    [v14 setUsage_];
    v15 = [v17 newTextureWithDescriptor_];

    *(v1 + 104) = v15;
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

uint64_t PostProcessRenderManager.makeCompositingPipeline(library:)(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x23EEAF480](0xD000000000000021, 0x800000023B9293C0);
  v4 = [a1 newFunctionWithName_];

  if (v4)
  {
    v5 = *(v1 + 16);
    v17[0] = 0;
    v6 = [v5 newComputePipelineStateWithFunction:v4 error:v17];
    v7 = v17[0];
    if (v6)
    {
      swift_unknownObjectRelease();
      v8 = *(v1 + 48);
      *(v1 + 48) = v6;
    }

    else
    {
      v15 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    result = swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B824000, v10, v11, "⚠️ Cannot create compositing pipeline ⚠️", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error();
    swift_allocError();
    *v13 = 0;
    result = swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PostProcessRenderManager.makeOcclusionHazePipeline(library:)(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x23EEAF480](0xD000000000000023, 0x800000023B929390);
  v4 = [a1 newFunctionWithName_];

  if (v4)
  {
    v5 = *(v1 + 16);
    v17[0] = 0;
    v6 = [v5 newComputePipelineStateWithFunction:v4 error:v17];
    v7 = v17[0];
    if (v6)
    {
      swift_unknownObjectRelease();
      v8 = *(v1 + 56);
      *(v1 + 56) = v6;
    }

    else
    {
      v15 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    result = swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B824000, v10, v11, "⚠️ Cannot create occlusion haze pipeline ⚠️", v12, 2u);
      MEMORY[0x23EEB0B70](v12, -1, -1);
    }

    lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error();
    swift_allocError();
    *v13 = 1;
    result = swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PostProcessRenderManager.render(context:)(uint64_t a1)
{
  v107 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v104 - v5;
  v7 = type metadata accessor for ARView.PostProcessContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0;
  v114 = 0;
  v112 = 0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v16 = 0;
LABEL_11:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, logger);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23B824000, v29, v30, "Can't pop the arFrame and camera frame!", v31, 2u);
      MEMORY[0x23EEB0B70](v31, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v105 = v3;
  v106 = v1;
  v13 = *(*(Strong + 16) + 24);
  v14 = swift_allocObject();
  v15 = swift_weakInit();
  MEMORY[0x28223BE20](v15);
  *(&v104 - 4) = v14;
  *(&v104 - 3) = &v114;
  *(&v104 - 2) = &v112;
  *(&v104 - 1) = &v113;
  OS_dispatch_queue.sync<A>(execute:)();

  v16 = v114;
  if (!v114)
  {
    goto LABEL_11;
  }

  v17 = v112;
  if (!v112)
  {
    goto LABEL_11;
  }

  v18 = v106;
  v19 = *(v106 + 136);
  if (v19 < -INFINITY || v19 > -INFINITY)
  {
    v33 = v114;
    swift_unknownObjectRetain();
    v34 = v107;
    v35 = *(v18 + 132);
    if (!*(v18 + 132))
    {
LABEL_37:
      v102 = [ARView.PostProcessContext.commandBuffer.getter() blitCommandEncoder];
      swift_unknownObjectRelease();
      if (v102)
      {
        swift_unknownObjectRetain();
        v103 = ARView.PostProcessContext.sourceColorTexture.getter();
        [v102 copyFromTexture:v103 toTexture:ARView.PostProcessContext.targetColorTexture.getter()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        [swift_unknownObjectRetain() endEncoding];
        swift_unknownObjectRelease_n();
      }

      swift_unknownObjectRelease_n();

      goto LABEL_16;
    }
  }

  else
  {
    v20 = one-time initialization token for logger;
    v21 = v114;
    v104 = v17;
    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    (*(v8 + 16))(v11, v107, v7);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      ARView.PostProcessContext.time.getter();
      v27 = v26;
      (*(v8 + 8))(v11, v7);
      *(v25 + 4) = v27;
      _os_log_impl(&dword_23B824000, v23, v24, "Got first ARFrame in compositor at time = %{public}f", v25, 0xCu);
      MEMORY[0x23EEB0B70](v25, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v34 = v107;
    ARView.PostProcessContext.time.getter();
    v99 = v98;
    v18 = v106;
    *(v106 + 136) = v98;
    type metadata accessor for RampAnimation();
    v100 = swift_allocObject();
    *(v100 + 64) = 0xFFF0000000000000;
    *(v100 + 24) = 0;
    *(v100 + 16) = 0x3FE0000000000000;
    *(v100 + 72) = 0;
    *(v100 + 32) = 0;
    *(v100 + 40) = 0;
    *(v100 + 48) = v99;
    *(v100 + 56) = v99 + 0.5;
    v101 = *(v18 + 144);
    *(v18 + 144) = v100;

    v17 = v104;
    v35 = *(v18 + 132);
    if (!*(v18 + 132))
    {
      goto LABEL_37;
    }
  }

  if (v35 == 1)
  {
    v36 = ARView.PostProcessContext.targetColorTexture.getter();
    ARView.PostProcessContext.projection.getter();
    v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
    swift_beginAccess();
    v38 = v105;
    (*(v105 + 16))(v6, v18 + v37, v2);
    Atomic.wrappedValue.getter();
    (*(v38 + 8))(v6, v2);
    a = v116.a;
    v40 = PostProcessRenderManager.frameUniformsBuffer.getter();
    v41 = [v40 contents];
    v42 = v40;
    v43 = [v36 width];
    v44 = [v36 height];
    ARView.PostProcessContext.time.getter();
    *(v41 + 28) = PostProcessRenderManager.getCameraFeedGain(at:)(v45);
    v46 = a;
    v47 = v106;
    [v16 displayTransformForOrientation:*&v46 viewportSize:{v43, v44}];
    v115 = v116;
    CGAffineTransformInvert(&v116, &v115);
    specialized simd_float3x3.init(cgTransform:vectorType:)(&v116, 0, &v115);
    *v41 = v115;
    ARView.PostProcessContext.projection.getter();
    *(v41 + 3) = v48;
    *(v41 + 4) = v49;
    *(v41 + 5) = v50;
    *(v41 + 6) = v51;
    v52 = *(v47 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze);
    v53 = *(v47 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze);
    LODWORD(v48) = *(v47 + 128);
    *&v49 = *(v47 + 120);
    *(v41 + 116) = xmmword_23B9227C0;
    *(v41 + 33) = v48;
    *(v41 + 17) = v49;
    v41[144] = v53;
    v41[145] = 1;
    *(v41 + 73) = v52;
    swift_unknownObjectRelease();
    v54 = ARView.PostProcessContext.sourceColorTexture.getter();
    v55 = ARView.PostProcessContext.targetColorTexture.getter();
    v56 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
    swift_unknownObjectRelease();
    if (v56)
    {
      v57 = *(v47 + 48);
      if (!v57)
      {
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      v58 = *(v47 + 48);
      swift_unknownObjectRetain();
      [v56 setComputePipelineState_];
      [v56 setBuffer:*(v47 + 88) offset:0 atIndex:0];
      [v56 setTexture:v54 atIndex:0];
      [v56 setTexture:v17 atIndex:1];
      [v56 setTexture:v55 atIndex:2];
      v59 = [ARView.PostProcessContext.sourceColorTexture.getter() width];
      swift_unknownObjectRelease();
      v60 = [ARView.PostProcessContext.sourceColorTexture.getter() height];
      swift_unknownObjectRelease();
      v61 = [v57 threadExecutionWidth];
      result = [v57 maxTotalThreadsPerThreadgroup];
      if (v61)
      {
        if (result != 0x8000000000000000 || v61 != -1)
        {
          MTLSizeMake(v61, result / v61, &v110);
          v62 = v111;
          v63 = v110;
          *&v110 = v59;
          *(&v110 + 1) = v60;
          v111 = 1;
          v108 = v63;
          v109 = v62;
          [v56 dispatchThreads:&v110 threadsPerThreadgroup:&v108];
          [v56 endEncoding];
          swift_unknownObjectRelease();
          goto LABEL_40;
        }

        goto LABEL_46;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v64 = ARView.PostProcessContext.targetColorTexture.getter();
  ARView.PostProcessContext.projection.getter();
  v65 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  swift_beginAccess();
  v66 = v105;
  (*(v105 + 16))(v6, v18 + v65, v2);
  Atomic.wrappedValue.getter();
  (*(v66 + 8))(v6, v2);
  v67 = v18;
  v68 = v116.a;
  v69 = PostProcessRenderManager.frameUniformsBuffer.getter();
  v70 = [v69 contents];
  v71 = v69;
  v72 = [v64 width];
  v73 = [v64 height];
  ARView.PostProcessContext.time.getter();
  *(v70 + 28) = PostProcessRenderManager.getCameraFeedGain(at:)(v74);
  [v16 displayTransformForOrientation:*&v68 viewportSize:{v72, v73}];
  v115 = v116;
  CGAffineTransformInvert(&v116, &v115);
  specialized simd_float3x3.init(cgTransform:vectorType:)(&v116, 0, &v115);
  *v70 = v115;
  ARView.PostProcessContext.projection.getter();
  *(v70 + 3) = v75;
  *(v70 + 4) = v76;
  *(v70 + 5) = v77;
  *(v70 + 6) = v78;
  v79 = *(v67 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useDepthHaze);
  v80 = *(v67 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_useOcclusionHaze);
  LODWORD(v75) = *(v67 + 128);
  *&v76 = *(v67 + 120);
  *(v70 + 116) = xmmword_23B9227C0;
  *(v70 + 33) = v75;
  *(v70 + 17) = v76;
  v70[144] = v80;
  v70[145] = 1;
  *(v70 + 73) = v79;
  swift_unknownObjectRelease();
  v81 = ARView.PostProcessContext.targetColorTexture.getter();
  PostProcessRenderManager.updateTempTextures(templateTexture:)(v81);
  swift_unknownObjectRelease();
  v82 = v113;
  v83 = ARView.PostProcessContext.sourceColorTexture.getter();
  result = swift_beginAccess();
  if (!*(v67 + 104))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  PostProcessRenderManager.executeOcclusionHaze(context:arDepthTexture:sourceTexture:destinationTexture:)(v34, v82, v83, (v67 + 104));
  swift_endAccess();
  swift_unknownObjectRelease();
  result = ARView.PostProcessContext.commandBuffer.getter();
  v84 = *(v67 + 104);
  if (!v84)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v85 = result;
  result = swift_beginAccess();
  if (!*(v67 + 96))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  swift_unknownObjectRetain();
  PostProcessRenderManager.executeBloom(commandBuffer:sourceTexture:destinationTexture:)(v85, v84, (v67 + 96));
  swift_endAccess();
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  v86 = *(v67 + 96);
  if (v86)
  {
    v87 = v67;
    v88 = *(v67 + 96);
    swift_unknownObjectRetain();
    v89 = ARView.PostProcessContext.targetColorTexture.getter();
    v90 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
    swift_unknownObjectRelease();
    if (v90)
    {
      v91 = *(v87 + 48);
      if (v91)
      {
        v92 = *(v87 + 48);
        swift_unknownObjectRetain();
        [v90 setComputePipelineState_];
        [v90 setBuffer:*(v87 + 88) offset:0 atIndex:0];
        [v90 setTexture:v86 atIndex:0];
        [v90 setTexture:v17 atIndex:1];
        [v90 setTexture:v89 atIndex:2];
        v93 = [ARView.PostProcessContext.sourceColorTexture.getter() width];
        swift_unknownObjectRelease();
        v94 = [ARView.PostProcessContext.sourceColorTexture.getter() height];
        swift_unknownObjectRelease();
        v95 = [v91 threadExecutionWidth];
        result = [v91 maxTotalThreadsPerThreadgroup];
        if (!v95)
        {
          goto LABEL_45;
        }

        if (result == 0x8000000000000000 && v95 == -1)
        {
          goto LABEL_47;
        }

        MTLSizeMake(v95, result / v95, &v110);
        v96 = v111;
        v97 = v110;
        *&v110 = v93;
        *(&v110 + 1) = v94;
        v111 = 1;
        v108 = v97;
        v109 = v96;
        [v90 dispatchThreads:&v110 threadsPerThreadgroup:&v108];
        [v90 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

LABEL_43:
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_16:
    return swift_unknownObjectRelease();
  }

LABEL_51:
  __break(1u);
  return result;
}

float PostProcessRenderManager.getCameraFeedGain(at:)(Swift::Double a1)
{
  v2 = 0.0;
  if (*(v1 + 136) != -INFINITY)
  {
    v3 = *(v1 + 144);
    if (v3)
    {
      v4 = *(v1 + 144);

      v2 = RampAnimation.update(time:)(a1);
      v7 = *(v3 + 56);
      v6 = *(v3 + 64);

      if (v7 < v6)
      {
        v8 = *(v1 + 144);
        *(v1 + 144) = 0;
      }
    }

    else
    {
      return 1.0;
    }
  }

  return v2;
}

void PostProcessRenderManager.executeBloom(commandBuffer:sourceTexture:destinationTexture:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = PostProcessRenderManager.mpsGaussianBlur.getter();
  [v7 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:*a3];

  v8 = PostProcessRenderManager.mpsAddImages.getter();
  v9 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator);
  v10 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator + 8);
  v12[4] = v9;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPSKernel, @guaranteed MTLCommandBuffer, @guaranteed MTLTexture) -> (@owned MTLTexture);
  v12[3] = &block_descriptor_9;
  v11 = _Block_copy(v12);

  [v8 encodeToCommandBuffer:a1 primaryTexture:a2 inPlaceSecondaryTexture:a3 fallbackCopyAllocator:v11];
  _Block_release(v11);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed MPSKernel, @guaranteed MTLCommandBuffer, @guaranteed MTLTexture) -> (@owned MTLTexture)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = v8(v9, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t PostProcessRenderManager.executeOcclusionHaze(context:arDepthTexture:sourceTexture:destinationTexture:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  if (!a2)
  {
    goto LABEL_17;
  }

  v10 = *(v4 + 16);
  v11 = [swift_unknownObjectRetain() width];
  v12 = [a2 height];
  swift_beginAccess();
  v13 = *(v5 + 112);
  if (v13 && [*(v5 + 112) width] == v11 && objc_msgSend(v13, sel_height) == v12 && objc_msgSend(v13, sel_pixelFormat) == 25)
  {
    if ([v13 usage] == 3 || !v11 || !v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_15;
    }
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v15 setPixelFormat_];
  [v15 setWidth_];
  [v15 setHeight_];
  [v15 setUsage_];
  v16 = [v10 newTextureWithDescriptor_];

  *(v5 + 112) = v16;
  swift_unknownObjectRelease();
LABEL_15:
  swift_endAccess();
  result = ARView.PostProcessContext.commandBuffer.getter();
  v18 = *(v5 + 112);
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = result;
  v20 = *(v5 + 112);
  swift_unknownObjectRetain();
  v21 = PostProcessRenderManager.mpsConverter.getter();
  [v21 encodeToCommandBuffer:v19 sourceTexture:a2 destinationTexture:v18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v6 = a4;
  v7 = a3;
LABEL_17:
  v22 = [ARView.PostProcessContext.commandBuffer.getter() computeCommandEncoder];
  result = swift_unknownObjectRelease();
  if (!v22)
  {
    return result;
  }

  v23 = *(v5 + 56);
  if (v23)
  {
    v24 = *(v5 + 56);
    swift_unknownObjectRetain();
    [v22 setComputePipelineState_];
    [v22 setBuffer:PostProcessRenderManager.frameUniformsBuffer.getter() offset:0 atIndex:0];
    swift_unknownObjectRelease();
    [v22 setTexture:v7 atIndex:0];
    [v22 setTexture:ARView.PostProcessContext.sourceDepthTexture.getter() atIndex:1];
    swift_unknownObjectRelease();
    swift_beginAccess();
    [v22 setTexture:*(v5 + 112) atIndex:2];
    v25 = *v6;
    [v22 setTexture:*v6 atIndex:3];
    v26 = [v25 width];
    v27 = [v25 height];
    v28 = [v23 threadExecutionWidth];
    result = [v23 maxTotalThreadsPerThreadgroup];
    if (v28)
    {
      if (result != 0x8000000000000000 || v28 != -1)
      {
        MTLSizeMake(v28, result / v28, &v34);
        v29 = v35;
        v30 = v34;
        *&v34 = v26;
        *(&v34 + 1) = v27;
        v35 = 1;
        v32 = v30;
        v33 = v29;
        [v22 dispatchThreads:&v34 threadsPerThreadgroup:&v32];
        [v22 endEncoding];
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  return swift_unknownObjectRelease();
}

uint64_t PostProcessRenderManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  swift_weakDestroy();
  MEMORY[0x23EEB0C40](v0 + 32);
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  v4 = *(v0 + 88);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);
  swift_unknownObjectRelease();
  v6 = *(v0 + 104);
  swift_unknownObjectRelease();
  v7 = *(v0 + 112);
  swift_unknownObjectRelease();
  v8 = *(v0 + 144);

  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager__uiOrientation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMd, &_s17RealityFoundation6AtomicVySo22UIInterfaceOrientationVGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI24PostProcessRenderManager_mpsCopyAllocator + 8);

  return v0;
}

uint64_t PostProcessRenderManager.__deallocating_deinit()
{
  PostProcessRenderManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PostProcessRenderManager()
{
  result = type metadata singleton initialization cache for PostProcessRenderManager;
  if (!type metadata singleton initialization cache for PostProcessRenderManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PostProcessRenderManager()
{
  type metadata accessor for Atomic<UIInterfaceOrientation>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Atomic<UIInterfaceOrientation>()
{
  if (!lazy cache variable for type metadata for Atomic<UIInterfaceOrientation>)
  {
    type metadata accessor for UIInterfaceOrientation(255);
    v0 = type metadata accessor for Atomic();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Atomic<UIInterfaceOrientation>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique()
{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Technique and conformance PostProcessRenderManager.Technique);
  }

  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error()
{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error;
  if (!lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PostProcessRenderManager.Error and conformance PostProcessRenderManager.Error);
  }

  return result;
}

void CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(_OWORD *a1, uint64_t a2, __int128 *a3)
{
  v5 = v4;
  v6 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Setting up CameraFrustumRenderer!", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  v14 = v6[2];
  v6[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  type metadata accessor for CameraFrustumMesh();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  v16 = a3[4];
  v17 = a3[5];
  *(v15 + 112) = a3[3];
  *(v15 + 128) = v16;
  *(v15 + 144) = v17;
  *(v15 + 160) = *(a3 + 24);
  v18 = *a3;
  v19 = a3[1];
  *(v15 + 48) = 0u;
  *(v15 + 64) = v18;
  v20 = a3[2];
  *(v15 + 80) = v19;
  *(v15 + 96) = v20;
  v21 = *(a3 + 11);
  v22 = *(a3 + 12);
  v23 = *(a3 + 7);
  v24 = swift_unknownObjectRetain();
  CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:)(v24, v23, v21, v22);
  CameraFrustumMesh.setHollowCylinderMTLBuffer(device:zOffset:innerRadius:outerRadius:height:circleSegments:)(a1, *(a3 + 11), -v21, *(a3 + 18), *(a3 + 19), *(a3 + 20));
  CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:)(a1, *(a3 + 3), *(a3 + 4), *(a3 + 4));
  swift_unknownObjectRelease();
  v25 = v6[5];
  v6[5] = v15;

  CameraFrustumRenderer.initRenderPipeline(pixelFormat:)(a2);
  if (!v5)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CD6D60]) init];
    [v26 setDepthCompareFunction_];
    [v26 setDepthWriteEnabled_];
    v27 = [a1 newDepthStencilStateWithDescriptor_];

    if (v27)
    {
      v28 = v6[4];
      v6[4] = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void CameraFrustumRenderer.initRenderPipeline(pixelFormat:)(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
  }

  v4 = one-time initialization token for bundle;
  v5 = *(v1 + 16);
  swift_unknownObjectRetain();
  if (v4 != -1)
  {
    swift_once();
  }

  v38[0] = 0;
  v6 = [v2 newDefaultLibraryWithBundle:static BaseRenderer.bundle error:v38];
  swift_unknownObjectRelease();
  if (!v6)
  {
    v33 = v38[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error();
    swift_allocError();
    swift_willThrow();
LABEL_18:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = v38[0];
  v8 = MEMORY[0x23EEAF480](0xD000000000000028, 0x800000023B9295A0);
  v9 = [v6 newFunctionWithName_];

  v10 = MEMORY[0x23EEAF480](0xD000000000000026, 0x800000023B9295D0);
  v11 = [v6 newFunctionWithName_];

  v12 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v12 setVertexFunction_];
  [v12 setFragmentFunction_];
  [v12 setDepthAttachmentPixelFormat_];
  v13 = [v12 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  [v14 setPixelFormat_];

  v15 = [v12 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setBlendingEnabled_];

  v17 = [v12 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v18 setRgbBlendOperation_];

  v19 = [v12 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v20 setAlphaBlendOperation_];

  v21 = [v12 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v22 setSourceRGBBlendFactor_];

  v23 = [v12 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  if (!v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v24 setSourceAlphaBlendFactor_];

  v25 = [v12 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v26 setDestinationRGBBlendFactor_];

  v27 = [v12 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v28 setDestinationAlphaBlendFactor_];

  v29 = *(v1 + 16);
  if (v29)
  {
    v38[0] = 0;
    v30 = [v29 newRenderPipelineStateWithDescriptor:v12 error:v38];
    v31 = v38[0];
    if (v30)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v32 = *(v1 + 24);
      *(v1 + 24) = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v31;
      v36 = _convertNSErrorToError(_:)();

      swift_willThrow();
      lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error();
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
}

id CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 24))
  {
    return result;
  }

  v9 = result;
  v10 = *(v4 + 40);

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  result = [result setCullMode_];
  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v11 setRenderPipelineState_];
  [v11 setDepthStencilState_];
  result = [v11 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v4 + 16);
  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  swift_unknownObjectRelease();
  v14 = [swift_unknownObjectRetain() contents];
  v15 = v13;
  v16 = *(v4 + 64);
  v17 = *(v4 + 80);
  v18 = *(v4 + 96);
  *v14 = *(v4 + 48);
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v19 = *(v4 + 128);
  v20 = *(v4 + 144);
  v21 = *(v4 + 160);
  v14[4] = *(v4 + 112);
  v14[5] = v19;
  v14[6] = v20;
  v14[7] = v21;
  *(v14 + 32) = *(v4 + 176);
  result = [v11 setVertexBuffer:v13 offset:0 atIndex:1];
  v22 = *(v5 + 16);
  if (!v22)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v11 setVertexBuffer:v22 offset:0 atIndex:2];
  [v11 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 24) instanceCount:a4];
  [v11 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 40))
  {
    return result;
  }

  v9 = result;
  v10 = *(v4 + 40);

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  [result setRenderPipelineState_];
  [v11 setDepthStencilState_];
  result = [v11 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v4 + 16);
  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  swift_unknownObjectRelease();
  v14 = [swift_unknownObjectRetain() contents];
  v15 = v13;
  v16 = *(v4 + 64);
  v17 = *(v4 + 80);
  v18 = *(v4 + 96);
  *v14 = *(v4 + 48);
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v19 = *(v4 + 128);
  v20 = *(v4 + 144);
  v21 = *(v4 + 160);
  v14[4] = *(v4 + 112);
  v14[5] = v19;
  v14[6] = v20;
  v14[7] = v21;
  *(v14 + 32) = *(v4 + 176);
  result = [v11 setVertexBuffer:v13 offset:0 atIndex:1];
  v22 = *(v5 + 32);
  if (!v22)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v11 setVertexBuffer:v22 offset:0 atIndex:2];
  [v11 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 40) instanceCount:a4];
  [v11 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (!v5 || !*(v5 + 56))
  {
    return result;
  }

  v9 = result;
  v10 = *(v4 + 40);

  result = [v9 renderCommandEncoderWithDescriptor_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v4 + 24))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  [result setRenderPipelineState_];
  [v11 setDepthStencilState_];
  result = [v11 setVertexBuffer:a3 offset:0 atIndex:0];
  if (!*(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(v4 + 16);
  result = [swift_unknownObjectRetain() newBufferWithLength:144 options:1];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = result;
  swift_unknownObjectRelease();
  v14 = [swift_unknownObjectRetain() contents];
  v15 = v13;
  v16 = *(v4 + 64);
  v17 = *(v4 + 80);
  v18 = *(v4 + 96);
  *v14 = *(v4 + 48);
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v19 = *(v4 + 128);
  v20 = *(v4 + 144);
  v21 = *(v4 + 160);
  v14[4] = *(v4 + 112);
  v14[5] = v19;
  v14[6] = v20;
  v14[7] = v21;
  *(v14 + 32) = *(v4 + 176);
  result = [v11 setVertexBuffer:v13 offset:0 atIndex:1];
  v22 = *(v5 + 48);
  if (!v22)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v11 setVertexBuffer:v22 offset:0 atIndex:2];
  [v11 drawPrimitives:3 vertexStart:0 vertexCount:*(v5 + 56) instanceCount:a4];
  [v11 endEncoding];

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t CameraFrustumRenderer.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];

  return swift_deallocClassInstance();
}

void *CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:)(_OWORD *a1, void *a2, float a3, float a4)
{
  v5 = v4;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Creating MTLBuffer for the cone!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.setConeMTLBuffer(device:coneHeight:coneBaseRadius:coneBaseSegments:));
    v30 = v14;
    result = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, -a3, a4);
    v16 = result[2];
    v17 = 3 * v16;
    if ((v16 * 3) >> 64 != (3 * v16) >> 63)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    *(v5 + 24) = v17;
    if ((v17 - 0x400000000000000) >> 59 != 31)
    {
      goto LABEL_22;
    }

    v18 = result;
    result = [a1 newBufferWithLength:96 * v16 options:1];
    if (!result)
    {
      goto LABEL_23;
    }

    v19 = *(v5 + 16);
    *(v5 + 16) = result;
    a2 = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = [a2 contents];
    v20 = a2;
    if (!v16)
    {
      break;
    }

    v22 = *(v5 + 64);
    HIDWORD(v22) = 0;
    v21 = v22;
    HIDWORD(v21) = *(v5 + 128);
    HIDWORD(v22) = *(v5 + 132);
    v23 = v18[2];
    v24 = a1 + 3;
    v25 = 0x2AAAAAAAAAAAAAAALL;
    v26 = 1;
    v27 = (v18 + 4);
    while (1)
    {
      *(v24 - 3) = v30;
      *(v24 - 2) = v21;
      v28 = --v16 ? v26 : 0;
      if (v28 >= v23)
      {
        break;
      }

      *(v24 - 1) = *&v18[2 * v28 + 4];
      *v24 = v22;
      if (!v25)
      {
        goto LABEL_19;
      }

      v29 = *v27++;
      v24[1] = v29;
      v24[2] = v22;
      ++v26;
      --v25;
      v24 += 6;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_15:
}

id CameraFrustumMesh.setHollowCylinderMTLBuffer(device:zOffset:innerRadius:outerRadius:height:circleSegments:)(_OWORD *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v7 = v6;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, v15, v16, "Creating MTLBuffer for the concentric circles!", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    v18 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a3, a4);
    v19 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a3, a5);
    a6 = a3 + a6;
    v20 = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a6, a4);
    result = specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(a2, a6, a5);
    v22 = *(v18 + 16);
    if ((v22 * 6) >> 64 != (6 * v22) >> 63)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v23 = 18 * v22;
    if (((6 * v22) * 3) >> 64 != (18 * v22) >> 63)
    {
      goto LABEL_42;
    }

    *(v7 + 40) = v23;
    if ((v23 - 0x400000000000000) >> 59 != 31)
    {
      goto LABEL_43;
    }

    a2 = result;
    result = [a1 newBufferWithLength:576 * v22 options:1];
    if (!result)
    {
      goto LABEL_47;
    }

    v24 = *(v7 + 32);
    *(v7 + 32) = result;
    v25 = result;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    a1 = [v25 contents];
    result = v25;
    if (!v22)
    {
      break;
    }

    v26 = *(v19 + 16);
    if (v22 > v26)
    {
      goto LABEL_44;
    }

    v27 = *(a2 + 16);
    if (v22 > v27)
    {
      goto LABEL_45;
    }

    v28 = *(v20 + 16);
    if (v22 > v28)
    {
      goto LABEL_46;
    }

    v29 = 0;
    v30 = *(v7 + 64);
    HIDWORD(v30) = *(v7 + 160);
    v31 = v18 + 32;
    v32 = v19 + 32;
    v33 = v20 + 32;
    v34 = a2 + 32;
    v35 = *(v18 + 16);
    v36 = a1 + 9;
    v37 = 8;
    while (1)
    {
      v38 = v22 - 1 == v29 ? 0 : v29 + 1;
      if (v38 >= v35)
      {
        break;
      }

      *(v36 - 9) = *(v31 + 16 * v38);
      *(v36 - 8) = v30;
      if (v38 >= v26)
      {
        goto LABEL_31;
      }

      *(v36 - 7) = *(v32 + 16 * v38);
      *(v36 - 6) = v30;
      *(v36 - 5) = *(v32 + 16 * v29);
      *(v36 - 4) = v30;
      *(v36 - 3) = *(v31 + 16 * v38);
      *(v36 - 2) = v30;
      *(v36 - 1) = *(v32 + 16 * v29);
      *v36 = v30;
      v36[1] = *(v31 + 16 * v29);
      v36[2] = v30;
      if (v38 >= v28)
      {
        goto LABEL_32;
      }

      v36[3] = *(v33 + 16 * v38);
      v36[4] = v30;
      if (v38 >= v27)
      {
        goto LABEL_33;
      }

      v36[5] = *(v34 + 16 * v38);
      v36[6] = v30;
      if (v29 == 0x71C71C71C71C71CLL)
      {
        goto LABEL_34;
      }

      v36[7] = *(v34 + 16 * v29);
      v36[8] = v30;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_35;
      }

      v39 = &a1[2 * v37 + 2];
      *v39 = *(v33 + 16 * v38);
      v39[1] = v30;
      v40 = &a1[2 * v37 + 4];
      *v40 = *(v34 + 16 * v29);
      v40[1] = v30;
      if (__OFADD__(v37 + 2, 1))
      {
        goto LABEL_36;
      }

      v41 = &a1[2 * v37 + 6];
      *v41 = *(v33 + 16 * v29);
      v41[1] = v30;
      v42 = &a1[2 * v37 + 8];
      *v42 = *(v34 + 16 * v38);
      v42[1] = v30;
      if (__OFADD__(v37 + 4, 1))
      {
        goto LABEL_37;
      }

      v43 = &a1[2 * v37 + 10];
      *v43 = *(v32 + 16 * v38);
      v43[1] = v30;
      v44 = &a1[2 * v37 + 12];
      *v44 = *(v32 + 16 * v29);
      v44[1] = v30;
      if (__OFADD__(v37 + 6, 1))
      {
        goto LABEL_38;
      }

      v45 = *(v34 + 16 * v38);
      v46 = &a1[2 * v37 + 14];
      *v46 = v45;
      v46[1] = v30;
      v47 = &a1[2 * v37 + 16];
      *v47 = *(v32 + 16 * v29);
      v47[1] = v30;
      if (__OFADD__(v37 + 8, 1))
      {
        goto LABEL_39;
      }

      v48 = *(v34 + 16 * v29);
      v49 = v29 + 1;
      v50 = &a1[2 * v37 + 18];
      *v50 = v48;
      v50[1] = v30;
      v37 += 18;
      v36 += 36;
      v29 = v49;
      if (v22 == v49)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
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
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_27:
}

uint64_t CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:)(_OWORD *a1, uint64_t a2, uint64_t a3, float a4)
{
  v5 = v4;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Creating MTLBuffer for the sphere!", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CameraFrustumMesh.setSphereMTLBuffer(device:radius:radialSegments:verticalSegments:));
    result = Sphere.createSurfaceSamples(radialSegments:verticalSegments:)(a2, a3, v14, a4);
    if (a3 < 0)
    {
      __break(1u);
      goto LABEL_65;
    }

    v43 = v5;
    v44 = a1;
    v42 = result;
    if (!a3)
    {
      break;
    }

    v47 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_66;
    }

    if (a2 < 0)
    {
      goto LABEL_67;
    }

    v16 = 0;
    a1 = (a3 - 1);
    v17 = MEMORY[0x277D84F90];
    v45 = a2;
    v46 = a3;
    while (1)
    {
      v18 = v16 * v47;
      if ((v16 * v47) >> 64 != (v16 * v47) >> 63)
      {
        goto LABEL_60;
      }

      v19 = v18 + a2;
      if (__OFADD__(v18, a2))
      {
        break;
      }

      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_62;
      }

      for (; a2; --a2)
      {
        if (v16)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
            v17 = result;
          }

          v21 = *(v17 + 16);
          v20 = *(v17 + 24);
          v22 = v21 + 1;
          if (v21 >= v20 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v22;
          *(v17 + 8 * v21 + 32) = v18;
          a3 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_56;
          }

          v23 = *(v17 + 24);
          v24 = v21 + 2;
          if ((v21 + 2) > (v23 >> 1))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v21 + 2, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v24;
          *(v17 + 8 * v22 + 32) = a3;
          v25 = *(v17 + 24);
          if ((v21 + 3) > (v25 >> 1))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v21 + 3, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v21 + 3;
          *(v17 + 8 * v24 + 32) = v5;
        }

        if (v16 == a1)
        {
          v26 = __OFADD__(v18++, 1);
          if (v26)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v26 = __OFADD__(v5++, 1);
          if (v26)
          {
            goto LABEL_55;
          }
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1, v17);
            v17 = result;
          }

          v28 = *(v17 + 16);
          v27 = *(v17 + 24);
          v29 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v29;
          *(v17 + 8 * v28 + 32) = v5;
          v26 = __OFADD__(v18++, 1);
          if (v26)
          {
            goto LABEL_57;
          }

          v30 = *(v17 + 24);
          v31 = v28 + 2;
          if ((v28 + 2) > (v30 >> 1))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v28 + 2, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v31;
          *(v17 + 8 * v29 + 32) = v18;
          a3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_58;
          }

          v32 = *(v17 + 24);
          if ((v28 + 3) > (v32 >> 1))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v28 + 3, 1, v17);
            v17 = result;
          }

          *(v17 + 16) = v28 + 3;
          *(v17 + 8 * v31 + 32) = a3;
          v26 = __OFADD__(v5++, 1);
          if (v26)
          {
            goto LABEL_55;
          }
        }
      }

      ++v16;
      a2 = v45;
      a3 = v46;
      if (v16 == v46)
      {
        goto LABEL_44;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

  v17 = MEMORY[0x277D84F90];
LABEL_44:
  v5 = *(v17 + 16);
  if (v5 >> 58)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  result = [v44 newBufferWithLength:32 * v5 options:1];
  if (!result)
  {
    goto LABEL_69;
  }

  v33 = *(v43 + 48);
  *(v43 + 48) = result;
  a3 = result;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1 = [a3 contents];
  v34 = a3;
  result = v42;
  if (v5)
  {
    if (v5 <= *(v17 + 16))
    {
      v35 = *(v43 + 64);
      HIDWORD(v35) = *(v43 + 104);
      v36 = (v17 + 32);
      v37 = *(v42 + 16);
      v38 = a1 + 1;
      v39 = v5;
      while (1)
      {
        v41 = *v36++;
        v40 = v41;
        if (v41 >= v37)
        {
          goto LABEL_59;
        }

        *(v38 - 1) = *(v42 + 32 + 16 * v40);
        *v38 = v35;
        v38 += 2;
        if (!--v39)
        {
          goto LABEL_51;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_51:

  *(v43 + 56) = v5;
}

uint64_t CameraFrustumMesh.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy100_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CameraFrustumMesh.Descriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 100))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CameraFrustumMesh.Descriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = (a2 - 1);
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

  *(result + 100) = v3;
  return result;
}

uint64_t specialized CameraFrustumMesh.createCircleVertices(zOffset:radius:circleSegments:)(uint64_t result, float a2, float a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (!result)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = __sincosf_stret((6.2832 / v3) * v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
      }

      ++v5;
      *&v10 = v7.__cosval * a3;
      *(&v10 + 1) = v7.__sinval * a3;
      *(&v10 + 1) = LODWORD(a2);
      *(v6 + 2) = v9 + 1;
      *&v6[16 * v9 + 32] = v10;
    }

    while (v3 != v5);
    return v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error()
{
  result = lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error;
  if (!lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraFrustumRenderer.Error and conformance CameraFrustumRenderer.Error);
  }

  return result;
}

void specialized SIMD.subscript.getter(__n128 a1, double a2, __n128 a3)
{
  v3 = a1.n128_u8[0] & 3;
  if (a1.n128_i64[0] <= 0)
  {
    v3 = -(-a1.n128_u64[0] & 3);
  }

  v4 = a1.n128_u8[8] & 3;
  if (a1.n128_i64[1] <= 0)
  {
    v4 = -(-a1.n128_u64[1] & 3);
  }

  v5 = LOBYTE(a2) & 3;
  if (*&a2 <= 0)
  {
    v5 = -(-*&a2 & 3);
  }

  if (((v3 | v5 | v4) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a3;
    v6 = *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
    v7 = *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3)));
    v8 = *(&v9 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
  }
}

uint64_t specialized static Ray3D.screenPointToPlane(within:screenPoint:plane:)(double a1, double a2, double a3, float32x4_t a4)
{
  v4 = 0xD00000000000002ALL;
  result = ARView.ray(through:)();
  if (v17)
  {
    v6 = "ragShaderCameraFrustum";
    v4 = 0xD000000000000031;
  }

  else
  {
    v7 = vmulq_f32(v16, v16);
    v8 = vaddv_f32(*v7.f32);
    *v7.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v7.f32[2] + v8));
    *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v7.f32[2] + v8), vmul_f32(*v7.f32, *v7.f32)));
    v9 = vmulq_f32(a4, a4);
    v10 = vaddv_f32(*v9.f32);
    v11 = vmulq_n_f32(v16, vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v7.f32[2] + v8), vmul_f32(*v7.f32, *v7.f32))).f32[0]);
    *v7.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10));
    *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32)));
    v12 = vmulq_n_f32(a4, vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32))).f32[0]);
    if (fabsf(vmuls_lane_f32(v11.f32[2], v12, 2) + vaddv_f32(vmul_f32(*v11.f32, *v12.f32))) >= 0.001)
    {
      return result;
    }

    v6 = "int in this view!";
  }

  v13 = v6 | 0x8000000000000000;
  lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error();
  swift_allocError();
  *v14 = v4;
  v14[1] = v13;
  return swift_willThrow();
}

double specialized static Ray3D.unproject(clipSpace:using:aspectRatio:)(double a1)
{
  v8 = *MEMORY[0x277D85DE8];
  Entity.coreEntity.getter();
  REPerspectiveCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REPerspectiveCameraComponentCalculateProjectionWithAspectRatio();
    REPerspectiveCameraComponentAdjustProjectionAspect();
    REProjectionClipSpaceNearZ();
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  }

  else
  {
    Entity.coreEntity.getter();
    RECustomMatrixCameraComponentGetComponentType();
    if (!REEntityGetComponentByClass())
    {
      result = 0.0;
      goto LABEL_6;
    }

    RECustomMatrixCameraComponentCalculateProjection();
    RECustomMatrixCameraComponentAdjustProjectionAspect();
    REProjectionClipSpaceNearZ();
    v3 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = a1;
  *(inited + 40) = v3;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  REConvertProjectionToMatrix4x4();
  REProjectionUnprojectPoint();
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void specialized static Ray3D.worldRay(through:using:)(float32x4_t *a1@<X8>, double a2@<D0>)
{
  specialized static Ray3D.unproject(clipSpace:using:aspectRatio:)(a2);
  v3 = 0uLL;
  if (v4)
  {
    v5 = 1;
    v6 = 0uLL;
  }

  else
  {
    Entity.coreEntity.getter();
    RETransformComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      RETransformComponentGetWorldMatrix4x4F();
      v12 = v7;
      simd_float4x4.transform(position:)();
      v3 = v12;
      v5 = 0;
      v9 = vsubq_f32(v8, v12);
      v3.i32[3] = 0;
      v10 = vmulq_f32(v9, v9);
      *&v11 = v10.f32[2] + vaddv_f32(*v10.f32);
      *v10.f32 = vrsqrte_f32(v11);
      *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
      v6 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    }

    else
    {
      v5 = 1;
      v6 = 0uLL;
      v3 = 0uLL;
    }
  }

  *a1 = v3;
  a1[1] = v6;
  a1[2].i8[0] = v5;
}

void specialized static Ray3D.closestPointParameter(to:along:)(double a1, float32x4_t a2, double a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a2);
  v5 = vmulq_f32(a4, a4);
  v6 = vmulq_f32(a2, a4);
  *v4.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v4.i8, *v6.i8), vzip2_s32(*v4.i8, *v6.i8)));
  v6.i32[1] = v4.i32[1];
  *v6.i32 = v5.f32[2] + vaddv_f32(*v5.f32);
  *v5.f32 = vmul_f32(*v4.i8, *v6.i8);
  if (vsub_f32(*v5.f32, vdup_lane_s32(*v5.f32, 1)).f32[0] <= 0.001)
  {
    lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type Ray3D.Error and conformance Ray3D.Error()
{
  result = lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error;
  if (!lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ray3D.Error and conformance Ray3D.Error);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ray3D.Error(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Ray3D.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for Ray3D.Error(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t key path getter for Model3DAsset.location : Model3DAsset@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  return outlined init with copy of Model3DLocation(v3 + v4, a2);
}

uint64_t key path setter for Model3DAsset.location : Model3DAsset(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Model3DLocation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Model3DLocation(a1, v7);
  v8 = *a2;
  return Model3DAsset.location.setter(v7);
}

uint64_t Model3DPhase.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  if (v3 > 0x3F)
  {
    v7 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    v4 = *(v1 + 2);
    v5 = v1[1];
    v6 = v1[2];
    v7 = *v1;
    v8 = v1[6];
    v9 = v1[7];
    v10 = v3 & 1;
    *(a1 + 32) = v4;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
  }

  *a1 = v7;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 64) = v10;
  return result;
}

id Model3DPhase.error.getter()
{
  if ((*(v0 + 64) & 0xC0) != 0x40)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Model3D.init<>(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  v5 = *(v4 + 36);
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  *(a2 + v5) = 0;
  v8 = (a2 + *(v4 + 40));
  *v8 = closure #1 in Model3D.init<>(named:bundle:);
  v8[1] = 0;
  return result;
}

uint64_t Model3D.init(url:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Model3D();
  v11 = *(v10 + 36);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  *(a5 + v11) = a2;
  v14 = (a5 + *(v10 + 40));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t Model3D.init<A, B>(url:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v28 = a9;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v21 = v25;
  v22 = v26;
  v20[6] = a2;
  v20[7] = v21;
  v23 = v27;
  v20[8] = v22;
  v20[9] = v23;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a10;
  type metadata accessor for Model3DPlaceholderContent();
  swift_getWitnessTable();
  Model3D.init(url:transaction:content:)(v19, 0, partial apply for closure #1 in Model3D.init<A, B>(url:content:placeholder:), v20, v28);
  return (*(v16 + 8))(a1, v15);
}

uint64_t Model3D.init<>(named:bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  v9 = *(v8 + 36);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v9) = 0;
  v11 = (a4 + *(v8 + 40));
  *v11 = closure #1 in Model3D.init<>(named:bundle:);
  v11[1] = 0;
  return result;
}

uint64_t closure #1 in Model3D.init<>(url:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 > 0x3F)
  {
    result = BoundingBox.init()();
    LOBYTE(v3) = 0;
    v4 = 0;
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = a1[1];
    v4 = a1[2];
    v6 = *a1;
    v11 = *(a1 + 2);
    v10 = *(a1 + 3);

    v9 = v10;
    v8 = v11;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v3 & 1;
  return result;
}

uint64_t Model3D.init(named:bundle:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = type metadata accessor for Model3D();
  v15 = *(v14 + 36);
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  *(a7 + v15) = a4;
  v17 = (a7 + *(v14 + 40));
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t Model3D.init<A, B>(named:bundle:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  type metadata accessor for Model3DPlaceholderContent();
  swift_getWitnessTable();
  return Model3D.init(named:bundle:transaction:content:)(a1, a2, a3, 0, partial apply for closure #1 in Model3D.init<A, B>(named:bundle:content:placeholder:), v18, a9);
}

uint64_t closure #1 in Model3D.init<A, B>(url:content:placeholder:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  v14 = *(a1 + 64);
  if (v14 > 0x3F)
  {
    v22 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    v15 = a1[1];
    v29 = *a1;
    v16 = a1[2];
    v17 = v14 & 1;
    v27 = *(a1 + 3);
    v28 = *(a1 + 2);
    v19 = a8;

    v21 = v27;
    v20 = v28;
    v22 = v29;
    a8 = v19;
    v12 = a3;
  }

  *&v40 = v22;
  *(&v40 + 1) = v15;
  v41 = v16;
  v42 = v20;
  v43 = v21;
  LOBYTE(v44) = v17;
  *(&v44 + 1) = a2;
  *&v45 = v12;
  *(&v45 + 1) = a4;
  v46 = a5;
  *&v47 = a6;
  *(&v47 + 1) = a7;
  *&v48 = a8;
  *(&v48 + 1) = a9;
  v23 = type metadata accessor for Model3DPlaceholderContent();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v40, v23, WitnessTable);
  v38[4] = v44;
  v38[5] = v45;
  v39 = v46;
  v38[0] = v40;
  v38[1] = v41;
  v38[2] = v42;
  v38[3] = v43;
  v25 = *(*(v23 - 8) + 8);

  v25(v38, v23);
  v35 = v51;
  v36 = v52;
  v37 = v53;
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  static ViewBuilder.buildExpression<A>(_:)(&v31, v23, WitnessTable);
  v44 = v35;
  v45 = v36;
  v46 = v37;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  return v25(&v40, v23);
}

uint64_t Model3D.init<>(from:configurations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  *(a3 + *(v6 + 36)) = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v8 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  *(a3 + v7) = a2;
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  v10 = (a3 + *(v6 + 40));
  *v10 = closure #1 in Model3D.init<>(asset:);
  v10[1] = 0;
  return result;
}

uint64_t (*Model3D.init<A, B>(from:configurations:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11))@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Model3DPlaceholderContent();
  swift_getWitnessTable();
  v17 = type metadata accessor for Model3D();
  *(a9 + *(v17 + 36)) = 0;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v19 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + v18) = a2;
  type metadata accessor for Model3DLocation();
  swift_storeEnumTagMultiPayload();
  result = swift_allocObject();
  *(result + 2) = a7;
  *(result + 3) = a8;
  *(result + 4) = a10;
  *(result + 5) = a11;
  *(result + 6) = a3;
  *(result + 7) = a4;
  *(result + 8) = a5;
  *(result + 9) = a6;
  v21 = (a9 + *(v17 + 40));
  *v21 = partial apply for closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:);
  v21[1] = result;
  return result;
}

uint64_t closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 64);
  if (v11 > 0x3F)
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  else
  {
    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    v15 = a1[1];
    v14 = a1[2];
    v16 = *a1;
    v17 = v11 & 1;
    *(&v13 + 1) = a1[5];
    *(&v12 + 1) = a1[7];
    v21 = v12;
    v22 = v13;

    v19 = v21;
    v18 = v22;
  }

  *a6 = v16;
  *(a6 + 8) = v15;
  *(a6 + 16) = v14;
  *(a6 + 24) = 0;
  *(a6 + 32) = v18;
  *(a6 + 48) = v19;
  *(a6 + 64) = v17;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t partial apply for closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v7 = v2[5];
  return closure #1 in Model3D.init<A, B>(from:configurations:content:placeholder:)(a1, v2[6], v2[7], v2[8], v2[9], a2);
}

uint64_t Model3D.init(from:configurations:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Model3D();
  v13 = *(v12 + 36);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMd, &_s10RealityKit6EntityC0A10FoundationE20ConfigurationCatalogV_SDyS2SGSg14configurationstMR) + 48);
  v15 = type metadata accessor for Entity.ConfigurationCatalog();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  *(a6 + v14) = a2;
  type metadata accessor for Model3DLocation();
  result = swift_storeEnumTagMultiPayload();
  *(a6 + v13) = a3;
  v17 = (a6 + *(v12 + 40));
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t Model3DPlaceholderContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = *(a1[3] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42[-v10];
  v12 = *(v9 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v9);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v42[-v18];
  v50 = v20;
  v21 = type metadata accessor for _ConditionalContent();
  v52 = *(v21 - 8);
  v53 = v21;
  v22 = *(v52 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v51 = &v42[-v24];
  v25 = *(v2 + 8);
  if (v25)
  {
    v27 = *(v2 + 72);
    v26 = *(v2 + 80);
    v43 = *(v2 + 64);
    v28 = *(v2 + 16);
    v49 = *(v2 + 24);
    v29 = *(v2 + 32);
    v30 = *(v2 + 40);
    v46 = *v2;
    v47 = v29;
    v44 = v30;
    v31 = *(v2 + 56);
    v45 = *(v2 + 48);
    v48 = v31;
    v55[0] = v46;
    v55[1] = v25;
    v55[2] = v28;
    v55[4] = v29;
    v55[5] = v30;
    v55[6] = v45;
    v55[7] = v31;
    v56 = v43 & 1;

    v27(v55);
    v32 = a1[4];
    static ViewBuilder.buildExpression<A>(_:)(v17, v12, v32);
    v33 = *(v13 + 8);
    v33(v17, v12);
    static ViewBuilder.buildExpression<A>(_:)(v19, v12, v32);
    v34 = a1[5];
    v35 = v51;
    static ViewBuilder.buildEither<A, B>(first:)(v17, v12);
    outlined consume of ResolvedModel3D?(v46, v25);
    v33(v17, v12);
    v33(v19, v12);
  }

  else
  {
    v36 = *(v2 + 96);
    (*(v2 + 88))(v23);
    v34 = a1[5];
    v37 = v50;
    static ViewBuilder.buildExpression<A>(_:)(v8, v50, v34);
    v38 = *(v4 + 8);
    v38(v8, v37);
    static ViewBuilder.buildExpression<A>(_:)(v11, v37, v34);
    v32 = a1[4];
    v35 = v51;
    static ViewBuilder.buildEither<A, B>(second:)(v8, v12, v37);
    v38(v8, v37);
    v38(v11, v37);
  }

  v57 = v32;
  v58 = v34;
  v39 = v53;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v35, v39, WitnessTable);
  return (*(v52 + 8))(v35, v39);
}

uint64_t outlined consume of ResolvedModel3D?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t (*Model3D.init<A>(asset:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>))@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Model3DPlaceholderContent();
  swift_getWitnessTable();
  v12 = type metadata accessor for Model3D();
  *(a6 + *(v12 + 36)) = 0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(a1 + v13, a6);

  result = swift_allocObject();
  *(result + 2) = a4;
  *(result + 3) = a5;
  *(result + 4) = a2;
  *(result + 5) = a3;
  v15 = (a6 + *(v12 + 40));
  *v15 = partial apply for closure #1 in Model3D.init<A>(asset:content:);
  v15[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset()
{
  result = lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset;
  if (!lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset)
  {
    type metadata accessor for Model3DAsset();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Model3DAsset and conformance Model3DAsset);
  }

  return result;
}

uint64_t closure #1 in Model3D.init<A>(asset:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 64);
  if (v7 > 0x3F)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  else
  {
    v9 = *(a1 + 2);
    v8 = *(a1 + 3);
    v11 = a1[1];
    v10 = a1[2];
    v12 = *a1;
    v13 = v7 & 1;
    *(&v9 + 1) = a1[5];
    *(&v8 + 1) = a1[7];
    v17 = v8;
    v18 = v9;

    v15 = v17;
    v14 = v18;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  *(a4 + 24) = 0;
  *(a4 + 32) = v14;
  *(a4 + 48) = v15;
  *(a4 + 64) = v13;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  *(a4 + 88) = closure #1 in BoundingBoxRotateManipulator.requestAsyncModelLoad();
  *(a4 + 96) = 0;
}

uint64_t partial apply for closure #1 in Model3D.init<A>(asset:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return closure #1 in Model3D.init<A>(asset:content:)(a1, v2[4], v2[5], a2);
}

uint64_t Model3D.init<>(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMd, &_s19_RealityKit_SwiftUI7Model3DVyAA08ResolvedE1DVGMR);
  *(a2 + *(v4 + 36)) = 0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Model3DAsset and conformance Model3DAsset();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI12Model3DAsset__location;
  swift_beginAccess();
  outlined init with copy of Model3DLocation(a1 + v5, a2);

  v7 = (a2 + *(v4 + 40));
  *v7 = closure #1 in Model3D.init<>(asset:);
  v7[1] = 0;
  return result;
}

uint64_t closure #1 in Model3D.init<>(from:configurations:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 > 0x3F)
  {
    result = BoundingBox.init()();
    v6 = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = a1[1];
    v4 = a1[2];
    v6 = *a1;
    v12 = *(a1 + 2);
    v7 = v3 & 1;
    v11 = *(a1 + 3);

    v10 = v11;
    v9 = v12;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v7;
  return result;
}

uint64_t associated type witness table accessor for View.Body : View in Model3DPlaceholderContent<A, B>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI12Model3DPhaseO(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for Model3DPhase(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
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

double storeEnumTagSinglePayload for Model3DPhase(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for Model3DPhase(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 1 | (a2 << 6);
    *(result + 24) = 0;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x80;
  }

  return result;
}

unint64_t type metadata completion function for Model3D()
{
  result = type metadata accessor for Model3DLocation();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Model3DPlaceholderContent()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_19_RealityKit_SwiftUI15ResolvedModel3DVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Model3DPlaceholderContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Model3DPlaceholderContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CameraFrustumRendererForLiveCamera.showCameraLocation.didset(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    return result;
  }

  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    if ((*(v2 + 16) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v6 = swift_slowAlloc();
  *v6 = 67109120;
  *(v6 + 4) = *(v2 + 16);

  _os_log_impl(&dword_23B824000, v4, v5, "Set showCameraLocation to %{BOOL}d", v6, 8u);
  MEMORY[0x23EEB0B70](v6, -1, -1);

  if (*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = *(v2 + 112);
  *(v2 + 112) = 0;
  swift_unknownObjectRelease();
  v8 = *(v2 + 16);
LABEL_9:
  swift_beginAccess();
  outlined init with copy of Animation?(v2 + 128, v20);
  v9 = v21;
  if (v21)
  {
    outlined init with copy of Cancellable(v20, v18);
    outlined destroy of Animation?(v20);
    v10 = *__swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = RampAnimation.update(time:)(*(v2 + 120));
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    outlined destroy of Animation?(v20);
    v11 = 0.0;
  }

  v12 = type metadata accessor for RampAnimation();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xFFF0000000000000;
  *(result + 24) = v8 ^ 1;
  *(result + 16) = 0x3FE0000000000000;
  v13 = 0.0;
  if (!v8)
  {
    v13 = 1.0;
  }

  if (v9)
  {
    v13 = v11;
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 72) = v13;
  if (v13 < 0.0 || v13 > 1.0)
  {
    __break(1u);
  }

  else
  {
    v21 = v12;
    v22 = &protocol witness table for RampAnimation;
    v20[0] = result;
    swift_beginAccess();
    outlined assign with take of Animation?(v20, v2 + 128);
    swift_endAccess();
    outlined init with copy of Animation?(v2 + 128, v20);
    if (v21)
    {
      outlined init with copy of Cancellable(v20, v18);
      outlined destroy of Animation?(v20);
      v14 = __swift_project_boxed_opaque_existential_1(v18, v19);
      v15 = *(v2 + 120);
      v16 = *v14;
      v17 = v15 + *(*v14 + 16);
      *(v16 + 48) = v15;
      *(v16 + 56) = v17;
      return __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    else
    {
      return outlined destroy of Animation?(v20);
    }
  }

  return result;
}

float CameraFrustumRendererForLiveCamera.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Setting up CameraFrustumRendererForLiveCamera!", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  v14 = *(v6 + 32);
  *(v6 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v15 = *(v6 + 40);

  CameraFrustumRenderer.setup(device:pixelFormat:cameraFrustumMeshDescriptor:)(a1, a2, a3);

  if (!v5)
  {
    result = COERCE_FLOAT(*(a3 + 44)) / sqrtf(vaddv_f32(vmul_f32(*(a3 + 44), *(a3 + 44))));
    *(v6 + 20) = result;
  }

  return result;
}

void CameraFrustumRendererForLiveCamera.render(into:desc:)(void *a1, void *a2)
{
  if (*(v2 + 24) > 0.0)
  {
    CameraFrustumRendererForLiveCamera.updatePoseMTLBuffer()();
    v5 = *(v2 + 112);
    if (v5)
    {
      v6 = *(v2 + 40);
      if (*(v6 + 176) > 0.001)
      {
        if (*(v6 + 24))
        {

          swift_unknownObjectRetain();
          v7 = [a2 colorAttachments];
          v8 = [v7 objectAtIndexedSubscript_];

          if (v8)
          {
            [v8 setLoadAction_];

            CameraFrustumRenderer.renderCone(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);
            CameraFrustumRenderer.renderHollowCylinder(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);
            CameraFrustumRenderer.renderSphere(into:desc:cameraPosesMTLBuffer:numCameraPoses:)(a1, a2, v5, 1);

            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall CameraFrustumRendererForLiveCamera.update(time:worldToView:viewToClip:cameraPose:)(Swift::Double time, simd_float4x4 *worldToView, simd_float4x4 *viewToClip, simd_float4x4 *cameraPose)
{
  v24 = v10;
  v25 = v11;
  v22 = v8;
  v23 = v9;
  v20 = v6;
  v21 = v7;
  v19 = v5;
  *(v4 + 120) = time;
  *(v4 + 48) = v32;
  *(v4 + 64) = v33;
  *(v4 + 80) = v34;
  *(v4 + 96) = v35;
  swift_beginAccess();
  outlined init with copy of Animation?(v4 + 128, &v26);
  if (*(&v27 + 1))
  {
    outlined init with take of Animation(&v26, v29);
    v13 = __swift_project_boxed_opaque_existential_1(v29, v30);
    if (*(*v13 + 56) >= *(*v13 + 64))
    {
      v15 = v4;
      v16 = *__swift_project_boxed_opaque_existential_1(v29, v30);
      v14 = RampAnimation.update(time:)(time);
      v4 = v15;
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      swift_beginAccess();
      outlined assign with take of Animation?(&v26, v4 + 128);
      swift_endAccess();
      v14 = 0.0;
      if (*(v4 + 16))
      {
        v14 = 1.0;
      }
    }

    *(v4 + 24) = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    outlined destroy of Animation?(&v26);
  }

  v17 = *(v4 + 40);
  v18 = *(v4 + 24);
  *(v17 + 48) = v19;
  *(v17 + 64) = v20;
  *(v17 + 80) = v21;
  *(v17 + 96) = v22;
  *(v17 + 112) = v23;
  *(v17 + 128) = v24;
  *(v17 + 144) = v25;
  *(v17 + 160) = v31;
  *(v17 + 176) = v18;
}

void CameraFrustumRendererForLiveCamera.updatePoseMTLBuffer()()
{
  v1 = v0;
  v2 = *(v0 + 112);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Creating MTLBuffer for the live camera...", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    if (*(v1 + 32))
    {
      v7 = *(v1 + 32);
      v8 = [swift_unknownObjectRetain() newBufferWithLength:64 options:1];
      if (v8)
      {
        v9 = v8;
        swift_unknownObjectRelease();
        v10 = *(v1 + 112);
        *(v1 + 112) = v9;
        swift_unknownObjectRelease();
        v2 = *(v1 + 112);
        if (!v2)
        {
          return;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
  v11 = [swift_unknownObjectRetain_n() contents];
  v12 = v2;
  v13 = *(v1 + 64);
  v14 = *(v1 + 80);
  v15 = *(v1 + 96);
  *v11 = *(v1 + 48);
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;

  swift_unknownObjectRelease();
}

uint64_t CameraFrustumRendererForLiveCamera.__deallocating_deinit()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[14];
  swift_unknownObjectRelease();
  outlined destroy of Animation?((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t CameraFrustumRendererForLiveCamera.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1063105496;
  *(v0 + 32) = 0;
  type metadata accessor for CameraFrustumRenderer();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D860B8];
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *(v1 + 48) = *v2;
  *(v1 + 64) = v4;
  *(v1 + 80) = v5;
  *(v1 + 96) = v6;
  *(v1 + 112) = v3;
  *(v1 + 128) = v4;
  *(v1 + 144) = v5;
  *(v1 + 160) = v6;
  *(v1 + 176) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  *(v0 + 80) = v5;
  *(v0 + 96) = v6;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  return v0;
}

uint64_t specialized simd_float3x3.init(cgTransform:vectorType:)@<X0>(float64x2_t *a1@<X0>, char a2@<W1>, int32x4_t *a3@<X8>)
{
  v4 = vcvt_f32_f64(*a1);
  v5 = vcvt_f32_f64(a1[1]);
  v6 = vcvt_f32_f64(a1[2]);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
    v7 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = v4;
    *(inited + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    v30 = v9;
    swift_setDeallocating();
    v7[2] = v30;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_23B91A6D0;
    *(v10 + 32) = v5;
    *(v10 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v10);
    v28 = v11;
    swift_setDeallocating();
    v7[3] = v28;
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_23B91A6D0;
    *(v12 + 32) = v6;
    *(v12 + 40) = 1065353216;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v12);
    v26 = v13;
    swift_setDeallocating();
    v7[4] = v26;
    swift_setDeallocating();
    result = swift_deallocClassInstance();
    v15 = vzip1q_s32(v30, v26);
    v16 = vzip1q_s32(v28, 0);
    v17 = vzip1q_s32(v15, v16);
    v18 = vzip2q_s32(v15, v16);
    v19 = vzip2q_s32(v30, v28);
    v17.i32[2] = vdupq_lane_s32(*&v26, 0).i32[2];
    v18.i32[2] = vdupq_lane_s32(*&v26, 1).i32[2];
    v19.i32[2] = v26.i32[2];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_23B91A6D0;
    *(v20 + 32) = v4;
    *(v20 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v20);
    v29 = v21;
    swift_setDeallocating();
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_23B91A6D0;
    *(v22 + 32) = v5;
    *(v22 + 40) = 0;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v22);
    v27 = v23;
    swift_setDeallocating();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_23B91A6D0;
    *(v24 + 32) = v6;
    *(v24 + 40) = 1065353216;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v24);
    v31 = v25;
    result = swift_setDeallocating();
    v17 = v29;
    v19 = v31;
    v18 = v27;
  }

  *a3 = v17;
  a3[1] = v18;
  a3[2] = v19;
  return result;
}

uint64_t ARViewContainer.init(model:cameraFeedOverlay:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for DataModel(0);
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
  *a3 = ObservedObject.init(wrappedValue:)();
  a3[1] = v6;
  v7 = type metadata accessor for ARViewContainer();
  v8 = *(v7 + 36);
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(a2 - 8) + 32);
  v10 = a3 + *(v7 + 40);

  return v9(v10, a1, a2);
}

uint64_t ARViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v2 = *(a1 + 16);
  v25 = *(a1 + 24);
  type metadata accessor for ARViewContainer.ARViewContainer();
  type metadata accessor for UUID();
  swift_getWitnessTable();
  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  type metadata accessor for IDView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ScenePhase();
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x277CE06C0];
  v24 = MEMORY[0x277CDFAD8];
  v5 = swift_getWitnessTable();
  v6 = MEMORY[0x277CE0790];
  v35 = v5;
  v36 = MEMORY[0x277CE0790];
  v33 = swift_getWitnessTable();
  v34 = v6;
  v39 = v3;
  v40 = v4;
  v41 = swift_getWitnessTable();
  v42 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for ZStack();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v28 = v2;
  v29 = v25;
  v30 = v26;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  static Edge.Set.all.getter();
  v20 = swift_getWitnessTable();
  View.edgesIgnoringSafeArea(_:)();
  (*(v8 + 8))(v11, v7);
  v31 = v20;
  v32 = MEMORY[0x277CE06C0];
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v12, v21);
  v22 = *(v13 + 8);
  v22(v17, v12);
  static ViewBuilder.buildExpression<A>(_:)(v19, v12, v21);
  return (v22)(v19, v12);
}

uint64_t closure #1 in ARViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a4;
  v142 = type metadata accessor for ModifiedContent();
  v138 = *(v142 - 8);
  v7 = *(v138 + 64);
  v8 = MEMORY[0x28223BE20](v142);
  v140 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v112 - v10;
  v11 = type metadata accessor for ScenePhase();
  v131 = *(v11 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v11);
  v130 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ARViewContainer();
  v123 = *(v152 - 8);
  v145 = *(v123 + 64);
  MEMORY[0x28223BE20](v152);
  v143 = &v112 - v14;
  v15 = type metadata accessor for UUID();
  v133 = *(v15 - 8);
  v16 = *(v133 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = a2;
  v151 = a3;
  v19 = type metadata accessor for ARViewContainer.ARViewContainer();
  WitnessTable = swift_getWitnessTable();
  v21 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v122 = v19;
  v161 = v19;
  v162 = v15;
  v132 = v15;
  v121 = WitnessTable;
  v163 = WitnessTable;
  v164 = v21;
  v118 = v21;
  v22 = type metadata accessor for IDView();
  v120 = *(v22 - 8);
  v23 = *(v120 + 64);
  MEMORY[0x28223BE20](v22);
  v119 = &v112 - v24;
  v25 = type metadata accessor for ModifiedContent();
  v125 = *(v25 - 8);
  v26 = *(v125 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v112 - v27;
  v29 = type metadata accessor for ModifiedContent();
  v127 = *(v29 - 8);
  v30 = *(v127 + 64);
  MEMORY[0x28223BE20](v29);
  v124 = &v112 - v31;
  v32 = type metadata accessor for ModifiedContent();
  v129 = *(v32 - 8);
  v33 = *(v129 + 64);
  MEMORY[0x28223BE20](v32);
  v144 = &v112 - v34;
  v115 = swift_getWitnessTable();
  v170 = v115;
  v171 = MEMORY[0x277CE06C0];
  v126 = v25;
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x277CE0790];
  v116 = v35;
  v168 = v35;
  v169 = MEMORY[0x277CE0790];
  v128 = v29;
  v117 = swift_getWitnessTable();
  v166 = v117;
  v167 = v36;
  v37 = swift_getWitnessTable();
  v38 = _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
  v148 = v32;
  v161 = v32;
  v162 = v11;
  v149 = v11;
  v147 = v37;
  v163 = v37;
  v164 = v38;
  v146 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v44 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v112 - v45;
  v134 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA23_SafeAreaIgnoringLayoutVGMR);
  v137 = type metadata accessor for _ConditionalContent();
  v136 = *(v137 - 8);
  v47 = *(v136 + 64);
  v48 = MEMORY[0x28223BE20](v137);
  v135 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v153 = &v112 - v50;
  if (*(*(a1 + 8) + 16))
  {
    type metadata accessor for DataModel(0);
    v114 = v46;
    _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DataModel and conformance DataModel, type metadata accessor for DataModel);
    v113 = v44;

    v161 = ObservedObject.init(wrappedValue:)();
    v162 = v51;
    v52 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v112 = a1;

    static Published.subscript.getter();

    v53 = v119;
    v122 = v40;
    v54 = v132;
    View.id<A>(_:)();
    (*(v133 + 8))(v18, v54);

    static Edge.Set.all.getter();
    View.edgesIgnoringSafeArea(_:)();
    (*(v120 + 8))(v53, v22);
    v55 = v123;
    v133 = *(v123 + 16);
    v56 = v143;
    v57 = v152;
    (v133)(v143, a1, v152);
    v58 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v121 = OpaqueTypeMetadata2;
    v59 = swift_allocObject();
    v60 = v151;
    *(v59 + 16) = v150;
    *(v59 + 24) = v60;
    v132 = *(v55 + 32);
    v132(v59 + v58, v56, v57);
    v61 = v124;
    v62 = v126;
    View.onAppear(perform:)();

    (*(v125 + 8))(v28, v62);
    v63 = v56;
    v64 = v56;
    v65 = v112;
    v66 = v152;
    (v133)(v64, v112, v152);
    v67 = swift_allocObject();
    v68 = v151;
    *(v67 + 16) = v150;
    *(v67 + 24) = v68;
    v132(v67 + v58, v63, v66);
    v69 = v128;
    View.onDisappear(perform:)();

    v70 = v61;
    v71 = v65;
    (*(v127 + 8))(v70, v69);
    v72 = v152;
    v73 = v71 + *(v152 + 36);
    v74 = v130;
    specialized Environment.wrappedValue.getter(v130);
    v75 = v143;
    (v133)(v143, v71, v72);
    v76 = swift_allocObject();
    *(v76 + 16) = v150;
    *(v76 + 24) = v68;
    v132(v76 + v58, v75, v72);
    v77 = v113;
    v78 = v148;
    v79 = v149;
    v80 = v147;
    v81 = v146;
    v82 = v144;
    View.onChange<A>(of:initial:_:)();

    (*(v131 + 8))(v74, v79);
    (*(v129 + 8))(v82, v78);
    v161 = v78;
    v162 = v79;
    v163 = v80;
    v164 = v81;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v114;
    v85 = v77;
    v86 = v77;
    v87 = v121;
    static ViewBuilder.buildExpression<A>(_:)(v86, v121, OpaqueTypeConformance2);
    v88 = *(v122 + 8);
    v88(v85, v87);
    static ViewBuilder.buildExpression<A>(_:)(v84, v87, OpaqueTypeConformance2);
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(first:)(v85, v87);
    v88(v85, v87);
    v88(v84, v87);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v90 = Text.init(_:tableName:bundle:comment:)();
    v92 = v91;
    v71 = a1;
    v94 = v93;
    v96 = v95;
    v97 = static Edge.Set.all.getter();
    v161 = v90;
    v162 = v92;
    v94 &= 1u;
    LOBYTE(v163) = v94;
    v164 = v96;
    v165 = v97;
    v157 = v148;
    v158 = v149;
    v159 = v147;
    v160 = v146;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    static ViewBuilder.buildEither<A, B>(second:)(&v161, OpaqueTypeMetadata2, v134);
    outlined consume of Text.Storage(v90, v92, v94);
  }

  v89 = v151;
  v98 = v71 + *(v152 + 40);
  v99 = v140;
  View.allowsHitTesting(_:)();
  v156[2] = v89;
  v156[3] = MEMORY[0x277CE0770];
  v100 = v142;
  v101 = swift_getWitnessTable();
  v102 = v139;
  static ViewBuilder.buildExpression<A>(_:)(v99, v100, v101);
  v103 = v138;
  v104 = *(v138 + 8);
  v104(v99, v100);
  v105 = v136;
  v106 = v135;
  v107 = v137;
  (*(v136 + 16))(v135, v153, v137);
  v157 = v106;
  (*(v103 + 16))(v99, v102, v100);
  v158 = v99;
  v156[0] = v107;
  v156[1] = v100;
  v161 = v148;
  v162 = v149;
  v163 = v147;
  v164 = v146;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = lazy protocol witness table accessor for type ModifiedContent<Text, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  v154 = v108;
  v155 = v109;
  v161 = swift_getWitnessTable();
  v162 = v101;
  static ViewBuilder.buildBlock<each A>(_:)(&v157, 2uLL, v156);
  v104(v102, v100);
  v110 = *(v105 + 8);
  v110(v153, v107);
  v104(v99, v100);
  return (v110)(v106, v107);
}

uint64_t closure #1 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23B824000, v9, v10, a4, v11, 2u);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v12 = *(a1 + 8);

  a5(v13);
}

uint64_t closure #3 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v3 = type metadata accessor for ScenePhase();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[13];
  HIDWORD(v28) = *MEMORY[0x277CDD6B8];
  v8(v7);
  v9 = static ScenePhase.== infix(_:_:)();
  v10 = v4[1];
  v10(v7, v3);
  v11 = *MEMORY[0x277CDD6C0];
  if (v9)
  {
    (v8)(v7, *MEMORY[0x277CDD6C0], v3);
    v12 = static ScenePhase.== infix(_:_:)();
    v10(v7, v3);
    if (v12 & 1) != 0 || ((v8)(v7, *MEMORY[0x277CDD6B0], v3), v13 = static ScenePhase.== infix(_:_:)(), v10(v7, v3), (v13))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_23B824000, v15, v16, "App changing to a background state... notifying the session to pause capture!", v17, 2u);
        MEMORY[0x23EEB0B70](v17, -1, -1);
      }

      v18 = *(v29 + 8);

      DataModel.prepareForBackground()();
    }
  }

  (v8)(v7, v11, v3);
  v19 = static ScenePhase.== infix(_:_:)();
  v10(v7, v3);
  if (v19 & 1) != 0 || ((v8)(v7, *MEMORY[0x277CDD6B0], v3), v20 = static ScenePhase.== infix(_:_:)(), result = (v10)(v7, v3), (v20))
  {
    (v8)(v7, HIDWORD(v28), v3);
    v22 = static ScenePhase.== infix(_:_:)();
    result = (v10)(v7, v3);
    if (v22)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, logger);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23B824000, v24, v25, "App returning from a background state... notifying the session to resume capture!", v26, 2u);
        MEMORY[0x23EEB0B70](v26, -1, -1);
      }

      v27 = *(v29 + 8);

      DataModel.resumeFromBackground()();
    }
  }

  return result;
}

uint64_t ARViewContainer.ARViewContainer.ensureWorldAnchorExists()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Scene.AnchorCollection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v22[-1] - v10;
  v12 = *(a2 + 16);
  if (!v12)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v13 = v12;
  dispatch thunk of ARView.scene.getter();

  dispatch thunk of Scene.anchors.getter();

  _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type Scene.AnchorCollection and conformance Scene.AnchorCollection, MEMORY[0x277CDB0C0]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v22[4] == v22[0])
  {
    v14 = *(v4 + 8);
    v14(v11, v3);
    type metadata accessor for AnchorEntity();
    v15 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of ARViewContainer.ARViewContainer.ensureWorldAnchorExists());
    MEMORY[0x23EEAC670](v15);
    v16 = *(a2 + 16);
    v17 = v16;

    if (v16)
    {
      dispatch thunk of ARView.scene.getter();

      dispatch thunk of Scene.anchors.getter();

      Scene.AnchorCollection.append(_:)();

      return (v14)(v8, v3);
    }

    goto LABEL_8;
  }

  v18 = dispatch thunk of Collection.subscript.read();
  v20 = *v19;

  v18(v22, 0);
  (*(v4 + 8))(v11, v3);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return specialized ARViewContainer.ARViewContainer.makeUIView(context:)(*v2, v2[1]);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ARViewContainer<A>.ARViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance ARViewContainer<A>.ARViewContainer()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

void type metadata completion function for ARViewContainer(uint64_t a1)
{
  type metadata accessor for ObservedObject<DataModel>();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Environment<ScenePhase>();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ARViewContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for ScenePhase() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v13 + 23) & ~v14)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((a1 + v14 + 16) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + 1);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for ARViewContainer(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for ScenePhase() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((v17 + ((v15 + 23) & ~(v15 | 7))) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v18) = 0;
  }

  else if (v19)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v11 & 0x80000000) != 0)
  {
    v25 = *(v10 + 56);

    v25((v17 + ((a1 + v16 + 16) & ~v16)) & ~v13, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

void type metadata accessor for Environment<ScenePhase>()
{
  if (!lazy cache variable for type metadata for Environment<ScenePhase>)
  {
    type metadata accessor for ScenePhase();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<ScenePhase>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in ARViewContainer.body.getter(const char *a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ARViewContainer() - 8);
  return closure #1 in closure #1 in ARViewContainer.body.getter(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a1, a2);
}

uint64_t objectdestroyTm_7()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ARViewContainer();
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = *(v3 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ScenePhase();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
    v11 = *(v7 + v9);
  }

  (*(*(v2 - 8) + 8))(v7 + *(v3 + 40), v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in ARViewContainer.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ARViewContainer() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #3 in closure #1 in ARViewContainer.body.getter(a1, a2, v8);
}

uint64_t type metadata instantiation function for ARViewContainer.ARViewContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id specialized ARViewContainer.ARViewContainer.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    if (one-time initialization token for logger != -1)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Trying to make an ARViewContainer for a deinitialized ObjectCaptureSession!", v23, 2u);
        MEMORY[0x23EEB0B70](v23, -1, -1);
      }

      __break(1u);
LABEL_11:
      swift_once();
    }
  }

  v3 = a2;
  v5 = one-time initialization token for logger;
  v6 = v2;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v11 = 136315138;
    v12 = v8;
    v25 = v8;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = a1;
    v15 = v3;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v27);
    v3 = v15;
    a1 = v26;

    *(v11 + 4) = v18;
    v8 = v25;
    _os_log_impl(&dword_23B824000, v9, v10, "Got arView: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x23EEB0B70](v24, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  ARViewContainer.ARViewContainer.ensureWorldAnchorExists()(a1, v3);
  return v8;
}

uint64_t _s19_RealityKit_SwiftUI9DataModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for captureSoundModuleType()
{
  v0 = specialized static ExperimentSettings.loadCaptureSoundModuleType(default:)(0x6B6143726579616CLL);
  v2 = v1;
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureSoundModuleType.init(rawValue:), v3);

  captureSoundModuleType = v4 != 0;
  return result;
}

uint64_t createCaptureSoundModule()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for captureSoundModuleType != -1)
  {
    swift_once();
  }

  if (captureSoundModuleType)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23B824000, v3, v4, "Using layered sound module.", v5, 2u);
      MEMORY[0x23EEB0B70](v5, -1, -1);
    }

    v6 = type metadata accessor for LayerCakeCaptureSoundModule();
    result = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    *(result + 16) = 0;
    *(result + 24) = v8;
    *(result + 32) = v8;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = v8;
    *(result + 80) = 1048576000;
    *(result + 88) = 0x3FD3333333333333;
    *(result + 96) = &outlined read-only object #0 of LayerCakeCaptureSoundModule.init();
    *(result + 104) = 0xFFF0000000000000;
    v9 = &protocol witness table for LayerCakeCaptureSoundModule;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23B824000, v11, v12, "Using filter stack sound module.", v13, 2u);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v6 = type metadata accessor for FilterPipeCaptureSoundModule();
    result = swift_allocObject();
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0;
    *(result + 56) = 5;
    *(result + 64) = 16843009;
    *(result + 68) = xmmword_23B923160;
    *(result + 84) = 1150681088;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 1048576000;
    v9 = &protocol witness table for FilterPipeCaptureSoundModule;
  }

  a1[3] = v6;
  a1[4] = v9;
  *a1 = result;
  return result;
}

uint64_t one-time initialization function for isSoundEnabled()
{
  result = specialized static ExperimentSettings.loadIsSoundEnabled(default:)(1u);
  static SoundManager.isSoundEnabled = result & 1;
  return result;
}

void *one-time initialization function for instance()
{
  createCaptureSoundModule()(v1);
  type metadata accessor for SoundManager();
  swift_allocObject();
  result = SoundManager.init(module:)(v1);
  static SoundManager.instance = result;
  return result;
}

void *SoundManager.init(module:)(uint64_t a1)
{
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v18[1] = type metadata accessor for OS_dispatch_queue();
  v21 = 0xD000000000000022;
  v22 = 0x800000023B924740;
  MEMORY[0x23EEAF590](0xD000000000000018, 0x800000023B929B90);
  v18[0] = v22;
  static DispatchQoS.userInteractive.getter();
  v21 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v9 = v18[2];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v19);
  *(v9 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v9 + 24) = 0;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  if (one-time initialization token for isSoundEnabled != -1)
  {
    swift_once();
  }

  if (static SoundManager.isSoundEnabled != 1)
  {
    v10 = v20;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "Sound is not enabled...  not creating the SoundManager singleton!", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }

    type metadata accessor for SoundManager();
    swift_deallocPartialClassInstance();
    v9 = 0;
    goto LABEL_12;
  }

  v10 = v20;
  outlined init with copy of Cancellable(v20, v9 + 32);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v12 + 8))(v11, v12);
  SoundManager.initializeAudioEngine()();
  result = *(v9 + 72);
  if (result)
  {
    [result prepare];
    *(v9 + 24) = 4;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    return v9;
  }

  __break(1u);
  return result;
}

void SoundManager.initializeAudioEngine()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Initializing audio engine...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CB8388]) init];
  v7 = *(v1 + 72);
  *(v1 + 72) = v6;
  v8 = v6;

  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = [v8 mainMixerNode];

  v10 = *(v1 + 80);
  *(v1 + 80) = v9;

  outlined init with copy of Cancellable(v1 + 32, v16);
  v11 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v12 = *(v1 + 72);
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(v11 + 16);
  v14 = v12;
  v13();

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  v15 = *(v1 + 72);
  if (v15)
  {
    [v15 setAutoShutdownEnabled_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t SoundManager.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void SoundManager.startEngineIfNeeded()()
{
  v1 = v0;
  v33[2] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v33[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v9 = *(v1 + 72);
  if (!v9)
  {
    __break(1u);
  }

  if ([v9 isRunning])
  {
    goto LABEL_15;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_17;
  }

LABEL_5:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, "Starting audio engine...", v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  specialized SoundManager.setupAudioCategory()();
  v14 = *(v1 + 72);
  if (v14)
  {
    v33[0] = 0;
    v15 = [v14 startAndReturnError_];
    v16 = v33[0];
    if (v15)
    {
      *(v1 + 24) = 1;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = [v17 defaultCenter];
      [v19 addObserver:v1 selector:sel_handleEngineConfigChange_ name:*MEMORY[0x277CB8008] object:0];

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23B824000, v20, v21, "... done starting audio engine.", v22, 2u);
        MEMORY[0x23EEB0B70](v22, -1, -1);
      }
    }

    else
    {
      v23 = v33[0];
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v25 = v24;
      v20 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v20, v26))
      {

        goto LABEL_15;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v24;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_23B824000, v20, v26, "Can't start audio engine!  error=%{public}@", v27, 0xCu);
      outlined destroy of NSObject?(v28);
      MEMORY[0x23EEB0B70](v28, -1, -1);
      MEMORY[0x23EEB0B70](v27, -1, -1);
    }

LABEL_15:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall SoundManager.start()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in SoundManager.start();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_165;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

uint64_t closure #1 in SoundManager.start()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SoundManager.startEngineIfNeeded()();
  }

  return result;
}

id SoundManager.pauseEngine()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = *(v0 + 72);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [result isRunning];
  if (!result)
  {
LABEL_6:
    *(v0 + 24) = 3;
    return result;
  }

  result = *(v0 + 72);
  if (result)
  {
    result = [result pause];
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in SoundManager.requestStandby(after:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchTime();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v30 = v5;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v29 = v8;
    v31 = v4;
    v32 = v1;
    v33 = v0;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "requestStop()...", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    *(v17 + 24) = 2;
    v27 = *(v17 + 16);
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v9 + 8);
    v22 = v34;
    v28(v13, v34);
    aBlock[4] = partial apply for closure #1 in closure #1 in SoundManager.requestStandby(after:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_161;
    v23 = _Block_copy(aBlock);

    v24 = v29;
    static DispatchQoS.unspecified.getter();
    v36 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v25 = v35;
    v26 = v33;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEAF910](v15, v24, v25, v23);
    _Block_release(v23);
    (*(v32 + 8))(v25, v26);
    (*(v30 + 8))(v24, v31);
    v28(v15, v22);
  }

  return result;
}

void closure #1 in closure #1 in SoundManager.requestStandby(after:)(uint64_t a1)
{
  if (*(a1 + 24) == 2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23B824000, v2, v3, "... requested standby reached, entering standby.", v4, 2u);
      MEMORY[0x23EEB0B70](v4, -1, -1);
    }

    SoundManager.pauseEngine()();
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23B824000, oslog, v6, "... the requested standby was ignored since the request was overridden.", v7, 2u);
      MEMORY[0x23EEB0B70](v7, -1, -1);
    }
  }
}

uint64_t SoundManager.requestStandby(after:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t closure #1 in SoundManager.update(t:)(double a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of Cancellable(result + 32, v5);

    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 64))(v3, v4, a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return result;
}

void closure #1 in SoundManager.startLoop(playStartSound:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = a2 & 1;
      _os_log_impl(&dword_23B824000, v6, v7, "Starting the loop sound...  playStartSound=%{BOOL,public}d", v8, 8u);
      MEMORY[0x23EEB0B70](v8, -1, -1);
    }

    SoundManager.startEngineIfNeeded()();
    v9 = v4[9];
    if (v9)
    {
      if ([v9 isRunning])
      {
        v10 = v4[7];
        v11 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v10);
        (*(v11 + 24))(a2 & 1, v10, v11);
      }

      else
      {
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_23B824000, v12, v13, "Audio engine not running, not playing sound!", v14, 2u);
          MEMORY[0x23EEB0B70](v14, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SoundManager.startLoop(playStartSound:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void closure #1 in SoundManager.stopLoop(playEndSound:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    SoundManager.startEngineIfNeeded()();
    v5 = v4[9];
    if (v5)
    {
      if ([v5 isRunning])
      {
        v6 = v4[7];
        v7 = v4[8];
        __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
        (*(v7 + 32))(a2 & 1, v6, v7);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_23B824000, v9, v10, "Audio engine not running, not playing sound!", v11, 2u);
          MEMORY[0x23EEB0B70](v11, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #1 in SoundManager.playShutterSound(volume:)(float a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    SoundManager.startEngineIfNeeded()();
    v4 = v3[9];
    if (v4)
    {
      if ([v4 isRunning])
      {
        v5 = v3[7];
        v6 = v3[8];
        __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
        (*(v6 + 40))(v5, v6, a1);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23B824000, v8, v9, "Audio engine not running, not playing sound!", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t SoundManager.playShutterSound(volume:)(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 16);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EEAF960](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void closure #1 in SoundManager.playCompletionSound(volume:)(float a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    SoundManager.startEngineIfNeeded()();
    v4 = v3[9];
    if (v4)
    {
      if ([v4 isRunning])
      {
        v5 = v3[7];
        v6 = v3[8];
        __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
        (*(v6 + 48))(v5, v6, a1);
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, logger);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_23B824000, v8, v9, "Audio engine not running, not playing sound!", v10, 2u);
          MEMORY[0x23EEB0B70](v10, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in SoundManager.updateGoodnessScore(_:)(float a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of Cancellable(result + 32, v5);

    v3 = v6;
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 56))(v3, v4, a1);
    return __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  return result;
}

void FilterPipeCaptureSoundModule.loadSamples()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Loading capture sound samples...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F31, 0xEB00000000706F6FLL);
  if (!v1)
  {
    v7 = v0[12];
    v0[12] = v6;

    v8 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6163735F6E65706FLL, 0xE90000000000006ELL);
    v9 = v0[11];
    v0[11] = v8;

    v10 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6D6F635F6E616373, 0xED00006574656C70);
    v11 = v0[13];
    v0[13] = v10;

    v12 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x65736C7570, 0xE500000000000000);
    v13 = v0[14];
    v0[14] = v12;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23B824000, v14, v15, "... done loading capture sound samples.", v16, 2u);
      MEMORY[0x23EEB0B70](v16, -1, -1);
    }
  }
}

void FilterPipeCaptureSoundModule.connectGraph(engine:)(void *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "Creating loop playback node...", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v8 = v1[2];
  v1[2] = v7;
  v9 = v7;

  if (!v9)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [a1 attachNode_];

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23B824000, v10, v11, "Creating an audio distortion node...", v12, 2u);
    MEMORY[0x23EEB0B70](v12, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CB8448]) init];
  v14 = v1[3];
  v1[3] = v13;
  v15 = v13;

  if (!v15)
  {
    goto LABEL_48;
  }

  [v15 loadFactoryPreset_];

  if (!v1[3])
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [a1 attachNode_];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B824000, v16, v17, "Creating a pitchshifter node...", v18, 2u);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CB8468]) init];
  v20 = v1[4];
  v1[4] = v19;
  v21 = v19;

  if (!v21)
  {
    goto LABEL_50;
  }

  [a1 attachNode_];

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23B824000, v22, v23, "Creating a varispeed node...", v24, 2u);
    MEMORY[0x23EEB0B70](v24, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CB8470]) init];
  v26 = v1[5];
  v1[5] = v25;
  v27 = v25;

  if (!v27)
  {
    goto LABEL_51;
  }

  [a1 attachNode_];

  v28 = [a1 mainMixerNode];
  v29 = v1[2];
  if (!v29)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = v1[5];
  if (!v30)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v31 = v1[12];
  if (!v31)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v32 = v28;
  v33 = v30;
  v34 = v29;
  v35 = [v31 format];
  [a1 connect:v34 to:v33 format:v35];

  v36 = v1[5];
  if (!v36)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v37 = v1[3];
  if (!v37)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v38 = v1[12];
  if (!v38)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v39 = v37;
  v40 = v36;
  v41 = [v38 format];
  [a1 connect:v40 to:v39 format:v41];

  v42 = v1[3];
  if (!v42)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v43 = v1[4];
  if (!v43)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v44 = v1[12];
  if (!v44)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v45 = v43;
  v46 = v42;
  v47 = [v44 format];
  [a1 connect:v46 to:v45 format:v47];

  v48 = v1[4];
  if (!v48)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v49 = v1[12];
  if (!v49)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v50 = v48;
  v51 = [v49 format];
  [a1 connect:v50 to:v32 format:v51];

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_23B824000, v52, v53, "... playback node connected.", v54, 2u);
    MEMORY[0x23EEB0B70](v54, -1, -1);
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_23B824000, v55, v56, "... speed node connected.", v57, 2u);
    MEMORY[0x23EEB0B70](v57, -1, -1);
  }

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_23B824000, v58, v59, "... distortion node connected.", v60, 2u);
    MEMORY[0x23EEB0B70](v60, -1, -1);
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_23B824000, v61, v62, "... pitchshifter node connected.", v63, 2u);
    MEMORY[0x23EEB0B70](v63, -1, -1);
  }

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_23B824000, v64, v65, "... done audio engine initializing.", v66, 2u);
    MEMORY[0x23EEB0B70](v66, -1, -1);
  }

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_23B824000, v67, v68, "Creating the shutter playback node...", v69, 2u);
    MEMORY[0x23EEB0B70](v69, -1, -1);
  }

  v70 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v71 = v1[6];
  v1[6] = v70;
  v72 = v70;

  if (!v72)
  {
    goto LABEL_63;
  }

  [a1 attachNode_];

  v73 = v1[6];
  if (!v73)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v74 = v1[14];
  if (!v74)
  {
LABEL_65:
    __break(1u);
    return;
  }

  v75 = v73;
  v76 = [v74 format];
  [a1 connect:v75 to:v32 format:v76];

  oslog = Logger.logObject.getter();
  v77 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_23B824000, oslog, v77, "... connected shutter playback node.", v78, 2u);
    MEMORY[0x23EEB0B70](v78, -1, -1);
  }
}

id FilterPipeCaptureSoundModule.stopLoop(playEndSound:)(char a1)
{
  if (a1)
  {
    result = *(v1 + 16);
    if (!result)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v3 = *(v1 + 104);
    if (!v3)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    [result scheduleBuffer:v3 atTime:0 options:2 completionHandler:0];
  }

  result = *(v1 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  return [result stop];
}

id FilterPipeCaptureSoundModule.playShutterSound(volume:)(float a1)
{
  result = *(v1 + 48);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 112);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id FilterPipeCaptureSoundModule.playCompletionSound(volume:)(float a1)
{
  result = *(v1 + 48);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 104);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 48);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id FilterPipeCaptureSoundModule.updateGoodnessScore(_:)(double a1)
{
  v2 = 0.0;
  if (*&a1 <= 0.0)
  {
    *&a1 = 0.0;
  }

  if (*&a1 > 1.0)
  {
    *&a1 = 1.0;
  }

  v3 = vabds_f32(1.0, *&a1);
  if (v3 > 0.25)
  {
    v2 = ((1.0 - *&a1) + (((1.0 - *&a1) / v3) * -0.25)) / 0.75;
  }

  result = v1[2];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*&a1 <= 0.2)
  {
    *&a1 = 0.2;
  }

  if (*&a1 > 0.8)
  {
    *&a1 = 0.8;
  }

  [result setVolume_];
  result = v1[3];
  if (!result)
  {
    goto LABEL_21;
  }

  *&v5 = v2 * v2;
  if ((v2 * v2) > 0.5)
  {
    *&v5 = 0.5;
  }

  [result setWetDryMix_];
  result = v1[4];
  if (!result)
  {
    goto LABEL_22;
  }

  *&v6 = v2 * -1200.0;
  [result setPitch_];
  result = v1[5];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *&v7 = (v2 * -0.5) + 1.0;
  return [result setRate_];
}

uint64_t FilterPipeCaptureSoundModule.__deallocating_deinit()
{
  FilterPipeCaptureSoundModule.deinit();

  return swift_deallocClassInstance();
}

uint64_t Fader.__deallocating_deinit()
{
  MEMORY[0x23EEB0C40](v0 + 16);

  return swift_deallocClassInstance();
}

void LayerCakeCaptureSoundModule.loadSamples()()
{
  v2 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23B824000, v4, v5, "Loading capture sound samples...", v6, 2u);
    MEMORY[0x23EEB0B70](v6, -1, -1);
  }

  v7 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6163735F6E65706FLL, 0xE90000000000006ELL);
  if (!v1)
  {
    v8 = v2[6];
    v2[6] = v7;

    v9 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6D6F635F6E616373, 0xED00006574656C70);
    v10 = v2[7];
    v2[7] = v9;

    v11 = specialized static SoundManager.loadAudioFileFromBundle(named:)(0x65736C7570, 0xE500000000000000);
    v12 = v2[8];
    v2[8] = v11;

    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F31, 0xEB00000000706F6FLL);
    v13 = swift_beginAccess();
    MEMORY[0x23EEAF620](v13);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F32, 0xEB00000000706F6FLL);
    v14 = swift_beginAccess();
    MEMORY[0x23EEAF620](v14);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    specialized static SoundManager.loadAudioFileFromBundle(named:)(0x6C5F6E6163735F33, 0xEB00000000706F6FLL);
    v15 = swift_beginAccess();
    MEMORY[0x23EEAF620](v15);
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_23B824000, v16, v17, "... done loading capture sound samples.", v18, 2u);
      MEMORY[0x23EEB0B70](v18, -1, -1);
    }
  }
}

void LayerCakeCaptureSoundModule.connectGraph(engine:)(void *a1)
{
  v5 = v1;
  swift_beginAccess();
  v7 = v1[3];
  if (!(v7 >> 62))
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v43 = v1;

    v13 = MEMORY[0x23EEAFC40](0, v3);

    goto LABEL_8;
  }

LABEL_44:
  if (__CocoaSet.count.getter())
  {
    goto LABEL_45;
  }

LABEL_3:
  v2 = [a1 mainMixerNode];
  v4 = &unk_278B8A000;
  v8 = [objc_allocWithZone(MEMORY[0x277CB83B0]) init];
  v9 = v5[2];
  v5[2] = v8;
  v10 = v8;

  if (!v10)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [a1 attachNode_];

  v1 = v5[2];
  if (!v1)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v3 = v5[9];
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_33;
  }

  v11 = *(v3 + 32);
  v12 = v1;
  v13 = v11;
LABEL_8:
  v14 = [v13 format];

  [a1 connect:v1 to:v2 format:v14];
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v15 = swift_beginAccess();
  MEMORY[0x23EEAF620](v15);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v44 = *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v16 = swift_beginAccess();
  MEMORY[0x23EEAF620](v16);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v45 = *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [objc_allocWithZone(MEMORY[0x277CB83E0]) *(v4 + 1488)];
  v17 = swift_beginAccess();
  MEMORY[0x23EEAF620](v17);
  if (*((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v46 = *((v5[3] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v1 = v5 + 3;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = v5[3];
  swift_endAccess();
  v47 = v2;
  if (v18 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v4 = 0;
    v3 = a1;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EEAFC40](v4, v18);
      }

      else
      {
        if (v4 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v19 = *(v18 + 8 * v4 + 32);
      }

      v20 = v19;
      v21 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      [a1 attachNode_];
      v1 = v5[2];
      if (!v1)
      {
        break;
      }

      v22 = v5[9];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v28 = v1;

        v25 = MEMORY[0x23EEAFC40](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v23 = *(v22 + 32);
        v24 = v1;
        v25 = v23;
      }

      v26 = [v25 format];

      a1 = v3;
      [v3 connect:v20 to:v1 format:v26];

      v27 = swift_beginAccess();
      MEMORY[0x23EEAF620](v27);
      if (*(v5[4] + 16) >= *(v5[4] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v1 = v5 + 4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      ++v4;
      if (v21 == v2)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_32:

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_49;
  }

LABEL_33:
  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, logger);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_23B824000, v30, v31, "Creating the shutter playback node...", v32, 2u);
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CB83E0]) init];
  v34 = v5[5];
  v5[5] = v33;
  v35 = v33;

  if (!v35)
  {
    goto LABEL_53;
  }

  [a1 attachNode_];

  v36 = v5[5];
  if (!v36)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v37 = v5[8];
  if (!v37)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v38 = v36;
  v39 = [v37 format];
  [a1 connect:v38 to:v47 format:v39];

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_23B824000, v40, v41, "... connected shutter playback node to mainMixer.", v42, 2u);
    MEMORY[0x23EEB0B70](v42, -1, -1);
  }
}

uint64_t LayerCakeCaptureSoundModule.startLoop(playStartSound:)(char a1)
{
  if (a1)
  {
    result = v1[5];
    if (!result)
    {
      goto LABEL_27;
    }

    v3 = v1[6];
    if (v3)
    {
      [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
      result = v1[5];
      if (result)
      {
        [result play];
        goto LABEL_6;
      }
    }

    else
    {
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_6:
  result = swift_beginAccess();
  v4 = v1[9];
  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    return result;
  }

  do
  {
    swift_beginAccess();
    for (i = 4; ; ++i)
    {
      v7 = i - 4;
      v8 = v1[3];
      if ((v8 & 0xC000000000000001) == 0)
      {
        break;
      }

      v15 = v1[3];

      v9 = MEMORY[0x23EEAFC40](i - 4, v8);

LABEL_12:
      v10 = v1[9];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = v1[9];

        v11 = MEMORY[0x23EEAFC40](i - 4, v10);
      }

      else
      {
        if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v10 + 8 * i);
      }

      [v9 scheduleBuffer:v11 atTime:0 options:1 completionHandler:0];
      [v9 setVolume_];
      [v9 play];
      swift_beginAccess();
      NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0);
        v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      }

      if (v7 >= *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 16))
      {
        goto LABEL_23;
      }

      v14 = *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * i);
      *(NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0 + 8 * i) = 0;
      v1[4] = NewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0;
      swift_endAccess();

      if (!--v5)
      {
        return result;
      }
    }

    if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 8 * i);
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_30:
    v5 = result;
  }

  while (result);
  return result;
}

unint64_t LayerCakeCaptureSoundModule.stopLoop(playEndSound:)(char a1)
{
  if (a1)
  {
    result = v1[5];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v3 = v1[7];
    if (!v3)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
    result = v1[5];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    [result play];
  }

  result = swift_beginAccess();
  v4 = v1[9];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v7 = v1[9];
  }

  result = __CocoaSet.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_18:
  v5 = result;
  if (!result)
  {
    return result;
  }

LABEL_8:
  result = 0;
  do
  {
    v6 = result + 1;
    LayerCakeCaptureSoundModule.requestStop(layer:)(result);
    result = v6;
  }

  while (v5 != v6);
  return result;
}

id LayerCakeCaptureSoundModule.playShutterSound(volume:)(float a1)
{
  result = *(v1 + 40);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 64);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

id LayerCakeCaptureSoundModule.playCompletionSound(volume:)(float a1)
{
  result = *(v1 + 40);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + 56);
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result scheduleBuffer:v3 atTime:0 options:0 completionHandler:0];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v5 = a1;
  [result setVolume_];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result play];
}

void LayerCakeCaptureSoundModule.updateGoodnessScore(_:)(float a1)
{
  if (a1 <= 1.0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 1.0;
  }

  if (a1 > 0.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  if (v3 < 0.0 || v3 > 1.0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v5 = v1[9];
  if (v5 >> 62)
  {
    goto LABEL_35;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      swift_beginAccess();
      v7 = 0;
      while (1)
      {
        v8 = v1[12];
        v9 = *(v8 + 16);
        if (v7 >= v9)
        {
          break;
        }

        v10 = v7 + 1;
        if (v7 + 1 >= v9)
        {
          goto LABEL_32;
        }

        v11 = (v3 - *(v8 + 4 * v7 + 32)) / (*(v8 + 4 * v7 + 36) - *(v8 + 4 * v7 + 32));
        if (v11 <= 0.0)
        {
          v11 = 0.0;
        }

        if (v11 > 1.0)
        {
          v11 = 1.0;
        }

        if (v11 <= 0.0)
        {
          v11 = 0.0;
        }

        if (v11 <= 0.8)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0.8;
        }

        v13 = v1[3];
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = v1[3];

          v14 = MEMORY[0x23EEAFC40](v7, v13);
        }

        else
        {
          if (v7 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v14 = *(v13 + 8 * v7 + 32);
        }

        *&v15 = v12;
        [v14 setVolume_];

        v7 = v10;
        if (v6 == v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v17 = __CocoaSet.count.getter();
      if (v17 < 0)
      {
        __break(1u);
      }

      v6 = v17;
    }

    while (v17);
  }
}

uint64_t LayerCakeCaptureSoundModule.requestStop(layer:)(unint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_23B824000, v5, v6, "Requesting faded stop for layer %{public}ld...", v7, 0xCu);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  result = swift_beginAccess();
  v9 = v2[3];
  if ((v9 & 0xC000000000000001) != 0)
  {
    v14 = v2[3];

    v10 = MEMORY[0x23EEAFC40](a1, v9);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = *(v9 + 8 * a1 + 32);
  }

  v11 = v2[13];
  type metadata accessor for Fader();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 0;
  swift_unknownObjectWeakAssign();

  *(v9 + 24) = 1;
  *(v9 + 32) = v11;
  *(v9 + 40) = 0x3FD3333333333333;
  swift_beginAccess();
  v6 = v2[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  v2[4] = v6;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyF19_RealityKit_SwiftUI13RampAnimationCSg_Tg5_0(v6);
  v6 = result;
  v2[4] = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  if (*(v6 + 16) > a1)
  {
    v12 = v6 + 8 * a1;
    v13 = *(v12 + 32);
    *(v12 + 32) = v9;
    v2[4] = v6;
    swift_endAccess();
  }

LABEL_18:
  __break(1u);
  return result;
}