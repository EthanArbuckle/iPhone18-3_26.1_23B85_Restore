Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v9 = result;
  v10 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v11 = v10 - 1;
  v12 = a3 + 56;
  v13 = MEMORY[0x1E69E7CD0];
  while (2)
  {
    v32 = v11;
    do
    {
      while (1)
      {
        do
        {
          v15 = a5[3];
          v16 = a5[4];
          if (!v16)
          {
            v18 = (a5[2] + 64) >> 6;
            v19 = a5[3];
            while (1)
            {
              v17 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
                goto LABEL_25;
              }

              if (v17 >= v18)
              {
                break;
              }

              v16 = *(a5[1] + 8 * v17);
              ++v19;
              if (v16)
              {
                goto LABEL_10;
              }
            }

            if (v18 <= v15 + 1)
            {
              v28 = v15 + 1;
            }

            else
            {
              v28 = (a5[2] + 64) >> 6;
            }

            a5[3] = v28 - 1;
            a5[4] = 0;

            return specialized _NativeSet.extractSubset(using:count:)(v9, a2, v32, a3, a6, a7);
          }

          v17 = a5[3];
LABEL_10:
          v20 = *(*(*a5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
          a5[3] = v17;
          a5[4] = (v16 - 1) & v16;
          v21 = *(a3 + 40);
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](v20);
          result = Hasher._finalize()();
          v22 = -1 << *(a3 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          v25 = 1 << v23;
        }

        while (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0);
        v26 = *(a3 + 48);
        if (*(v26 + 8 * v23) == v20)
        {
          break;
        }

        v27 = ~v22;
        while (1)
        {
          v23 = (v23 + 1) & v27;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if (((1 << v23) & *(v12 + 8 * (v23 >> 6))) == 0)
          {
            break;
          }

          if (*(v26 + 8 * v23) == v20)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v14 = v9[v24];
      v9[v24] = v14 & ~v25;
    }

    while ((v14 & v25) == 0);
    v11 = v32 - 1;
    if (!__OFSUB__(v32, 1))
    {
      if (v32 != 1)
      {
        continue;
      }

      return v13;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v25 = result + 56;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = *(a4 + 48) + 80 * (v12 | (v11 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 12);
    v28 = *(v15 + 32);
    v29 = *(v15 + 16);
    v26 = *(v15 + 64);
    v27 = *(v15 + 48);
    v19 = *(v6 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v16);
    if (v17 == 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v17;
    }

    Hasher._combine(_:)(LODWORD(v20));
    if (v18 == 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v18;
    }

    Hasher._combine(_:)(LODWORD(v21));
    specialized SIMD.hash(into:)(v30, v29);
    specialized SIMD.hash(into:)(v30, v28);
    specialized SIMD.hash(into:)(v30, v27);
    specialized SIMD.hash(into:)(v30, v26);
    Hasher._finalize()();
    v22 = -1 << *(v6 + 32);
    result = _HashTable.nextHole(atOrAfter:)();
    *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v23 = *(v6 + 48) + 80 * result;
    *v23 = v16;
    *(v23 + 8) = v17;
    *(v23 + 12) = v18;
    *(v23 + 16) = v29;
    *(v23 + 32) = v28;
    *(v23 + 48) = v27;
    *(v23 + 64) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_27;
    }

    if (!v5)
    {
LABEL_24:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_24;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = MEMORY[0x1C68F4BF0](*(v9 + 40), v16);
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    v19 = *(v11 + 40);
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](v18);
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy17RealityFoundation17CollisionPlane_v1VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_17i12Foundation17kl1_M5V_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v24 = result;
  v30 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 48) + 80 * v16;
    v18 = *(v17 + 16);
    v19 = *(v17 + 32);
    v20 = *(v17 + 48);
    v21 = *(v17 + 64);
    v25[0] = *v17;
    v25[1] = *(v17 + 8);
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v29 = v21;
    result = a4(v25);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:

        return specialized _NativeSet.extractSubset(using:count:)(v24, a2, v30, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static CollisionPlane_v1.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->i64[0] == a2->i64[0] && a1->f32[2] == a2->f32[2] && a1->f32[3] == a2->f32[3])
  {
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[3], a2[3]), vceqq_f32(a1[4], a2[4])), vandq_s8(vceqq_f32(a1[2], a2[2]), vceqq_f32(a1[1], a2[1])))) >> 31;
  }

  else
  {
    return 0;
  }
}

BOOL specialized static ParticleEmitterComponent.ParticleEmitter.BillboardMode.== infix(_:_:)(float32x2_t *a1, float32x4_t *a2)
{
  v2 = a1[2].f32[0];
  v4 = *a2->f32;
  v3 = a2->i64[1];
  v5 = a2[1].f32[0];
  v6 = a2[1].i8[4];
  if (a1[2].i8[4] != 1)
  {
    if ((a2[1].i8[4] & 1) == 0)
    {
      v10 = a2->i64[0];
      v11 = vceq_f32(*a1, v4);
      if (v11.i32[0] & v11.i32[1])
      {
        return vmovn_s32(vceqq_f32(*a1, *a2)).i8[4] & (v2 == v5);
      }
    }

    return 0;
  }

  if (*a1->f32 != 0 || LODWORD(v2) != 0)
  {
    if (a2[1].i8[4])
    {
      if (v3 | *&v4)
      {
        v8 = 0;
      }

      else
      {
        v8 = LODWORD(v5) == 0;
      }

      return !v8;
    }

    return 0;
  }

  if (!a2[1].i8[4])
  {
    return 0;
  }

  return !(v3 | *&v4) && LODWORD(v5) == 0;
}

BOOL specialized static ParticleEmitterComponent.ParticleEmitter.ImageSequence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

uint64_t specialized static ParticleEmitterComponent.BirthLocation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  LODWORD(result) = *a1 == *a2 && v3 == v7 && v4 == v8;
  if (*(a2 + 32))
  {
    LODWORD(result) = 0;
  }

  v13 = v4 | v3 | v2 | v5;
  v14 = v8 | v7 | *a2 | *(a2 + 24);
  v15 = v14 == 0;
  if (!*(a2 + 32))
  {
    v15 = 0;
  }

  v16 = v14 != 0;
  if ((*(a2 + 32) & 1) == 0)
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v6 == 1)
  {
    return v17;
  }

  else
  {
    return result;
  }
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.CodingKeys and conformance ParticleEmitterComponent.BirthLocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VerticesCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VerticesCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.VolumeCodingKeys and conformance ParticleEmitterComponent.BirthLocation.VolumeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys and conformance ParticleEmitterComponent.BirthLocation.SurfaceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.CodingKeys and conformance ParticleEmitterComponent.BirthDirection.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.NormalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.NormalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.LocalCodingKeys and conformance ParticleEmitterComponent.BirthDirection.LocalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection.WorldCodingKeys and conformance ParticleEmitterComponent.BirthDirection.WorldCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.CodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnCollideCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnDeathCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys and conformance ParticleEmitterComponent.SpawnOccasion.OnBirthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.CodingKeys and conformance ParticleEmitterComponent.SimulationSpace.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.GlobalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace.LocalCodingKeys and conformance ParticleEmitterComponent.SimulationSpace.LocalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.CodingKeys and conformance ParticleEmitterComponent.SimulationState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.StopCodingKeys and conformance ParticleEmitterComponent.SimulationState.StopCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PauseCodingKeys and conformance ParticleEmitterComponent.SimulationState.PauseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState.PlayCodingKeys and conformance ParticleEmitterComponent.SimulationState.PlayCodingKeys);
  }

  return result;
}

double _s17RealityFoundation24ParticleEmitterComponentV0cD0VSgWOi0_(uint64_t a1)
{
  *(a1 + 320) = 0;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
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
  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.FreeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardYAlignedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode.BillboardCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.ConstantCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeOutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.EaseFadeInCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.QuickFadeInOutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.GradualFadeInOutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeInCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve.LinearFadeOutCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.UnsortedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingAgeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingAgeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingIDCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.DecreasingDepthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder.IncreasingDepthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AdditiveCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.OpaqueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode.AlphaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.AutoReverseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.LoopingCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.PlayOnceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.CodingKeys and conformance ParticleEmitterComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.EmitterShape and conformance ParticleEmitterComponent.EmitterShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthLocation and conformance ParticleEmitterComponent.BirthLocation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.BirthDirection and conformance ParticleEmitterComponent.BirthDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SpawnOccasion and conformance ParticleEmitterComponent.SpawnOccasion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationState and conformance ParticleEmitterComponent.SimulationState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.SimulationSpace and conformance ParticleEmitterComponent.SimulationSpace);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CollisionPlane_v1] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation17CollisionPlane_v1VGMd, &_sSay17RealityFoundation17CollisionPlane_v1VGMR);
    lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation17CollisionPlane_v1VGMd, &_sSay17RealityFoundation17CollisionPlane_v1VGMR);
    lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CollisionPlane_v1] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<CollisionPlane_v1> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy17RealityFoundation17CollisionPlane_v1VGMd, &_sShy17RealityFoundation17CollisionPlane_v1VGMR);
    lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy17RealityFoundation17CollisionPlane_v1VGMd, &_sShy17RealityFoundation17CollisionPlane_v1VGMR);
    lazy protocol witness table accessor for type CollisionPlane_v1 and conformance CollisionPlane_v1();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<CollisionPlane_v1> and conformance <> Set<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter and conformance ParticleEmitterComponent.ParticleEmitter);
  }

  return result;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys and conformance ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BillboardMode and conformance ParticleEmitterComponent.ParticleEmitter.BillboardMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.OpacityCurve and conformance ParticleEmitterComponent.ParticleEmitter.OpacityCurve);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.SortOrder and conformance ParticleEmitterComponent.ParticleEmitter.SortOrder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.BlendMode and conformance ParticleEmitterComponent.ParticleEmitter.BlendMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMR);
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMd, &_s17RealityFoundation24ParticleEmitterComponentV0cD0V13ImageSequenceVSgMR);
    lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence()
{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence;
  if (!lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticleEmitterComponent.ParticleEmitter.ImageSequence and conformance ParticleEmitterComponent.ParticleEmitter.ImageSequence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1.CodingKeys and conformance CollisionPlaneExtent_v1.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1()
{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1;
  if (!lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionPlaneExtent_v1 and conformance CollisionPlaneExtent_v1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation24ParticleEmitterComponentV0cD0VSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 898))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 224);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 888) = 0;
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 896) = 0;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 898) = 1;
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
      *(result + 224) = (a2 - 1);
      return result;
    }

    *(result + 898) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 321))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.BillboardMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.BillboardMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 13) = 0;
    *result = a2 - 1;
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

  *(result + 21) = v3;
  return result;
}

