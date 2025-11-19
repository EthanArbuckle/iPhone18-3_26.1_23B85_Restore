uint64_t SpatialTrackingSession.Configuration.filteredBy(arConfiguration:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.Camera();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v24[1] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for SpatialTrackingSession.Configuration();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for ARWorldTrackingConfigurationBuilder;
  v27[4] = &protocol witness table for ARWorldTrackingConfigurationBuilder;
  v29 = &type metadata for ARFaceTrackingConfigurationBuilder;
  v30 = &protocol witness table for ARFaceTrackingConfigurationBuilder;
  v32 = &type metadata for ARBodyTrackingConfigurationBuilder;
  v33 = &protocol witness table for ARBodyTrackingConfigurationBuilder;
  __swift_project_boxed_opaque_existential_1(v27, &type metadata for ARWorldTrackingConfigurationBuilder);
  v26 = v2;
  v14 = a1;
  ARWorldTrackingConfigurationBuilder.filterSupportingConfiguration(requestedConfiguration:arConfiguration:)(v2, a1, v9);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1 && (outlined destroy of ARConfigurationCreateResult?(v9, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd), v25 = a2, v16 = v29, v17 = v30, __swift_project_boxed_opaque_existential_1(v28, v29), v18 = v16, a2 = v25, (v17[3])(v26, v14, v18, v17), v15(v9, 1, v10) == 1) && (outlined destroy of ARConfigurationCreateResult?(v9, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd), v19 = v32, v20 = v33, __swift_project_boxed_opaque_existential_1(v31, v32), v21 = v19, a2 = v25, (v20[3])(v26, v14, v21, v20), v15(v9, 1, v10) == 1))
  {
    outlined destroy of ARConfigurationCreateResult?(v9, &_s17RealityFoundation22SpatialTrackingSessionC13ConfigurationVSgMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22ARConfigurationBuilder_pMd);
    swift_arrayDestroy();
    SpatialTrackingSession.Configuration.camera.getter();
    SpatialTrackingSession.Configuration.init(tracking:sceneUnderstanding:camera:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22ARConfigurationBuilder_pMd);
    swift_arrayDestroy();
    v22 = *(v11 + 32);
    v22(v13, v9, v10);
    v22(a2, v13, v10);
  }

  return (*(v11 + 56))(a2, 0, 1, v10);
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void *specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v15, v10, a2, a1, a4);

    MEMORY[0x1E12F6150](v15, -1, -1);
  }

  return v13;
}

void specialized closure #1 in _NativeSet.intersection(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v76 = (v61 - v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        specialized _NativeSet.extractSubset(using:count:)(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Entity();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit6EntityC_Tt1g5(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for Entity();
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16ARReferenceImageC_Tt1g5(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceImage);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo17ARReferenceObjectC_Tt1g5(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARReferenceObject);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t outlined init with copy of ARConfigurationCreateResult(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARConfigurationCreateResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ARConfigurationCreateResult()
{
  result = type metadata accessor for ARReferenceObject(319, &lazy cache variable for type metadata for ARConfiguration);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SpatialTrackingSession.Configuration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SpatialTrackingSession.Configuration.Camera and conformance SpatialTrackingSession.Configuration.Camera(unint64_t *a1, void (*a2)(uint64_t))
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

id SpotLightComponent.color.getter()
{
  v0 = SpotLightComponent.__color.getter();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v1;
}

void key path getter for SpotLightComponent.color : SpotLightComponent(void *a1@<X8>)
{
  v2 = SpotLightComponent.__color.getter();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v3;
}

void SpotLightComponent.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  SpotLightComponent.__color.setter();
}

void (*SpotLightComponent.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = SpotLightComponent.__color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return SpotLightComponent.color.modify;
}

void SpotLightComponent.color.modify(void **a1, char a2)
{
  v2 = *a1;
  v6 = *a1;
  if (a2)
  {
    v3 = v2;
    v4 = [v3 CGColor];
    SpotLightComponent.__color.setter();
  }

  else
  {
    v5 = [v2 CGColor];
    SpotLightComponent.__color.setter();
  }
}

void SpotLightComponent.init(color:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:)(void *a1)
{
  v1 = [a1 CGColor];
  SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:)();
}

void SpotLightComponent.init(color:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:attenuationFalloffExponent:)(void *a1)
{
  v1 = [a1 CGColor];
  SpotLightComponent.init(cgColor:intensity:innerAngleInDegrees:outerAngleInDegrees:attenuationRadius:attenuationFalloffExponent:)();
}

uint64_t SpotLightComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for SpotLightComponent();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E1254740;
  *(v13 + 32) = 0x726F6C6F63;
  *(v13 + 40) = 0xE500000000000000;
  v14 = SpotLightComponent.__color.getter();
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v16 = type metadata accessor for UIColor();
  *(v13 + 48) = v15;
  *(v13 + 72) = v16;
  *(v13 + 80) = 0x7469736E65746E69;
  *(v13 + 88) = 0xE900000000000079;
  SpotLightComponent.intensity.getter();
  v17 = MEMORY[0x1E69E6448];
  *(v13 + 96) = v18;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0xD000000000000013;
  *(v13 + 136) = 0x80000001E12579A0;
  SpotLightComponent.innerAngleInDegrees.getter();
  *(v13 + 144) = v19;
  *(v13 + 168) = v17;
  *(v13 + 176) = 0xD000000000000013;
  *(v13 + 184) = 0x80000001E12579C0;
  SpotLightComponent.outerAngleInDegrees.getter();
  *(v13 + 192) = v20;
  *(v13 + 216) = v17;
  *(v13 + 224) = 0xD000000000000011;
  *(v13 + 232) = 0x80000001E12577C0;
  SpotLightComponent.attenuationRadius.getter();
  *(v13 + 240) = v21;
  *(v13 + 264) = v17;
  *(v13 + 272) = 0xD00000000000001ALL;
  *(v13 + 280) = 0x80000001E12577E0;
  SpotLightComponent.attenuationFalloffExponent.getter();
  *(v13 + 312) = v17;
  *(v13 + 288) = v22;
  v23 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

void RealityFusionSession.update(scene:with:by:)(uint64_t a1, char *a2)
{
  specialized RealityFusionSession.getCameraTransform(arView:)(a2);
  Camera = RFAnchorCreateCamera();
  v4 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v4)
  {
    v5 = v4;
    v6 = RFServiceManagerGetAnchorDataProvider();

    if (v6)
    {
      RFAnchorDataProviderUpdateLocalAnchor();
    }
  }

  v7 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (!v7)
  {
    __break(1u);
    goto LABEL_46;
  }

  v8 = v7;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  if (!REServiceLocatorGetECSService())
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  RFServiceManagerUpdate();

  v9 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v9)
  {
    v10 = v9;
    v11 = RFServiceManagerGetMeshReconstructionService();

    if (v11)
    {
      RFMeshReconstructionServiceUpdateByDeltaTime();
    }
  }

  v12 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v12)
  {
    v13 = v12;
    v14 = RFServiceManagerGetAnchorManagementService();

    if (v14)
    {
      RFAnchorManagementServiceUpdateByDeltaTime();
    }
  }

  v15 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v15)
  {
    v16 = v15;
    v17 = RFServiceManagerGetLoggingService();

    if (v17)
    {
      RFLoggingServiceUpdateByDeltaTime();
    }
  }

  v18 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v18)
  {
    v19 = v18;
    v20 = RFServiceManagerGetDebugService();

    if (v20)
    {
      RFDebugServiceUpdateByDeltaTime();
    }
  }

  v21 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v21)
  {
    v22 = v21;
    v23 = RFServiceManagerGetSyntheticEnvironmentService();

    if (v23)
    {
      RFSyntheticEnvironmentServiceUpdateByDeltaTime();
    }
  }

  v24 = dispatch thunk of RealityFusionSession.serviceManager.getter();
  if (v24)
  {
    v25 = v24;
    v26 = RFServiceManagerGetAtmospherePlacementService();

    if (v26)
    {
      RFAtmospherePlacementServiceUpdateByDeltaTime();
    }
  }

  v27 = [a2 session];
  v36 = [v27 configuration];

  if (!v36 || (objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) == 0) || [v28 environmentTexturing] || (objc_opt_self(), (v34 = swift_dynamicCastObjCClass()) == 0) || objc_msgSend(v34, sel_environmentTexturing) || (objc_opt_self(), (v35 = swift_dynamicCastObjCClass()) == 0) || objc_msgSend(v35, sel_environmentTexturing))
  {
    v29 = dispatch thunk of RealityFusionSession.serviceManager.getter();
    if (v29)
    {
      v30 = v29;
      v31 = RFServiceManagerGetEnvironmentProbePlacementService();
      if (v31)
      {
        v32 = v31;
        if (one-time initialization token for gpuClass != -1)
        {
          swift_once();
        }

        if (static RealityFusionSession.gpuClass != 3 && (v33 = OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes, swift_beginAccess(), a2[v33] != 1) || *&a2[OBJC_IVAR____TtC10RealityKit6ARView_arSystem])
        {
          swift_beginAccess();
          RFEnvironmentProbePlacementServiceSetLocalizedProbeEnabled();
          RFEnvironmentProbePlacementServiceSetBackgroundParallaxEnabled();
          RFEnvironmentProbePlacementServiceUpdateByDeltaTime();

          return;
        }

        goto LABEL_47;
      }
    }
  }
}

__n128 specialized RealityFusionSession.getCameraTransform(arView:)(char *a1)
{
  if (a1[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] == 1)
  {
    v1 = *&a1[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation];
  }

  else
  {
    v2 = a1;
    v3 = [a1 window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];

      if (v6)
      {
        v1 = v6;
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 3;
    }

    a1 = v2;
  }

  v7 = [a1 session];
  v8 = [v7 currentFrame];

  if (v8)
  {
    v9 = [v8 camera];

    [v9 viewMatrixForOrientation_];
    v17 = v11;
    v18 = v10;
    v15 = v13;
    v16 = v12;

    v19.columns[1] = v17;
    v19.columns[0] = v18;
    v19.columns[3] = v15;
    v19.columns[2] = v16;
    result.n128_u64[0] = __invert_f4(v19);
  }

  else
  {
    return *MEMORY[0x1E69E9B18];
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t closure #1 in Array<A>.first(with:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in Array<A>.first(with:)(a1, a2) & 1;
}

{
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, *(*a1 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_participant, v4, v6);
  LOBYTE(a2) = MEMORY[0x1E12F2E20](v8, a2);
  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12F44E0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t GroupActivitiesSynchronizationDiscoveryView.State.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)(uint64_t a1)
{
  type metadata accessor for GroupActivitiesSynchronizationDiscoveryView.State();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = a1;
  *(v1 + 16) = v3;

  RESyncDiscoveryViewObserverCreate();
  v4 = *(v1 + 16);
  v19 = partial apply for closure #1 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:);
  v20 = v4;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v18 = &block_descriptor_4;
  v5 = _Block_copy(&v15);

  RESyncDiscoveryViewObserverOnGetIdentitiesCount();
  _Block_release(v5);
  v6 = *(v1 + 16);
  v19 = partial apply for closure #2 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:);
  v20 = v6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@unowned Int) -> (@unowned OpaquePointer);
  v18 = &block_descriptor_21;
  v7 = _Block_copy(&v15);

  RESyncDiscoveryViewObserverOnGetIdentityAtIndex();
  _Block_release(v7);
  v19 = closure #3 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:);
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1644167168;
  v17 = thunk for @escaping @callee_guaranteed () -> (@unowned RESyncAuthData);
  v18 = &block_descriptor_24_0;
  v8 = _Block_copy(&v15);
  RESyncDiscoveryViewObserverOnGetAuthData();
  _Block_release(v8);
  v19 = closure #4 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:);
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned UnsafePointer<RESyncAuthData>) -> (@unowned OpaquePointer?);
  v18 = &block_descriptor_27_1;
  v9 = _Block_copy(&v15);
  RESyncDiscoveryViewObserverOnRequestIdentity();
  _Block_release(v9);
  v10 = *(v1 + 16);
  v19 = partial apply for closure #5 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:);
  v20 = v10;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
  v18 = &block_descriptor_30;
  v11 = _Block_copy(&v15);

  RESyncDiscoveryViewObserverOnCreateProtocolLayer();
  _Block_release(v11);
  v12 = RESyncDiscoveryViewCreateWithObserver();

  RESyncRelease();
  type metadata accessor for RESyncHandle();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v1 + 24) = v13;
  return v1;
}

uint64_t closure #1 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)(uint64_t a1)
{
  return thunk for @escaping @callee_guaranteed () -> (@unowned Int)(a1);
}

{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t closure #2 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)(unint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 16);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v6 = *(v5 + 8 * a1 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v6 = MEMORY[0x1E12F44E0](a1, v5);
LABEL_5:
  v7 = *(v6 + 24);

  v8 = *(v7 + 16);

  if (v8)
  {

    return v8;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int) -> (@unowned OpaquePointer)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned RESyncAuthData)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);

  LODWORD(v3) = v3(v4);
  v6 = v5;
  v8 = v7;

  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  return result;
}