uint64_t getEnumTag for ParticleEmitterComponent.ParticleEmitter.BillboardMode(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ParticleEmitterComponent.ParticleEmitter.BillboardMode(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 20) = 1;
  }

  else
  {
    *(result + 20) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ImageSequence(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.ImageSequence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollisionPlane_v1(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollisionPlane_v1(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD5)
  {
    goto LABEL_17;
  }

  if (a2 + 43 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 43) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 43;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 43;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 43;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C;
  v8 = v6 - 44;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 43 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 43) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD5)
  {
    v4 = 0;
  }

  if (a2 > 0xD4)
  {
    v5 = ((a2 - 213) >> 8) + 1;
    *result = a2 + 43;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 43;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized ParticleEmitterComponent.EmitterShape.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E616C70 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7892834 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657265687073 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701736291 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E696C7963 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7375726F74 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.EmitterCodingKeys.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2C)
  {
    return 44;
  }

  else
  {
    return v0;
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.OpacityCurve.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61467261656E696CLL && a2 == 0xED000074754F6564;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61467261656E696CLL && a2 == 0xEC0000006E496564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18EC290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461466B63697571 && a2 == 0xEE0074754F6E4965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564614665736165 && a2 == 0xEA00000000006E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6564614665736165 && a2 == 0xEB0000000074754FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.BillboardMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616F626C6C6962 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C18EC270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701147238 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.ImageSequence.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x466C616974696E69 && a2 == 0xEC000000656D6172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18EC2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746152656D617266 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18EC2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xED000065646F4D6ELL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.ImageSequence.AnimationRepeatMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E4F79616C70 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69706F6F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657665526F747561 && a2 == 0xEB00000000657372)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.BlendMode.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65757161706FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576697469646461 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.ParticleEmitter.SortOrder.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6973616572636E69 && a2 == 0xEF6874706544676ELL;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973616572636564 && a2 == 0xEF6874706544676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973616572636E69 && a2 == 0xEC0000004449676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973616572636564 && a2 == 0xEC0000004449676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6973616572636E69 && a2 == 0xED0000656741676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6973616572636564 && a2 == 0xED0000656741676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x646574726F736E75 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C18EC2F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C18EC310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61727544656C6469 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18EC330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754470756D726177 && a2 == 0xEE006E6F69746172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4C646C756F6873 && a2 == 0xEA0000000000706FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5372657474696D65 && a2 == 0xEC00000065706168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636F4C6874726962 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7269446874726962 && a2 == 0xEE006E6F69746365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18EC350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7261566465657073 && a2 == 0xEE006E6F69746169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C18EC370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D416C6169646172 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C18EC390 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x63634F6E77617073 && a2 == 0xED00006E6F697361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18EC3B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C18EC3D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001C18EC3F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C18EC410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6974616C756D6973 && a2 == 0xEF65746174536E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6974616C756D6973 && a2 == 0xEF65636170536E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C18EC430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18EC450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4374726174736572 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18EC470 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x697474696D457369 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C18EC490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x756F437473727562 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18EC4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6974616C756D6973 && a2 == 0xEE00657461526E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18EC4D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C18EC4F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x74696D456E69616DLL && a2 == 0xEB00000000726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x4564656E77617073 && a2 == 0xEE0072657474696DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C18EC510 == a2)
  {

    return 35;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.BirthLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636166727573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636974726576 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.SpawnOccasion.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x68747269426E6FLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616470556E6FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746165446E6FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64696C6C6F436E6FLL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.BirthDirection.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C726F77 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized ParticleEmitterComponent.SimulationState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2036427888 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t LowLevelInstanceData.cpuUpdateFlagOffset.getter()
{
  if (*(v0 + 32) != 1)
  {
    return *(v0 + 24);
  }

  v1 = *(*(v0 + 16) + 24);
  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = result;
    *(v0 + 32) = 0;
  }

  return result;
}

uint64_t LowLevelInstanceData.instanceCapacity.getter()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (!v2)
  {
    return v3 / 64;
  }

  __break(1u);
  return result;
}

uint64_t (*LowLevelInstanceData.instanceCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *(*(v1 + 16) + 16);
  *a1 = DRBufferGetBytesUsed() / 64;
  return LowLevelInstanceData.instanceCount.modify;
}

uint64_t LowLevelInstanceData.__allocating_init(instanceCount:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LowLevelInstanceData.init(instanceCount:instanceCapacity:)(a1, a1);
  return v2;
}

unint64_t LowLevelInstanceData.VertexLimitExceededError.errorDescription.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = 0;
    _StringGuts.grow(_:)(51);
    MEMORY[0x1C68F3410](0xD00000000000001CLL, 0x80000001C18EC670);
  }

  else
  {
    _StringGuts.grow(_:)(48);

    v5 = 0xD000000000000019;
  }

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0xD000000000000013, 0x80000001C18EC690);
  REMeshPartInstancesComponentGetVertexLimit();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v3);

  return v5;
}

uint64_t LowLevelInstanceData.__allocating_init(instanceCount:instanceCapacity:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LowLevelInstanceData.init(instanceCount:instanceCapacity:)(a1, a2);
  return v4;
}

void LowLevelInstanceData.init(instanceCount:instanceCapacity:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v4[3] = 0;
  *(v4 + 32) = 1;
  VertexLimit = REMeshPartInstancesComponentGetVertexLimit();
  v9 = a1;
  if (VertexLimit < a1)
  {
    goto LABEL_4;
  }

  if (REMeshPartInstancesComponentGetVertexLimit() < a2)
  {
    v9 = a2;
LABEL_4:
    lazy protocol witness table accessor for type LowLevelInstanceData.VertexLimitExceededError and conformance LowLevelInstanceData.VertexLimitExceededError();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = VertexLimit >= a1;
    swift_willThrow();
LABEL_5:
    swift_deallocPartialClassInstance();
    return;
  }

  if ((a2 - 0x200000000000000) >> 58 == 63)
  {
    v13[0] = (a2 << 6) | 0x10;
    v13[1] = 64;
    type metadata accessor for LowLevelBuffer();
    swift_allocObject();
    LowLevelBuffer.init(descriptor:)(v13);
    if (v3)
    {
      goto LABEL_5;
    }

    v4[2] = v11;
    if ((a1 - 0x200000000000000) >> 58 == 63)
    {
      v12 = *(v11 + 16);
      DRBufferSetBytesUsed();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type LowLevelInstanceData.VertexLimitExceededError and conformance LowLevelInstanceData.VertexLimitExceededError()
{
  result = lazy protocol witness table cache variable for type LowLevelInstanceData.VertexLimitExceededError and conformance LowLevelInstanceData.VertexLimitExceededError;
  if (!lazy protocol witness table cache variable for type LowLevelInstanceData.VertexLimitExceededError and conformance LowLevelInstanceData.VertexLimitExceededError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowLevelInstanceData.VertexLimitExceededError and conformance LowLevelInstanceData.VertexLimitExceededError);
  }

  return result;
}

id LowLevelInstanceData.read(using:)()
{
  v1 = *(*(v0 + 16) + 16);
  Using = DRBufferReadUsing();

  return Using;
}

id LowLevelInstanceData.replace(using:)()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in LowLevelInstanceData.replace(using:);
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = _s17RealityFoundation14LowLevelBufferC22withUnsafeMutableBytesyyySwXEFySv_SutXEfU_TA_0;
  *(v3 + 24) = v2;
  v10[4] = _sSvSuIgyy_SvSuIegyy_TRTA_0;
  v10[5] = v3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v10[3] = &block_descriptor_39;
  v4 = _Block_copy(v10);

  v5 = v1;

  DRBufferUpdate();

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*(v0 + 16) + 16);
    v9 = DRBufferReplaceUsing();

    return v9;
  }

  return result;
}

uint64_t partial apply for closure #1 in LowLevelInstanceData.replace(using:)(uint64_t a1)
{
  result = LowLevelInstanceData.cpuUpdateFlagOffset.getter();
  *(a1 + result) = 0;
  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LowLevelInstanceData.withTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[3] = a1;
  v10[4] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in LowLevelInstanceData.withTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = _s17RealityFoundation14LowLevelBufferC15withUnsafeBytesyyySWXEFySV_SutXEfU_TA_0;
  *(v6 + 24) = v5;
  aBlock[4] = _sSVSuIgyy_SVSuIegyy_TRTA_0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_12_1;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferRead();

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in LowLevelInstanceData.withTransforms(_:)(uint64_t result)
{
  v2 = *(*(v1[2] + 16) + 24);
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v1[3];
    v4 = v1[4];
    return v3(result, (v2 - 1) / 64);
  }

  return result;
}

uint64_t LowLevelInstanceData.withMutableTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[3] = a1;
  v10[4] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in LowLevelInstanceData.withMutableTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in LowLevelBuffer.withUnsafeMutableBytes(_:)partial apply;
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_23_1;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferUpdate();

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelInstanceData.replaceMutableTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[3] = a1;
  v10[4] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in LowLevelInstanceData.replaceMutableTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = _s17RealityFoundation14LowLevelBufferC22withUnsafeMutableBytesyyySwXEFySv_SutXEfU_TA_0;
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_33;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferReplace();

  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in LowLevelInstanceData.withMutableTransforms(_:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  result = LowLevelInstanceData.cpuUpdateFlagOffset.getter();
  *(a1 + result) = 1;
  v7 = *(*(v3 + 16) + 24);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (!v8)
  {
    return v4(a1, v9 / 64);
  }

  __break(1u);
  return result;
}

uint64_t LowLevelInstanceData.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LowLevelInstanceData.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t protocol witness for LocalizedError.errorDescription.getter in conformance MeshInstancesComponentError()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000036;
  }

  *v0;
  return result;
}

uint64_t MeshInstancesComponent.Part.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 MeshInstancesComponent.Part.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 MeshInstancesComponent.Part.bounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 MeshInstancesComponent.Part.init(data:bounds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v4;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

uint64_t MeshInstancesComponent.init(mesh:modelID:instances:bounds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  if (!*(a1 + 16))
  {

LABEL_5:
    lazy protocol witness table accessor for type MeshInstancesComponentError and conformance MeshInstancesComponentError();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
  }

  v12 = *(a1 + 16);
  ModelCount = REMeshAssetGetModelCount();
  closure #1 in MeshInstancesComponent.init(mesh:modelID:instances:bounds:)(a2, a3, ModelCount);
  if (v6)
  {
  }

  ModelPartCount = REMeshAssetGetModelPartCount();
  result = REMeshAssetGetModelFlattenedPartIndexStart();
  if (result == -1)
  {
    goto LABEL_5;
  }

  v17 = result;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  if (__OFADD__(result, ModelPartCount))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = _sSa9repeating5countSayxGx_SitcfC17RealityFoundation22MeshInstancesComponentV4PartVSg_Tt1B5Tf4gn_n(v26, result + ModelPartCount);
  if (ModelPartCount < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = result;
  if (ModelPartCount)
  {
    v28 = a6;
    v24 = a5[1];
    v25 = *a5;
    v19 = a5[2] & 1;
    v20 = v17 << 6;
    v21 = v17;
    while (1)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (v17 < 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        v18 = result;
        if (v17 < 0)
        {
LABEL_17:
          __break(1u);
LABEL_18:

          a6 = v28;
          goto LABEL_20;
        }
      }

      if (v21 >= v18[2])
      {
        break;
      }

      v22 = v18 + v20;
      v23 = *(v18 + v20 + 32);
      *(v22 + 4) = a4;
      *(v22 + 5) = 0;
      *(v22 + 3) = v25;
      *(v22 + 4) = v24;
      v22[80] = v19;

      ++v21;
      v20 += 64;
      if (!--ModelPartCount)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_20:

  *a6 = v18;
  return result;
}

unint64_t lazy protocol witness table accessor for type MeshInstancesComponentError and conformance MeshInstancesComponentError()
{
  result = lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError;
  if (!lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError;
  if (!lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MeshInstancesComponentError and conformance MeshInstancesComponentError);
  }

  return result;
}

uint64_t closure #1 in MeshInstancesComponent.init(mesh:modelID:instances:bounds:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        if (a3 == v6)
        {
          v8 = 1;
          goto LABEL_14;
        }

        v8 = v6;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        REMeshAssetGetModelName();
        if (String.init(cString:)() == v5 && v9 == a2)
        {

          return v8;
        }

        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v6 = v8 + 1;
        if (v7)
        {
          return v8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (a3 == 1)
    {
      return 0;
    }

    v8 = 0;
LABEL_14:
    lazy protocol witness table accessor for type MeshInstancesComponentError and conformance MeshInstancesComponentError();
    swift_allocError();
    *v10 = v8;
    swift_willThrow();
    return v8;
  }

  return result;
}

uint64_t MeshInstancesComponent.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v2 + (result << 6);
    v4 = *(v3 + 80);
    v5 = *(v3 + 48);
    *a2 = *(v3 + 32);
    *(a2 + 16) = v5;
    *(a2 + 32) = *(v3 + 64);
    *(a2 + 48) = v4;
  }

  return result;
}

uint64_t key path getter for MeshInstancesComponent.subscript(partIndex:) : MeshInstancesComponent@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (*a2 >= *(*result + 16))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = *result + (v4 << 6);
    v11 = *(v5 + 32);
    v12 = *(v5 + 48);
    v6 = *(v5 + 64);
    v7 = *(v5 + 72);
    v8 = *(v5 + 80);

    v9 = v11;
    v10 = v12;
LABEL_5:
    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 32) = v6;
    *(a3 + 40) = v7;
    *(a3 + 48) = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t key path setter for MeshInstancesComponent.subscript(partIndex:) : MeshInstancesComponent(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = *(a1 + 32);
  v8 = v4;

  return MeshInstancesComponent.subscript.setter(v7, v3);
}

uint64_t MeshInstancesComponent.subscript.setter(__int128 *a1, unint64_t a2)
{
  v20 = a1[1];
  v21 = *a1;
  v19 = a1[2];
  v4 = *(a1 + 48);
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6 > a2)
  {
    goto LABEL_8;
  }

  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    *v2 = v5;
    v9 = v5[2];
    v10 = (v9 << 6) | 0x20;
    v11 = 0uLL;
    do
    {
      v12 = v5[3];
      v6 = v9 + 1;
      if (v9 >= v12 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1, v5);
        v11 = 0uLL;
        v5 = v14;
      }

      v5[2] = v6;
      v13 = v5 + v10;
      v13[48] = 0;
      *(v13 + 1) = v11;
      *(v13 + 2) = v11;
      v10 += 64;
      v9 = v6;
      *v13 = v11;
    }

    while (v6 - 1 < a2);
    *v2 = v5;
LABEL_8:
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v5;
    if (v15)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
      *v2 = v5;
      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    if (v5[2] > a2)
    {
      break;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v5);
  }

  v16 = &v5[8 * a2];
  v17 = v16[4];
  *(v16 + 2) = v21;
  *(v16 + 3) = v20;
  *(v16 + 4) = v19;
  *(v16 + 80) = v4;

  *v2 = v5;
  return result;
}

void (*MeshInstancesComponent.subscript.modify(void (**a1)(uint64_t **a1, char a2), uint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x48uLL);
  }

  *a1 = result;
  *(result + 7) = a2;
  *(result + 8) = v2;
  if (*(*v2 + 16) <= a2)
  {
    *(result + 48) = 0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    return MeshInstancesComponent.subscript.modify;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *v2 + (a2 << 6);
    v7 = *(v6 + 80);
    v8 = *(v6 + 48);
    v9 = *(v6 + 64);
    *result = *(v6 + 32);
    *(result + 1) = v8;
    *(result + 2) = v9;
    *(result + 48) = v7;

    return MeshInstancesComponent.subscript.modify;
  }

  __break(1u);
  return result;
}

void MeshInstancesComponent.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = *(*a1 + 48);
  v10 = (*a1)[7];
  v9 = (*a1)[8];
  *&v12 = **a1;
  *(&v12 + 1) = v3;
  v13 = v5;
  v14 = v4;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  if (a2)
  {

    MeshInstancesComponent.subscript.setter(&v12, v10);
    v11 = *v2;
  }

  else
  {
    MeshInstancesComponent.subscript.setter(&v12, v10);
  }

  free(v2);
}