void closure #4 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)()
{
  _StringGuts.grow(_:)(35);
  MEMORY[0x1E12F4010](0xD000000000000020, 0x80000001E1257B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1E12F4010](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @unowned UnsafePointer<RESyncAuthData>) -> (@unowned OpaquePointer?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t GroupActivitiesSynchronizationDiscoveryView.add(participant:isLocal:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Participant();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  type metadata accessor for GroupActivitiesSynchronizationIdentity();
  swift_allocObject();
  v11 = GroupActivitiesSynchronizationIdentity.init(participant:isLocal:)(v9, a2);
  v12 = *(v3 + 16);
  swift_beginAccess();

  MEMORY[0x1E12F4070](v13);
  if (*((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v12 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  if (a2)
  {
  }

  GroupActivitiesSynchronizationProtocolLayer.add(participant:)(a1);

  result = *(*(v3 + 24) + 16);
  if (result)
  {
    if (*(*(v11 + 24) + 16))
    {
      RESyncDiscoveryViewNotifyJoin();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t GroupActivitiesSynchronizationDiscoveryView.remove(participant:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v11[2] = a1;

  v6 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in Array<A>.remove(with:), v11, v5);
  if (v7)
  {
    swift_endAccess();
  }

  v8 = specialized Array.remove(at:)(v6);
  swift_endAccess();

  v9 = *(v8 + 24);

  result = *(*(v2 + 24) + 16);
  if (result)
  {
    if (*(v9 + 16))
    {
      RESyncDiscoveryViewNotifyLeave();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #5 in GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)()
{
  v1 = *(*(*(v0 + 24) + 24) + 16);
  if (v1)
  {
    RESyncRetain();
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t outlined init with copy of AccessibilityComponent.RotorType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityComponent.RotorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AccessibilityEvents.RotorNavigation.resultHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessibilityEvents.RotorNavigation(0) + 32));

  return v1;
}

__n128 AccessibilityEvents.RotorNavigation.init(rotorType:hostEntity:currentItem:searchDirection:resultHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  outlined init with take of AccessibilityComponent.RotorType(a1, a7);
  v13 = type metadata accessor for AccessibilityEvents.RotorNavigation(0);
  *(a7 + v13[5]) = a2;
  v14 = (a7 + v13[6]);
  result = *a3;
  v16 = *(a3 + 16);
  *v14 = *a3;
  v14[1] = v16;
  *(a7 + v13[7]) = a4;
  v17 = (a7 + v13[8]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t outlined init with take of AccessibilityComponent.RotorType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityComponent.RotorType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AccessibilityEvents.Activate.entity.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AccessibilityEvents.CustomAction.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessibilityEvents.CustomAction.key.setter(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AccessibilityEvents.RotorNavigation.hostEntity.getter(void (*a1)(void))
{
  a1(0);
}

uint64_t type metadata accessor for AccessibilityComponent.RotorType(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AccessibilityEvents.CustomAction.entity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessibilityEvents.CustomAction(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AccessibilityEvents.CustomAction.init(key:entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringResource();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AccessibilityEvents.CustomAction(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance AccessibilityEvents.Activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate();

  return MEMORY[0x1EEDD7998](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance AccessibilityEvents.Increment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment();

  return MEMORY[0x1EEDD79C8](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance AccessibilityEvents.Decrement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement();

  return MEMORY[0x1EEDD79C0](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance AccessibilityEvents.CustomAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityEvents.CustomAction and conformance AccessibilityEvents.CustomAction(&lazy protocol witness table cache variable for type AccessibilityEvents.CustomAction and conformance AccessibilityEvents.CustomAction, type metadata accessor for AccessibilityEvents.CustomAction);

  return MEMORY[0x1EEDD79E0](a1, a2, a3, a4, a5, v10);
}

uint64_t protocol witness for PublishingEvent.publish(_:on:componentType:) in conformance AccessibilityEvents.RotorNavigation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type AccessibilityEvents.CustomAction and conformance AccessibilityEvents.CustomAction(&lazy protocol witness table cache variable for type AccessibilityEvents.RotorNavigation and conformance AccessibilityEvents.RotorNavigation, type metadata accessor for AccessibilityEvents.RotorNavigation);

  return MEMORY[0x1EEDD79F8](a1, a2, a3, a4, a5, v10);
}

uint64_t (*AccessibilityComponent.traits.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = AccessibilityComponent.traitsRawValue.getter();
  return AccessibilityComponent.traits.modify;
}

void *AccessibilityComponent.customRotors.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentV0A3KitE9RotorTypeOSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v27 - v1);
  v3 = type metadata accessor for AccessibilityComponent.RotorType(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityComponent.RotorTypeInternal();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v27 - v11;
  v12 = AccessibilityComponent.customRotorsRawValue.getter();
  v13 = *(v12 + 16);
  if (!v13)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
  v27 = v12;
  v17 = v12 + v16;
  v37 = *(v14 + 56);
  v38 = v15;
  v35 = (v14 + 72);
  v36 = (v14 + 16);
  v34 = *MEMORY[0x1E697A608];
  v29 = *MEMORY[0x1E697A600];
  v28 = (v14 - 8);
  v32 = (v14 + 80);
  v33 = (v4 + 56);
  v31 = v4;
  v18 = v14;
  v19 = (v4 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v30 = v18;
  do
  {
    v21 = v39;
    v38(v39, v17, v6);
    (*v36)(v10, v21, v6);
    v22 = (*v35)(v10, v6);
    if (v22 == v34)
    {
      (*v32)(v10, v6);
      *v2 = *v10;
LABEL_9:
      swift_storeEnumTagMultiPayload();
      (*v33)(v2, 0, 1, v3);
      goto LABEL_11;
    }

    if (v22 == v29)
    {
      (*v32)(v10, v6);
      v23 = type metadata accessor for LocalizedStringResource();
      (*(*(v23 - 8) + 32))(v2, v10, v23);
      goto LABEL_9;
    }

    (*v33)(v2, 1, 1, v3);
    (*v28)(v10, v6);
LABEL_11:
    if ((*v19)(v2, 1, v3) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v2, &_s17RealityFoundation22AccessibilityComponentV0A3KitE9RotorTypeOSgMd);
    }

    else
    {
      outlined init with take of AccessibilityComponent.RotorType(v2, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v25 = v20[2];
      v24 = v20[3];
      if (v25 >= v24 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1, v20);
      }

      v20[2] = v25 + 1;
      outlined init with take of AccessibilityComponent.RotorType(v40, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
    }

    v17 += v37;
    --v13;
  }

  while (v13);

  return v20;
}

uint64_t AccessibilityComponent.customRotors.setter(uint64_t a1)
{
  v24 = type metadata accessor for AccessibilityComponent.RotorType(0);
  v3 = *(v24 - 8);
  v4 = MEMORY[0x1EEE9AC00](v24);
  v6 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v30 = v23 - v7;
  v8 = type metadata accessor for AccessibilityComponent.RotorTypeInternal();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  if (v12)
  {
    v23[2] = v1;
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v31;
    v14 = *(v3 + 80);
    v23[1] = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v29 = *(v3 + 72);
    v26 = *MEMORY[0x1E697A608];
    v28 = (v9 + 104);
    v25 = *MEMORY[0x1E697A600];
    v27 = v9 + 32;
    do
    {
      v16 = v30;
      outlined init with copy of AccessibilityComponent.RotorType(v15, v30);
      outlined init with take of AccessibilityComponent.RotorType(v16, v6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = type metadata accessor for LocalizedStringResource();
        (*(*(v17 - 8) + 32))(v11, v6, v17);
        v18 = v25;
      }

      else
      {
        *v11 = *v6;
        v18 = v26;
      }

      (*v28)(v11, v18, v8);
      v31 = v13;
      v19 = v8;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v21 + 1;
      (*(v9 + 32))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, v19);
      v15 += v29;
      --v12;
      v8 = v19;
    }

    while (v12);
  }

  return AccessibilityComponent.customRotorsRawValue.setter();
}

uint64_t (*AccessibilityComponent.customRotors.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AccessibilityComponent.customRotors.getter();
  return AccessibilityComponent.customRotors.modify;
}

uint64_t AccessibilityComponent.customRotors.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return AccessibilityComponent.customRotors.setter(*a1);
  }

  AccessibilityComponent.customRotors.setter(v2);
}

uint64_t Entity.accessibilityComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Entity.ComponentSet();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  dispatch thunk of Entity.components.getter();
  v12 = type metadata accessor for AccessibilityComponent();
  Entity.ComponentSet.subscript.getter();
  v13 = *(v6 + 8);
  v13(v11, v5);
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v4, 1, v12) != 1)
  {
    return (*(v14 + 32))(a1, v4, v12);
  }

  outlined destroy of ARConfigurationCreateResult?(v4, &_s17RealityFoundation22AccessibilityComponentVSgMd);
  AccessibilityComponent.init()();
  dispatch thunk of Entity.components.getter();
  Entity.ComponentSet.set<A>(_:)();
  return (v13)(v9, v5);
}

void (*Entity.accessibilityLabelKey.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[9] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[11] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[12] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd) - 8) + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v5[14] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(v13);
    v5[14] = malloc(v13);
    v14 = malloc(v13);
  }

  v5[15] = v14;
  Entity.accessibilityComponent.getter(v12);
  AccessibilityComponent.label.getter();
  v15 = *(v10 + 8);
  v5[16] = v15;
  v5[17] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v8);
  return Entity.accessibilityLabelKey.modify;
}

uint64_t key path setter for Entity.accessibilityLabelKey : Entity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a1, &v11 - v8, &_s10Foundation23LocalizedStringResourceVSgMd);
  return a5(v9);
}

uint64_t Entity.accessibilityLabelKey.setter(uint64_t a1, void (*a2)(char *))
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for AccessibilityComponent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(a1, &v15 - v11, &_s10Foundation23LocalizedStringResourceVSgMd);
  Entity.accessibilityComponent.getter(v9);
  v16(v12);
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v13 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v13(v17, 0);
  outlined destroy of ARConfigurationCreateResult?(a1, &_s10Foundation23LocalizedStringResourceVSgMd);
  return (*(v7 + 8))(v9, v6);
}

void (*Entity.accessibilityValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[9] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[11] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[12] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd) - 8) + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v5[14] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(v13);
    v5[14] = malloc(v13);
    v14 = malloc(v13);
  }

  v5[15] = v14;
  Entity.accessibilityComponent.getter(v12);
  AccessibilityComponent.value.getter();
  v15 = *(v10 + 8);
  v5[16] = v15;
  v5[17] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v8);
  return Entity.accessibilityValue.modify;
}

void Entity.accessibilityLabelKey.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(*(*a1 + 120), *(*a1 + 112), &_s10Foundation23LocalizedStringResourceVSgMd);
  v16 = v5[16];
  v6 = v5[14];
  if (a2)
  {
    v18 = v5[15];
    v7 = v5[12];
    v8 = v5[13];
    v10 = v5[10];
    v9 = v5[11];
    v11 = v5[9];
    outlined init with copy of CheckedContinuation<related decl 'e' for ARErrorCode?, Never>?(v5[14], v8, &_s10Foundation23LocalizedStringResourceVSgMd);
    Entity.accessibilityComponent.getter(v7);
    v17 = v8;
    a3(v8);
    (*(v9 + 16))(v11, v7, v10);
    (*(v9 + 56))(v11, 0, 1, v10);
    v12 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v12(v5, 0);
    v16(v7, v10);
    outlined destroy of ARConfigurationCreateResult?(v6, &_s10Foundation23LocalizedStringResourceVSgMd);
  }

  else
  {
    v7 = v5[12];
    v17 = v5[13];
    v18 = v5[15];
    v14 = v5[10];
    v13 = v5[11];
    v11 = v5[9];
    Entity.accessibilityComponent.getter(v7);
    a3(v6);
    (*(v13 + 16))(v11, v7, v14);
    (*(v13 + 56))(v11, 0, 1, v14);
    v15 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v15(v5 + 4, 0);
    v16(v7, v14);
  }

  outlined destroy of ARConfigurationCreateResult?(v18, &_s10Foundation23LocalizedStringResourceVSgMd);
  free(v18);
  free(v6);
  free(v17);
  free(v7);
  free(v11);

  free(v5);
}

uint64_t key path getter for Entity.accessibilityTraits : Entity@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityComponent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Entity.accessibilityComponent.getter(v5);
  v6 = AccessibilityComponent.traitsRawValue.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t key path setter for Entity.accessibilityTraits : Entity()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  v3 = type metadata accessor for AccessibilityComponent();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Entity.accessibilityComponent.getter(v6);
  AccessibilityComponent.traitsRawValue.setter();
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v7 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v7(v9, 0);
  return (*(v4 + 8))(v6, v3);
}

void (*Entity.accessibilityTraits.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[10] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[12] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[13] = v11;
  Entity.accessibilityComponent.getter(v11);
  v13 = AccessibilityComponent.traitsRawValue.getter();
  v14 = *(v10 + 8);
  v5[14] = v14;
  v5[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v12, v8);
  v5[8] = v13;
  return Entity.accessibilityTraits.modify;
}

void Entity.accessibilityTraits.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v7 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  Entity.accessibilityComponent.getter(v4);
  AccessibilityComponent.traitsRawValue.setter();
  (*(v5 + 16))(v7, v4, v6);
  (*(v5 + 56))(v7, 0, 1, v6);
  v8 = 4;
  if (a2)
  {
    v8 = 0;
  }

  v9 = &v3[v8];
  v10 = v3[14];
  v11 = v3[13];
  v13 = v3[10];
  v12 = v3[11];
  v14 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v14(v9, 0);
  v10(v11, v12);
  free(v11);
  free(v13);

  free(v3);
}

void (*Entity.accessibilityCustomContent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[10] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[12] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[13] = v11;
  Entity.accessibilityComponent.getter(v11);
  v13 = AccessibilityComponent.customContent.getter();
  v14 = *(v10 + 8);
  v5[14] = v14;
  v5[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v12, v8);
  v5[8] = v13;
  return Entity.accessibilityCustomContent.modify;
}

void (*Entity.accessibilityCustomRotors.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[10] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[12] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[13] = v11;
  Entity.accessibilityComponent.getter(v11);
  v13 = AccessibilityComponent.customRotors.getter();
  v14 = *(v10 + 8);
  v5[14] = v14;
  v5[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v12, v8);
  v5[8] = v13;
  return Entity.accessibilityCustomRotors.modify;
}

uint64_t Entity.accessibilityLabelKey.getter(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for AccessibilityComponent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Entity.accessibilityComponent.getter(v5);
  a1(v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t key path getter for Entity.accessibilityLabelKey : Entity(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for AccessibilityComponent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Entity.accessibilityComponent.getter(v8);
  a4(v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t key path setter for Entity.accessibilitySystemActions : Entity(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityComponent.SupportedActions();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return Entity.accessibilitySystemActions.setter(v5);
}

uint64_t Entity.accessibilitySystemActions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for AccessibilityComponent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for AccessibilityComponent.SupportedActions();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v9, v11);
  Entity.accessibilityComponent.getter(v8);
  AccessibilityComponent.systemActions.setter();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v13 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v13(v15, 0);
  (*(v10 + 8))(a1, v9);
  return (*(v6 + 8))(v8, v5);
}

void (*Entity.accessibilitySystemActions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA0uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[9] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[11] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[12] = v11;
  v13 = type metadata accessor for AccessibilityComponent.SupportedActions();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64);
  if (v3)
  {
    v5[15] = swift_coroFrameAlloc();
    v5[16] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v5[15] = malloc(*(v14 + 64));
    v5[16] = malloc(v15);
    v16 = malloc(v15);
  }

  v5[17] = v16;
  Entity.accessibilityComponent.getter(v12);
  AccessibilityComponent.systemActions.getter();
  v17 = *(v10 + 8);
  v5[18] = v17;
  v5[19] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v12, v8);
  return Entity.accessibilitySystemActions.modify;
}

void Entity.accessibilitySystemActions.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 112) + 16);
  (v4)(*(*a1 + 128), v3[17], v3[13]);
  v22 = v3[18];
  if (a2)
  {
    v5 = v3[16];
    v23 = v3[17];
    v6 = v3[15];
    v7 = v3[12];
    v20 = v3[13];
    v21 = v3[14];
    v9 = v3[10];
    v8 = v3[11];
    v10 = v3[9];
    v4(v6, v5);
    v11 = v5;
    Entity.accessibilityComponent.getter(v7);
    v25 = v6;
    AccessibilityComponent.systemActions.setter();
    (*(v8 + 16))(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);
    v12 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v12(v3, 0);
    v22(v7, v9);
    v13 = *(v21 + 8);
    v13(v11, v20);
    v14 = v23;
    v13(v23, v20);
  }

  else
  {
    v15 = v3[16];
    v16 = v3[14];
    v24 = v3[17];
    v25 = v3[15];
    v7 = v3[12];
    v18 = v3[10];
    v17 = v3[11];
    v10 = v3[9];
    Entity.accessibilityComponent.getter(v7);
    AccessibilityComponent.systemActions.setter();
    (*(v17 + 16))(v10, v7, v18);
    (*(v17 + 56))(v10, 0, 1, v18);
    v11 = v15;
    v19 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v19(v3 + 4, 0);
    v22(v7, v18);
    v14 = v24;
    (*(v16 + 8))();
  }

  free(v14);
  free(v11);
  free(v25);
  free(v7);
  free(v10);

  free(v3);
}