void static MeshInstancesComponent.__fromCore(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  REComponentGetEntity();
  REInstanceGroupBoundsComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  BufferArraySize = REMeshPartInstancesComponentGetBufferArraySize();
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, BufferArraySize & ~(BufferArraySize >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (BufferArraySize < 0)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v28 = a2;
  if (!BufferArraySize)
  {
LABEL_19:
    *v28 = v7;
    return;
  }

  v8 = 0;
  v29 = ComponentByClass;
  while (1)
  {
    v12 = REMeshPartInstancesComponentGetBufferAtIndex();
    if (!v12)
    {
      v26 = v7[2];
      v25 = v7[3];
      if (v26 >= v25 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v7);
      }

      v7[2] = v26 + 1;
      v27 = &v7[8 * v26];
      *(v27 + 2) = 0u;
      *(v27 + 3) = 0u;
      *(v27 + 4) = 0u;
      *(v27 + 80) = 0;
      goto LABEL_8;
    }

    v13 = v12;
    type metadata accessor for LowLevelBuffer();
    v14 = swift_allocObject();
    v14[2] = v13;
    v15 = v13;
    v16 = DRBufferCopyDescriptor();
    Capacity = DRBufferDescriptorGetCapacity();

    if (Capacity < 0)
    {
      break;
    }

    v18 = DRBufferCopyDescriptor();
    SizeMultiple = DRBufferDescriptorGetSizeMultiple();

    if (SizeMultiple < 0)
    {
      goto LABEL_21;
    }

    v14[3] = Capacity;
    v14[4] = SizeMultiple;
    type metadata accessor for LowLevelInstanceData();
    v20 = swift_allocObject();
    v21 = 1;
    *(v20 + 32) = 1;
    *(v20 + 16) = v14;
    *(v20 + 24) = 0;
    if (ComponentByClass)
    {
      REInstanceGroupBoundsComponentGetAABBOverrideAtIndex();
      v23 = v22;
      HIDWORD(v23) = v32;
      HIDWORD(v24) = v31;
      v30 = v23;
      v34 = v24;
      if (REAABBIsEmpty())
      {
        v32 = HIDWORD(v30);
        v33 = 0u;
        v31 = HIDWORD(v34);
        v34 = 0u;
      }

      else
      {
        v21 = 0;
        v31 = HIDWORD(v34);
        v32 = HIDWORD(v30);
        v33 = v30;
      }
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v10 = v7[2];
    v9 = v7[3];

    if (v10 >= v9 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[8 * v10];
    v11[4] = v20;
    v11[5] = 0;
    *(v11 + 3) = v33;
    *(v11 + 4) = v34;
    *(v11 + 80) = v21;
    ComponentByClass = v29;
LABEL_8:
    if (BufferArraySize == ++v8)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t MeshInstancesComponent.__toCore(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *v1;
  REMeshPartInstancesComponentClear();
  v10 = *(v9 + 16);
  REMeshPartInstancesComponentResizeBufferArray();
  REComponentGetEntity();
  REInstanceGroupBoundsComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REInstanceGroupBoundsComponentClear();
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 48);
    do
    {
      v13 = *(v12 - 2);
      if (v13)
      {
        v14 = *(*(v13 + 16) + 16);
        REMeshPartInstancesComponentSetBufferAtIndex();
        if (*(v12 - 2))
        {
          if ((v12[4] & 1) == 0)
          {
            v15 = *v12;
            v16 = v12[1];
            v17 = v12[2];
            v18 = v12[3];
            REInstanceGroupBoundsComponentSetAABBOverrideAtIndex();
          }
        }
      }

      ++v11;
      v12 += 8;
    }

    while (v10 != v11);
  }

  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass() && (specialized static MeshInstancesComponent.isAboveLimits(meshComponent:meshInstancesComponent:)() & 1) != 0)
  {
    Logger.init()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = REMeshPartInstancesComponentGetVertexLimit();
      _os_log_impl(&dword_1C1358000, v19, v20, "Error: MeshInstancesComponent attempted to render beyond the per component vertex/index limit of %u. Reduce instance count of MeshInstancesComponent, or vertex/index count of the mesh part being instanced.", v21, 8u);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  RENetworkMarkComponentDirty();
  return RENetworkMarkComponentDirty();
}

uint64_t MeshResource.meshPartIndex(modelID:partID:)()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  String.utf8CString.getter();
  String.utf8CString.getter();
  FlattenedPartIndex = REMeshAssetGetFlattenedPartIndex();

  if (FlattenedPartIndex == -1)
  {
    return 0;
  }

  else
  {
    return FlattenedPartIndex;
  }
}

uint64_t LowLevelInstanceData.instanceCount.setter(uint64_t result)
{
  if ((result - 0x200000000000000) >> 58 == 63)
  {
    v2 = *(*(v1 + 16) + 16);
    return DRBufferSetBytesUsed();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*_proto_LowLevelInstanceData.instanceCount.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *(*(v1 + 16) + 16);
  *a1 = DRBufferGetBytesUsed();
  return _proto_LowLevelInstanceData.instanceCount.modify;
}

void *LowLevelInstanceData.instanceCount.modify(void *result, char a2)
{
  v2 = (*result - 0x200000000000000) >> 58 == 63;
  if (a2)
  {
    if ((*result - 0x200000000000000) >> 58 == 63)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!v2)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v3 = *(*(result[1] + 16) + 16);
  return DRBufferSetBytesUsed();
}

uint64_t _proto_LowLevelInstanceData.__allocating_init(instanceCount:)(uint64_t a1)
{
  type metadata accessor for _proto_LowLevelInstanceData();
  result = swift_allocObject();
  if ((a1 - 0x200000000000000) >> 58 == 63)
  {
    v4 = result;
    v5 = (a1 << 6) | 0xF;
    if ((a1 & 0x200000000000000) != 0)
    {
      v5 = (a1 << 6) + 30;
    }

    v8[0] = v5 & 0xFFFFFFFFFFFFFFF0;
    v8[1] = 64;
    type metadata accessor for LowLevelBuffer();
    swift_allocObject();
    LowLevelBuffer.init(descriptor:)(v8);
    if (v1)
    {
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v4 + 16) = v6;
      v7 = *(v6 + 16);
      DRBufferSetBytesUsed();
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _proto_LowLevelInstanceData.__allocating_init(instanceCount:instanceCapacity:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  if ((a2 - 0x200000000000000) >> 58 == 63)
  {
    v6 = v5;
    v7 = (a2 << 6) | 0xF;
    if ((a2 & 0x200000000000000) != 0)
    {
      v7 = (a2 << 6) | 0x1E;
    }

    v10[0] = v7 & 0xFFFFFFFFFFFFFFF0;
    v10[1] = 64;
    type metadata accessor for LowLevelBuffer();
    swift_allocObject();
    LowLevelBuffer.init(descriptor:)(v10);
    if (v2)
    {
      swift_deallocPartialClassInstance();
      return;
    }

    *(v6 + 16) = v8;
    if ((a1 - 0x200000000000000) >> 58 == 63)
    {
      v9 = *(v8 + 16);
      DRBufferSetBytesUsed();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _proto_LowLevelInstanceData.init(instanceCount:instanceCapacity:)(uint64_t a1, uint64_t a2)
{
  if ((a2 - 0x200000000000000) >> 58 == 63)
  {
    v5 = (a2 << 6) | 0xF;
    if ((a2 & 0x200000000000000) != 0)
    {
      v5 = (a2 << 6) | 0x1E;
    }

    v8[0] = v5 & 0xFFFFFFFFFFFFFFF0;
    v8[1] = 64;
    type metadata accessor for LowLevelBuffer();
    swift_allocObject();
    LowLevelBuffer.init(descriptor:)(v8);
    if (v3)
    {
      type metadata accessor for _proto_LowLevelInstanceData();
      swift_deallocPartialClassInstance();
      return;
    }

    *(v2 + 16) = v6;
    if ((a1 - 0x200000000000000) >> 58 == 63)
    {
      v7 = *(v6 + 16);
      DRBufferSetBytesUsed();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id _proto_LowLevelInstanceData.replace(using:)()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = DRBufferReplaceUsing();

  return v2;
}

uint64_t _proto_LowLevelInstanceData.withTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[2] = a1;
  v10[3] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _proto_LowLevelInstanceData.withTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in LowLevelBuffer.withUnsafeBytes(_:)partial apply;
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_44;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferRead();

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t _proto_LowLevelInstanceData.withMutableTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[2] = a1;
  v10[3] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _proto_LowLevelInstanceData.withMutableTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in LowLevelBuffer.withUnsafeMutableBytes(_:)partial apply;
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_55;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferUpdate();

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t _proto_LowLevelInstanceData.replaceMutableTransforms(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v10[2] = a1;
  v10[3] = a2;
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in _proto_LowLevelInstanceData.replaceMutableTransforms(_:);
  *(v5 + 24) = v10;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in LowLevelBuffer.withUnsafeMutableBytes(_:)partial apply;
  *(v6 + 24) = v5;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  aBlock[3] = &block_descriptor_66;
  v7 = _Block_copy(aBlock);

  v8 = v4;

  DRBufferReplace();

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t _proto_LowLevelInstanceData.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _proto_MeshInstancesComponent.subscript.getter(uint64_t result)
{
  if (*(*v1 + 16) <= result)
  {
    return 0;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*v1 + 8 * result + 32);
  }

  return result;
}

uint64_t _proto_MeshInstancesComponent.subscript.setter(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  if (*(*v2 + 16) <= a2)
  {
    do
    {
      MEMORY[0x1C68F3650]();
      if (*(*v2 + 16) >= *(*v2 + 24) >> 1)
      {
        v9 = *(*v2 + 16);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = *v2;
    }

    while (*(*v2 + 16) <= a2);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (*(v5 + 16) > a2)
  {
    v7 = v5 + 8 * a2;
    v8 = *(v7 + 32);
    *(v7 + 32) = a1;

    *v2 = v5;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t (*_proto_MeshInstancesComponent.subscript.modify(uint64_t (*result)(uint64_t *a1, char a2), uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = result;
  *(result + 1) = a2;
  *(result + 2) = v2;
  if (*(*v2 + 16) <= a2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = *(*v2 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return _proto_MeshInstancesComponent.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t _proto_MeshInstancesComponent.subscript.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return _proto_MeshInstancesComponent.subscript.setter(*a1, v2);
  }

  v5 = *a1;

  _proto_MeshInstancesComponent.subscript.setter(v6, v2);
}

void static _proto_MeshInstancesComponent.__fromCore(_:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  BufferArraySize = REMeshPartInstancesComponentGetBufferArraySize();
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v17 = v5;
  if (BufferArraySize < 0)
  {
    goto LABEL_18;
  }

  if (!BufferArraySize)
  {
LABEL_15:
    *a2 = v5;
    return;
  }

  v6 = 0;
  while (1)
  {
    v7 = REMeshPartInstancesComponentGetBufferAtIndex();
    if (!v7)
    {
      MEMORY[0x1C68F3650]();
      if (*(v17 + 16) >= *(v17 + 24) >> 1)
      {
        v16 = *(v17 + 16);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_5;
    }

    v8 = v7;
    type metadata accessor for LowLevelBuffer();
    v9 = swift_allocObject();
    v9[2] = v8;
    v10 = v8;
    v11 = DRBufferCopyDescriptor();
    Capacity = DRBufferDescriptorGetCapacity();

    if (Capacity < 0)
    {
      break;
    }

    v13 = DRBufferCopyDescriptor();
    SizeMultiple = DRBufferDescriptorGetSizeMultiple();

    if (SizeMultiple < 0)
    {
      goto LABEL_17;
    }

    v9[3] = Capacity;
    v9[4] = SizeMultiple;
    type metadata accessor for _proto_LowLevelInstanceData();
    *(swift_allocObject() + 16) = v9;
    MEMORY[0x1C68F3650]();
    if (*(v17 + 16) >= *(v17 + 24) >> 1)
    {
      v15 = *(v17 + 16);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_5:
    if (BufferArraySize == ++v6)
    {
      v5 = v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void _proto_MeshInstancesComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  REMeshPartInstancesComponentResizeBufferArray();
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      if (v7)
      {
        v8 = *(*(v7 + 16) + 16);
        REMeshPartInstancesComponentSetBufferAtIndex();
      }

      ++v5;
    }

    while (v4 != v5);
  }

  JUMPOUT(0x1C68F8180);
}

Swift::Int_optional __swiftcall MeshResource._proto_getMeshPartIndex(modelId:partId:)(Swift::String modelId, Swift::String partId)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    String.utf8CString.getter();
    String.utf8CString.getter();
    FlattenedPartIndex = REMeshAssetGetFlattenedPartIndex();
  }

  else
  {
    FlattenedPartIndex = 0;
  }

  v5 = v3 == 0;
  v6 = FlattenedPartIndex;
  result.value = v6;
  result.is_nil = v5;
  return result;
}

uint64_t specialized static MeshInstancesComponent.isAboveLimits(meshComponent:meshInstancesComponent:)()
{
  result = REMeshComponentGetMesh();
  if (result)
  {
    FlattenedPartCount = REMeshAssetGetFlattenedPartCount();
    result = REMeshPartInstancesComponentGetBufferArraySize();
    if (result >= FlattenedPartCount)
    {
      v2 = FlattenedPartCount;
    }

    else
    {
      v2 = result;
    }

    if (v2 < 0)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v3 = 0;
    if (v2)
    {
      v4 = 0;
      while (1)
      {
        v5 = REMeshPartInstancesComponentGetBufferAtIndex();
        if (v5)
        {
          v6 = v5;
          BytesUsed = DRBufferGetBytesUsed();

          v8 = BytesUsed / 64;
        }

        else
        {
          v8 = 1;
        }

        result = REMeshAssetGetFlattenedPartRenderingCountForVertexLimit();
        v9 = result * v8;
        if ((result * v8) >> 64 != (result * v8) >> 63)
        {
          break;
        }

        v10 = __OFADD__(v3, v9);
        v3 += v9;
        if (v10)
        {
          goto LABEL_17;
        }

        if (v2 == ++v4)
        {
          return v3 >= REMeshPartInstancesComponentGetVertexLimit();
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    return v3 >= REMeshPartInstancesComponentGetVertexLimit();
  }

  return result;
}

uint64_t partial apply for closure #1 in _proto_LowLevelInstanceData.withTransforms(_:)()
{
  return partial apply for closure #1 in _proto_LowLevelInstanceData.withTransforms(_:)();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *keypath_setTm(void *result, uint64_t a2)
{
  if ((*result - 0x200000000000000) >> 58 == 63)
  {
    v2 = *result << 6;
    v3 = *(*(*a2 + 16) + 16);
    return DRBufferSetBytesUsed();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id static __RKEntityCustomAction.RKEntityCustomActionNotification.name.getter()
{
  if (one-time initialization token for name != -1)
  {
    swift_once();
  }

  v1 = static __RKEntityCustomAction.RKEntityCustomActionNotification.name;

  return v1;
}

uint64_t key path getter for __RKEntityCustomAction.handler : __RKEntityCustomAction@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Entity?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
}

uint64_t key path setter for __RKEntityCustomAction.handler : __RKEntityCustomAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
}

uint64_t __RKEntityCustomAction.handler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t __RKEntityCustomAction.handler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5);
}

uint64_t __RKEntityCustomAction.identifier.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t key path getter for __RKEntityCustomAction.customArgumentsBlock : __RKEntityCustomAction@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Entity?, @guaranteed [String : String]?) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
}

uint64_t key path setter for __RKEntityCustomAction.customArgumentsBlock : __RKEntityCustomAction(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity?, @in_guaranteed [String : String]?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 152);
  v9 = *(v7 + 160);
  *(v7 + 152) = v6;
  *(v7 + 160) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v8);
}

uint64_t __RKEntityCustomAction.customArgumentsBlock.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v1);
  return v1;
}

uint64_t __RKEntityCustomAction.customArgumentsBlock.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  v6 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v5);
}

uint64_t __RKEntityCustomAction.__allocating_init(targetEntity:actionIdentifier:handler:customArguments:customArgumentsBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[19] = 0;
  v15[14] = 0;
  v15[20] = 0;
  v15[15] = 0;
  v15[16] = a2;
  v15[17] = a3;
  swift_beginAccess();
  v15[14] = a4;
  v15[15] = a5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4);
  if (!a6)
  {
    a6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v15[18] = a6;
  swift_beginAccess();
  v15[19] = a7;
  v15[20] = a8;
  v16 = __RKEntityAction.init(targetEntity:)(a1);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4);
  return v16;
}

uint64_t __RKEntityCustomAction.init(targetEntity:actionIdentifier:handler:customArguments:customArgumentsBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = 0;
  v8[19] = 0;
  v8[20] = 0;
  v8[15] = 0;
  v8[16] = a2;
  v8[17] = a3;
  swift_beginAccess();
  v8[14] = a4;
  v8[15] = a5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4);
  if (!a6)
  {
    a6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v8[18] = a6;
  swift_beginAccess();
  v15 = v8[19];
  v16 = v8[20];
  v8[19] = a7;
  v8[20] = a8;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a7);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15);
  v17 = __RKEntityAction.init(targetEntity:)(a1);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a7);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a4);
  return v17;
}

uint64_t __RKEntityCustomAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  *&v46 = StaticString.description.getter();
  *(&v46 + 1) = v4;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v5 = v46;
  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1 && (swift_beginAccess(), *(v1 + 105) == 1) || (v6 = *(v3 + 16), !RESceneGetECSManagerNullable()))
  {
    v21 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v21, &v46);

    return 0;
  }

  v7 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v7, &v46);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  *(v1 + 96) = 1;
  *(v1 + 104) = 1;
  *&v46 = v8;
  BYTE8(v46) = v9;
  __RKEntityAction.state.didset(&v46);
  swift_beginAccess();
  v10 = *(v1 + 152);
  if (v10)
  {
    v11 = *(v1 + 160);
    swift_beginAccess();
    v12 = *(v2 + 16);
    v13 = *(v2 + 144);
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v10);

    v10(v14, v13);

    v15 = v10;
LABEL_7:
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v15);
LABEL_8:
    v45[0] = v5;
    v16 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v16, v45);
    v17 = *(v2 + 96);
    v18 = *(v2 + 104);
    *(v2 + 96) = 2;
    v19 = 1;
    *(v2 + 104) = 1;
    *&v45[0] = v17;
    BYTE8(v45[0]) = v18;
    __RKEntityAction.state.didset(v45);
    v45[0] = v5;
    v20 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v20, v45);

    return v19;
  }

  swift_beginAccess();
  v23 = *(v1 + 112);
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    *(inited + 32) = 0xD000000000000022;
    *(inited + 40) = 0x80000001C18EC6F0;
    v29 = *(v2 + 128);
    v28 = *(v2 + 136);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v29;
    *(inited + 56) = v28;

    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of BodyTrackingComponent?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    v47 = type metadata accessor for Scene();
    *&v46 = v3;
    outlined init with take of Any(&v46, v45);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0xD00000000000001DLL, 0x80000001C18EC6D0, isUniquelyReferenced_nonNull_native);
    v32 = v30;
    v48 = v30;
    swift_beginAccess();
    v33 = *(v2 + 16);
    if (v33)
    {
      v47 = type metadata accessor for Entity();
      *&v46 = v33;
      outlined init with take of Any(&v46, v45);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0xD00000000000001ELL, 0x80000001C18EC720, v34);
    }

    else
    {
      specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001ELL, 0x80000001C18EC720, &v46);
      outlined destroy of BodyTrackingComponent?(&v46, &_sypSgMd, &_sypSgMR);
      v32 = v48;
    }

    v39 = *(v2 + 144);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *&v46 = v39;
    outlined init with take of Any(&v46, v45);

    v40 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0xD000000000000027, 0x80000001C18EC740, v40);
    v41 = v32;
    v42 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for name != -1)
    {
      swift_once();
    }

    v43 = static __RKEntityCustomAction.RKEntityCustomActionNotification.name;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v41);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v42 postNotificationName:v43 object:0 userInfo:isa];

    goto LABEL_8;
  }

  v24 = *(v1 + 120);
  swift_beginAccess();
  v25 = *(v1 + 16);
  if (!v25)
  {

    v23(0);
    v15 = v23;
    goto LABEL_7;
  }

  v26 = *(v25 + 16);

  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    swift_dynamicCastClassUnconditional();
LABEL_21:

    v23(v38);

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23);

    goto LABEL_8;
  }

  result = REEntityIsBeingDestroyed();
  if ((result & 1) == 0)
  {
    v35 = specialized static Entity.entityInfoType(_:)();
    if (v35)
    {
      v36 = (*(v35 + 232))();
      v37 = *(v36 + 16);

      MEMORY[0x1C68F9740](v37, 0);
      *(v36 + 16) = v26;
      MEMORY[0x1C68F9740](v26, v36);
    }

    else
    {
      makeEntity(for:)(v26);
    }

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityCustomAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = v1[17];
  v11 = v1[16];
  v12 = v1[2];
  swift_beginAccess();
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[18];
  swift_beginAccess();
  v7 = v1[19];
  v6 = v1[20];
  v8 = type metadata accessor for __RKEntityCustomAction();
  v9 = swift_allocObject();
  v9[14] = 0;
  v9[20] = 0;
  v9[19] = 0;
  v9[15] = 0;
  v9[16] = v11;
  v9[17] = v2;
  swift_beginAccess();
  v9[14] = v3;
  v9[15] = v4;
  v9[18] = v5;
  swift_beginAccess();
  v9[19] = v7;
  v9[20] = v6;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7);

  result = __RKEntityAction.init(targetEntity:)(v12);
  a1[3] = v8;
  *a1 = result;
  return result;
}

uint64_t __RKEntityCustomAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v6 = v1[16];
    v5 = v1[17];
    swift_beginAccess();
    v7 = v1[14];
    v8 = v1[15];
    v13 = v1[18];
    swift_beginAccess();
    v9 = v1[19];
    v10 = v1[20];
    type metadata accessor for __RKEntityCustomAction();
    v11 = swift_allocObject();
    v11[14] = 0;
    v11[20] = 0;
    v11[19] = 0;
    v11[15] = 0;
    v11[16] = v6;
    v11[17] = v5;
    swift_beginAccess();
    v11[14] = v7;
    v11[15] = v8;
    v11[18] = v13;
    swift_beginAccess();
    v11[19] = v9;
    v11[20] = v10;

    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v7);

    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v9);

    return __RKEntityAction.init(targetEntity:)(v12);
  }

  else
  {
    __RKEntityCustomAction.copy(with:)(v15);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityCustomAction.__ivar_destroyer()
{
  v1 = v0[15];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v0[14]);
  v2 = v0[17];

  v3 = v0[18];

  v4 = v0[19];
  v5 = v0[20];

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4);
}

uint64_t __RKEntityCustomAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 120);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 112));
  v7 = *(v0 + 136);

  v8 = *(v0 + 144);

  v9 = *(v0 + 160);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 152));
  return v0;
}

uint64_t __RKEntityCustomAction.__deallocating_deinit()
{
  __RKEntityCustomAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Entity?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Entity?) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t Entity.addRetargetingAnimationRig(source:)(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    v9 = 0x80000001C18EC860;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v10 = 0xD000000000000016;
LABEL_6:
    *(v10 + 8) = v9;
    *(v10 + 16) = 1;
    result = swift_willThrow();
    goto LABEL_7;
  }

  if (!RERigAssetCreateBipedToBipedAutoRetargetAsset())
  {
    v9 = 0xED0000726F727265;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v10 = 0x206E776F6E6B6E55;
    goto LABEL_6;
  }

  RERigComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  result = RERigComponentSetRig();
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Entity.addRetargetingAnimationRig(source:jointNameRotationOffsets:)(uint64_t a1, uint64_t a2)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation013SkeletalPosesD0V_Tt0B5(v2, v28);
  if (!v28[0] || !*(v28[0] + 16))
  {
    goto LABEL_6;
  }

  v22 = a1;
  v28[3] = v2;
  v6 = *(v28[0] + 48);
  v7 = *(v28[0] + 56);
  v8 = *(v28[0] + 72);
  v9 = *(v28[0] + 80);
  v23 = *(v28[0] + 32);
  LOBYTE(v24) = v6;
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v10 = SkeletalPose.jointNames.getter();

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a2 + 16), 0);
    v20 = specialized Sequence._copySequenceContents(initializing:)(&v23, v12 + 4, v11, a2);

    outlined consume of [String : AnimationResource].Iterator._Variant();
    if (v20 != v11)
    {
      __break(1u);
LABEL_6:

      lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
      swift_allocError();
      *v13 = 0xD000000000000040;
      *(v13 + 8) = 0x80000001C18EC880;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = specialized Entity.convertOffsetJointNamesToOffsetJointIndices(jointNames:offsetJointNames:)(v10, v12);
  if (v3)
  {
  }

  v16 = v15;

  v17 = *(a2 + 16);
  if (!v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v19 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCs5Int32V_So10simd_quatfas12Zip2SequenceVySayAFGSayAHGGTt0g5Tf4g_nTm(v16, v18, &_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMd, &_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMR, specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:));

    Entity.addRetargetingAnimationRig(source:jointIndexRotationOffsets:)(v22, v19);
  }

  v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5(*(a2 + 16), 0);
  v21 = specialized Sequence._copySequenceContents(initializing:)(&v23, v18 + 4, v17, a2);

  result = outlined consume of [String : AnimationResource].Iterator._Variant();
  if (v21 == v17)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Entity.addRetargetingAnimationRig(source:jointIndexRotationOffsets:)(uint64_t a1, uint64_t a2)
{
  v46[5] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v2 + 16);
  v6 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (!MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    v26 = 0x80000001C18EC860;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    v28 = 0xD000000000000016;
    goto LABEL_17;
  }

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation013SkeletalPosesD0V_Tt0B5(v2, v46);
  if (!v46[0] || !*(v46[0] + 16))
  {

    v26 = 0x80000001C18EC910;
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    v28 = 0xD000000000000040;
LABEL_17:
    *v27 = v28;
    goto LABEL_18;
  }

  v10 = *(v46[0] + 48);
  v11 = *(v46[0] + 56);
  v12 = *(v46[0] + 72);
  v13 = *(v46[0] + 80);
  v41 = *(v46[0] + 32);
  LOBYTE(v42) = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  v14 = SkeletalPose.jointNames.getter();

  v15 = *(v14 + 16);

  v16 = 0;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
LABEL_12:
    v22 = *(*(a2 + 48) + ((v16 << 8) | (4 * __clz(__rbit64(v19)))));
    if ((v22 & 0x80000000) == 0)
    {
      v19 &= v19 - 1;
      if (v15 > v22)
      {
        continue;
      }
    }

    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    *&v41 = 0xD000000000000015;
    *(&v41 + 1) = 0x80000001C18EC8D0;
    MEMORY[0x1C68F3410](v23);

    MEMORY[0x1C68F3410](0xD000000000000012, 0x80000001C18EC8F0);

    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v24 = v41;
    *(v24 + 16) = 1;
    swift_willThrow();

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(a2 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_12;
    }
  }

  v30 = *(a2 + 16);
  if (!v30)
  {
    goto LABEL_25;
  }

  v40 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5Int32V_Tt1g5(v30, 0);
  v31 = specialized Sequence._copySequenceContents(initializing:)(&v41, v40 + 8, v30, a2);

  outlined consume of [String : AnimationResource].Iterator._Variant();
  if (v31 != v30)
  {
    goto LABEL_32;
  }

  v32 = *(a2 + 16);
  if (!v32)
  {
    goto LABEL_25;
  }

  v33 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5(*(a2 + 16), 0);
  v39 = specialized Sequence._copySequenceContents(initializing:)(&v41, v33 + 4, v32, a2);

  outlined consume of [String : AnimationResource].Iterator._Variant();
  if (v39 != v32)
  {
LABEL_33:
    __break(1u);
  }

  v34 = *(a2 + 16);