uint64_t Entity.accessibilityTraits.getter(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for AccessibilityComponent();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Entity.accessibilityComponent.getter(v5);
  v7 = a1(v6);
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t key path getter for Entity.accessibilityCustomContent : Entity@<X0>(uint64_t (*a1)(uint64_t)@<X3>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Entity.accessibilityComponent.getter(v7);
  v9 = a1(v8);
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t key path setter for Entity.accessibilityCustomContent : Entity(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for AccessibilityComponent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a1;

  Entity.accessibilityComponent.getter(v13);
  a5(v14);
  (*(v11 + 16))(v9, v13, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v15 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v15(v17, 0);
  return (*(v11 + 8))(v13, v10);
}

uint64_t Entity.accessibilityTraits.setter(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  v7 = type metadata accessor for AccessibilityComponent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Entity.accessibilityComponent.getter(v10);
  a2(a1);
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  v11(v13, 0);
  return (*(v8 + 8))(v10, v7);
}

void (*Entity.accessibilityCustomActions.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentVSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[10] = v7;
  v8 = type metadata accessor for AccessibilityComponent();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v5[12] = v9;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v5[13] = v11;
  Entity.accessibilityComponent.getter(v11);
  v13 = AccessibilityComponent.customActions.getter();
  v14 = *(v10 + 8);
  v5[14] = v14;
  v5[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v12, v8);
  v5[8] = v13;
  return Entity.accessibilityCustomActions.modify;
}

void Entity.accessibilityCustomContent.modify(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 64);
  if (a2)
  {
    v6 = v4[14];
    v8 = v4[12];
    v7 = v4[13];
    v9 = v4[10];
    v10 = v4[11];

    Entity.accessibilityComponent.getter(v7);
    a3(v5);
    (*(v8 + 16))(v9, v7, v10);
    (*(v8 + 56))(v9, 0, 1, v10);
    v11 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v11(v4, 0);
    v6(v7, v10);
  }

  else
  {
    v15 = v4[14];
    v12 = v4[12];
    v7 = v4[13];
    v9 = v4[10];
    v13 = v4[11];
    Entity.accessibilityComponent.getter(v7);
    a3(v5);
    (*(v12 + 16))(v9, v7, v13);
    (*(v12 + 56))(v9, 0, 1, v13);
    v14 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v14(v4 + 4, 0);
    v15(v7, v13);
  }

  free(v7);
  free(v9);

  free(v4);
}

uint64_t AccessibilityComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for AccessibilityComponent();
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E12547F0;
  *(v13 + 32) = 0xD000000000000016;
  *(v13 + 40) = 0x80000001E1257B60;
  v14 = AccessibilityComponent.isAccessibilityElement.getter();
  v15 = MEMORY[0x1E69E6370];
  *(v13 + 48) = v14 & 1;
  *(v13 + 72) = v15;
  *(v13 + 80) = 0x6C6562616CLL;
  *(v13 + 88) = 0xE500000000000000;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd);
  *(v13 + 120) = v16;
  __swift_allocate_boxed_opaque_existential_0((v13 + 96));
  AccessibilityComponent.label.getter();
  *(v13 + 128) = 0x65756C6176;
  *(v13 + 136) = 0xE500000000000000;
  *(v13 + 168) = v16;
  __swift_allocate_boxed_opaque_existential_0((v13 + 144));
  AccessibilityComponent.value.getter();
  *(v13 + 176) = 0x737469617274;
  *(v13 + 184) = 0xE600000000000000;
  v17 = AccessibilityComponent.traitsRawValue.getter();
  type metadata accessor for UIAccessibilityTraits(0);
  *(v13 + 192) = v17;
  *(v13 + 216) = v18;
  strcpy((v13 + 224), "systemActions");
  *(v13 + 238) = -4864;
  *(v13 + 264) = type metadata accessor for AccessibilityComponent.SupportedActions();
  __swift_allocate_boxed_opaque_existential_0((v13 + 240));
  AccessibilityComponent.systemActions.getter();
  strcpy((v13 + 272), "customActions");
  *(v13 + 286) = -4864;
  v19 = AccessibilityComponent.customActions.getter();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation23LocalizedStringResourceVGMd);
  *(v13 + 288) = v19;
  *(v13 + 312) = v20;
  strcpy((v13 + 320), "customContent");
  *(v13 + 334) = -4864;
  v21 = AccessibilityComponent.customContent.getter();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation22AccessibilityComponentV13CustomContentVGMd);
  *(v13 + 336) = v21;
  *(v13 + 360) = v22;
  strcpy((v13 + 368), "customRotors");
  *(v13 + 381) = 0;
  *(v13 + 382) = -5120;
  v23 = AccessibilityComponent.customRotors.getter();
  *(v13 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation22AccessibilityComponentV0A3KitE9RotorTypeOGMd);
  *(v13 + 384) = v23;
  v24 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
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

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV17RotorTypeInternalOGMd);
  v10 = *(type metadata accessor for AccessibilityComponent.RotorTypeInternal() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AccessibilityComponent.RotorTypeInternal() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_So8ARAnchorCtGMd);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8ARAnchorCtMd) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_So8ARAnchorCtMd) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit8Material_pMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static AccessibilityComponent.RotorType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityComponent.RotorType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AccessibilityComponentV0A3KitE9RotorTypeO_AFtMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  outlined init with copy of AccessibilityComponent.RotorType(a1, &v22 - v15);
  outlined init with copy of AccessibilityComponent.RotorType(a2, &v16[v18]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of AccessibilityComponent.RotorType(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = *v13 == *&v16[v18];
      goto LABEL_6;
    }

LABEL_8:
    outlined destroy of ARConfigurationCreateResult?(v16, &_s17RealityFoundation22AccessibilityComponentV0A3KitE9RotorTypeO_AFtMd);
    v19 = 0;
    return v19 & 1;
  }

  outlined init with copy of AccessibilityComponent.RotorType(v16, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v16[v18], v4);
  v19 = MEMORY[0x1E12F1950](v10, v7);
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
LABEL_6:
  outlined destroy of AccessibilityComponent.RotorType(v16);
  return v19 & 1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate()
{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Activate and conformance AccessibilityEvents.Activate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment()
{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Increment and conformance AccessibilityEvents.Increment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement()
{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement;
  if (!lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEvents.Decrement and conformance AccessibilityEvents.Decrement);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AccessibilityEvents.CustomAction and conformance AccessibilityEvents.CustomAction(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for AccessibilityEvents.RotorNavigation()
{
  type metadata accessor for AccessibilityComponent.RotorType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Entity();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Any?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIAccessibilityCustomRotorDirection(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ()();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
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

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityEvents.Activate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AccessibilityEvents.Activate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityEvents.CustomAction()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Entity();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for AccessibilityComponent.RotorType()
{
  type metadata accessor for UIAccessibilityCustomSystemRotorType(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocalizedStringResource();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t outlined destroy of AccessibilityComponent.RotorType(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityComponent.RotorType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void HoverEffectComponent.SpotlightHoverEffectStyle.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  HoverEffectComponent.HighlightHoverEffectStyle._color.setter();
}

void (*HoverEffectComponent.SpotlightHoverEffectStyle.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = HoverEffectComponent.HighlightHoverEffectStyle._color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return HoverEffectComponent.SpotlightHoverEffectStyle.color.modify;
}

id HoverEffectComponent.SpotlightHoverEffectStyle.color.getter(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v2;
}

void key path getter for HoverEffectComponent.SpotlightHoverEffectStyle.color : HoverEffectComponent.SpotlightHoverEffectStyle(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  v3 = a1();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a2 = v4;
}

void HoverEffectComponent.HighlightHoverEffectStyle.color.setter(void *a1)
{
  v1 = [a1 CGColor];
  HoverEffectComponent.HighlightHoverEffectStyle._color.setter();
}

void (*HoverEffectComponent.HighlightHoverEffectStyle.color.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = HoverEffectComponent.HighlightHoverEffectStyle._color.getter();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  *a1 = v4;
  return HoverEffectComponent.HighlightHoverEffectStyle.color.modify;
}

void HoverEffectComponent.SpotlightHoverEffectStyle.color.modify(void **a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = *a1;
  if (a2)
  {
    v5 = v4;
    a3([v5 CGColor]);
  }

  else
  {
    a3([v4 CGColor]);
  }
}

uint64_t HoverEffectComponent.SpotlightHoverEffectStyle.init(color:strength:opacityFunction:)(void *a1, uint64_t a2, void (*a3)(id, char *, float), float a4)
{
  v8 = type metadata accessor for HoverEffectComponent.OpacityFunction();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = [a1 CGColor];
  }

  else
  {
    v13 = 0;
  }

  (*(v9 + 16))(v12, a2, v8);
  a3(v13, v12, a4);

  return (*(v9 + 8))(a2, v8);
}

void HoverEffectComponent.SpotlightHoverEffectStyle.init(color:strength:)(void *a1, void (*a2)(id, char *, float), float a3)
{
  v6 = type metadata accessor for HoverEffectComponent.OpacityFunction();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = [a1 CGColor];
  }

  else
  {
    v11 = 0;
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E697A5A0], v6);
  a2(v11, v10, a3);
}

uint64_t HoverEffectComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for HoverEffectComponent();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E12531A0;
  *(v12 + 32) = 0x6666457265766F68;
  *(v12 + 40) = 0xEB00000000746365;
  *(v12 + 72) = type metadata accessor for HoverEffectComponent.HoverEffect();
  __swift_allocate_boxed_opaque_existential_0((v12 + 48));
  HoverEffectComponent.hoverEffect.getter();
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance HoverEffectComponent(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E12531A0;
  *(v14 + 32) = 0x6666457265766F68;
  *(v14 + 40) = 0xEB00000000746365;
  *(v14 + 72) = type metadata accessor for HoverEffectComponent.HoverEffect();
  __swift_allocate_boxed_opaque_existential_0((v14 + 48));
  HoverEffectComponent.hoverEffect.getter();
  v15 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E75D8], v3);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t HoverEffectComponent.SpotlightHoverEffectStyle.customMirror.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t (*a2)(void)@<X1>, float (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v8 = type metadata accessor for Mirror.AncestorRepresentation();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v16 = a1(0, v13);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v28 - v18, v5, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E12545E0;
  *(v20 + 32) = 0x726F6C6F63;
  *(v20 + 40) = 0xE500000000000000;
  v21 = a2();
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  v23 = type metadata accessor for UIColor();
  *(v20 + 48) = v22;
  *(v20 + 72) = v23;
  *(v20 + 80) = 0x6874676E65727473;
  *(v20 + 88) = 0xE800000000000000;
  v24 = v29();
  v25 = MEMORY[0x1E69E6448];
  *(v20 + 96) = v24;
  *(v20 + 120) = v25;
  *(v20 + 128) = 0x467974696361706FLL;
  *(v20 + 136) = 0xEF6E6F6974636E75;
  *(v20 + 168) = type metadata accessor for HoverEffectComponent.OpacityFunction();
  __swift_allocate_boxed_opaque_existential_0((v20 + 144));
  v30();
  v26 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E75D8], v8);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t HoverEffectComponent.ShaderHoverEffectInputs.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for HoverEffectComponent.ShaderHoverEffectInputs();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1252F40;
  strcpy((v12 + 32), "fadeInDuration");
  *(v12 + 47) = -18;
  HoverEffectComponent.ShaderHoverEffectInputs.fadeInDuration.getter();
  v13 = MEMORY[0x1E69E63B0];
  *(v12 + 48) = v14;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0x4474754F65646166;
  *(v12 + 88) = 0xEF6E6F6974617275;
  HoverEffectComponent.ShaderHoverEffectInputs.fadeOutDuration.getter();
  *(v12 + 120) = v13;
  *(v12 + 96) = v15;
  v16 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t static ParticleEmitterComponent.Presets.sparks.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v96 = &v83 - v1;
  v92 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  *&v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v105 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v104 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v88 = *(v89 - 1);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  v8 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - v21;
  ParticleEmitterComponent.init()();
  ParticleEmitterComponent.ParticleEmitter.init()();
  (*(v16 + 104))(v18, *MEMORY[0x1E697A7E0], v15);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v12 + 104))(v14, *MEMORY[0x1E697A7C0], v11);
  ParticleEmitterComponent.birthLocation.setter();
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v8 + 104))(v10, *MEMORY[0x1E697A740], v83);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  v85[13](v84, *MEMORY[0x1E697A7F0], v86);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v88 + 104))(v87, *MEMORY[0x1E697A7C8], v89);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v23 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v23(v106, 0);
  v24 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v24(v106, 0);
  v25 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v25(v106, 0);
  v26 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v26(v106, 0);
  v27 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v27(v106, 0);
  v28 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v28(v106, 0);
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v29(v106, 0);
  LODWORD(v88) = *MEMORY[0x1E697A770];
  v30 = *(v104 + 104);
  v104 += 104;
  v89 = v30;
  v30(v98);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v31(v106, 0);
  v32 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v32(v106, 0);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v33(v106, 0);
  LODWORD(v86) = *MEMORY[0x1E697A798];
  v34 = *(v103 + 104);
  v103 += 104;
  v87 = v34;
  (v34)(v97);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v35(v106, 0);
  v36 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v36(v106, 0);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v37(v106, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v38(v106, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v39(v106, 0);
  v40 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v40(v106, 0);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v41(v106, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v42(v106, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v43(v106, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v44(v106, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v45(v106, 0);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v46(v106, 0);
  v47 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v47(v106, 0);
  v48 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v48(v106, 0);
  v49 = *MEMORY[0x1E697A760];
  v50 = *(v105 + 104);
  v105 += 104;
  v85 = v50;
  (v50)(v99, v49, v102);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v51(v106, 0);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v52(v106, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v53(v106, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v54(v106, 0);
  v55 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v55(v106, 0);
  v56 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v56(v106, 0);
  v57 = *(v91 + 104);
  v58 = v90;
  v59 = v92;
  v57(v90, *MEMORY[0x1E697A7B0], v92);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v60(v106, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v61(v106, 0);
  v62 = ParticleEmitterComponent.mainEmitter.modify();
  v91 = xmmword_1E1252ED0;
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v62(v106, 0);
  v63 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v63(v106, 0);
  CGColorCreateGenericRGB(242.0, 243.0, 250.0, 1.0);
  v64 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v64(v106, 0);
  CGColorCreateGenericRGB(214.0, 215.0, 241.0, 1.0);
  v65 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v65(v106, 0);
  CGColorCreateGenericRGB(255.0, 155.0, 0.0, 1.0);
  v66 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorA.setter();
  v66(v106, 0);
  CGColorCreateGenericRGB(255.0, 216.0, 75.0, 1.0);
  v67 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorB.setter();
  v67(v106, 0);
  v68 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v68(v106, 0);
  v69 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v69(v106, 0);
  v70 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v70(v106, 0);
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  (v89)(v98, v88, v100);
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  (v87)(v97, v86, v101);
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  (v85)(v99, *MEMORY[0x1E697A768], v102);
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v57(v58, *MEMORY[0x1E697A7A0], v59);
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  CGColorCreateGenericRGB(244.0, 210.0, 134.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  CGColorCreateGenericRGB(97.0, 184.0, 26.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  type metadata accessor for TextureResource();
  v71 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v72 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v73 = textureLoader;
  v106[3] = &type metadata for TextureLoader;
  v106[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v106[0] = v73;
  v74 = v73;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v106);
  v75 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v75(v106, 0);
  v76 = v93;
  ParticleEmitterComponent.mainEmitter.getter();
  ParticleEmitterComponent.ParticleEmitter.image.getter();
  v77 = v94;
  v78 = *(v94 + 8);
  v79 = v76;
  v80 = v95;
  v78(v79, v95);
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v81 = v96;
  (*(v77 + 16))(v96, v22, v80);
  (*(v77 + 56))(v81, 0, 1, v80);
  ParticleEmitterComponent.spawnedEmitter.setter();
  return (v78)(v22, v80);
}

void *specialized Sequence.first(where:)(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E12F44E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E12F44E0](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

{
  return sub_1E11CFD38(a1, a2, a3);
}

uint64_t GroupActivitiesSynchronizationComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for UUID();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit39GroupActivitiesSynchronizationComponentV10CodingKeys33_0ADC807939DA11D678B7AD00138C7A29LLOGMd);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for GroupActivitiesSynchronizationComponent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    outlined init with take of GroupActivitiesSynchronizationPeer(v11, v13, type metadata accessor for GroupActivitiesSynchronizationComponent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivitiesSynchronizationComponent.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivitiesSynchronizationComponent.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupActivitiesSynchronizationComponent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivitiesSynchronizationComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivitiesSynchronizationComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance GroupActivitiesSynchronizationComponent(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit39GroupActivitiesSynchronizationComponentV10CodingKeys33_0ADC807939DA11D678B7AD00138C7A29LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Component.componentName.getter in conformance GroupActivitiesSynchronizationComponent()
{
  v0 = static GroupActivitiesSynchronizationComponent.componentName;

  return v0;
}

uint64_t GroupActivitiesSynchronizationPeer.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupActivitiesSynchronizationPeer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Participant();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t GroupActivitiesSynchronizationPeer.hash(into:)()
{
  type metadata accessor for Participant();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GroupActivitiesSynchronizationPeer.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Participant();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int GroupActivitiesSynchronizationService.SynchronizationError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12F47F0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivitiesSynchronizationPeer()
{
  Hasher.init(_seed:)();
  type metadata accessor for Participant();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivitiesSynchronizationPeer()
{
  type metadata accessor for Participant();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivitiesSynchronizationPeer()
{
  Hasher.init(_seed:)();
  type metadata accessor for Participant();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivitiesSynchronizationService<A>.SynchronizationError()
{
  Hasher.init(_seed:)();
  GroupActivitiesSynchronizationService.SynchronizationError.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t key path getter for GroupActivitiesSynchronizationService.entities : <A>GroupActivitiesSynchronizationService<A>@<X0>(uint64_t *a1@<X8>)
{
  result = GroupActivitiesSynchronizationService.entities.getter();
  *a1 = result;
  return result;
}

uint64_t GroupActivitiesSynchronizationService.entities.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupActivitiesSynchronizationService.entities.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for GroupActivitiesSynchronizationService.$entities : <A>GroupActivitiesSynchronizationService<A>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy10RealityKit6EntityCG_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return GroupActivitiesSynchronizationService.$entities.setter(v5);
}

uint64_t GroupActivitiesSynchronizationService.$entities.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy10RealityKit6EntityCGGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupActivitiesSynchronizationService.$entities.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy10RealityKit6EntityCG_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy10RealityKit6EntityCGGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t GroupActivitiesSynchronizationService.__allocating_init(session:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GroupActivitiesSynchronizationService.init(session:)(a1);
  return v2;
}

char *GroupActivitiesSynchronizationService.init(session:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy10RealityKit6EntityCGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  v9 = direct field offset for GroupActivitiesSynchronizationService._entities;
  v10 = *(v4 + 80);
  v11 = *(v4 + 88);
  aBlock = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10RealityKit6EntityCGMd);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v2[v9], v8, v5);
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  v12 = dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

  v13 = MEMORY[0x1E12F5400](v12);
  if (v13)
  {
    *(v2 + 6) = a1;
    *(v2 + 2) = v13;

    *(v2 + 3) = RENetworkSystemObserverCreateEx();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = v14;
    v27 = partial apply for closure #1 in GroupActivitiesSynchronizationService.init(session:);
    v28 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
    v26 = &block_descriptor_5;
    v16 = _Block_copy(&aBlock);

    RENetworkSystemObserverOnEntityWillDestroy();
    _Block_release(v16);
    v17 = swift_allocObject();
    swift_weakInit();

    v18 = swift_allocObject();
    v18[2] = v10;
    v18[3] = v11;
    v18[4] = v17;
    v27 = partial apply for closure #2 in GroupActivitiesSynchronizationService.init(session:);
    v28 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> (@unowned RENetworkNewUnboundTLEHandlerResult);
    v26 = &block_descriptor_11;
    v19 = _Block_copy(&aBlock);

    RENetworkSystemObserverOnTopLevelEntityDidCreate();
    _Block_release(v19);
    type metadata accessor for GroupActivitiesSynchronizationComponent(0);
    static Component.registerComponent()();
  }

  else
  {
    type metadata accessor for GroupActivitiesSynchronizationService.SynchronizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    (*(v6 + 8))(&v2[direct field offset for GroupActivitiesSynchronizationService._entities], v5);
    type metadata accessor for GroupActivitiesSynchronizationService();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t closure #1 in GroupActivitiesSynchronizationService.init(session:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Entity();
    v1 = static Entity.fromCore(_:ignoringEntityInfo:)();
    MEMORY[0x1EEE9AC00](v1);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    v3 = static Published.subscript.modify();
    specialized Set._Variant.remove(_:)();

    v3(v4, 0);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t closure #2 in GroupActivitiesSynchronizationService.init(session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v53 = a1;
  v52 = type metadata accessor for UUID();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v45 - v6;
  v8 = type metadata accessor for GroupActivitiesSynchronizationComponent(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39GroupActivitiesSynchronizationComponentVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Entity.ComponentSet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v50 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = result;
    type metadata accessor for Entity();
    v49 = static Entity.fromCore(_:ignoringEntityInfo:)();
    dispatch thunk of Entity.components.getter();
    Entity.ComponentSet.subscript.getter();
    (*(v15 + 8))(v17, v14);
    if ((*(v9 + 48))(v13, 1, v8))
    {
      outlined destroy of ARConfigurationCreateResult?(v13, &_s10RealityKit39GroupActivitiesSynchronizationComponentVSgMd);
      v27 = 1;
      v28 = v52;
      v29 = v55;
    }

    else
    {
      v30 = v48;
      outlined init with copy of GroupActivitiesSynchronizationComponent(v13, v48);
      outlined destroy of ARConfigurationCreateResult?(v13, &_s10RealityKit39GroupActivitiesSynchronizationComponentVSgMd);
      v29 = v55;
      v28 = v52;
      (*(v55 + 32))(v25, v30, v52);
      v27 = 0;
    }

    v31 = *(v29 + 56);
    v31(v25, v27, 1, v28);
    GroupSession.id.getter();
    v31(v22, 0, 1, v28);
    v32 = *(v51 + 48);
    outlined init with copy of UUID?(v25, v7);
    outlined init with copy of UUID?(v22, &v7[v32]);
    v33 = *(v29 + 48);
    if (v33(v7, 1, v28) == 1)
    {
      outlined destroy of ARConfigurationCreateResult?(v22, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ARConfigurationCreateResult?(v25, &_s10Foundation4UUIDVSgMd);
      if (v33(&v7[v32], 1, v28) == 1)
      {
        outlined destroy of ARConfigurationCreateResult?(v7, &_s10Foundation4UUIDVSgMd);
LABEL_13:
        if (*(v54 + 32))
        {

          v39 = REEntitySetParent();
          MEMORY[0x1EEE9AC00](v39);
          v41 = v45;
          v40 = v46;
          *(&v45 - 2) = v45;
          *(&v45 - 1) = v40;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v45 - 2) = v41;
          *(&v45 - 1) = v40;
          swift_getKeyPath();
          v43 = v49;

          v44 = static Published.subscript.modify();
          specialized Set._Variant.insert(_:)(&v57, v43);

          v44(v56, 0);

          return 1;
        }

LABEL_11:

        return 0;
      }
    }

    else
    {
      v34 = v50;
      outlined init with copy of UUID?(v7, v50);
      if (v33(&v7[v32], 1, v28) != 1)
      {
        v35 = v55;
        v36 = v47;
        (*(v55 + 32))(v47, &v7[v32], v28);
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = *(v35 + 8);
        v38(v36, v28);
        outlined destroy of ARConfigurationCreateResult?(v22, &_s10Foundation4UUIDVSgMd);
        outlined destroy of ARConfigurationCreateResult?(v25, &_s10Foundation4UUIDVSgMd);
        v38(v34, v28);
        outlined destroy of ARConfigurationCreateResult?(v7, &_s10Foundation4UUIDVSgMd);
        if ((v37 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_13;
      }

      outlined destroy of ARConfigurationCreateResult?(v22, &_s10Foundation4UUIDVSgMd);
      outlined destroy of ARConfigurationCreateResult?(v25, &_s10Foundation4UUIDVSgMd);
      (*(v55 + 8))(v34, v28);
    }

    outlined destroy of ARConfigurationCreateResult?(v7, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_11;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned OpaquePointer) -> (@unowned RENetworkNewUnboundTLEHandlerResult)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t GroupActivitiesSynchronizationService.deinit()
{
  RESyncRelease();

  v1 = direct field offset for GroupActivitiesSynchronizationService._entities;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy10RealityKit6EntityCGGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupActivitiesSynchronizationService.__deallocating_deinit()
{
  GroupActivitiesSynchronizationService.deinit();

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesSynchronizationService.entity(for:)()
{
  result = RENetworkSystemFindEntityWithGuid();
  if (result)
  {
    type metadata accessor for Entity();
    return static Entity.fromCore(_:ignoringEntityInfo:)();
  }

  return result;
}

void GroupActivitiesSynchronizationService.owner(of:)(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = *(v1 + 40);
  if (!v11)
  {
    goto LABEL_18;
  }

  v31 = v8;

  Entity.coreEntity.getter();
  RENetworkComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {

LABEL_18:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v32 = a1;
  v12 = RENetworkComponentOwnerPeerID();
  v13 = *(v11 + 16);
  swift_beginAccess();
  v14 = *(v13 + 16);
  v29 = v10;
  v30 = v4;
  v28 = v6;
  if (v14 >> 62)
  {
    goto LABEL_22;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v15)
  {
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E12F44E0](v16, v14);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_22:
          v15 = __CocoaSet.count.getter();
          goto LABEL_5;
        }

        v17 = *(v14 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(*(v17 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID) == v12)
      {

        v21 = v30;
        v20 = v31;
        v22 = v28;
        (*(v30 + 16))(v28, *(v17 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_participant, v31);

        v23 = *(v21 + 32);
        v24 = v29;
        v23(v29, v22, v20);
        v25 = type metadata accessor for GroupActivitiesSynchronizationPeer(0);
        v26 = v32;
        v32[3] = v25;
        v26[4] = &protocol witness table for GroupActivitiesSynchronizationPeer;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
        v23(boxed_opaque_existential_0, v24, v20);
        return;
      }

      ++v16;
    }

    while (v18 != v15);
  }

  v19 = v32;
  v32[4] = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
}

uint64_t GroupActivitiesSynchronizationService.giveOwnership(of:toPeer:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34GroupActivitiesSynchronizationPeerVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23[-v5 - 8];
  v7 = type metadata accessor for GroupActivitiesSynchronizationPeer(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of SynchronizationPeerID(a2, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pMd);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    outlined init with take of GroupActivitiesSynchronizationPeer(v6, v10, type metadata accessor for GroupActivitiesSynchronizationPeer);
    v13 = *(v2 + 40);
    if (v13)
    {

      Entity.coreEntity.getter();
      RENetworkComponentGetComponentType();
      ComponentByClass = REEntityGetComponentByClass();
      if (ComponentByClass)
      {
        v15 = ComponentByClass;
        if (RENetworkComponentIsAuthoritative())
        {
          v16 = *(v13 + 16);
          v17 = swift_beginAccess();
          v18 = *(v16 + 16);
          MEMORY[0x1EEE9AC00](v17);
          *(&v22 - 2) = v10;

          v19 = specialized Sequence.first(where:)(partial apply for closure #1 in Array<A>.first(with:), (&v22 - 4), v18);

          if (v19)
          {
            v20 = *(*(v19 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID);

            MEMORY[0x1E12F4F50](v15, v20);

            outlined destroy of GroupActivitiesSynchronizationPeer(v10);
            return 1;
          }
        }
      }

      outlined destroy of GroupActivitiesSynchronizationPeer(v10);
    }

    else
    {
      outlined destroy of GroupActivitiesSynchronizationPeer(v10);
    }
  }

  else
  {
    v12(v6, 1, 1, v7);
    outlined destroy of ARConfigurationCreateResult?(v6, &_s10RealityKit34GroupActivitiesSynchronizationPeerVSgMd);
  }

  return 0;
}

uint64_t GroupActivitiesSynchronizationService.__fromCore(peerID:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  result = __PeerIDRef.__as<A>(_:)();
  v11 = *(v1 + 40);
  if (v11)
  {
    v12 = v30;
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v13 + 16);
    v28 = v4;
    v29 = v3;
    v26 = v6;
    v27 = v9;
    if (v14 >> 62)
    {
      goto LABEL_20;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E12F44E0](v16, v14);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_20:
            v15 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v17 = *(v14 + 8 * v16 + 32);

          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_14;
          }
        }

        if (*(*(v17 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID) == v12)
        {

          v20 = v28;
          v19 = v29;
          v21 = v26;
          (*(v28 + 16))(v26, *(v17 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_participant, v29);

          v22 = *(v20 + 32);
          v23 = v27;
          v22(v27, v21, v19);
          *(a1 + 24) = type metadata accessor for GroupActivitiesSynchronizationPeer(0);
          *(a1 + 32) = &protocol witness table for GroupActivitiesSynchronizationPeer;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
          return (v22)(boxed_opaque_existential_0, v23, v19);
        }

        ++v16;
      }

      while (v18 != v15);
    }
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t GroupActivitiesSynchronizationService.__toCore(peerID:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit34GroupActivitiesSynchronizationPeerVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for GroupActivitiesSynchronizationPeer(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of SynchronizationPeerID(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit21SynchronizationPeerID_pMd);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    outlined destroy of ARConfigurationCreateResult?(v5, &_s10RealityKit34GroupActivitiesSynchronizationPeerVSgMd);
LABEL_7:
    v21 = MEMORY[0x1E69E76D8];
    v20[0] = 0;
    static __PeerIDRef.__fromCore(_:)();
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v11(v5, 0, 1, v6);
  outlined init with take of GroupActivitiesSynchronizationPeer(v5, v9, type metadata accessor for GroupActivitiesSynchronizationPeer);
  v12 = *(v1 + 40);
  if (!v12 || (v13 = *(v12 + 16), v14 = swift_beginAccess(), v15 = *(v13 + 16), MEMORY[0x1EEE9AC00](v14), *&v19[-16] = v9, , v16 = specialized Sequence.first(where:)(closure #1 in Array<A>.first(with:)partial apply, &v19[-32], v15), , !v16))
  {
    outlined destroy of GroupActivitiesSynchronizationPeer(v9);
    goto LABEL_7;
  }

  v17 = *(*(v16 + 16) + OBJC_IVAR____TtCC10RealityKit38GroupActivitiesSynchronizationIdentityP33_7E3E0600D4E33AA58CAA5FAB3E0E71EC5State_peerID);

  v21 = MEMORY[0x1E69E76D8];
  v20[0] = v17;
  static __PeerIDRef.__fromCore(_:)();
  outlined destroy of GroupActivitiesSynchronizationPeer(v9);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

Swift::Void __swiftcall GroupActivitiesSynchronizationService.startSync()()
{
  if (!v0[4])
  {
    v1 = v0;
    RENetworkSystemAddObserver();
    type metadata accessor for GroupActivitiesSynchronizationProtocolLayer();
    v2 = v0[6];
    v3 = swift_retain_n();
    GroupActivitiesSynchronizationProtocolLayer.__allocating_init<A>(session:)(v3);
    type metadata accessor for GroupActivitiesSynchronizationDiscoveryView();
    swift_allocObject();

    v5 = GroupActivitiesSynchronizationDiscoveryView.init(protocolLayer:)(v4);
    v0[5] = v5;

    type metadata accessor for GroupActivitiesSynchronizationSession();

    v6 = specialized GroupActivitiesSynchronizationSession.__allocating_init(session:discoveryView:)(v2, v5);

    v1[4] = v6;
  }
}

Swift::Void __swiftcall GroupActivitiesSynchronizationService.stopSync()()
{
  if (*(v0 + 32))
  {
    RENetworkSystemRemoveObserver();
    *(v0 + 40) = 0;

    *(v0 + 32) = 0;
  }
}

uint64_t GroupActivitiesSynchronizationService.add(entity:)(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit39GroupActivitiesSynchronizationComponentVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  if (v1[4])
  {

    GroupSession.id.getter();
    v7 = type metadata accessor for GroupActivitiesSynchronizationComponent(0);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v8(v17, 0);
    Entity.coreEntity.getter();
    RENetworkComponentGetComponentType();
    v9 = REEntityGetOrAddComponentByClass();
    MEMORY[0x1E12F4F80](v9, 3);
    v10 = REEntitySetParent();
    MEMORY[0x1EEE9AC00](v10);
    v11 = *(v3 + 80);
    v12 = *(v3 + 88);
    v17[-2] = v11;
    v17[-1] = v12;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v11;
    v17[-1] = v12;
    swift_getKeyPath();
    v14 = static Published.subscript.modify();

    specialized Set._Variant.insert(_:)(&v18, a1);

    v14(v17, 0);
  }

  else
  {
    type metadata accessor for GroupActivitiesSynchronizationService.SynchronizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

void GroupActivitiesSynchronizationService.remove(entity:)()
{
  if (*(v0 + 32))
  {
    type metadata accessor for Entity();
    v1 = HasSynchronization.isOwner.getter();
    if (v1)
    {
      MEMORY[0x1EEE9AC00](v1);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_getKeyPath();
      v3 = static Published.subscript.modify();
      v4 = specialized Set._Variant.remove(_:)();
      v3(v6, 0);

      if (v4)
      {

        HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
      }
    }
  }

  else
  {
    type metadata accessor for GroupActivitiesSynchronizationService.SynchronizationError();
    swift_getWitnessTable();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E696B330], &lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x1E696B330], MEMORY[0x1E696B338]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.SceneUnderstandingCapability();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E697A660], &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.SceneUnderstandingCapability and conformance SpatialTrackingSession.Configuration.SceneUnderstandingCapability, MEMORY[0x1E697A660], MEMORY[0x1E697A668]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

{
  v5 = type metadata accessor for SpatialTrackingSession.Configuration.AnchorCapability();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640]);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13, MEMORY[0x1E697A640], &lazy protocol witness table cache variable for type SpatialTrackingSession.Configuration.AnchorCapability and conformance SpatialTrackingSession.Configuration.AnchorCapability, MEMORY[0x1E697A640], MEMORY[0x1E697A648]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant.remove(_:)()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    if (v2)
    {
      v3 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v3;
    }

    return 0;
  }

  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v7);
  specialized _NativeSet._delete(at:)(v7);
  result = v11;
  *v0 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = *v1;
  Hasher.init(_seed:)();
  v31 = a1;
  v12 = [a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v13 = *(v5 + 8);
  v13(v10, v4);
  v14 = Hasher._finalize()();
  v15 = v11 + 56;
  v29 = v11 + 56;
  v30 = v11;
  v16 = -1 << *(v11 + 32);
  v17 = v14 & ~v16;
  if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return 0;
  }

  v28 = v2;
  v18 = ~v16;
  while (1)
  {
    v19 = *(*(v30 + 48) + 8 * v17);
    v20 = [v19 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = [v31 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v21) = static UUID.== infix(_:_:)();
    v13(v7, v4);
    v13(v10, v4);
    if (v21)
    {
      break;
    }

    v17 = (v17 + 1) & v18;
    if (((*(v29 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  v32 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v25 = v32;
  }

  v26 = *(*(v25 + 48) + 8 * v17);
  specialized _NativeSet._delete(at:)(v17);
  result = v26;
  *v23 = v32;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{

  v1 = __CocoaSet.count.getter();
  v2 = swift_unknownObjectRetain();
  v3 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit6EntityC_Tt1g5(v2, v1);
  v10 = v3;
  type metadata accessor for Entity();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);

  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v8 = *(*(v3 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v10;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Entity and conformance Entity, MEMORY[0x1E697A3A8]);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void specialized _NativeSet._delete(at:)(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        lazy protocol witness table accessor for type Participant and conformance Participant(v40, v41);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

void specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = v8;
      v13 = (v12 + 1) & v11;
      v14 = (v4 + 8);
      while (1)
      {
        v15 = *(*(v7 + 48) + 8 * v10);
        Hasher.init(_seed:)();
        v16 = v15;
        v17 = [v16 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        dispatch thunk of Hashable.hash(into:)();
        (*v14)(v6, v3);
        v18 = Hasher._finalize()();

        v19 = v18 & v11;
        if (a1 >= v13)
        {
          if (v19 < v13)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v13)
        {
          goto LABEL_11;
        }

        if (a1 >= v19)
        {
LABEL_11:
          v20 = *(v7 + 48);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v10);
          if (a1 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v10;
          }
        }

LABEL_5:
        v10 = (v10 + 1) & v11;
        if (((*(v26 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          v8 = v26;
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v7 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v25;
    ++*(v7 + 36);
  }
}

uint64_t outlined init with copy of SynchronizationPeerID(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of GroupActivitiesSynchronizationPeer(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivitiesSynchronizationPeer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Participant and conformance Participant(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for GroupActivitiesSynchronizationService()
{
  type metadata accessor for Published<Set<Entity>>();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata accessor for Published<Set<Entity>>()
{
  if (!lazy cache variable for type metadata for Published<Set<Entity>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy10RealityKit6EntityCGMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<Entity>>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for GroupActivitiesSynchronizationPeer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivitiesSynchronizationComponent.CodingKeys and conformance GroupActivitiesSynchronizationComponent.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of GroupActivitiesSynchronizationPeer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GroupActivitiesSynchronizationComponent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesSynchronizationComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ParticleEmitterComponent.Presets.magic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0VSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v120 = &v100 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v119 = &v100 - v5;
  v114 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.SortOrder();
  v132 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.OpacityCurve();
  v131 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BlendMode();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.BillboardMode();
  v130 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ParticleEmitterComponent.SpawnOccasion();
  v108 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ParticleEmitterComponent.SimulationSpace();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ParticleEmitterComponent.EmitterShape();
  *&v102 = *(v103 - 1);
  MEMORY[0x1EEE9AC00](v103);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for ParticleEmitterComponent.BirthLocation();
  v15 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ParticleEmitterComponent.BirthDirection();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter.ImageSequence();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v125 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v100 - v24;
  v128 = type metadata accessor for ParticleEmitterComponent.ParticleEmitter();
  v116 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v115 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v100 - v27;
  ParticleEmitterComponent.init()();
  ParticleEmitterComponent.ParticleEmitter.init()();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.init()();
  (*(v19 + 104))(v21, *MEMORY[0x1E697A7E8], v18);
  ParticleEmitterComponent.birthDirection.setter();
  (*(v15 + 104))(v17, *MEMORY[0x1E697A7C0], v101);
  ParticleEmitterComponent.birthLocation.setter();
  ParticleEmitterComponent.emissionDirection.setter();
  ParticleEmitterComponent.emissionDuration.setter();
  ParticleEmitterComponent.emissionDurationVariation.setter();
  (*(v102 + 104))(v14, *MEMORY[0x1E697A748], v103);
  ParticleEmitterComponent.emitterShape.setter();
  ParticleEmitterComponent.emitterShapeSize.setter();
  ParticleEmitterComponent.idleDuration.setter();
  ParticleEmitterComponent.idleDurationVariation.setter();
  ParticleEmitterComponent.shouldLoop.setter();
  ParticleEmitterComponent.particlesInheritTransform.setter();
  (*(v105 + 13))(v104, *MEMORY[0x1E697A7F0], v106);
  ParticleEmitterComponent.fieldSimulationSpace.setter();
  ParticleEmitterComponent.spawnInheritsParentColor.setter();
  (*(v108 + 104))(v107, *MEMORY[0x1E697A7D8], v109);
  ParticleEmitterComponent.spawnOccasion.setter();
  ParticleEmitterComponent.spawnSpreadFactor.setter();
  ParticleEmitterComponent.spawnSpreadFactorVariation.setter();
  ParticleEmitterComponent.spawnVelocityFactor.setter();
  ParticleEmitterComponent.speed.setter();
  ParticleEmitterComponent.speedVariation.setter();
  ParticleEmitterComponent.warmupDuration.setter();
  ParticleEmitterComponent.resetSimulation()();
  v29 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  v29(v134, 0);
  v30 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  v30(v134, 0);
  v31 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  v31(v134, 0);
  v32 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  v32(v134, 0);
  v33 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  v33(v134, 0);
  v34 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  v34(v134, 0);
  v35 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  v35(v134, 0);
  LODWORD(v108) = *MEMORY[0x1E697A770];
  v36 = *(v130 + 104);
  v130 += 104;
  v109 = v36;
  v36(v122);
  v37 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  v37(v134, 0);
  v38 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  v38(v134, 0);
  v39 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  v39(v134, 0);
  LODWORD(v106) = *MEMORY[0x1E697A798];
  v40 = *(v129 + 104);
  v129 += 104;
  v107 = v40;
  (v40)(v121);
  v41 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  v41(v134, 0);
  v42 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  v42(v134, 0);
  v43 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  v43(v134, 0);
  v44 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  v44(v134, 0);
  v45 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  v45(v134, 0);
  v46 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  v46(v134, 0);
  v47 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  v47(v134, 0);
  v48 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  v48(v134, 0);
  v49 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  v49(v134, 0);
  v50 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  v50(v134, 0);
  v51 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  v51(v134, 0);
  v52 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  v52(v134, 0);
  v53 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  v53(v134, 0);
  v54 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  v54(v134, 0);
  LODWORD(v104) = *MEMORY[0x1E697A760];
  v55 = *(v131 + 104);
  v131 += 104;
  v105 = v55;
  v55(v123);
  v56 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  v56(v134, 0);
  v57 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  v57(v134, 0);
  v58 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  v58(v134, 0);
  v59 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  v59(v134, 0);
  v60 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  v60(v134, 0);
  v61 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  v61(v134, 0);
  v62 = *MEMORY[0x1E697A7B0];
  v63 = *(v132 + 13);
  v132 += 104;
  v103 = v63;
  v64 = v110;
  v65 = v111;
  (v63)(v110, v62, v111);
  v66 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  v66(v134, 0);
  v67 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  v67(v134, 0);
  v68 = ParticleEmitterComponent.mainEmitter.modify();
  v102 = xmmword_1E1252ED0;
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  v68(v134, 0);
  v69 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  v69(v134, 0);
  CGColorCreateGenericRGB(255.0, 0.0, 116.0, 1.0);
  v70 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  v70(v134, 0);
  CGColorCreateGenericRGB(255.0, 216.0, 0.0, 1.0);
  v71 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  v71(v134, 0);
  CGColorCreateGenericRGB(120.0, 0.0, 255.0, 1.0);
  v72 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorA.setter();
  v72(v134, 0);
  CGColorCreateGenericRGB(0.0, 255.0, 136.0, 1.0);
  v73 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.endColorB.setter();
  v73(v134, 0);
  v74 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  v74(v134, 0);
  v75 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  v75(v134, 0);
  v76 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v76(v134, 0);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrame.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrameVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.rowCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.columnCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRate.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRateVariation.setter();
  v77 = *(v113 + 104);
  v78 = v112;
  v79 = v114;
  v77(v112, *MEMORY[0x1E697A780], v114);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.animationMode.setter();
  ParticleEmitterComponent.ParticleEmitter.acceleration.setter();
  ParticleEmitterComponent.ParticleEmitter.angle.setter();
  ParticleEmitterComponent.ParticleEmitter.angleVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.angularSpeedVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionCenter.setter();
  ParticleEmitterComponent.ParticleEmitter.attractionStrength.setter();
  (v109)(v122, v108, v124);
  ParticleEmitterComponent.ParticleEmitter.billboardMode.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRate.setter();
  ParticleEmitterComponent.ParticleEmitter.birthRateVariation.setter();
  (v107)(v121, v106, v126);
  ParticleEmitterComponent.ParticleEmitter.blendMode.setter();
  ParticleEmitterComponent.ParticleEmitter.bounce.setter();
  ParticleEmitterComponent.ParticleEmitter.areCollisionsEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.colorEvolutionPower.setter();
  ParticleEmitterComponent.ParticleEmitter.dampingFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.friction.setter();
  ParticleEmitterComponent.ParticleEmitter.isLightingEnabled.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpan.setter();
  ParticleEmitterComponent.ParticleEmitter.lifeSpanVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.mass.setter();
  ParticleEmitterComponent.ParticleEmitter.massVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseAnimationSpeed.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseScale.setter();
  ParticleEmitterComponent.ParticleEmitter.noiseStrength.setter();
  (v105)(v123, v104, v127);
  ParticleEmitterComponent.ParticleEmitter.opacityCurve.setter();
  ParticleEmitterComponent.ParticleEmitter.size.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespan.setter();
  ParticleEmitterComponent.ParticleEmitter.sizeMultiplierAtEndOfLifespanPower.setter();
  ParticleEmitterComponent.ParticleEmitter.spreadingAngle.setter();
  (v103)(v64, *MEMORY[0x1E697A7A0], v65);
  ParticleEmitterComponent.ParticleEmitter.sortOrder.setter();
  ParticleEmitterComponent.ParticleEmitter.stretchFactor.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexDirection.setter();
  ParticleEmitterComponent.ParticleEmitter.vortexStrength.setter();
  CGColorCreateGenericRGB(88.0, 0.0, 255.0, 0.04);
  ParticleEmitterComponent.ParticleEmitter.startColorA.setter();
  CGColorCreateGenericRGB(0.0, 255.0, 97.0, 0.04);
  ParticleEmitterComponent.ParticleEmitter.startColorB.setter();
  CGColorCreateGenericRGB(0.0, 130.0, 255.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.endColorA.setter();
  CGColorCreateGenericRGB(255.0, 0.0, 47.0, 1.0);
  ParticleEmitterComponent.ParticleEmitter.endColorB.setter();
  ParticleEmitterComponent.ParticleEmitter.useStartColorRange.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColor.setter();
  ParticleEmitterComponent.ParticleEmitter.useEndColorRange.setter();
  v80 = v125;
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrame.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.initialFrameVariation.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.rowCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.columnCount.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRate.setter();
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.frameRateVariation.setter();
  v77(v78, *MEMORY[0x1E697A778], v79);
  ParticleEmitterComponent.ParticleEmitter.ImageSequence.animationMode.setter();
  type metadata accessor for TextureResource();
  v81 = MEMORY[0x1E12F3F80](0xD000000000000010, 0x80000001E1257190);
  v82 = [objc_opt_self() bundleWithIdentifier_];

  if (one-time initialization token for textureLoader != -1)
  {
    swift_once();
  }

  v83 = textureLoader;
  v134[3] = &type metadata for TextureLoader;
  v134[4] = lazy protocol witness table accessor for type TextureLoader and conformance TextureLoader();
  v134[0] = v83;
  v84 = v83;
  static TextureResource.load(named:in:textureLoader:)();

  __swift_destroy_boxed_opaque_existential_1(v134);
  v85 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v85(v134, 0);
  v86 = v115;
  ParticleEmitterComponent.mainEmitter.getter();
  ParticleEmitterComponent.ParticleEmitter.image.getter();
  v130 = a1;
  v87 = v116;
  v88 = *(v116 + 8);
  v131 = v116 + 8;
  v132 = v88;
  (v88)(v86, v128);
  v89 = v28;
  ParticleEmitterComponent.ParticleEmitter.image.setter();
  v90 = v117;
  v91 = *(v117 + 16);
  v92 = v119;
  v93 = v118;
  v91(v119, v80, v118);
  v94 = *(v90 + 56);
  v94(v92, 0, 1, v93);
  ParticleEmitterComponent.ParticleEmitter.imageSequence.setter();
  v91(v92, v133, v93);
  v94(v92, 0, 1, v93);
  v95 = ParticleEmitterComponent.mainEmitter.modify();
  ParticleEmitterComponent.ParticleEmitter.imageSequence.setter();
  v95(v134, 0);
  v96 = v120;
  v97 = v128;
  (*(v87 + 16))(v120, v89, v128);
  (*(v87 + 56))(v96, 0, 1, v97);
  ParticleEmitterComponent.spawnedEmitter.setter();
  v98 = *(v90 + 8);
  v98(v125, v93);
  v98(v133, v93);
  return (v132)(v89, v97);
}

void ARView.resizeDrawable(size:scaleFactor:)(double a1, double a2, double a3)
{
  if ((v3[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] & 1) == 0)
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC10RealityKit6ARView_renderView];
    [v4 bounds];
    [v8 setFrame_];

    if (v4[OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer] == 1)
    {
      type metadata accessor for __ServiceLocator();
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.renderService.getter();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
      type metadata accessor for RERenderManager();
      swift_dynamicCast();
      dispatch thunk of RERenderManager.getLayerSize(_:)();
      v10 = a1 * a3;
      v11 = a2 * a3;
      if (v12 != v10 || v9 != v11)
      {
        dispatch thunk of RERenderManager.waitUntilScheduled()();
        v14 = *&v4[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer];
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction;
        [v14 setPresentsWithTransaction_];
        if (v4[v15])
        {
          v16 = 2;
        }

        else
        {
          v16 = 0;
        }

        *&v4[OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames] = v16;
        dispatch thunk of RERenderManager.setLayerSize(_:_:_:)();
      }
    }

    v17 = *&v4[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer];
    if (v17)
    {
      [v17 setContentsScale_];
      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t ARView._lastHitEntityForGestures.getter()
{
  return ARView._lastHitEntityForGestures.getter();
}

{
  swift_beginAccess();
}

uint64_t ARView.scene.getter()
{
  result = *(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t ARView.__delegatePrivate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ARView.__delegatePrivate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return ARView.__delegatePrivate.modify;
}

void ARView.__delegatePrivate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *key path getter for ARView.__automaticallyInvokesStartTrigger : ARView@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*(*result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__interactionService.getter();
    v4 = v3;

    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 80))(ObjectType, v4);
    result = swift_unknownObjectRelease();
    *a2 = v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *key path setter for ARView.__automaticallyInvokesStartTrigger : ARView(unsigned __int8 *result, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    v2 = *result;

    dispatch thunk of Scene.__interactionService.getter();
    v4 = v3;

    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v2, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.__automaticallyInvokesStartTrigger.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__interactionService.getter();
    v2 = v1;

    ObjectType = swift_getObjectType();
    (*(v2 + 80))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ARView.__automaticallyInvokesStartTrigger.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    v2 = result;

    dispatch thunk of Scene.__interactionService.getter();
    v4 = v3;

    ObjectType = swift_getObjectType();
    (*(v4 + 88))(v2 & 1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.__automaticallyInvokesStartTrigger.modify(uint64_t (*result)(uint64_t result, char a2)))(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  *result = v1;
  *(result + 1) = v2;
  if (*(v1 + v2))
  {
    v3 = result;

    dispatch thunk of Scene.__interactionService.getter();
    v5 = v4;

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 80))(ObjectType, v5);
    swift_unknownObjectRelease();
    *(v3 + 16) = v7 & 1;
    return ARView.__automaticallyInvokesStartTrigger.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.__automaticallyInvokesStartTrigger.modify(uint64_t result, char a2)
{
  v2 = *(*result + *(result + 8));
  if (a2)
  {
    if (v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!v2)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  v3 = *(result + 16);

  dispatch thunk of Scene.__interactionService.getter();
  v5 = v4;

  ObjectType = swift_getObjectType();
  (*(v5 + 88))(v3, ObjectType, v5);

  return swift_unknownObjectRelease();
}

void ARView.debugOptions.getter(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *a1 = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions);
  }

  else
  {
    __break(1u);
  }
}

void ARView.debugOptions.setter(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  v3 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (!v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v4 = *a1;
  if (((*a1 >> 1) & 1) == ((*(v3 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions) & 2) == 0))
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    if (REServiceLocatorGetFrameStatisticsHUD())
    {
      MEMORY[0x1E12F4D60]();
      REFrameStatisticsHUDSetRenderLayer();
    }
  }

  v5 = *(v1 + v2);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = *&v5[OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions];
  *&v5[OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions] = v4;
  if (v4 != v6)
  {
    v8 = v6;
    v9 = v4;
    v7 = v5;
    RKARSystem.updateDebugVisualization(with:oldOptions:)(&v9, &v8);
  }
}

void (*ARView.debugOptions.modify(void (*result)(uint64_t *a1)))(uint64_t *a1)
{
  *(result + 1) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_arSystem);
  if (v2)
  {
    *result = *(v2 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions);
    return ARView.debugOptions.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for ARView.environment : ARView@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 44);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v9 = *(v3 + 24);
  *(a2 + 24) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 44) = v8;
  outlined copy of ARView.Environment.Background.Value(v5, v9);
}

void key path setter for ARView.environment : ARView(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  v5 = a1[4];
  v6 = *(a1 + 10);
  v7 = *(a1 + 44);
  v8 = *a2 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
  v9 = *(a1 + 24);
  swift_beginAccess();
  v10 = *(v8 + 16);
  *v8 = v2;
  *(v8 + 8) = v3;
  *(v8 + 16) = v4;
  LOBYTE(v2) = *(v8 + 24);
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 44) = v7;
  outlined copy of ARView.Environment.Background.Value(v4, v9);

  outlined consume of ARView.Environment.Background.Value(v10, v2);

  ARView.updateEnvironment()();
}

uint64_t ARView.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 44);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v9 = *(v3 + 24);
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = v8;
  outlined copy of ARView.Environment.Background.Value(v5, v9);
}

void ARView.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 10);
  v8 = *(a1 + 44);
  v9 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_environment;
  swift_beginAccess();
  v10 = *(v9 + 16);
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  v11 = *(v9 + 24);
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 44) = v8;
  outlined consume of ARView.Environment.Background.Value(v10, v11);

  ARView.updateEnvironment()();
}

void (*ARView.environment.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ARView.environment.modify;
}

void ARView.environment.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ARView.updateEnvironment()();
  }
}

void ARView.cameraTransform.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    active = dispatch thunk of Scene.internalActiveCamera.getter();

    if (active)
    {
      type metadata accessor for Entity();
      HasTransform.transformMatrix(relativeTo:)();
      Transform.init(matrix:)();
    }

    else
    {
      Transform.init()();
    }
  }

  else
  {
    __break(1u);
  }
}

void *key path getter for ARView.audioListener : ARView@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (*(*result + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    v3 = dispatch thunk of Scene.__audioListener.getter();

    *a2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path setter for ARView.audioListener : ARView(uint64_t a1, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__audioListener.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.audioListener.getter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__audioListener.getter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ARView.audioListener.setter()
{
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {

    dispatch thunk of Scene.__audioListener.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*ARView.audioListener.modify(uint64_t (*result)(uint64_t result, char a2)))(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  *(result + 1) = v1;
  *(result + 2) = v2;
  if (*(v1 + v2))
  {
    v3 = result;

    v4 = dispatch thunk of Scene.__audioListener.getter();

    *v3 = v4;
    return ARView.audioListener.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ARView.audioListener.modify(uint64_t result, char a2)
{
  v2 = *(*(result + 8) + *(result + 16));
  if ((a2 & 1) == 0)
  {
    if (v2)
    {

      dispatch thunk of Scene.__audioListener.setter();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  dispatch thunk of Scene.__audioListener.setter();

LABEL_6:
}

uint64_t ARView.__enableAutomaticFrameRate.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__enableAutomaticFrameRate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float ARView.__preferredFrameRate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate;
  swift_beginAccess();
  return *v1;
}

uint64_t ARView.__preferredFrameRate.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id ARView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ARView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView__lastHitEntityForGestures] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC10RealityKit6ARView_initialized] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] = 2;
  v3 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  *v3 = 0x200000000;
  *(v3 + 2) = 0;
  *(v3 + 4) = 0;
  *(v3 + 10) = 0;
  v3[44] = 6;
  *(v3 + 2) = 0;
  v3[24] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate] = 1;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer] = 1;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput] = 0;
  v4 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy];
  *v4 = 0;
  v4[4] = 2;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe] = 1;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_layerHandle] = 0;
  v5 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription];
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession] = 0;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = 0;
  v7 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
  *&v1[v7] = [objc_allocWithZone(type metadata accessor for ARRenderView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation] = 1;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = 1;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation] = 0;
  v8 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
  specialized ARView.ARSessionComponents.init()(v19);
  v9 = v19[3];
  v8[2] = v19[2];
  v8[3] = v9;
  v8[4] = v19[4];
  v10 = v19[1];
  *v8 = v19[0];
  v8[1] = v10;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___disableComposition] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices] = 0;
  v1[OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction] = 1;
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames] = 0;
  v11 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  v12 = *MEMORY[0x1E697A500];
  v13 = type metadata accessor for AntialiasingMode();
  (*(*(v13 - 8) + 104))(&v1[v11], v12, v13);
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions] = 545;
  v1[OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for ARView();
  v14 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    specialized ARView.commonInit(_:)();
  }

  return v15;
}

id ARView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ARView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView__lastHitEntityForGestures] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView__scene] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC10RealityKit6ARView_initialized] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] = 2;
  v9 = &v4[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  *v9 = 0x200000000;
  *(v9 + 2) = 0;
  *(v9 + 4) = 0;
  *(v9 + 10) = 0;
  v9[44] = 6;
  *(v9 + 2) = 0;
  v9[24] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate] = 1;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer] = 1;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput] = 0;
  v10 = &v4[OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy];
  *v10 = 0;
  v10[4] = 2;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe] = 1;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_layerHandle] = 0;
  v11 = &v4[OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = &v4[OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession] = 0;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = 0;
  v13 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for ARRenderView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation] = 1;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = 1;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation] = 0;
  v14 = &v4[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
  specialized ARView.ARSessionComponents.init()(v23);
  v15 = v23[3];
  v14[2] = v23[2];
  v14[3] = v15;
  v14[4] = v23[4];
  v16 = v23[1];
  *v14 = v23[0];
  v14[1] = v16;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___disableComposition] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices] = 0;
  v4[OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction] = 1;
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames] = 0;
  v17 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  v18 = *MEMORY[0x1E697A500];
  v19 = type metadata accessor for AntialiasingMode();
  (*(*(v19 - 8) + 104))(&v4[v17], v18, v19);
  *&v4[OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions] = 545;
  v4[OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for ARView();
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  specialized ARView.commonInit(_:)();

  return v20;
}

char *ARView.__allocating_init(frame:cameraMode:)(char *a1, double a2, double a3, double a4, double a5)
{
  v6 = *a1;
  result = [objc_allocWithZone(v5) initWithFrame_];
  v8 = *&result[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (v8)
  {
    v11 = v8[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode];
    v8[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = v6;
    v9 = result;
    v10 = v8;
    RKARSystem.cameraMode.didset(&v11);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ARView.init(frame:cameraMode:automaticallyConfigureSession:)(char *a1, char a2, double a3, double a4, double a5, double a6)
{
  v12 = *a1;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView__lastHitEntityForGestures] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView__scene] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC10RealityKit6ARView_initialized] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] = 2;
  v13 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  *v13 = 0x200000000;
  *(v13 + 2) = 0;
  *(v13 + 4) = 0;
  *(v13 + 10) = 0;
  v13[44] = 6;
  *(v13 + 2) = 0;
  v13[24] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate] = 1;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer] = 1;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput] = 0;
  v14 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy];
  *v14 = 0;
  v14[4] = 2;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe] = 1;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_layerHandle] = 0;
  v15 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession] = 0;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = 0;
  v17 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for ARRenderView()) initWithFrame_];
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation] = 1;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = 1;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation] = 0;
  v18 = &v6[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
  specialized ARView.ARSessionComponents.init()(v31);
  v19 = v31[3];
  v18[2] = v31[2];
  v18[3] = v19;
  v18[4] = v31[4];
  v20 = v31[1];
  *v18 = v31[0];
  v18[1] = v20;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___disableComposition] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices] = 0;
  v6[OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction] = 1;
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames] = 0;
  v21 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  v22 = *MEMORY[0x1E697A500];
  v23 = type metadata accessor for AntialiasingMode();
  (*(*(v23 - 8) + 104))(&v6[v21], v22, v23);
  *&v6[OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions] = 545;
  v6[OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering] = 0;
  v30.receiver = v6;
  v30.super_class = type metadata accessor for ARView();
  v24 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a3, a4, a5, a6);
  specialized ARView.commonInit(_:)();
  v25 = *&v24[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (v25)
  {
    v26 = v25[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode];
    v25[OBJC_IVAR____TtC10RealityKit10RKARSystem_cameraMode] = v12;
    v29[0] = v26;
    v27 = v25;
    RKARSystem.cameraMode.didset(v29);

    v28 = &v24[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
    swift_beginAccess();
    v28[2] = a2 & 1;
  }

  else
  {
    __break(1u);
  }
}

_BYTE *ARView.init(frame:forRealityView:)(char a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView__lastHitEntityForGestures] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView__scene] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC10RealityKit6ARView_initialized] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_currentIBL] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] = 2;
  v11 = &v5[OBJC_IVAR____TtC10RealityKit6ARView_environment];
  *v11 = 0x200000000;
  *(v11 + 2) = 0;
  *(v11 + 4) = 0;
  *(v11 + 10) = 0;
  v11[44] = 6;
  *(v11 + 2) = 0;
  v11[24] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView___environmentEntity] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___enableAutomaticFrameRate] = 1;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView___preferredFrameRate] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_singleTapGesture] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_engineWasRunningWhenLastInTheForeground] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer] = 1;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_pauseEngineOnLeaveForeground] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput] = 0;
  v12 = &v5[OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy];
  *v12 = 0;
  v12[4] = 2;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe] = 1;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_layerHandle] = 0;
  v13 = &v5[OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = &v5[OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription];
  *(v14 + 4) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession] = 0;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = 0;
  v15 = OBJC_IVAR____TtC10RealityKit6ARView_renderView;
  *&v5[v15] = [objc_allocWithZone(type metadata accessor for ARRenderView()) initWithFrame_];
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_interfaceOrientation] = 1;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_lastInterfaceOrientation] = 1;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_viewCounterRotating] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_updateAfterCounterRotation] = 0;
  v16 = &v5[OBJC_IVAR____TtC10RealityKit6ARView_sessionComponents];
  specialized ARView.ARSessionComponents.init()(v26);
  v17 = v26[3];
  v16[2] = v26[2];
  v16[3] = v17;
  v16[4] = v26[4];
  v18 = v26[1];
  *v16 = v26[0];
  v16[1] = v18;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___disableComposition] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices] = 0;
  v5[OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction] = 1;
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames] = 0;
  v19 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  v20 = *MEMORY[0x1E697A500];
  v21 = type metadata accessor for AntialiasingMode();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  *&v5[OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions] = 545;
  v5[OBJC_IVAR____TtC10RealityKit6ARView___disableStatisticsRendering] = 0;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for ARView();
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a2, a3, a4, a5);
  if (v22[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] == 2)
  {
    v22[OBJC_IVAR____TtC10RealityKit6ARView__enableGroundingShadowsByDefault] = (a1 & 1) == 0;
  }

  v23 = v22;
  specialized ARView.commonInit(_:)();

  return v23;
}

void closure #1 in ARView.extendedDynamicRangeOutput.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
    swift_beginAccess();
    if (*(v1 + v2) == 1)
    {
      v3 = [v1 window];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 screen];

        [v5 currentEDRHeadroom];
      }
    }

    swift_beginAccess();
  }
}

float thunk for @escaping @callee_guaranteed () -> (@unowned Float)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t ARView.extendedDynamicRangeOutput.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
  swift_beginAccess();
  return *(v0 + v1);
}

void ARView.extendedDynamicRangeOutput.setter(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  if (v6 != v4)
  {
    ARView.setupMetalLayer()();
    v7 = *(v2 + OBJC_IVAR____TtC10RealityKit6ARView__scene);
    if (*(v2 + v5))
    {
      if (v7)
      {

        Scene.coreScene.getter();

        RESceneAddEDRColorManagementComponent();
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = partial apply for closure #1 in ARView.extendedDynamicRangeOutput.didset;
        aBlock[5] = v8;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@unowned Float);
        aBlock[3] = &block_descriptor_6;
        v9 = _Block_copy(aBlock);

        REEDRColorManagementComponentSetHeadroomCallback();
        _Block_release(v9);
        return;
      }

      __break(1u);
      goto LABEL_9;
    }

    if (!v7)
    {
LABEL_9:
      __break(1u);
      return;
    }

    Scene.coreScene.getter();

    RESceneRemoveEDRColorManagementComponent();
  }
}