LABEL_25:
  *&v41 = 0;
  BipedToBipedAutoRetargetWithOffsetAsset = RERigAssetCreateBipedToBipedAutoRetargetWithOffsetAsset();

  if (BipedToBipedAutoRetargetWithOffsetAsset)
  {
    RERigComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    result = RERigComponentSetRig();
    goto LABEL_19;
  }

  v36 = v41;
  if (v41)
  {
    v46[0] = v41;
    type metadata accessor for CFErrorRef(0);
    lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
    v37 = Error.localizedDescription.getter();
    v26 = v38;
  }

  else
  {
    v26 = 0xED0000726F727265;
    v37 = 0x206E776F6E6B6E55;
  }

  lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
  swift_allocError();
  *v27 = v37;
LABEL_18:
  *(v27 + 8) = v26;
  *(v27 + 16) = 1;
  result = swift_willThrow();
LABEL_19:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall Entity.removeAnimationRig()()
{
  v1 = *(v0 + 16);
  RERigComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {

    RERigComponentSetRig();
  }
}

uint64_t Entity.addAnimationRig(url:)()
{
  v1 = *(v0 + 16);
  v2 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(swift_unownedRetainStrong() + 24);

  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x1C68FE1F0](ServiceLocator))
  {
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    AssetHandleForURL = REAssetManagerCreateAssetHandleForURL();

    if (AssetHandleForURL)
    {
      RERigComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      return RERigComponentSetRig();
    }

    _StringGuts.grow(_:)(51);
    MEMORY[0x1C68F3410](0xD000000000000031, 0x80000001C18EC960);
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    MEMORY[0x1C68F3410](countAndFlagsBits);

    v12 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0x80000001C18EC860;
    v12 = 0xD000000000000016;
  }

  lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
  swift_allocError();
  *v14 = v12;
  *(v14 + 8) = v11;
  *(v14 + 16) = 1;
  return swift_willThrow();
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t a1, unint64_t a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a1;
  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v33 = a2 & 0xC000000000000001;

  v9 = 4;
  v36 = v7 >> 62;
  v34 = v6 >> 62;
  v31 = v8;
  v32 = v7;
  if (v7 >> 62)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(v37 + 16); ; i = __CocoaSet.count.getter())
  {
    v11 = v9 - 4;
    if (v9 - 4 == i)
    {

      goto LABEL_34;
    }

    if (!v35)
    {
      break;
    }

    v12 = MEMORY[0x1C68F41F0](v9 - 4, v7);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_35;
    }

LABEL_8:
    if (v34)
    {
      if (v11 != __CocoaSet.count.getter())
      {
        goto LABEL_10;
      }

LABEL_33:

LABEL_34:

      return;
    }

    if (v11 == *(v8 + 16))
    {
      goto LABEL_33;
    }

LABEL_10:
    if (v33)
    {
      v13 = v6;
      v14 = MEMORY[0x1C68F41F0](v9 - 4, v6);
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v13 = v6;
      v14 = *(v6 + 8 * v9);
    }

    v15 = *a4;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_37;
    }

    v21 = v16;
    if (v15[3] >= v20)
    {
      if (a3)
      {
        if (v16)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v21)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
      v22 = *a4;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if ((v21 & 1) != (v24 & 1))
      {
        goto LABEL_40;
      }

      v17 = v23;
      if (v21)
      {
LABEL_30:
        v29 = swift_allocError();
        swift_willThrow();
        v30 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_41;
      }
    }

    v25 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(v25[6] + 8 * v17) = v12;
    *(v25[7] + 8 * v17) = v14;
    v26 = v25[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_39;
    }

    v25[2] = v28;
    ++v9;
    a3 = 1;
    v6 = v13;
    v8 = v31;
    v7 = v32;
    if (!v36)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v11 >= *(v37 + 16))
  {
    goto LABEL_36;
  }

  v12 = *(v7 + 8 * v9);

  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

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
  type metadata accessor for __REAsset();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_41:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
  type metadata accessor for __REAsset();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v39 = *(a2 + 32);
  v9 = *(a1 + 32);
  v10 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v18 = *a4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v23 = *a4;
  *(*a4 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 4 * v11) = v9;
  *(v23[7] + 16 * v11) = v39;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v23[2] = v25;
    v5 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        v26 = v8 + 1;
        if ((v8 + 1) >= *(a1 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          break;
        }

        if (v26 >= v27)
        {
          goto LABEL_28;
        }

        v39 = *(a2 + 48 + 16 * v8);
        v9 = *(a1 + 36 + 4 * v8);
        v28 = *a4;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_25;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
          v34 = *a4;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v17)
        {
          goto LABEL_9;
        }

        v36 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v36[6] + 4 * v29) = v9;
        *(v36[7] + 16 * v29) = v39;
        v37 = v36[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        v36[2] = v38;
      }

      while (v5 != ++v8);
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  _StringGuts.grow(_:)(30);
  MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v46 = a1;
  v48 = *(a2 + 48);
  v49 = *(a2 + 32);
  v47 = *(a2 + 64);
  v11 = *a4;

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v18) = v13;
  if (v11[3] < v17)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v19 = *a4;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
    if ((v18 & 1) == (v20 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v12;
  specialized _NativeDictionary.copy()();
  v12 = v23;
  if (v18)
  {
LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_30;
  }

LABEL_12:
  v24 = *a4;
  *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  v25 = (v24[6] + 16 * v12);
  *v25 = v10;
  v25[1] = v9;
  v26 = (v24[7] + 48 * v12);
  *v26 = v49;
  v26[1] = v48;
  v26[2] = v47;
  v27 = v24[2];
  v16 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v16)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DED90);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v24[2] = v28;
  v29 = v46[2];
  if (v29 != 1)
  {
    v18 = v46 + 7;
    v30 = (a2 + 112);
    v31 = 1;
    while (v31 < v29)
    {
      v32 = *(a2 + 16);
      if (v31 == v32)
      {
        goto LABEL_24;
      }

      if (v31 >= v32)
      {
        goto LABEL_29;
      }

      v10 = *(v18 - 1);
      v9 = *v18;
      v48 = *(v30 - 1);
      v49 = *(v30 - 2);
      v47 = *v30;
      v33 = *a4;

      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
      v36 = v33[2];
      v37 = (v35 & 1) == 0;
      v16 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v16)
      {
        goto LABEL_26;
      }

      a3 = v35;
      if (v33[3] < v38)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, 1);
        v39 = *a4;
        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
        if ((a3 & 1) != (v40 & 1))
        {
          goto LABEL_6;
        }
      }

      if (a3)
      {
        goto LABEL_9;
      }

      v41 = *a4;
      *(*a4 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v42 = (v41[6] + 16 * v34);
      *v42 = v10;
      v42[1] = v9;
      v43 = (v41[7] + 48 * v34);
      *v43 = v49;
      v43[1] = v48;
      v43[2] = v47;
      v44 = v41[2];
      v16 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v16)
      {
        goto LABEL_27;
      }

      ++v31;
      v41[2] = v45;
      v29 = v46[2];
      v18 += 2;
      v30 += 3;
      if (v31 == v29)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:

  swift_bridgeObjectRelease_n();
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC10RealityKit9__REAssetC_0F10Foundation17RESceneDescriptorCs12Zip2SequenceVySayAGGSayAJGGTt0g5Tf4g_n(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(a2 >> 62))
    {
LABEL_3:
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v5 = __CocoaSet.count.getter();
LABEL_4:
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, a2, 1, &v8);
  return v8;
}

uint64_t _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCs5Int32V_So10simd_quatfas12Zip2SequenceVySayAFGSayAHGGTt0g5Tf4g_nTm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  v11 = v9;

  a5(a1, a2, 1, &v11);
  return v11;
}

uint64_t specialized Entity.convertOffsetJointNamesToOffsetJointIndices(jointNames:offsetJointNames:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_17:
    v22 = *(a2 + 16);
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
      v24 = (a2 + 40);
      while (1)
      {
        v26 = *(v24 - 1);
        v25 = *v24;
        v27 = v5[2];

        if (!v27)
        {
          break;
        }

        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        v30 = v28;

        v31 = *(v5[7] + 4 * v30);
        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v23);
        }

        *(v23 + 2) = v33 + 1;
        *&v23[4 * v33 + 32] = v31;
        v24 += 2;
        if (!--v22)
        {
          goto LABEL_24;
        }
      }

      MEMORY[0x1C68F3410](0xD000000000000022, 0x80000001C18EC9A0);

      lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
      swift_allocError();
      *v34 = v26;
      *(v34 + 8) = v25;
      *(v34 + 16) = 1;
      swift_willThrow();
    }

    else
    {
LABEL_24:
    }

    return v23;
  }

  v3 = 0;
  v4 = (a1 + 40);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 != 0x80000000)
  {
    v8 = *(v4 - 1);
    v7 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v5;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v5[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_28;
    }

    v16 = v11;
    if (v5[3] < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_30;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v10;
    specialized _NativeDictionary.copy()();
    v10 = v21;
    if (v16)
    {
LABEL_3:
      v6 = v10;

      v5 = v36;
      *(v36[7] + 4 * v6) = v3;
      goto LABEL_4;
    }

LABEL_12:
    v5 = v36;
    v36[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (v36[6] + 16 * v10);
    *v18 = v8;
    v18[1] = v7;
    *(v36[7] + 4 * v10) = v3;
    v19 = v36[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_29;
    }

    v36[2] = v20;
LABEL_4:
    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void Scene.timebase.getter()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = specialized static __ServiceLocator.shared.getter();
  if (*(*(v0 + 160) + 16))
  {
    v1 = *(v0 + 160);

    if (RETimebaseServiceCreateEngineSourceTimebase())
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = *(v0 + 160);
  }

  v6[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CMClockGetHostTimeClock();
  CMTimebaseCreateWithSourceClock(v3, v4, v6);

  if (v6[0])
  {
LABEL_6:

    v5 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

unint64_t _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5()
{
  type metadata accessor for REEntityForceEffectComputeForcesEvent(0);
  v1 = v0;
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v3 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v3)
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v5)
    {
      v6 = *(v2[7] + 8 * v4);
      swift_endAccess();
      return v6;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2() && v1)
  {
    v8 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v9 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
LABEL_21:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    goto LABEL_22;
  }

  if (swift_conformsToProtocol2() && v1)
  {
    v8 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v9 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && v1)
  {
    v8 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v9 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && v1)
  {
    v8 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v9 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
    goto LABEL_21;
  }

  v10 = swift_conformsToProtocol2();
  v11 = v1;
  if (v10)
  {
    v11 = v1;
    if (v1)
    {
      v8 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
      v9 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v3)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    if (v12)
    {
      return *(v2[7] + 8 * result);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37REEntityForceEffectComputeForcesEventVmMd, &_sSo37REEntityForceEffectComputeForcesEventVmMR);
  String.init<A>(describing:)();
  v13 = String.utf8CString.getter();

  v14 = MEMORY[0x1C68F97D0](v13 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v1, isUniquelyReferenced_nonNull_native);
  v2 = v17;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v17;
  result = swift_endAccess();
  if (v17[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v1);
    if (v16)
    {
      return *(v2[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t _s17RealityFoundation10getEventIDys6UInt64VxmlFSo022REAnimationHasTimelineD5StartV_Ttg5Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v5 = a1(0);
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v7 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v7)
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v9)
    {
      v10 = *(v6[7] + 8 * v8);
      swift_endAccess();
      return v10;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2() && v5)
  {
    v12 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v13 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
LABEL_21:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    goto LABEL_22;
  }

  if (swift_conformsToProtocol2() && v5)
  {
    v12 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v13 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && v5)
  {
    v12 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v13 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
    goto LABEL_21;
  }

  if (swift_conformsToProtocol2() && v5)
  {
    v12 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v13 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
    goto LABEL_21;
  }

  v14 = swift_conformsToProtocol2();
  v15 = v5;
  if (v14)
  {
    v15 = v5;
    if (v5)
    {
      v12 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
      v13 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (v7)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    if (v16)
    {
      return *(v6[7] + 8 * result);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  String.init<A>(describing:)();
  v17 = String.utf8CString.getter();

  v18 = MEMORY[0x1C68F97D0](v17 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v5, isUniquelyReferenced_nonNull_native);
  v6 = v21;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v21;
  result = swift_endAccess();
  if (v21[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v20)
    {
      return *(v6[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineUpdateD0V_Ttg5()
{
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v1 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v1)
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EngineUpdateEvent);
    if (v3)
    {
      v4 = *(v0[7] + 8 * v2);
      swift_endAccess();
      return v4;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v7 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v7 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v7 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v7 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
  }

  else
  {
    if (!swift_conformsToProtocol2())
    {
      v8 = &type metadata for EngineUpdateEvent;
      if (!v1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v6 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
    v7 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (!v1)
  {
    goto LABEL_18;
  }

LABEL_17:
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if (v9)
  {
    return *(v0[7] + 8 * result);
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17EngineUpdateEventVmMd, &_s10RealityKit17EngineUpdateEventVmMR);
  String.init<A>(describing:)();
  v10 = String.utf8CString.getter();

  v11 = MEMORY[0x1C68F97D0](v10 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, &type metadata for EngineUpdateEvent, isUniquelyReferenced_nonNull_native);
  v0 = v14;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v14;
  result = swift_endAccess();
  if (v14[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EngineUpdateEvent);
    if (v13)
    {
      return *(v0[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t _s17RealityFoundation10getEventIDys6UInt64VxmlF0A3Kit012EngineRenderD0V_Ttg5()
{
  if (one-time initialization token for registeredEventsToEventBusIds != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  v1 = *(static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds + 2);
  if (v1)
  {
    v2 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EngineRenderEvent);
    if (v3)
    {
      v4 = *(v0[7] + 8 * v2);
      swift_endAccess();
      return v4;
    }
  }

  swift_endAccess();
  if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation26AccessibilityActivateEvent_pMd;
    v7 = &_s17RealityFoundation26AccessibilityActivateEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMd;
    v7 = &_s17RealityFoundation27AccessibilityIncrementEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMd;
    v7 = &_s17RealityFoundation27AccessibilityDecrementEvent_pMR;
  }

  else if (swift_conformsToProtocol2())
  {
    v6 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMd;
    v7 = &_s17RealityFoundation30AccessibilityCustomActionEvent_pMR;
  }

  else
  {
    if (!swift_conformsToProtocol2())
    {
      v8 = &type metadata for EngineRenderEvent;
      if (!v1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v6 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMd;
    v7 = &_s17RealityFoundation33AccessibilityRotorNavigationEvent_pMR;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if (!v1)
  {
    goto LABEL_18;
  }

LABEL_17:
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if (v9)
  {
    return *(v0[7] + 8 * result);
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17EngineRenderEventVmMd, &_s10RealityKit17EngineRenderEventVmMR);
  String.init<A>(describing:)();
  v10 = String.utf8CString.getter();

  v11 = MEMORY[0x1C68F97D0](v10 + 32);

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, &type metadata for EngineRenderEvent, isUniquelyReferenced_nonNull_native);
  v0 = v14;
  static RegisteredEventsToEventBusIds.registeredEventsToEventBusIds = v14;
  result = swift_endAccess();
  if (v14[2])
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for EngineRenderEvent);
    if (v13)
    {
      return *(v0[7] + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *ConstantForceEffect.update(parameters:)(void *result, double a2, double a3, double a4)
{
  v5 = v4[1];
  v6 = vmulq_f32(v5, v5);
  *&a4 = v6.f32[2] + vaddv_f32(*v6.f32);
  v7 = 0uLL;
  if (*&a4 != 0.0)
  {
    *&a4 = sqrtf(*&a4);
    v7.i64[0] = vdivq_f32(v5, vdupq_lane_s32(*&a4, 0)).u64[0];
    v7.f32[2] = v5.f32[2] / *&a4;
    v7.i32[3] = 0;
  }

  v8 = result[1];
  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8)
  {
    v9 = 0;
    v10 = result[25];
    v11 = result[26];
    *&v12 = vmulq_n_f32(v7, v4->f32[0]).u64[0];
    *(&v12 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v4->f32[0], v7, 2));
    do
    {
      if (v9 < v11)
      {
        *(v10 + 16 * v9) = v12;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (one-time initialization token for _registeredForceEffectsCodable != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = static ForceEffectComponent._registeredForceEffectsCodable;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffectsCodable + 6);
  v12 = *(v11 + 2);

  os_unfair_lock_unlock(v11 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[7] = v12;
  v14 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a6, a7, a4, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v14);
  os_unfair_lock_lock(v11 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v11 + 2);
  os_unfair_lock_unlock(v11 + 6);

  result = swift_endAccess();
  if (a2)
  {

    static EntityAction.eventBus(_:)(a1);
    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v16[6] = a2;
    v16[7] = a3;
    aBlock[4] = partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_147_0;
    v17 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v17);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t ConstantRadialForceEffect.update(parameters:)(uint64_t result, double a2, double a3, double a4, float32x4_t a5, double a6, double a7, double a8)
{
  if ((*(result + 48) & 1) == 0)
  {
    v9 = *(result + 40);
    if (v9 < 0)
    {
      __break(1u);
    }

    else if (v9)
    {
      v10 = 0;
      v11 = *v8;
      v12 = *(result + 32);
      v13 = *(result + 200);
      v14 = *(result + 208);
      do
      {
        *a5.f32 = vsub_f32(0, *(v12 + 16 * v10));
        v15 = a5;
        v15.f32[2] = 0.0 - COERCE_FLOAT(*(v12 + 16 * v10 + 8));
        v16 = vmulq_f32(v15, v15);
        *&a8 = v16.f32[2] + vaddv_f32(*v16.f32);
        v17 = 0uLL;
        if (*&a8 == 0.0)
        {
          if (v10 < v14)
          {
            goto LABEL_10;
          }
        }

        else
        {
          *&a8 = sqrtf(*&a8);
          *v17.f32 = vdiv_f32(*a5.f32, vdup_lane_s32(*&a8, 0));
          v17.f32[2] = (0.0 - COERCE_FLOAT(*(v12 + 16 * v10 + 8))) / *&a8;
          v17.i32[3] = 0;
          if (v10 < v14)
          {
LABEL_10:
            a5.i64[0] = vmulq_n_f32(v17, v11).u64[0];
            a5.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v11, v17, 2));
            *(v13 + 16 * v10) = a5;
          }
        }

        ++v10;
      }

      while (v9 != v10);
    }
  }

  return result;
}

uint64_t RadialForceEffect.update(parameters:)(uint64_t result, double a2, double a3, double a4, double a5, __n128 a6)
{
  if ((*(result + 48) & 1) == 0)
  {
    v7 = *(result + 8);
    if (v7 < 0)
    {
      __break(1u);
    }

    else if (v7)
    {
      v8 = 0;
      v9 = *v6;
      v10 = v6[1];
      v11 = *(result + 32);
      v12 = *(result + 200);
      v13 = *(result + 208);
      if (v10 < 0.0)
      {
        v10 = 0.0;
      }

      do
      {
        v14 = *(v11 + 16 * v8);
        v15 = vmulq_f32(v14, v14);
        v15.f32[0] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
        if (v15.f32[0] == 0.0)
        {
          v16.i64[0] = 0;
          v16.i32[2] = 0;
          v16.i32[3] = a6.n128_i32[3];
          if (v8 < v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14.i64[0] = vdivq_f32(vsubq_f32(0, v14), vdupq_lane_s32(*v15.f32, 0)).u64[0];
          v16.f32[2] = (0.0 - v14.f32[2]) / v15.f32[0];
          v16.i32[3] = 0;
          if (v8 < v13)
          {
LABEL_12:
            v17 = v15.f32[0] - v10;
            *&v18 = vmulq_n_f32(vmulq_n_f32(v16, v17), v9).u64[0];
            *(&v18 + 1) = COERCE_UNSIGNED_INT(v9 * vmuls_lane_f32(v17, v16, 2));
            *(v12 + 16 * v8) = v18;
          }
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  return result;
}

uint64_t VortexForceEffect.update(parameters:)(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    v2 = v1[1];
    v3 = vmulq_f32(v2, v2);
    v3.f32[0] = v3.f32[2] + vaddv_f32(*v3.f32);
    v4 = 0uLL;
    if (v3.f32[0] != 0.0)
    {
      v3.f32[0] = sqrtf(v3.f32[0]);
      v4.i64[0] = vdivq_f32(v2, vdupq_lane_s32(*v3.f32, 0)).u64[0];
      v4.f32[2] = v2.f32[2] / v3.f32[0];
      v4.i32[3] = 0;
    }

    v5 = *(result + 8);
    if (v5 < 0)
    {
      __break(1u);
    }

    else if (v5)
    {
      v6 = 0;
      v7 = *(result + 32);
      v8 = v1->f32[0];
      v9 = *(result + 200);
      v10 = *(result + 208);
      v11 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
      v12 = vnegq_f32(v4);
      do
      {
        if (v6 < v10)
        {
          v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v7 + 16 * v6), *(v7 + 16 * v6)), *(v7 + 16 * v6), 0xCuLL), v12), *(v7 + 16 * v6), v11);
          v14.i32[0] = vextq_s8(v13, v13, 8uLL).u32[0];
          v14.i32[1] = v13.i32[0];
          *&v15 = vmul_n_f32(v14, v8);
          *(&v15 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v8, *v13.i8, 1));
          *(v9 + 16 * v6) = v15;
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t DragForceEffect.update(parameters:)(uint64_t result)
{
  if ((*(result + 96) & 1) == 0)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2)
    {
      v3 = 0;
      v4 = *v1;
      v5 = *(result + 80);
      v6 = *(result + 200);
      v7 = *(result + 208);
      do
      {
        if (v3 < v7)
        {
          *&v8 = vmulq_n_f32(vsubq_f32(0, *(v5 + 16 * v3)), v4).u64[0];
          *(&v8 + 2) = v4 * (0.0 - COERCE_FLOAT(*(v5 + 16 * v3 + 8)));
          HIDWORD(v8) = 0;
          *(v6 + 16 * v3) = v8;
        }

        ++v3;
      }

      while (v2 != v3);
    }
  }

  return result;
}

uint64_t TurbulenceForceEffect.update(parameters:)(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(result + 48) & 1) == 0 && (*(result + 96) & 1) == 0)
  {
    v2 = *(result + 8);
    if (v2 < 0)
    {
      __break(1u);
    }

    if (v2)
    {
      v3 = 0;
      v16 = *v1;
      v4 = *(v1 + 4);
      v5 = *(v1 + 8);
      v6 = *(result + 32);
      v7 = *(result + 80);
      v8 = *(result + 24);
      v9 = *(result + 200);
      v10 = *(result + 208);
      do
      {
        v11 = *(v6 + 16 * v3);
        result = REPhysicsForceEffectSimplexNoiseDerivative4();
        if (v3 < v10)
        {
          v13 = vmulq_f32(*(v7 + 16 * v3), *(v7 + 16 * v3));
          v13.f32[0] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
          *&v14 = vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(0, v12), v16), v13.f32[0]).u64[0];
          *(&v14 + 1) = COERCE_UNSIGNED_INT((v16 * vmuls_lane_f32(v12, 0, 2)) * v13.f32[0]);
          *(v9 + 16 * v3) = v14;
        }

        ++v3;
      }

      while (v2 != v3);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

double normalizeSafe(vec:)(float32x4_t a1, double a2, double a3)
{
  v3 = vmulq_f32(a1, a1);
  *&a3 = v3.f32[2] + vaddv_f32(*v3.f32);
  if (*&a3 == 0.0)
  {
    return 0.0;
  }

  *&a3 = sqrtf(*&a3);
  *&result = vdivq_f32(a1, vdupq_lane_s32(*&a3, 0)).u64[0];
  return result;
}

uint64_t *SpatialForceFalloff.init(bounds:rate:distanceOffset:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *result;
  *a2 = a4;
  *(a2 + 8) = v4;
  *(a2 + 16) = a3;
  return result;
}

double SpatialForceFalloff.bounds.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double SpatialForceFalloff.bounds.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

RealityFoundation::TimedForceFalloff __swiftcall TimedForceFalloff.init(duration:rate:)(Swift::Double duration, Swift::Double rate)
{
  *v2 = duration;
  v2[1] = rate;
  result.rate = rate;
  result.duration = duration;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForceMode.AccelerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForceMode.AccelerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ForceMode.CodingKeys()
{
  v1 = 0x6563726F66;
  v2 = 0x65736C75706D69;
  if (*v0 != 2)
  {
    v2 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    v1 = 0x6172656C65636361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ForceMode.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ForceMode.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForceMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForceMode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForceMode.ForceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForceMode.ForceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForceMode.ImpulseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForceMode.ImpulseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ForceMode.VelocityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ForceMode.VelocityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ForceMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO18VelocityCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO18VelocityCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO17ImpulseCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO17ImpulseCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO22AccelerationCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO22AccelerationCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO0F10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO0F10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation9ForceModeO10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      lazy protocol witness table accessor for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys();
      v24 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      lazy protocol witness table accessor for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys();
      v24 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    lazy protocol witness table accessor for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys();
    v24 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  lazy protocol witness table accessor for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t ForceMode.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO18VelocityCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO18VelocityCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO17ImpulseCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO17ImpulseCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO22AccelerationCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO22AccelerationCodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO0F10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO0F10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation9ForceModeO10CodingKeys33_F9575A69BF4711160DDF1906A8008A07LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ForceMode.CodingKeys and conformance ForceMode.CodingKeys();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = specialized Collection<>.popFirst()();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v34 = &type metadata for ForceMode;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        lazy protocol witness table accessor for type ForceMode.AccelerationCodingKeys and conformance ForceMode.AccelerationCodingKeys();
        v39 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        lazy protocol witness table accessor for type ForceMode.ForceCodingKeys and conformance ForceMode.ForceCodingKeys();
        v31 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      lazy protocol witness table accessor for type ForceMode.ImpulseCodingKeys and conformance ForceMode.ImpulseCodingKeys();
      v38 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      lazy protocol witness table accessor for type ForceMode.VelocityCodingKeys and conformance ForceMode.VelocityCodingKeys();
      v40 = v42;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t ForceEffectProtocol.parameterTypes.getter@<X0>(_DWORD *a1@<X8>)
{
  return ForceEffectProtocol.parameterTypes.getter(a1);
}

{
  if (one-time initialization token for position != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static PhysicsBodyParameterTypes.position;
  return result;
}

uint64_t static ForceEffectProtocol.register(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v10[2] = a3;
  v10[3] = a4;
  v11 = v4;
  v12 = a1;
  v13 = a2;
  return specialized static MainActor.assumeIsolated<A>(_:file:line:)(partial apply for closure #1 in static ForceEffectProtocol.register(_:), v10);
}

uint64_t static ForceEffectProtocol.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for _registeredForceEffects != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static ForceEffectComponent._registeredForceEffects;
  os_unfair_lock_lock(static ForceEffectComponent._registeredForceEffects + 6);
  v10 = *(v9 + 2);

  os_unfair_lock_unlock(v9 + 6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[7] = v10;
  v12 = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a4, isUniquelyReferenced_nonNull_native);
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock(v9 + 6);
  closure #1 in Atomic.store(_:)specialized partial apply(v9 + 2);
  os_unfair_lock_unlock(v9 + 6);

  result = swift_endAccess();
  if (a2)
  {

    static EntityAction.eventBus(_:)(a1);
    _s17RealityFoundation10getEventIDys6UInt64VxmlFSo032REEntityForceEffectComputeForcesD0V_Ttg5();
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    v14[4] = a2;
    v14[5] = a3;
    aBlock[4] = partial apply for dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol.__register(engine:_:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned UnsafeRawPointer) -> (@unowned REEventHandlerResult);
    aBlock[3] = &block_descriptor_157;
    v15 = _Block_copy(aBlock);

    REEventBusSubscribeWithMatch();
    _Block_release(v15);
    return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(a2);
  }

  return result;
}

uint64_t specialized static MainActor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1C68F3410](0xD00000000000003FLL, 0x80000001C18ECA70);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol.__register(engine:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = a4;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForceEffectEvent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  static ForceEffectParameters.__fromCore(_:)(a2, v43);
  if (*(a2 + 136))
  {
    v27[0] = a3;
    type metadata accessor for ForceEffectProtocolWrapper();
    swift_unknownObjectRetain();
    v17 = swift_dynamicCastClassUnconditional();
    (*(v8 + 16))(v11, v17 + *(*v17 + 96), a5);
    v40 = v43[12];
    v41 = v43[13];
    v42 = v44;
    v36 = v43[8];
    v37 = v43[9];
    v38 = v43[10];
    v39 = v43[11];
    v32 = v43[4];
    v33 = v43[5];
    v34 = v43[6];
    v35 = v43[7];
    v28 = v43[0];
    v29 = v43[1];
    v30 = v43[2];
    v31 = v43[3];
    (*(v8 + 32))(v16, v11, a5);
    v18 = &v16[*(v12 + 36)];
    v19 = v41;
    *(v18 + 12) = v40;
    *(v18 + 13) = v19;
    *(v18 + 28) = v42;
    v20 = v37;
    *(v18 + 8) = v36;
    *(v18 + 9) = v20;
    v21 = v39;
    *(v18 + 10) = v38;
    *(v18 + 11) = v21;
    v22 = v33;
    *(v18 + 4) = v32;
    *(v18 + 5) = v22;
    v23 = v35;
    *(v18 + 6) = v34;
    *(v18 + 7) = v23;
    v24 = v29;
    *v18 = v28;
    *(v18 + 1) = v24;
    v25 = v31;
    *(v18 + 2) = v30;
    *(v18 + 3) = v25;
    outlined init with copy of ForceEffectParameters(v43, &v28);
    (v27[0])(v16);

    outlined destroy of ForceEffectParameters(v43);
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    outlined destroy of ForceEffectParameters(v43);
  }

  return 0;
}

uint64_t static ForceEffectParameters.__fromCore(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (!*result)
  {
    goto LABEL_31;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v8 = *(result + 40);
  v7 = *(result + 48);
  v10 = *(result + 56);
  v9 = *(result + 64);
  v12 = *(result + 72);
  v11 = *(result + 80);
  v23 = *(result + 32);
  v24 = *(result + 104);
  v25 = *(result + 112);
  if (REEntityGetSwiftObject())
  {
    type metadata accessor for Entity();
    v13 = swift_dynamicCastClassUnconditional();
    goto LABEL_8;
  }

  result = REEntityIsBeingDestroyed();
  if (result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v14 = specialized static Entity.entityInfoType(_:)();
  if (v14)
  {
    v15 = (*(v14 + 232))();
    v22 = *(v15 + 16);

    MEMORY[0x1C68F9740](v22, 0);
    *(v15 + 16) = v2;
    MEMORY[0x1C68F9740](v2, v15);

    v13 = v15;
  }

  else
  {
    v13 = makeEntity(for:)(v2);
  }

LABEL_8:
  if (v23)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  if (v8)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  if (v10)
  {
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  if (v9)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (v7)
  {
    v21 = v6;
  }

  else
  {
    v21 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v6;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (v11)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  *(a2 + 32) = v8;
  *(a2 + 40) = v18;
  *(a2 + 48) = v8 == 0;
  *(a2 + 56) = v7;
  *(a2 + 64) = v21;
  *(a2 + 72) = v7 == 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = v19;
  *(a2 + 96) = v10 == 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = v20;
  *(a2 + 120) = v9 == 0;
  *(a2 + 128) = v23;
  *(a2 + 136) = v16;
  *(a2 + 144) = v23 == 0;
  *(a2 + 152) = v12;
  *(a2 + 160) = v17;
  *(a2 + 168) = v12 == 0;
  *(a2 + 176) = v11;
  *(a2 + 184) = result;
  *(a2 + 192) = v11 == 0;
  *(a2 + 200) = v24;
  *(a2 + 208) = v6;
  *(a2 + 216) = v25;
  *(a2 + 224) = v6;
  return result;
}