void (*ARView.extendedDynamicRangeOutput.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return ARView.extendedDynamicRangeOutput.modify;
}

void ARView.extendedDynamicRangeOutput.modify(uint64_t a1)
{
  v1 = *a1;
  ARView.extendedDynamicRangeOutput.setter(*(*a1 + 32));

  free(v1);
}

uint64_t ARView.edrHeadroomPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t ARView.edrHeadroomPolicy.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC10RealityKit6ARView_edrHeadroomPolicy;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t ARView.__renderGraphEmitter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    type metadata accessor for __ServiceLocator();

    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of __RERenderGraphEmitter.unsetup(mgr:)();
  }

  *(v1 + v3) = a1;

  if (a1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of __RERenderGraphEmitter.setup(mgr:)();
  }

  return result;
}

void (*ARView.__renderGraphEmitter.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return ARView.__renderGraphEmitter.modify;
}

void ARView.__renderGraphEmitter.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    ARView.__renderGraphEmitter.setter(v4);
  }

  else
  {
    ARView.__renderGraphEmitter.setter(v3);
  }

  free(v2);
}

Swift::Void __swiftcall ARView.__setWireframeMode(displayWireframe:)(Swift::Bool displayWireframe)
{
  v2 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    dispatch thunk of __RERenderGraphEmitter.setWireframeMode(displayWireframe:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ARView.__forceLocalizedProbes.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__forceLocalizedProbes.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___forceLocalizedProbes;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ARView.__parallaxBackgroundProbe.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__parallaxBackgroundProbe.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___parallaxBackgroundProbe;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for ARView._lastHitEntityForGestures : ARView(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t ARView._lastHitEntityForGestures.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t ARView.__disableCounterRotation.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__disableCounterRotation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___disableCounterRotation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ARView.__disableComposition.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___disableComposition;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__disableComposition.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___disableComposition;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ARView.__nonARKitDevices.getter()
{
  v1 = OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ARView.__nonARKitDevices.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView___nonARKitDevices;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

dispatch_semaphore_t one-time initialization function for uniqueTokenGenerator()
{
  result = dispatch_semaphore_create(1);
  static ARView.uniqueTokenGenerator = 0;
  qword_1ECEAB508 = result;
  return result;
}

void closure #1 in ARView.commonInit(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    ARView.commonRenderCallback()();
  }
}

uint64_t closure #2 in ARView.commonInit(_:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    v2 = dispatch thunk of __ServiceLocator.engine.getter();

    SceneEvents.Update.deltaTime.getter();
    *&v3 = v3;
    ARView.doUpdateCallback(engine:deltaTime:)(v2, *&v3);
  }

  return result;
}

void ARView.doUpdateCallback(engine:deltaTime:)(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = type metadata accessor for Scene.AnchorCollection();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v65 - v9;
  v10 = type metadata accessor for AntialiasingMode();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for OSSignpostID();
  MEMORY[0x1EEE9AC00](v17 - 8);
  static __REOSLog.UpdateLoop.getter();
  static __RESignpostID.UpdateLoop.getter();
  type metadata accessor for __REOSSignpostScope();
  swift_allocObject();
  __REOSSignpostScope.init(osLog:signpostID:name:)();

  v18 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*&v2[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v70 = a1;

  Scene.coreScene.getter();

  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (v20)
  {
    v21 = AllEntitiesArray;
    v22 = v20;
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v20, 0);
    memcpy(v23 + 4, v21, 8 * v22);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  v24 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  (*(v11 + 16))(v16, &v3[v24], v10);
  (*(v11 + 104))(v13, *MEMORY[0x1E697A508], v10);
  v25 = static AntialiasingMode.== infix(_:_:)();
  v26 = *(v11 + 8);
  v26(v13, v10);
  v26(v16, v10);
  v27 = 0;
  v28 = 0;
  v29 = v23[2];
  v67 = OBJC_IVAR____TtC10RealityKit6ARView_layerHandle;
  while (v29 != v27)
  {
    if (v27 >= v23[2])
    {
      __break(1u);
      goto LABEL_62;
    }

    ++v27;
    RECustomMatrixCameraComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    REPerspectiveCameraComponentGetComponentType();
    v31 = REEntityGetComponentByClass();
    REOrthographicCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v32 = 0;
    }

    else
    {
      v32 = ComponentByClass == 0;
    }

    if (!v32 || v31 != 0)
    {
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RECameraViewDescriptorsComponentCameraViewDescriptorCount())
      {
        RECameraViewDescriptorsComponentCameraViewDescriptorHandleByIndex();
        RenderGraphDataStruct = RERenderGraphCreateRenderGraphDataStruct();
        v35 = v25 & 1;
      }

      else
      {
        RECameraViewDescriptorsComponentAddViewDescriptor();
        RECameraViewDescriptorsComponentAddSpecifyCommandFromLayer();
        v36 = RERenderGraphCreateRenderGraphDataStruct();
        RERenderGraphDataStructAddFloat4();
        v35 = v25 & 1;
        RenderGraphDataStruct = v36;
      }

      MEMORY[0x1E12F5190](RenderGraphDataStruct, "disableAA", v35);
      RECameraViewDescriptorsComponentCameraViewDescriptorSetSettingStruct();
      RERelease();
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  if (!*&v3[v18])
  {
    goto LABEL_63;
  }

  v38 = dispatch thunk of Scene.defaultCamera.getter();

  if (!v38)
  {
    goto LABEL_64;
  }

  v39 = dispatch thunk of Entity.scene.getter();

  if (v39)
  {

    if (v28 >= 2)
    {
      if (!*&v3[v18])
      {
        goto LABEL_68;
      }

      v40 = v66;
      dispatch thunk of Scene.anchors.getter();

      if (!*&v3[v18])
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v41 = dispatch thunk of Scene.defaultCamera.getter();

      if (!v41)
      {
        goto LABEL_70;
      }

      Scene.AnchorCollection.removeNinja(_:)();
      goto LABEL_36;
    }
  }

  if (!v28)
  {
    if (!*&v3[v18])
    {
      goto LABEL_71;
    }

    v42 = dispatch thunk of Scene.defaultCamera.getter();

    v40 = v65;
    if (!v42)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    Entity.turnIntoNinja()();

    if (!*&v3[v18])
    {
      goto LABEL_73;
    }

    dispatch thunk of Scene.anchors.getter();

    if (!*&v3[v18])
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return;
    }

    v43 = dispatch thunk of Scene.defaultCamera.getter();

    if (!v43)
    {
      goto LABEL_75;
    }

    Scene.AnchorCollection.appendNinja(_:)();
LABEL_36:

    (*(v68 + 8))(v40, v69);
  }

  ARView.updateWindowRotation()();
  [*&v3[OBJC_IVAR____TtC10RealityKit6ARView_renderView] bounds];
  v45 = v44;
  v47 = v46;
  ARView.updateARSession(restartIfPaused:)(0);
  v48 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
  swift_beginAccess();
  if (*&v3[v48])
  {

    v49 = dispatch thunk of RealityFusionSession.sharedCount.getter();

    if (v49 == 1)
    {
      if (*&v3[v48])
      {

        v50 = dispatch thunk of RealityFusionSession.serviceManager.getter();

        if (v50)
        {
          v51 = RFServiceManagerGetARKitDataProvider();

          if (v51)
          {
            v52 = RFARKitDataProviderGetARSession();
            v53 = [v3 session];
            type metadata accessor for ARReferenceObject(0, &lazy cache variable for type metadata for ARSession);
            v54 = static NSObject.== infix(_:_:)();

            if ((v54 & 1) == 0)
            {
              v55 = [v3 session];
              if (*&v3[v48])
              {

                RealityFusionSession.configure(with:)(v55);
              }
            }
          }
        }
      }
    }
  }

  v56 = OBJC_IVAR____TtC10RealityKit6ARView_arSystem;
  v57 = *&v3[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  if (!v57)
  {
    goto LABEL_65;
  }

  v58 = v57;

  RKARSystem.update(engine:viewportSize:)(v70, v45, v47);

  if (!*&v3[v18])
  {
    goto LABEL_66;
  }

  v59 = Scene.coreScene.getter();

  if (*&v3[v48])
  {

    RealityFusionSession.update(scene:with:by:)(v59, v3);
  }

  ARView.checkProximity()();
  if (REPhysicsDebugRendererIsEnabled())
  {
    v60 = *&v3[v56];
    if (!v60)
    {
      goto LABEL_67;
    }

    v61 = *&v3[v18];
    if (*(v60 + OBJC_IVAR____TtC10RealityKit10RKARSystem_debugOptions))
    {
      if (!v61)
      {
        goto LABEL_77;
      }

      Scene.coreScene.getter();

      RESceneSetPhysicsDebugDrawLevel();
    }

    else
    {
      if (!v61)
      {
        goto LABEL_76;
      }

      Scene.coreScene.getter();

      RESceneRemovePhysicsDebugComponent();
    }
  }

  v62 = &v3[OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = *(v62 + 1);
    ObjectType = swift_getObjectType();
    (*(v63 + 32))(v3, ObjectType, v63, a2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ARView.shutdownEngine()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer) == 1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of RERenderManager.unregisterRenderLayer(_:)();
  }

  v2 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    type metadata accessor for __ServiceLocator();

    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    dispatch thunk of __RERenderGraphEmitter.unsetup(mgr:)();
  }

  *(v0 + v2) = 0;

  v3 = OBJC_IVAR____TtC10RealityKit6ARView_realityFusionSession;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = dispatch thunk of RealityFusionSession.sharedCount.modify();
    if (__OFSUB__(*v5, 1))
    {
      __break(1u);
      return;
    }

    --*v5;
    v4(v7, 0);
  }

  v6 = OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView;
  if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_engineStartedByThisView) == 1)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.__stop()();

    *(v1 + v6) = 0;
  }
}

id ARView.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10RealityKit6ARView_extendedDynamicRangeOutput;
  result = swift_beginAccess();
  if (v1[v2] == 1)
  {
    if (!*&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene])
    {
LABEL_15:
      __break(1u);
      return result;
    }

    Scene.coreScene.getter();

    RESceneRemoveEDRColorManagementComponent();
  }

  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.sceneService.getter();

  v4 = v14;
  v5 = v15;
  result = __swift_project_boxed_opaque_existential_1(v13, v14);
  v6 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(v5 + 24);

  v7(v8, v4, v5);

  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem];
  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_arSystem] = 0;

  v10 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_updateSubscription];
  swift_beginAccess();
  if (*(v10 + 24))
  {
    outlined init with copy of SynchronizationPeerID(v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v11 = &v1[OBJC_IVAR____TtC10RealityKit6ARView_renderSubscription];
  result = swift_beginAccess();
  if (*(v11 + 24))
  {
    outlined init with copy of SynchronizationPeerID(v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    dispatch thunk of Cancellable.cancel()();
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if (!*&v1[v6])
  {
    goto LABEL_14;
  }

  dispatch thunk of Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (swift_dynamicCastClass())
  {
    dispatch thunk of __RKEntityInteractionManager.shutdown()();
  }

  swift_unknownObjectRelease();
  *&v1[v6] = 0;

  ARView.shutdownEngine()();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for ARView();
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

Swift::Void __swiftcall ARView.onDrawingManagerCreated()()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.renderService.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
  type metadata accessor for RERenderManager();
  swift_dynamicCast();
  v2 = *&v0[OBJC_IVAR____TtC10RealityKit6ARView_backingLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  v4 = dispatch thunk of RERenderManager.registerRenderLayer(_:)();

  *&v1[OBJC_IVAR____TtC10RealityKit6ARView_layerHandle] = v4;
  [v1 bounds];
  v6 = v5;
  v8 = v7;
  [v1 contentScaleFactor];
  ARView.resizeDrawable(size:scaleFactor:)(v6, v8, v9);
  if (!*&v1[OBJC_IVAR____TtC10RealityKit6ARView__scene])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  Scene.coreScene.getter();

  AllEntitiesArray = RESceneGetAllEntitiesArray();
  if (v11)
  {
    v12 = AllEntitiesArray;
    v13 = v11;
    v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs13OpaquePointerV_Tt1g5(v11, 0);
    memcpy(v14 + 4, v12, 8 * v13);
    v15 = v14[2];
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
    v15 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  v16 = v14 + 4;
  do
  {
    RECustomMatrixCameraComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    REPerspectiveCameraComponentGetComponentType();
    v18 = REEntityGetComponentByClass();
    REOrthographicCameraComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v19 = 0;
    }

    else
    {
      v19 = ComponentByClass == 0;
    }

    if (!v19 || v18 != 0)
    {
      RECameraViewDescriptorsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      RECameraViewDescriptorsComponentClearCameraViewDescriptors();
    }

    ++v16;
    --v15;
  }

  while (v15);
LABEL_17:
  v21 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
  swift_beginAccess();
  if (!*&v1[v21])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  dispatch thunk of __RERenderGraphEmitter.unsetup(mgr:)();

  if (*&v1[v21])
  {

    dispatch thunk of __RERenderGraphEmitter.setup(mgr:)();

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t ARView.commonRenderCallback()()
{
  v1 = v0;
  type metadata accessor for __ServiceLocator();
  static __ServiceLocator.shared.getter();
  dispatch thunk of __ServiceLocator.engine.getter();

  v2 = dispatch thunk of __Engine.hasRenderedThisFrame.getter();

  if ((v2 & 1) == 0)
  {
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.engine.getter();

    dispatch thunk of __Engine.hasRenderedThisFrame.setter();

    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.renderService.getter();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit15__RenderService_pMd);
    type metadata accessor for RERenderManager();
    swift_dynamicCast();
    if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_useCAMetalLayer) != 1 || (dispatch thunk of RERenderManager.getLayerSize(_:)(), v5 != 0.0) && v4 != 0.0)
    {
      static __ServiceLocator.shared.getter();
      dispatch thunk of __ServiceLocator.engine.getter();

      __Engine.coreEngine.getter();

      REEngineGetCurrentTime();
      dispatch thunk of RERenderManager.createRenderFrameSettings()();
      dispatch thunk of RERenderFrameSettings.setTotalTime(_:)();
      dispatch thunk of RERenderManager.createRenderFrameWorkload()();
      dispatch thunk of RERenderFrameWorkload.configure(_:)();
      v6 = OBJC_IVAR____TtC10RealityKit6ARView___renderGraphEmitter;
      result = swift_beginAccess();
      if (!*(v1 + v6))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      dispatch thunk of __RERenderGraphEmitter.execute(mgr:)();

      specialized static ARView.fulfillPixelCastRequests(renderManager:)();
      v7 = OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames;
      if (*(v1 + OBJC_IVAR____TtC10RealityKit6ARView_presentsWithTransactionFrames) && *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_enablePresentsWithTransaction) == 1)
      {
        result = dispatch thunk of RERenderFrameWorkload.commitWithImmediatePresent()();
        v8 = *(v1 + v7);
        v9 = v8 != 0;
        v10 = v8 - 1;
        if (!v9)
        {
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + v7) = v10;
        if (!v10)
        {
          v11 = *(v1 + OBJC_IVAR____TtC10RealityKit6ARView_backingLayer);
          if (!v11)
          {
LABEL_18:
            __break(1u);
            return result;
          }

          v12 = v11;
          [v12 setPresentsWithTransaction_];
        }
      }

      else
      {
        dispatch thunk of RERenderFrameWorkload.commit()();
      }
    }
  }

  return result;
}

uint64_t key path getter for ARView.__proto_antialiasingMode_v1 : ARView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == *MEMORY[0x1E697A508])
  {
    v11 = *MEMORY[0x1E697A808];
    v12 = type metadata accessor for _Proto_AntialiasingMode_v1();
    return (*(*(v12 - 8) + 104))(a2, v11, v12);
  }

  else
  {
    v14 = v10;
    v15 = *MEMORY[0x1E697A500];
    v16 = type metadata accessor for _Proto_AntialiasingMode_v1();
    v17 = *(*(v16 - 8) + 104);
    if (v14 == v15)
    {
      return v17(a2, *MEMORY[0x1E697A800], v16);
    }

    else
    {
      v17(a2, *MEMORY[0x1E697A808], v16);
      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t key path setter for ARView.__proto_antialiasingMode_v1 : ARView(uint64_t a1)
{
  v2 = type metadata accessor for _Proto_AntialiasingMode_v1();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ARView.__proto_antialiasingMode_v1.setter(v5);
}

uint64_t ARView.__proto_antialiasingMode_v1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AntialiasingMode();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E697A508])
  {
    v9 = *MEMORY[0x1E697A808];
    v10 = type metadata accessor for _Proto_AntialiasingMode_v1();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  else
  {
    v12 = v8;
    v13 = *MEMORY[0x1E697A500];
    v14 = type metadata accessor for _Proto_AntialiasingMode_v1();
    v15 = *(*(v14 - 8) + 104);
    if (v12 == v13)
    {
      return v15(a1, *MEMORY[0x1E697A800], v14);
    }

    else
    {
      v15(a1, *MEMORY[0x1E697A808], v14);
      return (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t ARView.__proto_antialiasingMode_v1.setter(uint64_t a1)
{
  v3 = type metadata accessor for AntialiasingMode();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _Proto_AntialiasingMode_v1();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 88))(a1, v7);
  if (v9 == *MEMORY[0x1E697A808])
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E697A508], v3);
    v10 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v10, v6, v3);
    return swift_endAccess();
  }

  v11 = *(v4 + 104);
  v12 = (v4 + 40);
  if (v9 == *MEMORY[0x1E697A800])
  {
    v11(v6, *MEMORY[0x1E697A500], v3);
    v13 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
    swift_beginAccess();
    (*v12)(v1 + v13, v6, v3);
    return swift_endAccess();
  }

  v11(v6, *MEMORY[0x1E697A508], v3);
  v15 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  (*v12)(v1 + v15, v6, v3);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

void (*ARView.__proto_antialiasingMode_v1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 96) = v1;
  v6 = type metadata accessor for AntialiasingMode();
  *(v5 + 104) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 112) = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 120) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 120) = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  *(v5 + 128) = v10;
  v12 = type metadata accessor for _Proto_AntialiasingMode_v1();
  *(v5 + 136) = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  *(v5 + 144) = v13;
  v15 = *(v13 + 64);
  if (v3)
  {
    *(v5 + 152) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 152) = malloc(*(v13 + 64));
    v16 = malloc(v15);
  }

  v17 = v16;
  v18 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  *(v5 + 160) = v16;
  *(v5 + 168) = v18;
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v18, v6);
  v19 = (*(v8 + 88))(v11, v6);
  v20 = *MEMORY[0x1E697A508];
  *(v5 + 176) = *MEMORY[0x1E697A508];
  if (v19 == v20)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E697A808], v12);
  }

  else
  {
    v21 = *(v14 + 104);
    if (v19 == *MEMORY[0x1E697A500])
    {
      v21(v17, *MEMORY[0x1E697A800], v12);
    }

    else
    {
      v21(v17, *MEMORY[0x1E697A808], v12);
      (*(v8 + 8))(v11, v6);
    }
  }

  return ARView.__proto_antialiasingMode_v1.modify;
}

void ARView.__proto_antialiasingMode_v1.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 160);
  if (a2)
  {
    v5 = *(v2 + 144);
    v4 = *(v2 + 152);
    v6 = *(v2 + 128);
    v7 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v5 + 16))(v4, v3, v7);
    ARView.__proto_antialiasingMode_v1.setter(v4);
    (*(v5 + 8))(v3, v7);
  }

  else
  {
    v9 = (*(*(v2 + 144) + 88))(*(*a1 + 160), *(v2 + 136));
    if (v9 == *MEMORY[0x1E697A808])
    {
      v10 = *(v2 + 168);
      v12 = *(v2 + 112);
      v11 = *(v2 + 120);
      v14 = *(v2 + 96);
      v13 = *(v2 + 104);
      (*(v12 + 104))(v11, *(v2 + 176), v13);
      swift_beginAccess();
      (*(v12 + 40))(v14 + v10, v11, v13);
      swift_endAccess();
    }

    else if (v9 == *MEMORY[0x1E697A800])
    {
      v15 = *(v2 + 168);
      v17 = *(v2 + 112);
      v16 = *(v2 + 120);
      v19 = *(v2 + 96);
      v18 = *(v2 + 104);
      (*(v17 + 104))(v16, *MEMORY[0x1E697A500], v18);
      swift_beginAccess();
      (*(v17 + 40))(v19 + v15, v16, v18);
      swift_endAccess();
    }

    else
    {
      v20 = *(v2 + 160);
      v21 = *(v2 + 168);
      v22 = *(v2 + 136);
      v23 = *(v2 + 144);
      v25 = *(v2 + 112);
      v24 = *(v2 + 120);
      v27 = *(v2 + 96);
      v26 = *(v2 + 104);
      (*(v25 + 104))(v24, *(v2 + 176), v26);
      swift_beginAccess();
      (*(v25 + 40))(v27 + v21, v24, v26);
      swift_endAccess();
      (*(v23 + 8))(v20, v22);
    }

    v4 = *(v2 + 152);
    v3 = *(v2 + 160);
    v8 = *(v2 + 120);
    v6 = *(v2 + 128);
  }

  free(v3);
  free(v4);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t key path getter for ARView.antialiasingMode : ARView@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  v5 = type metadata accessor for AntialiasingMode();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for ARView.antialiasingMode : ARView(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AntialiasingMode();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t ARView.antialiasingMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  v4 = type metadata accessor for AntialiasingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ARView.antialiasingMode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10RealityKit6ARView_antialiasingMode;
  swift_beginAccess();
  v4 = type metadata accessor for AntialiasingMode();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void ARView.checkProximity()()
{
  v1 = v0;
  v2 = type metadata accessor for __RKEntityProximityTrigger.ExitType();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*(v0 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v5 = dispatch thunk of Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    goto LABEL_40;
  }

  v7 = v6;
  if ((dispatch thunk of __RKEntityInteractionManager.proximityEnabled.getter() & 1) == 0)
  {
    goto LABEL_40;
  }

  if (!*(v0 + v4))
  {
LABEL_77:
    __break(1u);
    return;
  }

  active = dispatch thunk of Scene.internalActiveCamera.getter();

  v33 = active;
  if (active)
  {
    v9 = dispatch thunk of __RKEntityInteractionManager.__interactions.getter();
    v40 = MEMORY[0x1E69E7CC0];
    if (v9 >> 62)
    {
      goto LABEL_70;
    }

    *&v38 = v9 & 0xFFFFFFFFFFFFFF8;
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    v31 = v9;
    v32 = v7;
    v29[1] = v5;
    v30 = v1;
    if (v10)
    {
      v11 = 0;
      v36 = v31 + 32;
      v37 = v31 & 0xC000000000000001;
      v39 = MEMORY[0x1E69E7CC0];
      v34 = v10;
      while (1)
      {
        if (v37)
        {
          v9 = MEMORY[0x1E12F44E0](v11, v31);
          v5 = v9;
          v12 = __OFADD__(v11++, 1);
          if (v12)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v11 >= *(v38 + 16))
          {
            goto LABEL_69;
          }

          v5 = *(v36 + 8 * v11);

          v12 = __OFADD__(v11++, 1);
          if (v12)
          {
            goto LABEL_68;
          }
        }

        dispatch thunk of __RKEntityInteraction.trigger.getter();
        type metadata accessor for __RKEntityTriggerGroup();
        if (swift_dynamicCastClass())
        {
          v9 = dispatch thunk of __RKEntityTriggerGroup.triggers.getter();
          v13 = v9;
          if (v9 >> 62)
          {
            v9 = __CocoaSet.count.getter();
            v14 = v9;
            if (v9)
            {
LABEL_19:
              v15 = 0;
              v7 = v13 & 0xC000000000000001;
              do
              {
                if (v7)
                {
                  v9 = MEMORY[0x1E12F44E0](v15, v13);
                  v1 = v9;
                  v16 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_67;
                  }

                  v1 = *(v13 + 8 * v15 + 32);

                  v16 = v15 + 1;
                  if (__OFADD__(v15, 1))
                  {
LABEL_66:
                    __break(1u);
LABEL_67:
                    __break(1u);
LABEL_68:
                    __break(1u);
LABEL_69:
                    __break(1u);
LABEL_70:
                    v28 = v9;
                    *&v38 = v9 & 0xFFFFFFFFFFFFFF8;
                    v10 = __CocoaSet.count.getter();
                    v9 = v28;
                    goto LABEL_8;
                  }
                }

                type metadata accessor for __RKEntityProximityTrigger();
                if (swift_dynamicCastClass())
                {

                  v10 = v34;
                  goto LABEL_32;
                }

                ++v15;
              }

              while (v16 != v14);
            }
          }

          else
          {
            v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
              goto LABEL_19;
            }
          }

          v10 = v34;
        }

        else
        {

          dispatch thunk of __RKEntityInteraction.trigger.getter();
          type metadata accessor for __RKEntityProximityTrigger();
          if (swift_dynamicCastClass())
          {

            v1 = dispatch thunk of __RKEntityInteraction.trigger.getter();
LABEL_32:

            MEMORY[0x1E12F4070](v17);
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v9 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v39 = v40;
            goto LABEL_12;
          }
        }

LABEL_12:
        if (v11 == v10)
        {
          goto LABEL_44;
        }
      }
    }

    v39 = MEMORY[0x1E69E7CC0];
LABEL_44:

    v41 = MEMORY[0x1E69E7CC0];
    if (v39 >> 62)
    {
      v18 = __CocoaSet.count.getter();
      v19 = v30;
      if (v18)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v30;
      if (v18)
      {
LABEL_46:
        if (v18 >= 1)
        {
          v20 = 0;
          v21 = v39 & 0xC000000000000001;
          v37 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v21)
            {
              MEMORY[0x1E12F44E0](v20, v39);
            }

            else
            {
            }

            type metadata accessor for __RKEntityProximityTrigger();
            if (swift_dynamicCastClass() && dispatch thunk of __RKEntityProximityTrigger.__targetEntity.getter())
            {
              type metadata accessor for Entity();
              HasTransform.position(relativeTo:)();
              v38 = v22;
              HasTransform.position(relativeTo:)();
              dispatch thunk of __RKEntityProximityTrigger.__targetEntity.getter();
              dispatch thunk of __RKEntityProximityTrigger.type.getter();
              swift_allocObject();
              __RKEntityProximityTrigger.init(targetEntity:distance:type:)();
              if ((dispatch thunk of __RKEntityInteractionManager.__performInteractions(matching:on:)() & 1) != 0 && dispatch thunk of __RKEntityProximityTrigger.targetEntity.getter())
              {

                MEMORY[0x1E12F4070](v23);
                if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v37 = v41;
                goto LABEL_50;
              }
            }

LABEL_50:
            if (v18 == ++v20)
            {

              v19 = v30;
              v24 = v37;
              if (!(v37 >> 62))
              {
                goto LABEL_62;
              }

LABEL_73:
              if (!__CocoaSet.count.getter())
              {
                goto LABEL_65;
              }

LABEL_63:
              v25 = v19 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
              swift_beginAccess();
              if (swift_unknownObjectWeakLoadStrong())
              {
                v26 = *(v25 + 8);
                ObjectType = swift_getObjectType();
                (*(v26 + 24))(v19, v24, ObjectType, v26);
                swift_unknownObjectRelease();
              }

              goto LABEL_65;
            }
          }
        }

        __break(1u);
        goto LABEL_76;
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_73;
    }

LABEL_62:
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

LABEL_65:

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_40:

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ARView.handleTapAtPoint(point:)(CGPoint point)
{
  v2 = v1;
  v3 = type metadata accessor for CollisionCastHit();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = v34 - v6;
  v7 = type metadata accessor for CollisionGroup();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Type = type metadata accessor for CollisionCastQueryType();
  v41 = *(Type - 8);
  v42 = Type;
  MEMORY[0x1EEE9AC00](Type);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Scene.AnchorCollection();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  v20 = OBJC_IVAR____TtC10RealityKit6ARView__scene;
  if (!*(v1 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  dispatch thunk of Scene.anchors.getter();

  lazy protocol witness table accessor for type Scene.AnchorCollection and conformance Scene.AnchorCollection();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v21 = dispatch thunk of Collection.distance(from:to:)();
  (*(v14 + 8))(v16, v13);
  if (v21 < 1)
  {
    goto LABEL_14;
  }

  if (!*(v2 + v20))
  {
    goto LABEL_26;
  }

  Scene.coreScene.getter();

  if (!RESceneFindFirstCameraComponent())
  {
    goto LABEL_14;
  }

  if (!*(v2 + v20))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  dispatch thunk of Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (swift_dynamicCastClass())
  {
    if (dispatch thunk of __RKEntityInteractionManager.areInteractionsEnabled.getter())
    {
      v22 = dispatch thunk of __RKEntityInteractionManager.__interactions.getter();
      v23 = specialized ARView.hasTapInteractions(_:)(v22);

      if (v23)
      {
        (*(v41 + 104))(v12, *MEMORY[0x1E697A2D8], v42);
        static CollisionGroup.all.getter();
        ARView.ray(through:)(v43);
        if (v44)
        {
          v24 = MEMORY[0x1E69E7CC0];
LABEL_20:
          (*(v39 + 8))(v9, v40);
          (*(v41 + 8))(v12, v42);
          if (*(v24 + 16))
          {
            v28 = v37;
            v27 = v38;
            v29 = v35;
            (*(v37 + 16))(v35, v24 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v38);

            v30 = v36;
            (*(v28 + 32))(v36, v29, v27);
            v31 = CollisionCastHit.entity.getter();
            ARView.handleTapForEntity(_:shouldNotifyDelegateAlways:)(v31, 1);
            swift_unknownObjectRelease();

            (*(v28 + 8))(v30, v27);
            return;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = *(v17 + 8);
            v33 = swift_getObjectType();
            (*(v32 + 16))(v2, 0, 0, v33, v32);
            swift_unknownObjectRelease();
          }

          goto LABEL_16;
        }

        if (*(v2 + v20))
        {
          v34[1] = v43[0];
          v34[0] = v43[1];

          v24 = Scene.raycast(origin:direction:length:query:mask:relativeTo:)();

          goto LABEL_20;
        }

LABEL_28:
        __break(1u);
        return;
      }
    }
  }

  swift_unknownObjectRelease();
LABEL_14:
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v25 = *(v17 + 8);
  v26 = swift_getObjectType();
  (*(v25 + 16))(v2, 0, 0, v26, v25);
LABEL_16:
  swift_unknownObjectRelease();
}

void ARView.handleTapForEntity(_:shouldNotifyDelegateAlways:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  if (!*(v2 + OBJC_IVAR____TtC10RealityKit6ARView__scene))
  {
    __break(1u);
    return;
  }

  dispatch thunk of Scene.__interactionService.getter();

  type metadata accessor for __RKEntityInteractionManager();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_14;
  }

  HIDWORD(v17) = a2;

  if (a1)
  {
    while (1)
    {

      Entity.__interactionIdentifier.getter();
      v10 = type metadata accessor for UUID();
      v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
      outlined destroy of ARConfigurationCreateResult?(v8, &_s10Foundation4UUIDVSgMd);
      if (v11 != 1)
      {
        type metadata accessor for __RKEntityTapTrigger();
        swift_allocObject();

        __RKEntityTapTrigger.init(targetEntity:reversible:)();
        v12 = dispatch thunk of __RKEntityInteractionManager.__performInteractions(matching:on:)();

        if (v12)
        {
          break;
        }
      }

      type metadata accessor for Entity();
      v9 = HasHierarchy.parent.getter();

      a1 = v9;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v13 = 1;
    goto LABEL_11;
  }

LABEL_9:
  if ((v17 & 0x100000000) == 0)
  {
LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  a1 = 0;
  v13 = 0;
LABEL_11:
  v14 = v3 + OBJC_IVAR____TtC10RealityKit6ARView___delegatePrivate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(v3, v13, a1, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

uint64_t key path setter for ARView.__statisticsOptions : ARView(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return ARView.__statisticsOptions.didset(&v7);
}

uint64_t ARView.__statisticsOptions.didset(int *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit6ARView___statisticsOptions;
  result = swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    type metadata accessor for __ServiceLocator();
    static __ServiceLocator.shared.getter();
    dispatch thunk of __ServiceLocator.coreServiceLocator.getter();

    result = REServiceLocatorGetFrameStatisticsHUD();
    if (result)
    {
      return REFrameStatisticsHUDSetStatisticsOptions();
    }
  }

  return result;
}