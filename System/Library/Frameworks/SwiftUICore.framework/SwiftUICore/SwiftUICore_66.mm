int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 1);
  v6 = *(v1 + 3);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(v3 + 3) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 1) = v5 + 1;
    Identifier = CGImageGetIdentifier();
    v11 = *(v3 + 2);
    v14 = *v3;
    v15 = v11;
    v16 = *(v3 + 24);
    ProtobufEncoder.archiveHost.getter(v17);
    MEMORY[0x1EEE9AC00](v12);
    v13[2] = v17;
    v13[3] = a1;
    specialized ProtobufEncoder.encodeAttachedValue<A>(key:encoder:)(Identifier, partial apply for closure #1 in CodableCGImage.encode(to:), v13);
    result = outlined destroy of AnyArchivedViewHost?(v17);
    if (!v2)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

{
  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
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
  *&v6[8 * v8 + 32] = v5;
  *(v1 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v5 + 1;
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v5 = *(v1 + 8);
    v6 = *(v1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
LABEL_7:
  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v6);
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  *(v6 + 2) = v10 + 1;
  *&v6[8 * v10 + 32] = v5;
  *(v1 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v5 + 1;
    CGSize.encode(to:)(v1, v2, v3);
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v5 = *(v1 + 8);
    v6 = *(v1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }
  }

  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  v6 = isUniquelyReferenced_nonNull_native;
LABEL_11:
  v15 = *(v6 + 2);
  v14 = *(v6 + 3);
  if (v15 >= v14 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  *(v6 + 2) = v15 + 1;
  *&v6[8 * v15 + 32] = v5;
  *(v1 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_45;
  }

  *(v1 + 8) = v5 + 1;
  CGPoint.encode(to:)(v1, v11, v12);
  ProtobufEncoder.endLengthDelimited()();
  if (v17)
  {
LABEL_27:
    if ((v19 & 1) == 0)
    {
      goto LABEL_28;
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  v11 = fabs(v16);
  if (v11 >= 65536.0)
  {
    v20 = 25;
  }

  else
  {
    v20 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v20);
  if (v11 >= 65536.0)
  {
    v22 = *(v1 + 8);
    isUniquelyReferenced_nonNull_native = v22 + 8;
    if (__OFADD__(v22, 8))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (*(v1 + 16) < isUniquelyReferenced_nonNull_native)
    {
      v23 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
    }

    else
    {
      *(v1 + 8) = isUniquelyReferenced_nonNull_native;
      v23 = (*v1 + v22);
    }

    *v23 = v16;
    goto LABEL_27;
  }

  v21 = *(v1 + 8);
  isUniquelyReferenced_nonNull_native = v21 + 4;
  if (__OFADD__(v21, 4))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *&v11 = v16;
  if (*(v1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_49;
  }

  *(v1 + 8) = isUniquelyReferenced_nonNull_native;
  for (*(*v1 + v21) = LODWORD(v11); (v19 & 1) == 0; *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v11))
  {
LABEL_28:
    v11 = fabs(v18);
    if (v11 >= 65536.0)
    {
      v24 = 33;
    }

    else
    {
      v24 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v24);
    if (v11 >= 65536.0)
    {
      v27 = *(v1 + 8);
      isUniquelyReferenced_nonNull_native = v27 + 8;
      if (!__OFADD__(v27, 8))
      {
        if (*(v1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          v28 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
        }

        else
        {
          *(v1 + 8) = isUniquelyReferenced_nonNull_native;
          v28 = (*v1 + v27);
        }

        *v28 = v18;
        return ProtobufEncoder.endLengthDelimited()();
      }
    }

    else
    {
      v25 = *(v1 + 8);
      isUniquelyReferenced_nonNull_native = v25 + 4;
      if (!__OFADD__(v25, 4))
      {
        v26 = v18;
        if (*(v1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v26;
        }

        else
        {
          *(v1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*v1 + v25) = v26;
        }

        return ProtobufEncoder.endLengthDelimited()();
      }

LABEL_47:
      __break(1u);
    }

    __break(1u);
LABEL_49:
    ;
  }

  return ProtobufEncoder.endLengthDelimited()();
}

{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v2 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v4 + 1;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v4 = *(v2 + 8);
    v5 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_7;
    }
  }

  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  v5 = isUniquelyReferenced_nonNull_native;
LABEL_7:
  v10 = *(v5 + 2);
  v9 = *(v5 + 3);
  if (v10 >= v9 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
  }

  v11 = *(a1 + 20);
  *(v5 + 2) = v10 + 1;
  *&v5[8 * v10 + 32] = v4;
  *(v2 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v2 + 8) = v4 + 1;
  Color.ResolvedHDR.encode(to:)(v2);
  ProtobufEncoder.endLengthDelimited()();
  if (v11 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v12 = *(v2 + 8);
    isUniquelyReferenced_nonNull_native = v12 + 4;
    if (!__OFADD__(v12, 4))
    {
      if (*(v2 + 16) >= isUniquelyReferenced_nonNull_native)
      {
        *(v2 + 8) = isUniquelyReferenced_nonNull_native;
        *(*v2 + v12) = v11;
        return ProtobufEncoder.endLengthDelimited()();
      }

LABEL_19:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v11;
      return ProtobufEncoder.endLengthDelimited()();
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return ProtobufEncoder.endLengthDelimited()();
}

{
  v12 = *MEMORY[0x1E69E9840];
  v3 = v1[1];
  v4 = v1[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v3;
  v1[3] = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  v1[1] = v3 + 1;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v11 = *(a1 + 64);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  closure #1 in ProjectionTransform.encode(to:)(v10, v1);
  return ProtobufEncoder.endLengthDelimited()();
}

{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  *(v1 + 24) = v4;
  if (!__OFADD__(v3, 1))
  {
    *(v1 + 8) = v3 + 1;
    if ((a1 & 0x1000000000000) != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
      if ((a1 & 0x10000000000) != 0)
      {
LABEL_8:
        v8 = a1;
        if ((a1 & 0x100000000) == 0)
        {
LABEL_9:
          if (!v8)
          {
            return ProtobufEncoder.endLengthDelimited()();
          }

          v9 = 16;
LABEL_14:
          ProtobufEncoder.encodeVarint(_:)(v9);
          ProtobufEncoder.encodeVarint(_:)(v8);
          return ProtobufEncoder.endLengthDelimited()();
        }

LABEL_13:
        v9 = 32;
        goto LABEL_14;
      }
    }

    else if ((a1 & 0x10000000000) != 0)
    {
      goto LABEL_8;
    }

    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
    v8 = a1;
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  *(v1 + 24) = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 8) = v3 + 1;
  if ((a1 & 0x80000000) != 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(a1 & 0x7FFFFFFF);
  if ((a1 & 0x100000000) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  return ProtobufEncoder.endLengthDelimited()();
}

{
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
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
  *(v5 + 8 * v8 + 32) = v4;
  *(v1 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v4 + 1;
    if ((*(a1 + 32) & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*a1), vceqzq_f64(*(a1 + 16)))))) & 1) == 0)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }

    v9 = *a1;
    v10 = *(a1 + 16);
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    result = specialized ProtobufEncoder.encodeMessage<A>(_:)(v9.f64[0], v9.f64[1], *&v10, *(&v10 + 1));
    if (!v2)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

{
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(a1, EllipticalGradient._Paint.encode(to:));
}

{
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(a1, AngularGradient._Paint.encode(to:));
}

{
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(a1, RadialGradient._Paint.encode(to:));
}

{
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(a1, LinearGradient._Paint.encode(to:));
}

{
  return specialized ProtobufEncoder.encodeMessage<A>(_:)(a1, LinearGradient.AbsolutePaint.encode(to:));
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, float a2)
{
  v5 = v2[1];
  v6 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  v2[3] = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v2[1] = v5 + 1;
  if (a1)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(a1);
  }

  if ((a1 & 0x100000000) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (a2 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v10 = v2[1];
    isUniquelyReferenced_nonNull_native = v10 + 4;
    if (!__OFADD__(v10, 4))
    {
      if (v2[2] >= isUniquelyReferenced_nonNull_native)
      {
        v2[1] = isUniquelyReferenced_nonNull_native;
        v11 = (*v2 + v10);
LABEL_14:
        *v11 = a2;
        return ProtobufEncoder.endLengthDelimited()();
      }

LABEL_18:
      v11 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(__int16 a1, float a2, float a3)
{
  v7 = v3[1];
  v8 = v3[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  *(v8 + 16) = v11 + 1;
  *(v8 + 8 * v11 + 32) = v7;
  v3[3] = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v3[1] = v7 + 1;
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

  ProtobufEncoder.encodeVarint(_:)(0xDuLL);
  v12 = v3[1];
  isUniquelyReferenced_nonNull_native = v12 + 4;
  if (__OFADD__(v12, 4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3[2] < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_25;
  }

  v3[1] = isUniquelyReferenced_nonNull_native;
  for (i = (*v3 + v12); ; i = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native))
  {
    *i = a2;
LABEL_11:
    if (a3 == 1.0)
    {
      if ((a1 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v15 = v3[1];
    isUniquelyReferenced_nonNull_native = v15 + 4;
    if (!__OFADD__(v15, 4))
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  if (v3[2] < isUniquelyReferenced_nonNull_native)
  {
    v16 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v3[1] = isUniquelyReferenced_nonNull_native;
    v16 = (*v3 + v15);
  }

  *v16 = a3;
  if (a1)
  {
LABEL_13:
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }

LABEL_14:
  if ((a1 & 0x100) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(int a1, unint64_t a2, char a3, float a4)
{
  v9 = v4[1];
  v10 = v4[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v9;
  v4[3] = v10;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4[1] = v9 + 1;
  if (a4 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v14 = v4[1];
    v15 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      __break(1u);
    }

    else if (v4[2] >= v15)
    {
      v4[1] = v15;
      v16 = (*v4 + v14);
LABEL_10:
      *v16 = a4;
      goto LABEL_11;
    }

    v16 = ProtobufEncoder.growBufferSlow(to:)(v15);
    goto LABEL_10;
  }

LABEL_11:
  if (a2 & 1 | ((a1 & 0x7FFFFFFF) == 0))
  {
    goto LABEL_16;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v17 = v4[1];
  isUniquelyReferenced_nonNull_native = v17 + 4;
  if (__OFADD__(v17, 4))
  {
    goto LABEL_24;
  }

  if (v4[2] < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_26;
  }

  v4[1] = isUniquelyReferenced_nonNull_native;
  for (i = (*v4 + v17); ; i = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native))
  {
    *i = a1;
LABEL_16:
    if (a3)
    {
      break;
    }

    a2 >>= 32;
    if ((a2 & 0x7FFFFFFF) == 0)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v19 = v4[1];
    isUniquelyReferenced_nonNull_native = v19 + 4;
    if (!__OFADD__(v19, 4))
    {
      if (v4[2] < isUniquelyReferenced_nonNull_native)
      {
        v20 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v4[1] = isUniquelyReferenced_nonNull_native;
        v20 = (*v4 + v19);
      }

      *v20 = a2;
      return ProtobufEncoder.endLengthDelimited()();
    }

LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(double a1, double a2, double a3)
{
  v7 = *(v3 + 8);
  v8 = *(v3 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  *&v8[8 * v10 + 32] = v7;
  *(v3 + 24) = v8;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 8) = v7 + 1;
  if (a1 == 0.0)
  {
    goto LABEL_11;
  }

  ProtobufEncoder.encodeVarint(_:)(9uLL);
  v11 = *(v3 + 8);
  isUniquelyReferenced_nonNull_native = v11 + 8;
  if (__OFADD__(v11, 8))
  {
    goto LABEL_19;
  }

  if (*(v3 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_20;
  }

  *(v3 + 8) = isUniquelyReferenced_nonNull_native;
  for (i = (*v3 + v11); ; i = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native))
  {
    *i = a1;
LABEL_11:
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v7 = *(v3 + 8);
    v8 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_17:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    if (v15 >= v14 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 2) = v15 + 1;
    *&v8[8 * v15 + 32] = v7;
    *(v3 + 24) = v8;
    if (!__OFADD__(v7, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  *(v3 + 8) = v7 + 1;
  CGPoint.encode(to:)(v3, a2, a3);
  ProtobufEncoder.endLengthDelimited()();
  return ProtobufEncoder.endLengthDelimited()();
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(int a1, char a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  *(v2 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v5 + 1;
    if (a2)
    {
      lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
      swift_allocError();
      return swift_willThrow();
    }

    if ((a1 & 0x80000000) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(a1 & 0x7FFFFFFF);
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  __break(1u);
  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(double a1, double a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
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
  *&v6[8 * v8 + 32] = v5;
  *(v2 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 8) = v5 + 1;
    if (a1 == 0.0 && a2 == 0.0)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v5 = *(v2 + 8);
    v6 = *(v2 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_9;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  v6 = result;
LABEL_9:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v11 + 1;
  *&v6[8 * v11 + 32] = v5;
  *(v2 + 24) = v6;
  if (!__OFADD__(v5, 1))
  {
    *(v2 + 8) = v5 + 1;
    CGSize.encode(to:)(v2, a1, a2);
    ProtobufEncoder.endLengthDelimited()();
    return ProtobufEncoder.endLengthDelimited()();
  }

  __break(1u);
  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(__int16 a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  *(v1 + 24) = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v3 + 1;
    if (a1)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if ((a1 & 0x100) != 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
    v4 = result;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
    v4 = result;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = v3;
  *(v1 + 24) = v4;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = v3 + 1;
    if (a1)
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }

    if ((a1 & 0x100) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }

    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v5 >= v4 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v5 + 1;
  *(v2 + 8 * v5 + 32) = v1;
  *(v0 + 24) = v2;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v1 + 1;
    ColorView.encode(to:)(v0);
    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

int64_t specialized ProtobufEncoder.encodeMessage<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
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
  *(v7 + 8 * v10 + 32) = v6;
  *(v5 + 24) = v7;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 8) = v6 + 1;
    result = a2(v5);
    if (!v3)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

{
  v5 = v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
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
  *(v7 + 8 * v10 + 32) = v6;
  *(v5 + 24) = v7;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 8) = v6 + 1;
    result = a2(v5);
    if (!v3)
    {
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

void specialized ProtobufEncoder.encodeMessage<A>(_:)(double *a1)
{
  v5 = v1[1];
  v6 = v1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  *(v6 + 8 * v9 + 32) = v5;
  v1[3] = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v1[1] = v5 + 1;
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return;
  }

  v10 = a1[14];
  v11 = a1[15];
  v12 = a1[16];
  v13 = a1[17];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 0.0;
  v19.size.height = 0.0;
  v18.origin.x = v10;
  v18.origin.y = v11;
  v18.size.width = v12;
  v18.size.height = v13;
  if (!CGRectEqualToRect(v18, v19))
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v10, v11, v12, v13);
  }

  v3 = a1[18];
  if (v3 != 0.0)
  {
    v14 = fabs(v3);
    if (v14 >= 65536.0)
    {
      v15 = 25;
    }

    else
    {
      v15 = 29;
    }

    ProtobufEncoder.encodeVarint(_:)(v15);
    if (v14 >= 65536.0)
    {
      v17 = v1[1];
      isUniquelyReferenced_nonNull_native = v17 + 8;
      if (!__OFADD__(v17, 8))
      {
        if (v1[2] < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v3;
        }

        else
        {
          v1[1] = isUniquelyReferenced_nonNull_native;
          *(*v1 + v17) = v3;
        }

        goto LABEL_20;
      }

      goto LABEL_24;
    }

    v16 = v1[1];
    isUniquelyReferenced_nonNull_native = v16 + 4;
    if (!__OFADD__(v16, 4))
    {
      *&v3 = v3;
      if (v1[2] >= isUniquelyReferenced_nonNull_native)
      {
        v1[1] = isUniquelyReferenced_nonNull_native;
        *(*v1 + v16) = LODWORD(v3);
        goto LABEL_20;
      }

LABEL_25:
      *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v3);
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_20:
  ProtobufEncoder.endLengthDelimited()();
}

uint64_t specialized Array._customRemoveLast()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = (v3 + 112 * v5);
      v7 = *v6;
      a1[4] = *(v6 - 1);
      a1[5] = v7;
      *(a1 + 89) = *(v6 + 9);
      v8 = *(v6 - 4);
      *a1 = *(v6 - 5);
      a1[1] = v8;
      v9 = *(v6 - 2);
      a1[2] = *(v6 - 3);
      a1[3] = v9;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static Image.ResizingInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))))
  {
    return (*(a2 + 32) ^ *(a1 + 32) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type Image.ResizingMode and conformance Image.ResizingMode()
{
  result = lazy protocol witness table cache variable for type Image.ResizingMode and conformance Image.ResizingMode;
  if (!lazy protocol witness table cache variable for type Image.ResizingMode and conformance Image.ResizingMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizingMode and conformance Image.ResizingMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Image.ResizingInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Image.ResizingInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Image.ResizableProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for Image.ResizableProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for Image.ResizableProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for Image.ResizableProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for Image.ResizableProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError()
{
  result = lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError);
  }

  return result;
}

uint64_t outlined destroy of AnyArchivedViewHost?(uint64_t a1)
{
  type metadata accessor for AnyArchivedViewHost?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AnyArchivedViewHost?()
{
  if (!lazy cache variable for type metadata for AnyArchivedViewHost?)
  {
    type metadata accessor for AnyArchivedViewHost();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyArchivedViewHost?);
    }
  }
}

unint64_t type metadata accessor for AnyArchivedViewHost()
{
  result = lazy cache variable for type metadata for AnyArchivedViewHost;
  if (!lazy cache variable for type metadata for AnyArchivedViewHost)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AnyArchivedViewHost);
  }

  return result;
}

uint64_t key path setter for _CALayerView.update : <A>_CALayerView<A>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v7;
  *(v8 + 4) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  a2[1] = v8;
  return result;
}

uint64_t _CALayerView.update.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _CALayerView.update.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _CALayerView<>.init(onUpdate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

{
  return thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ())(a1, *(v1 + 32));
}

void EnvironmentValues.defaultPadding.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(v1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(v1);
  }
}

uint64_t EnvironmentValues.defaultPadding.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(v4, a1, a2, a3, a4);

  if (v4[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014DefaultPaddingK033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Ttg5(v9, *v4);
  }
}

void (*EnvironmentValues.defaultPadding.modify(double **a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 6) = v1;
  v5 = *v1;
  v3[7] = *v1;
  v6 = *(v1 + 8);
  *(v3 + 8) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(v5);
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(v5);
    v9 = v14;
    v11 = v15;
    v13 = v16;
  }

  v4[9] = 0.0;
  *v4 = v7;
  *(v4 + 1) = v9;
  *(v4 + 2) = v11;
  *(v4 + 3) = v13;
  return EnvironmentValues.defaultPadding.modify;
}

void EnvironmentValues.defaultPadding.modify(double **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  swift_retain_n();
  v6 = *(v1 + 8);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(*(v1 + 6), v3, v2, v5, v4);

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014DefaultPaddingK033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Ttg5(*(v1 + 7), **(v1 + 6));
  }

  free(v1);
}

__n128 protocol witness for static EnvironmentKey.defaultValue.getter in conformance DefaultPaddingKey@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #16.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

uint64_t _GraphInputs.defaultPadding.getter()
{
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t _ViewInputs.defaultPadding.getter()
{
  if (one-time initialization token for defaultPadding != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.defaultPadding;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t View._automaticPadding(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2 & 1;
  return View.modifier<A>(_:)(v5, a2, &type metadata for AutomaticPaddingViewModifier);
}

uint64_t protocol witness for UnaryLayout.layoutPriority(child:) in conformance IgnoresAutomaticPaddingLayout(uint64_t a1)
{
  if (*(a1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v2 + 88))();
  }

  return result;
}

uint64_t static AutomaticPaddingViewModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v31 = a2[2];
  v32 = v7;
  v33 = a2[4];
  v34 = *(a2 + 20);
  v8 = a2[1];
  v29 = *a2;
  v30 = v8;
  if ((BYTE4(v31) & 0x22) != 0)
  {
    swift_beginAccess();
    v9 = *MEMORY[0x1E698D3F8];
    *&v23 = __PAIR64__(*(v30 + 16), v6);
    DWORD2(v23) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>();
    lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout();
    Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    swift_retain_n();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    v17 = v29;
    v18 = v30;
    v11 = v31;
    LODWORD(v19) = 0;
    v28 = v34;
    v26 = v32;
    v27 = v33;
    v23 = v29;
    v24 = v30;
    v25 = v19;

    outlined init with copy of _ViewInputs(&v29, v15);
    outlined init with copy of _ViewInputs(&v23, v15);
    _s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA016AutomaticPaddingeF033_47C1BD8C61550BB60F4F3D12F752D53DLLV0P6LayoutV07WrappedZ0V_AA015_SafeAreaInsetsF0VTt3B503_s7a4UI28ope13Modifier33_47qrstuvwxy7DLLV05_g30E08modifier6inputs4bodyAA01_E7k6VAA11_lm13VyADG_AA01_E6N29VAjA01_U0V_AOtctFZAjQ_AOtcfU_ArpJIegnnr_09AttributeL09AttributeVyACyAYA_GGTf1nnnc_n(&v23, a3, a4);
    outlined destroy of _ViewInputs(&v23);
    LODWORD(v19) = v11;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v17);
      AGSubgraphEndTreeElement();
    }

    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    return outlined destroy of _ViewInputs(v15);
  }

  else
  {
    v13 = a2[3];
    v25 = a2[2];
    v26 = v13;
    v27 = a2[4];
    v28 = *(a2 + 20);
    v14 = a2[1];
    v23 = *a2;
    v24 = v14;
    return (a3)();
  }
}

uint64_t AutomaticPaddingViewModifier.PaddingLayout.value.getter@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    goto LABEL_9;
  }

  v3 = *AGGraphGetValue();
  v4 = one-time initialization token for lockAssertionsAreEnabled;

  if (v4 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_8:
    v5 = (*(*v3 + 96))();

    v6 = 0.0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    if (v5)
    {
LABEL_15:
      type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_18DDA6EB0;
      *(v20 + 32) = 1;
      *(v20 + 40) = v6;
      *(v20 + 48) = v7;
      *(v20 + 56) = v8;
      *(v20 + 64) = v9;
      *(v20 + 72) = 0u;
      *(v20 + 88) = 0u;
      *(v20 + 104) = 0u;
      *(v20 + 120) = 0u;
      *(v20 + 136) = 1;
      result = outlined consume of SafeAreaInsets.OptionalValue?(1);
      *a2 = 15;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7;
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      *(a2 + 40) = 0;
      *(a2 + 48) = v20;
      *(a2 + 56) = 1;
      return result;
    }

LABEL_9:
    Value = AGGraphGetValue();
    if (*(Value + 32))
    {
      v11 = AGGraphGetValue();
      v12 = *v11;
      if (*(v11 + 8))
      {

        swift_retain_n();
        v6 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(v12);
        v7 = v13;
        v8 = v14;
        v9 = v15;
      }

      else
      {

        v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(v16);
        v7 = v17;
        v8 = v18;
        v9 = v19;
      }
    }

    else
    {
      v8 = *(Value + 16);
      v9 = *(Value + 24);
      v6 = *Value;
      v7 = *(Value + 8);
    }

    goto LABEL_15;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void protocol witness for UnaryLayout.placement(of:in:) in conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[1];
  v11 = *v3;
  v12[0] = v4;
  *(v12 + 9) = *(v3 + 25);
  v5 = *(a1 + 2);
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *a1;
  v10 = v5;
  _PaddingLayout.placement(of:in:)(v7, a3);
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3[1];
  v19 = *v3;
  v20[0] = v4;
  *(v20 + 9) = *(v3 + 25);
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *(a2 + 2);
  v9 = *(a3 + 8);
  v15 = *a1;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v13 = *a2;
  v14 = v8;
  v11 = *a3;
  v12 = v9;
  return _PaddingLayout.sizeThatFits(in:context:child:)(&v15, &v13, &v11);
}

uint64_t getEnumTagSinglePayload for AutomaticPaddingViewModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomaticPaddingViewModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IgnoresAutomaticPaddingLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

unint64_t instantiation function for generic protocol witness table for IgnoresAutomaticPaddingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout()
{
  result = lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout;
  if (!lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout;
  if (!lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, _SafeAreaInsetsModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout()
{
  result = lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout;
  if (!lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SafeAreaInsets.Element>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for AutomaticPaddingViewModifier.PaddingLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout and conformance AutomaticPaddingViewModifier.PaddingLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout()
{
  result = lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout;
  if (!lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout;
  if (!lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout);
  }

  return result;
}

uint64_t ZStack._tree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ZStack._tree.setter(uint64_t a1)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static _ZStackLayout._makeView(root:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B5(v4, v8, a3, a4);
}

uint64_t static _ZStackLayout.implicitRoot.getter()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static Alignment.center;
}

uint64_t ZStackLayout.alignment.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x193AC03C0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for ViewResponder();
        v15 = &protocol witness table for ViewResponder;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of AnyTrackedValue(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for ViewResponder();
        v15 = &protocol witness table for ViewResponder;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        outlined init with take of AnyTrackedValue(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4, void (*a5)(void, void, void), void (*a6)(uint64_t, __int128 *, uint64_t, _BYTE *))
{
  v56 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 36);
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  v45 = *(a2 + 32);
  v46 = v12;
  v47 = v13;
  v48 = *(a2 + 80);
  v14 = *(a2 + 16);
  v43 = *a2;
  v44 = v14;
  DWORD1(v45) = v11 & 0xFFFFFFF3;
  v49 = v10;
  v15 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v50);
  outlined init with copy of PropertyList(&v49, &v50);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v43, v15);
  outlined destroy of PropertyList(&v49);
  v16 = v43;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v16, v50);
  if (v17)
  {
    if ((*(v17 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v11 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v20 = a1;
  v21 = a5;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v16, v50);
  if (v22)
  {
    v23 = *(v22 + 72) | 0x4000;
  }

  else
  {
    v23 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v43, v23);

  a5 = v21;
  a1 = v20;
  if ((v11 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v45) = v11 & 0xFFFFFFF3;
  }

LABEL_5:
  v39[2] = v45;
  v39[3] = v46;
  v39[4] = v47;
  v40 = v48;
  v39[0] = v43;
  v39[1] = v44;
  v52 = v45;
  v53 = v46;
  v54 = v47;
  v55 = v48;
  v50 = v43;
  v51 = v44;
  v18 = outlined init with copy of _ViewInputs(v39, v41);
  a3(v38, v18, &v50);
  v41[2] = v52;
  v41[3] = v53;
  v41[4] = v54;
  v42 = v55;
  v41[0] = v50;
  v41[1] = v51;
  outlined destroy of _ViewInputs(v41);
  outlined init with copy of _ViewListOutputs.Views(v38, v36);
  if (v37)
  {
    v19 = LODWORD(v36[0]);
    if (*(&v36[0] + 1))
    {
      LODWORD(v50) = v36[0];
      *(&v50 + 1) = *(&v36[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v19 = Attribute.init<A>(body:value:flags:update:)();
    }

    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    a5(a1, &v50, v19);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v36, v29);
    v52 = v45;
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v50 = v43;
    v51 = v44;
    if ((v11 & 0x800) != 0)
    {
      v24 = *(a2 + 48);
      v32 = *(a2 + 32);
      v33 = v24;
      v34 = *(a2 + 64);
      v35 = *(a2 + 80);
      v25 = *(a2 + 16);
      v30 = *a2;
      v31 = v25;
      v26 = _ViewListOutputs.makeAttribute(viewInputs:)(&v30);
      a5(a1, &v50, v26);
    }

    else
    {
      a6(a1, &v50, 2, v29);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  outlined destroy of _ViewListOutputs(v38);
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v30 = v43;
  v31 = v44;
  return outlined destroy of _ViewInputs(&v30);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4, void (*a5)(uint64_t, __int128 *, uint64_t), unsigned int a6, void (*a7)(uint64_t, __int128 *, void, _BYTE *))
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v11 = *(a2 + 36);
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  v48 = *(a2 + 32);
  v49 = v12;
  v50 = v13;
  v14 = *(a2 + 80);
  v15 = *(a2 + 16);
  v46 = *a2;
  v47 = v15;
  v51 = v14;
  DWORD1(v48) = v11 & 0xFFFFFFF3;
  v52 = v10;
  v16 = *MEMORY[0x1E698D3F8];
  outlined init with copy of _ViewInputs(a2, &v53);
  outlined init with copy of PropertyList(&v52, &v53);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v46, v16);
  outlined destroy of PropertyList(&v52);
  v17 = v46;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v18 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v17, v53);
  if (v18)
  {
    if ((*(v18 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v11 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v21 = a1;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v22 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v17, v53);
  if (v22)
  {
    v23 = *(v22 + 72) | 0x4000;
  }

  else
  {
    v23 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v46, v23);

  a1 = v21;
  if ((v11 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v48) = v11 & 0xFFFFFFF3;
  }

LABEL_5:
  v42[2] = v48;
  v42[3] = v49;
  v42[4] = v50;
  v43 = v51;
  v42[0] = v46;
  v42[1] = v47;
  v55 = v48;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v53 = v46;
  v54 = v47;
  v19 = outlined init with copy of _ViewInputs(v42, v44);
  a3(v41, v19, &v53);
  v44[2] = v55;
  v44[3] = v56;
  v44[4] = v57;
  v45 = v58;
  v44[0] = v53;
  v44[1] = v54;
  outlined destroy of _ViewInputs(v44);
  outlined init with copy of _ViewListOutputs.Views(v41, v39);
  if (v40)
  {
    v20 = LODWORD(v39[0]);
    if (*(&v39[0] + 1))
    {
      LODWORD(v53) = v39[0];
      *(&v53 + 1) = *(&v39[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v20 = Attribute.init<A>(body:value:flags:update:)();
    }

    v55 = v48;
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v53 = v46;
    v54 = v47;
    outlined init with copy of _ViewInputs(&v53, &v33);
    a5(a1, &v53, v20);

    outlined destroy of _ViewInputs(&v53);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v39, v32);
    v55 = v48;
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v53 = v46;
    v54 = v47;
    if ((v11 & 0x800) != 0)
    {
      v24 = *(a2 + 48);
      v35 = *(a2 + 32);
      v36 = v24;
      v37 = *(a2 + 64);
      v38 = *(a2 + 80);
      v25 = *(a2 + 16);
      v33 = *a2;
      v34 = v25;
      outlined init with copy of _ViewInputs(&v53, v31);
      v26 = _ViewListOutputs.makeAttribute(viewInputs:)(&v33);
      a5(a1, &v53, v26);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v53, &v33);
      a7(a1, &v53, a6, v32);
    }

    outlined destroy of _ViewInputs(&v53);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  outlined destroy of _ViewListOutputs(v41);
  v35 = v48;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v33 = v46;
  v34 = v47;
  return outlined destroy of _ViewInputs(&v33);
}

uint64_t specialized static Layout.makeLayoutView(root:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t, __int128 *), uint64_t a4, void (*a5)(void, void, void), void (*a6)(void, void, void, void))
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 36);
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  v44 = *(a2 + 32);
  v45 = v12;
  v46 = v13;
  v47 = *(a2 + 80);
  v14 = *(a2 + 16);
  v42 = *a2;
  v43 = v14;
  DWORD1(v44) = v11 & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, &v48);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v42, v48);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v11 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = a1;
  v19 = a5;
  v20 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v21 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v42, v48);
  if (v21)
  {
    v22 = *(v21 + 72) | 0x4000;
  }

  else
  {
    v22 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v42, v22);

  a6 = v20;
  a5 = v19;
  a1 = v18;
  if ((v11 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v44) = v11 & 0xFFFFFFF3 | 4;
  }

LABEL_5:
  v38[2] = v44;
  v38[3] = v45;
  v38[4] = v46;
  v39 = v47;
  v38[0] = v42;
  v38[1] = v43;
  v50 = v44;
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v48 = v42;
  v49 = v43;
  v16 = outlined init with copy of _ViewInputs(v38, v40);
  a3(v37, v16, &v48);
  v40[2] = v50;
  v40[3] = v51;
  v40[4] = v52;
  v41 = v53;
  v40[0] = v48;
  v40[1] = v49;
  outlined destroy of _ViewInputs(v40);
  outlined init with copy of _ViewListOutputs.Views(v37, v35);
  if (v36)
  {
    v17 = LODWORD(v35[0]);
    if (*(&v35[0] + 1))
    {
      LODWORD(v48) = v35[0];
      *(&v48 + 1) = *(&v35[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v17 = Attribute.init<A>(body:value:flags:update:)();
    }

    v50 = v44;
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v48 = v42;
    v49 = v43;
    outlined init with copy of _ViewInputs(&v48, &v29);
    a5(a1, &v48, v17);

    outlined destroy of _ViewInputs(&v48);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v35, v28);
    v50 = v44;
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v48 = v42;
    v49 = v43;
    if ((v11 & 0x800) != 0)
    {
      v23 = *(a2 + 48);
      v31 = *(a2 + 32);
      v32 = v23;
      v33 = *(a2 + 64);
      v34 = *(a2 + 80);
      v24 = *(a2 + 16);
      v29 = *a2;
      v30 = v24;
      outlined init with copy of _ViewInputs(&v48, v27);
      v25 = _ViewListOutputs.makeAttribute(viewInputs:)(&v29);
      a5(a1, &v48, v25);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v48, &v29);
      a6(a1, &v48, 65537, v28);
    }

    outlined destroy of _ViewInputs(&v48);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  outlined destroy of _ViewListOutputs(v37);
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v29 = v42;
  v30 = v43;
  return outlined destroy of _ViewInputs(&v29);
}

{
  v54 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 36);
  v12 = *(a2 + 48);
  v13 = *(a2 + 64);
  v44 = *(a2 + 32);
  v45 = v12;
  v46 = v13;
  v47 = *(a2 + 80);
  v14 = *(a2 + 16);
  v42 = *a2;
  v43 = v14;
  DWORD1(v44) = v11 | 0xC;
  outlined init with copy of _ViewInputs(a2, &v48);
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v15 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v42, v48);
  if (v15)
  {
    if ((*(v15 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v11 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v18 = a1;
  v19 = a5;
  v20 = a6;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v21 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v42, v48);
  if (v21)
  {
    v22 = *(v21 + 72) | 0x4000;
  }

  else
  {
    v22 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v42, v22);

  a6 = v20;
  a5 = v19;
  a1 = v18;
  if ((v11 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v44) = v11 | 0xC;
  }

LABEL_5:
  v38[2] = v44;
  v38[3] = v45;
  v38[4] = v46;
  v39 = v47;
  v38[0] = v42;
  v38[1] = v43;
  v50 = v44;
  v51 = v45;
  v52 = v46;
  v53 = v47;
  v48 = v42;
  v49 = v43;
  v16 = outlined init with copy of _ViewInputs(v38, v40);
  a3(v37, v16, &v48);
  v40[2] = v50;
  v40[3] = v51;
  v40[4] = v52;
  v41 = v53;
  v40[0] = v48;
  v40[1] = v49;
  outlined destroy of _ViewInputs(v40);
  outlined init with copy of _ViewListOutputs.Views(v37, v35);
  if (v36)
  {
    v17 = LODWORD(v35[0]);
    if (*(&v35[0] + 1))
    {
      LODWORD(v48) = v35[0];
      *(&v48 + 1) = *(&v35[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v17 = Attribute.init<A>(body:value:flags:update:)();
    }

    v50 = v44;
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v48 = v42;
    v49 = v43;
    outlined init with copy of _ViewInputs(&v48, &v29);
    a5(a1, &v48, v17);

    outlined destroy of _ViewInputs(&v48);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v35, v28);
    v50 = v44;
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v48 = v42;
    v49 = v43;
    if ((v11 & 0x800) != 0)
    {
      v23 = *(a2 + 48);
      v31 = *(a2 + 32);
      v32 = v23;
      v33 = *(a2 + 64);
      v34 = *(a2 + 80);
      v24 = *(a2 + 16);
      v29 = *a2;
      v30 = v24;
      outlined init with copy of _ViewInputs(&v48, v27);
      v25 = _ViewListOutputs.makeAttribute(viewInputs:)(&v29);
      a5(a1, &v48, v25);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v48, &v29);
      a6(a1, &v48, 0x10000, v28);
    }

    outlined destroy of _ViewInputs(&v48);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  outlined destroy of _ViewListOutputs(v37);
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v29 = v42;
  v30 = v43;
  return outlined destroy of _ViewInputs(&v29);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, char a4, void (*a5)(void *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v39 = v6;
  for (i = v7; ; v7 = i)
  {
    if (!v10)
    {
      v20 = v12;
      while (1)
      {
        v19 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v19 >= v11)
        {
          goto LABEL_27;
        }

        v18 = *(v7 + 8 * v19);
        ++v20;
        if (v18)
        {
          v42 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_34;
    }

    v42 = a4;
    v18 = v10;
    v19 = v12;
LABEL_15:
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    v22 = *(*(v6 + 56) + 8 * v21);
    v46 = *(*(v6 + 48) + 16 * v21);
    v47 = v22;
    outlined copy of AttributedString.AnyAttribute(v46, *(&v46 + 1));

    a2(&v48, &v46);
    outlined consume of AttributedString.AnyAttribute(v46, *(&v46 + 1));

    v23 = v49;
    if (!v49)
    {
LABEL_27:
      outlined consume of Set<EventID>.Iterator._Variant();

      return;
    }

    v25 = *(&v48 + 1);
    v46 = v48;
    v24 = v48;
    v50 = v49;
    v26 = *v43;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v48, *(&v48 + 1));
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v26[3] < v31)
    {
      break;
    }

    if (v42)
    {
      if (v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v32)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    v13 = *v43;
    *(*v43 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v14 = (v13[6] + 16 * v28);
    *v14 = v24;
    v14[1] = v25;
    *(v13[7] + 8 * v28) = v23;
    v15 = v13[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      goto LABEL_32;
    }

    v13[2] = v17;
LABEL_7:
    v10 = (v18 - 1) & v18;
    a4 = 1;
    v12 = v19;
    v6 = v39;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v42 & 1);
  v33 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
  if ((v32 & 1) != (v34 & 1))
  {
    goto LABEL_33;
  }

  v28 = v33;
  if ((v32 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v35 = *v43;
  v45 = *(*(*v43 + 56) + 8 * v28);

  a5(v44, &v45, &v50);
  if (!v41)
  {

    outlined consume of AttributedString.AnyAttribute(v24, v25);
    *(v35[7] + 8 * v28) = v44[0];

    goto LABEL_7;
  }

  v45 = v41;
  v36 = v41;
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Error);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined consume of Set<EventID>.Iterator._Variant();

    outlined consume of AttributedString.AnyAttribute(v24, v25);

    return;
  }

LABEL_34:
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD744D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v13, v18);
    *&v21 = v14;
    result = outlined init with take of AnyTrackedValue(v18, &v21 + 8);
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v21;
      v18[1] = v22;
      v19 = v16;
      v20 = *(&v23 + 1);
      v17(v18);
      return outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(v18, type metadata accessor for (key: ObjectIdentifier, value: AnyTrackedValue));
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for LazyFilterSequence<LayoutSubviews>()
{
  if (!lazy cache variable for type metadata for LazyFilterSequence<LayoutSubviews>)
  {
    lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
    v0 = type metadata accessor for LazyFilterSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyFilterSequence<LayoutSubviews>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for ZStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ZStackLayout and conformance ZStackLayout()
{
  result = lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout;
  if (!lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout;
  if (!lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ZStackLayout and conformance ZStackLayout);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-17 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 16) & ~v5, (a2 + v5 + 16) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

void type metadata accessor for Axis?()
{
  if (!lazy cache variable for type metadata for Axis?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Axis?);
    }
  }
}

uint64_t outlined destroy of (key: NSAttributedStringKey, value: Any)(uint64_t a1)
{
  type metadata accessor for (key: NSAttributedStringKey, value: Any)(0, &lazy cache variable for type metadata for (key: NSAttributedStringKey, value: Any), type metadata accessor for NSAttributedStringKey);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id outlined copy of AttributedString.AnyAttribute(id result, uint64_t a2)
{
  if (a2 < 0)
  {
    return result;
  }

  return result;
}

void outlined consume of AttributedString.AnyAttribute(id a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t outlined destroy of LazyMapSequence<LazyFilterSequence<LayoutSubviews>, ViewDimensions>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (key: ObjectIdentifier, value: AnyTrackedValue)()
{
  if (!lazy cache variable for type metadata for (key: ObjectIdentifier, value: AnyTrackedValue))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for AnyTrackedValue);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: ObjectIdentifier, value: AnyTrackedValue));
    }
  }
}

void type metadata accessor for (key: NSAttributedStringKey, value: Any)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (key: Spacing.Key, value: Spacing.Value)()
{
  if (!lazy cache variable for type metadata for (key: Spacing.Key, value: Spacing.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: Spacing.Key, value: Spacing.Value));
    }
  }
}

uint64_t ScrollStateRequest.overrides(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of ScrollStateRequest?(a1, &v13);
  if (!v14)
  {
    outlined destroy of ScrollStateRequest?(&v13, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    return 1;
  }

  outlined init with take of AnyTrackedValue(&v13, v15);
  (*(a3 + 16))(&v13, a2, a3);
  v5 = *&v13;
  v6 = BYTE8(v13);
  v7 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v8 + 16))(&v11, v7, v8);
  if (v12 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return 0;
  }

  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    return 1;
  }

  v10 = v5 < v11;
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v10;
}

uint64_t closure #2 in ScrollStateEnqueueRequests.enqueueRequests(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  outlined init with copy of ScrollStateEnqueueRequests(a2, v7);

  specialized closure #1 in withTransaction<A>(_:_:)(v5, a2, a3);
}

uint64_t closure #1 in closure #2 in ScrollStateEnqueueRequests.enqueueRequests(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!*(v4 + 16) || (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v6 & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  outlined init with copy of AnyTrackedValue(*(v4 + 56) + 40 * v5, &v13);
  if (!*(&v14 + 1))
  {
LABEL_6:
    outlined destroy of ScrollStateRequest?(&v13, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
    swift_endAccess();
    goto LABEL_7;
  }

  outlined init with copy of AnyTrackedValue(&v13, v10);
  outlined destroy of ScrollStateRequest?(&v13, &lazy cache variable for type metadata for ScrollStateRequest?, &lazy cache variable for type metadata for ScrollStateRequest, &protocol descriptor for ScrollStateRequest);
  swift_endAccess();
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  (*(v8 + 48))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v10);
LABEL_7:
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v13, a2);
  return swift_endAccess();
}

uint64_t ScrollToScrollStateRequest.anchor.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 104) = result;
  *(v3 + 112) = a2;
  *(v3 + 120) = a3 & 1;
  return result;
}

uint64_t ScrollToScrollStateRequest.baseTransaction.setter(uint64_t a1)
{

  *(v1 + 224) = a1;
  return result;
}

double ScrollToScrollStateRequest.scrollable.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t ScrollToScrollStateRequest.$scrollable.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = Attribute;
  }

  return v1 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t ScrollToScrollStateRequest.$scrollable.setter()
{
  result = AGCreateWeakAttribute();
  *(v0 + 232) = result;
  return result;
}

uint64_t (*ScrollToScrollStateRequest.$scrollable.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute();
  v4 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v5 = Attribute == v4;
  if (Attribute == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = Attribute;
  }

  *(a1 + 8) = v6;
  v7 = v5;
  *(a1 + 12) = v7;
  return ScrollToScrollStateRequest.$scrollable.modify;
}

uint64_t ScrollToScrollStateRequest.$scrollable.modify(uint64_t *a1)
{
  v1 = *a1;
  result = AGCreateWeakAttribute();
  *(v1 + 232) = result;
  return result;
}

__n128 ScrollToScrollStateRequest.init(binding:anchor:id:value:baseTransaction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v8;
  v9 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v9;
  v10 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v10;
  v11 = *a6;
  *(a8 + 152) = a6[1];
  *(a8 + 136) = v11;
  result = a6[3];
  *(a8 + 200) = a6[4];
  v13 = a6[2];
  *(a8 + 184) = result;
  *(a8 + 96) = *(a1 + 96);
  *(a8 + 104) = a2;
  *(a8 + 112) = a3;
  *(a8 + 120) = a4 & 1;
  *(a8 + 128) = a5;
  v14 = *(a6 + 10);
  *(a8 + 168) = v13;
  *(a8 + 216) = v14;
  *(a8 + 224) = a7;
  *(a8 + 232) = 0;
  return result;
}

uint64_t ScrollToScrollStateRequest.transaction.getter()
{
  v1 = *(v0 + 224);
  v8 = v1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v2);
  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(&v8, v4, v5, v6);

    return v8;
  }

  return v1;
}

uint64_t ScrollToScrollStateRequest.updateScrollable(_:)()
{
  result = AGCreateWeakAttribute();
  *(v0 + 232) = result;
  return result;
}

Swift::Bool __swiftcall ScrollToScrollStateRequest.update()()
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v12);
    v2 = *(v0 + 224);
    v11[0] = v2;

    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v3);
    if (v5)
    {
      v6 = *(v0 + 104);
      v7 = *(v0 + 112);
      v8 = *(v0 + 120);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v11, v6, v7, v8);

      v2 = v11[0];
    }

    MEMORY[0x1EEE9AC00](v4);
    v9 = specialized closure #1 in withTransaction<A>(_:_:)(v2, partial apply for closure #1 in ScrollToScrollStateRequest.update());

    if (v9)
    {
      outlined init with copy of ScrollPosition(v0 + 136, v11);
      (*(**(v0 + 8) + 128))(v11, *v0);
      outlined destroy of ScrollPosition(v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t protocol witness for ScrollStateRequest.transaction.getter in conformance ScrollToScrollStateRequest()
{
  v1 = *(v0 + 224);
  v8 = v1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v2);
  if (v3)
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(&v8, v4, v5, v6);

    return v8;
  }

  return v1;
}

uint64_t protocol witness for ScrollStateRequest.updateScrollable(_:) in conformance ScrollToScrollStateRequest()
{
  result = AGCreateWeakAttribute();
  *(v0 + 232) = result;
  return result;
}

double ScrollStateRequestTransform.init(collection:inputs:)@<D0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[4];
  *v14 = a2[3];
  *&v14[16] = v4;
  v5 = a2[2];
  v12 = a2[1];
  v13 = v5;
  v15 = *(a2 + 20);
  v11 = *a2;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 100) = 0u;
  *a3 = vrev64_s32(*&v14[12]);
  *(a3 + 8) = DWORD2(v12);
  *(a3 + 12) = a1;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v6 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  v7 = specialized CachedEnvironment.attribute<A>(id:_:)(v6);
  swift_endAccess();
  *(a3 + 16) = v7;
  outlined init with copy of _GraphInputs(&v11, &v10);
  outlined destroy of _ViewInputs(&v11);
  v8 = v12;
  *(a3 + 24) = v11;
  *(a3 + 40) = v8;
  result = *&v13;
  *(a3 + 56) = v13;
  return result;
}

Swift::UInt UpdateScrollStateRequest.transaction.getter()
{
  v6 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(&v6, 1);
  v0 = v6;

  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v1);
  if (!v2 || (value = v0, v2[9]))
  {
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
    *(swift_allocObject() + 72) = 0;
    type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
    value = PropertyList.Element.init(keyType:before:after:)(v4, 0, v0).value;
  }

  return value;
}

uint64_t UpdateScrollStateRequest.hasUpdate.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(**(v0 + 8) + 104))(1);
    outlined init with copy of ScrollPosition(v0 + 16, v3);
  }

  else
  {
    (*(**(v0 + 8) + 120))(v3);
  }

  v1 = ScrollPosition.wantsUpdate(toPosition:)(v0 + 104);
  outlined destroy of ScrollPosition(v3);
  return v1 & 1;
}

Swift::Bool __swiftcall UpdateScrollStateRequest.update()()
{
  v8 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(&v8, 1);
  v0 = v8;

  v2 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v1);
  if (v2 && !v2[9])
  {
    v4.value = v0;
  }

  else
  {
    type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>();
    *(swift_allocObject() + 72) = 0;
    type metadata accessor for TransactionPropertyKey<AnimationKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>);
    v4.value = PropertyList.Element.init(keyType:before:after:)(v3, 0, v0).value;
  }

  MEMORY[0x1EEE9AC00](v5);
  v6 = specialized closure #1 in withTransaction<A>(_:_:)(v4.value, partial apply for closure #1 in UpdateScrollStateRequest.update());

  return v6 & 1;
}

uint64_t closure #1 in UpdateScrollStateRequest.update()@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 192);
  if (v3 == 1)
  {
    v4 = result;
    outlined init with copy of ScrollPosition(result + 104, v5);
    (*(**(v4 + 8) + 128))(v5, *v4);
    result = outlined destroy of ScrollPosition(v5);
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for ScrollStateRequest.transaction.getter in conformance UpdateScrollStateRequest()
{
  v1 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(&v1, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v1, 0);

  return v1;
}

uint64_t PositionedByUserScrollStateRequest.hasUpdate.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock) && static Update.dispatchDepth < static Update.depth)
  {
    (*(**(v0 + 8) + 104))(1);
    outlined init with copy of ScrollPosition(v0 + 16, v3);
  }

  else
  {
    (*(**(v0 + 8) + 120))(v3);
  }

  v1 = ScrollPosition.wantsUpdate(toPosition:)(v0 + 104);
  outlined destroy of ScrollPosition(v3);
  return v1 & 1;
}

uint64_t closure #1 in PositionedByUserScrollStateRequest.update()(uint64_t a1)
{
  outlined init with copy of ScrollPosition(a1 + 104, v3);
  (*(**(a1 + 8) + 128))(v3, *a1);
  return outlined destroy of ScrollPosition(v3);
}

uint64_t protocol witness for ScrollStateRequest.update() in conformance PositionedByUserScrollStateRequest()
{
  v1 = 0;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE013IsScrollStatee6UpdateF0019_D49197C3D3C61F0DA0W12CF1D72D0077ALLVG_Tt2g5(&v1, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v1, 0);

  specialized closure #1 in withTransaction<A>(_:_:)(v1, partial apply for closure #1 in PositionedByUserScrollStateRequest.update());

  return 1;
}

uint64_t key path setter for _GraphInputs.updateScrollStateRequest : _GraphInputs(int *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(a2, v3);
}

void (*_GraphInputs.updateScrollStateRequest.modify(uint64_t *a1))(uint64_t ***a1)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v5);
  *(v4 + 32) = 0;
  return _GraphInputs.updateScrollStateRequest.modify;
}

void _GraphInputs.updateScrollStateRequest.modify(uint64_t ***a1)
{
  v1 = *a1;
  v2 = *(*a1 + 10);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(v1[2], v2);

  free(v1);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.ScrollStateRequestKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.ScrollStateRequestKey.defaultValue;
  return result;
}

__n128 ScrollGeometryState.geometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 ScrollGeometryState.geometry.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t ScrollGeometryState.transform.getter@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    v7 = *(result + 8);
    v8 = *(result + 24);
    v4 = *(result + 40);

    v5 = v7;
    v6 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
    v3 = 1;
    v6 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  return result;
}

unint64_t ScrollGeometryState.$transform.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
  }

  else
  {
    v1 = Attribute;
  }

  return v1 | ((Attribute == *MEMORY[0x1E698D3F8]) << 32);
}

uint64_t ScrollGeometryState.$transform.setter()
{
  result = AGCreateWeakAttribute();
  *(v0 + 116) = result;
  return result;
}

uint64_t (*ScrollGeometryState.$transform.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  Attribute = AGWeakAttributeGetAttribute();
  v4 = *MEMORY[0x1E698D3F8];
  *(a1 + 16) = *MEMORY[0x1E698D3F8];
  v5 = Attribute == v4;
  if (Attribute == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = Attribute;
  }

  *(a1 + 8) = v6;
  v7 = v5;
  *(a1 + 12) = v7;
  return ScrollGeometryState.$transform.modify;
}

uint64_t ScrollGeometryState.$transform.modify(uint64_t *a1)
{
  v1 = *a1;
  result = AGCreateWeakAttribute();
  *(v1 + 116) = result;
  return result;
}

__n128 ScrollGeometryState.init(geometry:scrollableAxes:transform:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  *(a4 + 96) = *(a1 + 96);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 116) = a3;
  return result;
}

double static ScrollGeometryState.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  return result;
}

uint64_t static ScrollGeometryPreferenceKey.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ScrollGeometryPreferenceKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ScrollGeometryPreferenceKey.defaultValue;
}

uint64_t ScrollGeometryTransformProvider.init(position:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double ScrollGeometryTransformProvider.value.getter@<D0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetValue();
  result = *v8;
  v10 = v8[1];
  *(a1 + 32) = v6 - (*v8 - v4);
  *(a1 + 40) = v7 - (v10 - v5);
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  return result;
}

uint64_t ScrollGeometryStateProvider.init(geometry:scrollableAxes:transform:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ScrollGeometryStateProvider.value.getter()
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollGeometryState>, &type metadata for ScrollGeometryState, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  Value = AGGraphGetValue();
  v9 = Value[4];
  v10 = Value[5];
  v11 = Value[6];
  v5 = *Value;
  v6 = Value[1];
  v7 = Value[2];
  v8 = Value[3];
  v2 = *AGGraphGetValue();
  v3 = AGCreateWeakAttribute();
  *(v0 + 96) = v9;
  *(v0 + 112) = v10;
  *(v0 + 128) = v11;
  *(v0 + 32) = v5;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 144) = v2;
  *(v0 + 148) = v3;
  return v0;
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollGeometryStateProvider@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollGeometryStateProvider.value.getter();
  *a1 = result;
  return result;
}

uint64_t ScrollStateRequestKind.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6F546C6C6F726373;
  }

  else
  {
    return 0x6156657461647075;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScrollStateRequestKind()
{
  if (*(v0 + 8))
  {
    return 0x6F546C6C6F726373;
  }

  else
  {
    return 0x6156657461647075;
  }
}

uint64_t ScrollToScrollStateRequest.description.getter()
{
  *&v2[0] = 0;
  *(&v2[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v4 = v2[0];
  MEMORY[0x193ABEDD0](0xD00000000000001BLL, 0x800000018DD74510);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Scrollable);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of AnyTrackedValue(WeakValue, v2);
  }

  else
  {
    v3 = 0;
    memset(v2, 0, sizeof(v2));
  }

  outlined destroy of ScrollStateRequest?(v2, &lazy cache variable for type metadata for Scrollable?, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable);
  MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD74530);
  MEMORY[0x193ABEDD0](0x615677656E202C29, 0xED0000282065756CLL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](15913, 0xE200000000000000);
  return v4;
}

uint64_t UpdateScrollStateRequest.description.getter()
{
  _StringGuts.grow(_:)(67);
  MEMORY[0x193ABEDD0](0xD000000000000020, 0x800000018DD74550);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](0x7369567369202C29, 0xEE002820656C6269);
  if (*(v0 + 192))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 192))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x193ABEDD0](v1, v2);

  MEMORY[0x193ABEDD0](0x6174736964202C29, 0xED0000282065636ELL);
  v3 = Double.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](15913, 0xE200000000000000);
  return 0;
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for PlatformItems.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA018GlassMaterialShapeI033_62A32D59B8A902A88963544196023CF7LLV_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GlassMaterialShapeKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO4ItemV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GlassContainer.Item.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA20ContentShapePathDataV_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for ContentShapePathData)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA14GlassContainerO11DataStorageV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GlassContainer.DataStorage.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA17GestureDependencyO0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GestureDependency.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA016RequiredTapCountI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for RequiredTapCountKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA020IsCancellableGestureI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for IsCancellableGestureKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA012GestureLabelI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GestureLabelKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15GestureCategoryV0I0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for GestureCategory.Key)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

unint64_t _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA4TextV06LayoutI0V_TtB5(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 3;
    v4 = *v1;
    v1 += 3;
    if (v4 == &type metadata for Text.LayoutKey)
    {
      v5 = *(v3 - 2);
      return v5 | ((v2 == 0) << 32);
    }
  }

  v5 = 0;
  return v5 | ((v2 == 0) << 32);
}

uint64_t specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v3 = v2;
  _threadTransactionData();
  v6 = one-time initialization token for v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v7)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  v8 = _setThreadTransactionData();
  a2(&v11, v8);
  _setThreadTransactionData();

  if (!v3)
  {
    v9 = v11;
  }

  return v9 & 1;
}

uint64_t specialized static ScrollGeometryState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 112);
  v6 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v6;
  v11[6] = *(a2 + 96);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v9 = *(a2 + 112);
  if (!specialized static ScrollGeometry.== infix(_:_:)(v12, v11) || v5 != v9)
  {
    return 0;
  }

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t outlined assign with take of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, &type metadata for ScrollPosition, type metadata accessor for Binding);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ScrollToScrollStateRequest.update()@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = Scrollable.scrollToPosition(_:)(v4 + 136, v5, v6);
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests()
{
  result = lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests;
  if (!lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ScrollStateRequestKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for ScrollStateRequestKind(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ScrollStateRequestKind(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t assignWithCopy for ScrollStateEnqueueRequests(uint64_t a1, uint64_t a2)
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
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for ScrollStateEnqueueRequests(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 53) = *(a2 + 53);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollStateEnqueueRequests(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollStateEnqueueRequests(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ScrollToScrollStateRequest(uint64_t a1)
{

  if (*(a1 + 73))
  {
    if (*(a1 + 193))
    {
      goto LABEL_3;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 16);
    if (*(a1 + 193))
    {
      goto LABEL_3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 136);
LABEL_3:
}

uint64_t initializeWithCopy for ScrollToScrollStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 73);

  if (v5)
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 40) = v7;
    (**(v7 - 8))(a1 + 16, a2 + 16);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  if (*(a2 + 193))
  {
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 178) = *(a2 + 178);
  }

  else
  {
    v8 = *(a2 + 160);
    *(a1 + 160) = v8;
    (**(v8 - 8))(a1 + 136, a2 + 136);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
  }

  *(a1 + 200) = *(a2 + 200);
  v9 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v9;
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t assignWithCopy for ScrollToScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    if (*(a2 + 73))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
    }

    else
    {
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a2 + 48);
      (**(v7 - 8))(a1 + 16, a2 + 16);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 128) = *(a2 + 128);
  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 136);
    if (*(a2 + 193))
    {
      v10 = *(a2 + 136);
      v11 = *(a2 + 152);
      v12 = *(a2 + 168);
      *(a1 + 178) = *(a2 + 178);
      *(a1 + 168) = v12;
      *(a1 + 152) = v11;
      *(a1 + 136) = v10;
    }

    else
    {
      v13 = *(a2 + 160);
      *(a1 + 160) = v13;
      *(a1 + 168) = *(a2 + 168);
      (**(v13 - 8))(a1 + 136, a2 + 136);
      v14 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v14;
    }
  }

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  return a1;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t assignWithTake for ScrollToScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    v4 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v4;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  if (a1 != a2)
  {
    outlined destroy of ScrollPosition.Storage(a1 + 136);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 178) = *(a2 + 178);
  }

  *(a1 + 200) = *(a2 + 200);
  v5 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v5;

  *(a1 + 232) = *(a2 + 232);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollToScrollStateRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for ScrollToScrollStateRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for ScrollStateRequestTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  v4 = *(a2 + 96);
  if (!*(a1 + 96))
  {
    if (v4)
    {
      *(a1 + 96) = v4;
      *(a1 + 104) = *(a2 + 104);
      (**(v4 - 8))(a1 + 72, a2 + 72);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 72);
    v7 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v7;
    *(a1 + 72) = v6;
    goto LABEL_8;
  }

  v5 = (a1 + 72);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v5, (a2 + 72));
LABEL_8:
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for ScrollStateRequestTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);

  if (*(a1 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollStateRequestTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollStateRequestTransform(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t assignWithCopy for UpdateScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 == a2)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    if (*(a2 + 73))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
    }

    else
    {
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a2 + 48);
      (**(v7 - 8))(a1 + 16, a2 + 16);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    outlined destroy of ScrollPosition.Storage(a1 + 104);
    if (*(a2 + 161))
    {
      v9 = *(a2 + 104);
      v10 = *(a2 + 120);
      v11 = *(a2 + 136);
      *(a1 + 146) = *(a2 + 146);
      *(a1 + 136) = v11;
      *(a1 + 120) = v10;
      *(a1 + 104) = v9;
    }

    else
    {
      v12 = *(a2 + 128);
      *(a1 + 128) = v12;
      *(a1 + 136) = *(a2 + 136);
      (**(v12 - 8))(a1 + 104, a2 + 104);
      v13 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v13;
    }
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t assignWithTake for UpdateScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 == a2)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    v4 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v4;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    outlined destroy of ScrollPosition.Storage(a1 + 104);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 146) = *(a2 + 146);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t storeEnumTagSinglePayload for UpdateScrollStateRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollGeometryState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 124))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollGeometryState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
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

  *(result + 124) = v3;
  return result;
}

void type metadata accessor for TransactionPropertyKey<AnimationKey>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for TransactionPropertyKey();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t initializeWithCopy for PositionedByUserScrollStateRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 73);

  if (v5)
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
  }

  else
  {
    v7 = *(a2 + 40);
    *(a1 + 40) = v7;
    (**(v7 - 8))(a1 + 16, a2 + 16);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  if (*(a2 + 161))
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 146) = *(a2 + 146);
  }

  else
  {
    v8 = *(a2 + 128);
    *(a1 + 128) = v8;
    (**(v8 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t assignWithCopy for PositionedByUserScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 == a2)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    if (*(a2 + 73))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      v6 = *(a2 + 48);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 32) = v5;
      *(a1 + 48) = v6;
      *(a1 + 16) = v4;
    }

    else
    {
      v7 = *(a2 + 40);
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a2 + 48);
      (**(v7 - 8))(a1 + 16, a2 + 16);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    outlined destroy of ScrollPosition.Storage(a1 + 104);
    if (*(a2 + 161))
    {
      v9 = *(a2 + 104);
      v10 = *(a2 + 120);
      v11 = *(a2 + 136);
      *(a1 + 146) = *(a2 + 146);
      *(a1 + 136) = v11;
      *(a1 + 120) = v10;
      *(a1 + 104) = v9;
    }

    else
    {
      v12 = *(a2 + 128);
      *(a1 + 128) = v12;
      *(a1 + 136) = *(a2 + 136);
      (**(v12 - 8))(a1 + 104, a2 + 104);
      v13 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v13;
    }
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t assignWithTake for PositionedByUserScrollStateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  if (a1 == a2)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    outlined destroy of ScrollPosition.Storage(a1 + 16);
    v4 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v4;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 58) = *(a2 + 58);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    outlined destroy of ScrollPosition.Storage(a1 + 104);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 146) = *(a2 + 146);
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t getEnumTagSinglePayload for PositionedByUserScrollStateRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t storeEnumTagSinglePayload for PositionedByUserScrollStateRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RadialGradient.init(gradient:center:startRadius:endRadius:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t EllipticalGradient.init(stops:center:startRadiusFraction:endRadiusFraction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *(result + 40);
    v8 = (result + 56);
    while (--v6)
    {
      v9 = *v8;
      v8 += 2;
      v10 = v9 < v7;
      v7 = v9;
      if (v10)
      {
        v11 = result;
        v12 = a3;
        v13 = a2;
        v14 = a4;
        v15 = a5;
        v16 = a6;
        static os_log_type_t.fault.getter();
        if (one-time initialization token for runtimeIssuesLog != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        a6 = v16;
        a5 = v15;
        a4 = v14;
        a2 = v13;
        a3 = v12;
        result = v11;
        break;
      }
    }
  }

  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

double AngularGradient.init(gradient:center:angle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  result = (a5 * 128.0 + 804.247719) * 0.0078125;
  *(a2 + 24) = a5;
  *(a2 + 32) = result;
  return result;
}

uint64_t LinearGradient.gradient.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LinearGradient._Paint.init(gradient:startPoint:endPoint:allowedDynamicRange:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(result + 8);
  v8 = *(result + 12);
  v9 = *(result + 16);
  v10 = *a2;
  *a3 = *result;
  *(a3 + 8) = v7;
  *(a3 + 12) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = a4;
  *(a3 + 32) = a5;
  *(a3 + 40) = a6;
  *(a3 + 48) = a7;
  *(a3 + 56) = v10;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.getter in conformance LinearGradient._Paint@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v17 = *v1;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  ResolvedGradient.animatableData.getter(&v13);
  v6 = vdupq_n_s64(0x4060000000000000uLL);
  result = vmulq_f64(*(v1 + 3), v6);
  v8 = vmulq_f64(*(v1 + 5), v6);
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  *a1 = result;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 44) = v11;
  *(a1 + 48) = v12;
  return result;
}

float64x2_t LinearGradient._Paint.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v17 = *v1;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  ResolvedGradient.animatableData.getter(&v13);
  v6 = vdupq_n_s64(0x4060000000000000uLL);
  result = vmulq_f64(*(v1 + 3), v6);
  v8 = vmulq_f64(*(v1 + 5), v6);
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  *a1 = result;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 44) = v11;
  *(a1 + 48) = v12;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance LinearGradient._Paint(uint64_t a1)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = *(a1 + 16);
  *(v1 + 24) = vmulq_f64(*a1, v2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  *(v1 + 40) = vmulq_f64(v3, v2);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  return ResolvedGradient.animatableData.setter(&v9);
}

uint64_t LinearGradient._Paint.animatableData.setter(uint64_t a1)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = *(a1 + 16);
  *(v1 + 24) = vmulq_f64(*a1, v2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  *(v1 + 40) = vmulq_f64(v3, v2);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  return ResolvedGradient.animatableData.setter(&v9);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint(uint64_t **a1))()
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
  v2[4] = LinearGradient._Paint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void (*LinearGradient._Paint.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 3);
  v7 = *(v1 + 16);
  v20 = *v1;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v8 = vdupq_n_s64(0x4060000000000000uLL);
  v14 = vmulq_f64(*(v1 + 5), v8);
  v15 = vmulq_f64(*(v1 + 3), v8);
  ResolvedGradient.animatableData.getter(&v16);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  *v4 = v15;
  *(v4 + 16) = v14;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  *(v4 + 44) = v11;
  *(v4 + 48) = v12;
  return LinearGradient._Paint.animatableData.modify;
}

void LinearGradient._Paint.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 44);
  v7 = *(v2 + 48);
  v8 = vdupq_n_s64(0x3F80000000000000uLL);
  v9 = *(v2 + 16);
  *(v3 + 24) = vmulq_f64(*v2, v8);
  *(v3 + 40) = vmulq_f64(v9, v8);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  if (a2)
  {

    ResolvedGradient.animatableData.setter(&v10);
  }

  else
  {
    ResolvedGradient.animatableData.setter(&v10);
  }

  free(v2);
}

float LinearGradient.AbsolutePaint.contentHeadroom.getter()
{
  result = *(v0 + 12);
  if (*(v0 + 16))
  {
    return 1.0;
  }

  return result;
}

uint64_t protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance LinearGradient.AbsolutePaint(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 3);
  v28 = *(v3 + 16);
  *&v29 = v9;
  BYTE8(v29) = v10;
  HIDWORD(v29) = v11;
  v30[0] = v28;
  *&v30[8] = *(v3 + 3);
  *&v30[24] = *(v3 + 5);
  *&v30[40] = 0;
  *&v31 = 0;
  BYTE8(v31) = 0;
  HIDWORD(v31) = 0;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v29);
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v29;
  v18 = *v30;
  v19 = *&v30[16];
  v20 = *&v30[32];
  v12 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v12;
  v15 = v7;
  v16 = v8;

  GraphicsContext.draw(_:with:style:)(a1, &v17, v14, a3);
  v38[8] = v25;
  v38[9] = v26;
  v39 = v27;
  v38[4] = v21;
  v38[5] = v22;
  v38[6] = v23;
  v38[7] = v24;
  v38[0] = v17;
  v38[1] = v18;
  v38[2] = v19;
  v38[3] = v20;
  return outlined destroy of GraphicsContext.ResolvedShading(v38);
}

uint64_t LinearGradient.AbsolutePaint.draw(path:style:in:bounds:)(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 3);
  v28 = *(v3 + 16);
  *&v29 = v9;
  BYTE8(v29) = v10;
  HIDWORD(v29) = v11;
  v30[0] = v28;
  *&v30[8] = *(v3 + 3);
  *&v30[24] = *(v3 + 5);
  *&v30[40] = 0;
  *&v31 = 0;
  BYTE8(v31) = 0;
  HIDWORD(v31) = 0;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v29);
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v17 = v29;
  v18 = *v30;
  v19 = *&v30[16];
  v20 = *&v30[32];
  v12 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v12;
  v15 = v7;
  v16 = v8;

  GraphicsContext.draw(_:with:style:)(a1, &v17, v14, a3);
  v38[8] = v25;
  v38[9] = v26;
  v39 = v27;
  v38[4] = v21;
  v38[5] = v22;
  v38[6] = v23;
  v38[7] = v24;
  v38[0] = v17;
  v38[1] = v18;
  v38[2] = v19;
  v38[3] = v20;
  return outlined destroy of GraphicsContext.ResolvedShading(v38);
}

__n128 protocol witness for Animatable.animatableData.getter in conformance LinearGradient.AbsolutePaint@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v16 = *v1;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  ResolvedGradient.animatableData.getter(&v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result = *(v1 + 3);
  v11 = *(v1 + 5);
  *a1 = result;
  *(a1 + 16) = v11;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = v8;
  *(a1 + 48) = v9;
  return result;
}

__n128 LinearGradient.AbsolutePaint.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v16 = *v1;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  ResolvedGradient.animatableData.getter(&v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  result = *(v1 + 3);
  v11 = *(v1 + 5);
  *a1 = result;
  *(a1 + 16) = v11;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = v8;
  *(a1 + 48) = v9;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance LinearGradient.AbsolutePaint(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v6;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  return ResolvedGradient.animatableData.setter(&v8);
}

uint64_t LinearGradient.AbsolutePaint.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v6;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  return ResolvedGradient.animatableData.setter(&v8);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint(uint64_t **a1))()
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
  v2[4] = LinearGradient.AbsolutePaint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

void (*LinearGradient.AbsolutePaint.animatableData.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 3);
  v7 = *(v1 + 16);
  v19 = *v1;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v13 = *(v1 + 5);
  v14 = *(v1 + 3);
  ResolvedGradient.animatableData.getter(&v15);
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18;
  *v4 = v14;
  *(v4 + 16) = v13;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 44) = v10;
  *(v4 + 48) = v11;
  return LinearGradient.AbsolutePaint.animatableData.modify;
}

void LinearGradient.AbsolutePaint.animatableData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 32);
  v5 = v2[40];
  v6 = *(v2 + 11);
  v7 = v2[48];
  v8 = *(v2 + 1);
  *(v3 + 24) = *v2;
  *(v3 + 40) = v8;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  if (a2)
  {

    ResolvedGradient.animatableData.setter(&v9);
  }

  else
  {
    ResolvedGradient.animatableData.setter(&v9);
  }

  free(v2);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance RadialGradient._Paint(uint64_t **a1))()
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
  v2[4] = RadialGradient._Paint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t (*RadialGradient._Paint.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 3);
  v7 = *(v1 + 16);
  v8 = v1[5];
  v9 = v1[6];
  v20 = *v1;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v15 = vmulq_f64(*(v1 + 3), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v16);
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  *v4 = v15;
  *(v4 + 16) = v10;
  *(v4 + 24) = v11;
  *(v4 + 28) = v12;
  *(v4 + 32) = v13;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  return RadialGradient._Paint.animatableData.modify;
}

uint64_t EllipticalGradient._Paint.draw(path:style:in:bounds:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a2 + 4);
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 3);
  v11 = *(v4 + 16);
  v13 = *(v4 + 3);
  v12 = *(v4 + 4);
  v14 = v4[5];
  v15 = v4[6];
  v31 = a2[1];
  v32 = *a2;
  v30 = *(a2 + 40);
  if ((*(a4 + 32) & 1) == 0)
  {
    x = *a4;
    y = *(a4 + 8);
    width = *(a4 + 16);
    height = *(a4 + 24);
LABEL_20:
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v63.origin.x = x + v13 * CGRectGetWidth(v62);
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v47 = v11;
    *&v48 = v8;
    BYTE8(v48) = v9;
    HIDWORD(v48) = v10;
    LOBYTE(v49) = v11;
    *(&v49 + 1) = *&v63.origin.x;
    *&v50 = y + v12 * CGRectGetHeight(v63);
    *(&v50 + 1) = width;
    *&v51 = height;
    *(&v51 + 1) = v14;
    *&v52 = v15;
    BYTE8(v52) = 3;
    HIDWORD(v52) = 0;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v48);
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v33[0] = v32;
    v33[1] = v31;
    v34 = v7;
    v35 = v30;

    GraphicsContext.draw(_:with:style:)(a1, &v36, v33, v5);
    v59[8] = v44;
    v59[9] = v45;
    v60 = v46;
    v59[4] = v40;
    v59[5] = v41;
    v59[6] = v42;
    v59[7] = v43;
    v59[0] = v36;
    v59[1] = v37;
    v59[2] = v38;
    v59[3] = v39;
    return outlined destroy of GraphicsContext.ResolvedShading(v59);
  }

  v17 = *a1;
  v18 = *(a1 + 32);
  if (v18 <= 2)
  {
    if (*(a1 + 32) && v18 != 1)
    {
      x = *(*&v17 + 16);
      y = *(*&v17 + 24);
      width = *(*&v17 + 32);
      height = *(*&v17 + 40);
    }

    else
    {
      x = *a1;
      y = *(a1 + 8);
      width = *(a1 + 16);
      height = *(a1 + 24);
    }

    goto LABEL_19;
  }

  if (v18 == 5)
  {
    if (*(*&v17 + 16))
    {
      if (*(*&v17 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v23 = MEMORY[0x193AC3640](*&v17 + 24);
      }

      x = v23;
      y = v24;
      width = v25;
      height = v26;
      goto LABEL_18;
    }

    v27 = *(*&v17 + 24);
    if (v27)
    {
      path = v27;

      PathBoundingBox = CGPathGetPathBoundingBox(path);
      x = PathBoundingBox.origin.x;
      y = PathBoundingBox.origin.y;
      width = PathBoundingBox.size.width;
      height = PathBoundingBox.size.height;

LABEL_18:
      outlined destroy of Path(a1);
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (v18 == 6)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
LABEL_19:
    v5 = a3;
    goto LABEL_20;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

float64x2_t RadialGradient._Paint.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v6 = v1[5];
  v7 = v1[6];
  v17 = *v1;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  ResolvedGradient.animatableData.getter(&v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  result = vmulq_f64(*(v1 + 3), vdupq_n_s64(0x4060000000000000uLL));
  *a1 = result;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 28) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance RadialGradient._Paint(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(v1 + 24) = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  result = ResolvedGradient.animatableData.setter(&v9);
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance EllipticalGradient._Paint(uint64_t **a1))()
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
  v2[4] = EllipticalGradient._Paint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t (*EllipticalGradient._Paint.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 3);
  v7 = *(v1 + 16);
  v8 = v1[5];
  v9 = v1[6];
  v20 = *v1;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v15 = vmulq_f64(*(v1 + 3), vdupq_n_s64(0x4060000000000000uLL));
  ResolvedGradient.animatableData.getter(&v16);
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  *v4 = v15;
  *(v4 + 16) = v10;
  *(v4 + 24) = v11;
  *(v4 + 28) = v12;
  *(v4 + 32) = v13;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  return EllipticalGradient._Paint.animatableData.modify;
}

void RadialGradient._Paint.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 28);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v8 = *(v2 + 48);
  *(v3 + 24) = vmulq_f64(*v2, vdupq_n_s64(0x3F80000000000000uLL));
  v10 = *(v2 + 56);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  if (a2)
  {

    ResolvedGradient.animatableData.setter(&v11);
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
  }

  else
  {
    ResolvedGradient.animatableData.setter(&v11);
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
  }

  free(v2);
}

uint64_t LinearGradient._Paint.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
}

uint64_t LinearGradient._Paint.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  *(v1 + 16) = v5;
  return result;
}

uint64_t RadialGradient._Paint.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = *(a2 + 4);
  v9 = *(a2 + 40);
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 3);
  v13 = *(v5 + 16);
  v14 = *(v5 + 3);
  v15 = *(v5 + 5);
  v34 = a2[1];
  v35 = *a2;
  if ((*(a4 + 32) & 1) == 0)
  {
    v16 = *a4;
    v18 = *(a4 + 16);
    goto LABEL_6;
  }

  v16 = *a1;
  v17 = *(a1 + 32);
  if (v17 <= 2)
  {
    v18 = *(a1 + 2);
    if (v17 >= 2)
    {
      v16 = *(*&v16.f64[0] + 16);
      v18 = *(*a1 + 32);
    }

    goto LABEL_6;
  }

  if (v17 != 5)
  {
    if (v17 != 6)
    {
      goto LABEL_19;
    }

    v16 = *MEMORY[0x1E695F050];
    v18 = *(MEMORY[0x1E695F050] + 16);
LABEL_6:
    v50 = v13;
    *&v51 = v10;
    BYTE8(v51) = v11;
    HIDWORD(v51) = v12;
    v52[0] = v13;
    *&v52[8] = vaddq_f64(v16, vmulq_f64(v14, v18));
    *&v52[24] = v15;
    *&v52[40] = 0;
    *&v53 = 0;
    BYTE8(v53) = a5;
    HIDWORD(v53) = 0;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi4_(&v51);
    v47 = v57;
    v48 = v58;
    v49 = v59;
    v43 = v53;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v39 = v51;
    v40 = *v52;
    v41 = *&v52[16];
    v42 = *&v52[32];
    v36[0] = v35;
    v36[1] = v34;
    v37 = v8;
    v38 = v9;

    GraphicsContext.draw(_:with:style:)(a1, &v39, v36, a3);
    v60[8] = v47;
    v60[9] = v48;
    v61 = v49;
    v60[4] = v43;
    v60[5] = v44;
    v60[6] = v45;
    v60[7] = v46;
    v60[0] = v39;
    v60[1] = v40;
    v60[2] = v41;
    v60[3] = v42;
    return outlined destroy of GraphicsContext.ResolvedShading(v60);
  }

  v20 = *a1;
  v33 = a5;
  v31 = *(v5 + 3);
  v32 = *(v5 + 5);
  if (*(*&v16.f64[0] + 16))
  {
    if (*(*&v16.f64[0] + 16) == 1)
    {

      RBPathGetBoundingRect();
    }

    else
    {

      v21 = MEMORY[0x193AC3640](*&v20 + 24);
    }

    width = v23;
    x = v21;
    y = v22;
    height = v24;
    goto LABEL_17;
  }

  v25 = *(*&v16.f64[0] + 24);
  if (v25)
  {
    v26 = v25;

    PathBoundingBox = CGPathGetPathBoundingBox(v26);
    width = PathBoundingBox.size.width;
    x = PathBoundingBox.origin.x;
    y = PathBoundingBox.origin.y;
    height = PathBoundingBox.size.height;

LABEL_17:
    outlined destroy of Path(a1);
    v18.f64[0] = width;
    v16.f64[0] = x;
    v16.f64[1] = y;
    v18.f64[1] = height;
    a5 = v33;
    v14 = v31;
    v15 = v32;
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL LinearGradient._Paint.isClear.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (*v0 + 44);
  LOBYTE(result) = 1;
  v4 = 1 - v1;
  do
  {
    if (result)
    {
      result = *v2 == 0.0;
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v4)
      {
        return result;
      }
    }

    ++v4;
    v2 += 12;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

uint64_t protocol witness for ResolvedPaint.resolvedGradient.getter in conformance LinearGradient._Paint@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 8) | (*(v1 + 12) << 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

float64x2_t AngularGradient._Paint.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 3);
  v5 = *(v1 + 16);
  v16 = *v1;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  ResolvedGradient.animatableData.getter(&v12);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = vdupq_n_s64(0x4060000000000000uLL);
  *a1 = vmulq_f64(*(v1 + 3), v10);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 32) = v9;
  result = vmulq_f64(*(v1 + 5), v10);
  *(a1 + 40) = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance AngularGradient._Paint(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v8 = vdupq_n_s64(0x3F80000000000000uLL);
  *(v1 + 24) = vmulq_f64(*a1, v8);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  ResolvedGradient.animatableData.setter(&v9);
  result = vmulq_f64(*(a1 + 40), v8);
  *(v1 + 40) = result;
  return result;
}

float64x2_t AngularGradient._Paint.animatableData.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v8 = vdupq_n_s64(0x3F80000000000000uLL);
  *(v1 + 24) = vmulq_f64(*a1, v8);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  ResolvedGradient.animatableData.setter(&v9);
  result = vmulq_f64(*(a1 + 40), v8);
  *(v1 + 40) = result;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance AngularGradient._Paint(uint64_t **a1))()
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
  v2[4] = AngularGradient._Paint.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void (*AngularGradient._Paint.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 3);
  v7 = *(v1 + 16);
  v20 = *v1;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v8 = vdupq_n_s64(0x4060000000000000uLL);
  v14 = vmulq_f64(*(v1 + 3), v8);
  v15 = vmulq_f64(*(v1 + 5), v8);
  ResolvedGradient.animatableData.getter(&v16);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  *v4 = v14;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 28) = v11;
  *(v4 + 32) = v12;
  *(v4 + 40) = v15;
  return AngularGradient._Paint.animatableData.modify;
}

void AngularGradient._Paint.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 28);
  v7 = *(v2 + 32);
  v9 = *(v2 + 40);
  v8 = *(v2 + 48);
  *(v3 + 24) = vmulq_f64(*v2, vdupq_n_s64(0x3F80000000000000uLL));
  v10 = *(v2 + 56);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  if (a2)
  {

    ResolvedGradient.animatableData.setter(&v11);
    *(v10 + 40) = v9 * 0.0078125;
    *(v10 + 48) = v8 * 0.0078125;
  }

  else
  {
    ResolvedGradient.animatableData.setter(&v11);
    *(v10 + 40) = v9 * 0.0078125;
    *(v10 + 48) = v8 * 0.0078125;
  }

  free(v2);
}

uint64_t LinearGradient.fallbackColor(in:)()
{
  if (*(*v0 + 16))
  {
  }

  else
  {
    return 0;
  }
}

float64x2_t key path getter for LinearGradient._Paint.animatableData : LinearGradient._Paint@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = *(a1 + 16);
  v18 = *a1;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  ResolvedGradient.animatableData.getter(&v14);
  v7 = vdupq_n_s64(0x4060000000000000uLL);
  result = vmulq_f64(*(a1 + 3), v7);
  v9 = vmulq_f64(*(a1 + 5), v7);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *a2 = result;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 44) = v12;
  *(a2 + 48) = v13;
  return result;
}

uint64_t key path setter for LinearGradient._Paint.animatableData : LinearGradient._Paint(uint64_t a1, uint64_t a2)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = *(a1 + 16);
  *(a2 + 24) = vmulq_f64(*a1, v2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  *(a2 + 40) = vmulq_f64(v3, v2);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;

  return ResolvedGradient.animatableData.setter(&v9);
}

__n128 key path getter for LinearGradient.AbsolutePaint.animatableData : LinearGradient.AbsolutePaint@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = *(a1 + 16);
  v17 = *a1;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  ResolvedGradient.animatableData.getter(&v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v21 = v16;
  result = *(a1 + 3);
  v12 = *(a1 + 5);
  *a2 = result;
  *(a2 + 16) = v12;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 44) = v9;
  *(a2 + 48) = v10;
  return result;
}

uint64_t key path setter for LinearGradient.AbsolutePaint.animatableData : LinearGradient.AbsolutePaint(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  *(a2 + 24) = *a1;
  *(a2 + 40) = v6;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;

  return ResolvedGradient.animatableData.setter(&v8);
}

void LinearGradient._Paint.encode(to:)(uint64_t a1, void (*a2)(uint64_t, double, double))
{
  v5 = v2;
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  v11 = *(v5 + 56);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (!v3)
  {
    if (v7 != 0.0 || v8 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      v12 = *(a1 + 8);
      v13 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v14 = *(v13 + 2);
      v15 = *(v13 + 3);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v26 = v14 + 1;
        v20 = v13;
        v21 = *(v13 + 2);
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1, v20);
        v14 = v21;
        v16 = v26;
        v13 = v22;
      }

      *(v13 + 2) = v16;
      *&v13[8 * v14 + 32] = v12;
      *(a1 + 24) = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      *(a1 + 8) = v12 + 1;
      a2(a1, v7, v8);
      ProtobufEncoder.endLengthDelimited()();
    }

    if (v9 == 0.0 && v10 == 0.0)
    {
LABEL_17:
      if (v11)
      {
        ProtobufEncoder.encodeVarint(_:)(0x20uLL);
        ProtobufEncoder.encodeVarint(_:)(v11);
      }

      return;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_13:
      v17 = *(v13 + 2);
      v18 = *(v13 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v27 = v17 + 1;
        v23 = v13;
        v24 = *(v13 + 2);
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v23);
        v17 = v24;
        v19 = v27;
        v13 = v25;
      }

      *(v13 + 2) = v19;
      *&v13[8 * v17 + 32] = v12;
      *(a1 + 24) = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      *(a1 + 8) = v12 + 1;
      a2(a1, v9, v10);
      ProtobufEncoder.endLengthDelimited()();
      goto LABEL_17;
    }

LABEL_21:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    goto LABEL_13;
  }
}

void RadialGradient._Paint.encode(to:)(uint64_t a1)
{
  RadialGradient._Paint.encode(to:)(a1);
}

{
  v3 = v1;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  v9 = *(v3 + 56);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return;
  }

  if (v5 == 0.0 && v6 == 0.0)
  {
    if (v8 == 0.0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v10 = *(a1 + 8);
    v11 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
      v11 = isUniquelyReferenced_nonNull_native;
    }

    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v25 = v13 + 1;
      v23 = v11;
      v24 = *(v11 + 16);
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1, v23);
      v13 = v24;
      v15 = v25;
      v11 = isUniquelyReferenced_nonNull_native;
    }

    *(v11 + 16) = v15;
    *(v11 + 8 * v13 + 32) = v10;
    *(a1 + 24) = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    *(a1 + 8) = v10 + 1;
    UnitPoint.encode(to:)(a1, v5, v6);
    ProtobufEncoder.endLengthDelimited()();
    if (v8 == 0.0)
    {
      goto LABEL_22;
    }
  }

  v11 = 0;
  v5 = fabs(v8);
  if (v5 >= 65536.0)
  {
    v16 = 25;
  }

  else
  {
    v16 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v16);
  if (v5 >= 65536.0)
  {
    v18 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v18 + 8;
    if (!__OFADD__(v18, 8))
    {
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v8;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v18) = v8;
      }

      goto LABEL_22;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = v17 + 4;
  if (__OFADD__(v17, 4))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v5 = v8;
  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_41;
  }

  *(a1 + 8) = isUniquelyReferenced_nonNull_native;
  *(*a1 + v17) = LODWORD(v5);
LABEL_22:
  while (v7 != 0.0)
  {
    v11 = v2;
    v5 = fabs(v7);
    if (v5 >= 65536.0)
    {
      v19 = 33;
    }

    else
    {
      v19 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v19);
    if (v5 >= 65536.0)
    {
      v22 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v22 + 8;
      if (!__OFADD__(v22, 8))
      {
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v7;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v22) = v7;
        }

        break;
      }
    }

    else
    {
      v20 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v20 + 4;
      if (!__OFADD__(v20, 4))
      {
        v21 = v7;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v21;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v20) = v21;
        }

        break;
      }

LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    v2 = v11;
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v5);
  }

  if (v9)
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(v9);
  }
}

uint64_t key path setter for RadialGradient._Paint.animatableData : RadialGradient._Paint(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(a2 + 24) = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;

  result = ResolvedGradient.animatableData.setter(&v10);
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

void EllipticalGradient._Paint.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v3 + 40);
  v7 = *(v3 + 48);
  v9 = *(v3 + 56);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (v2)
  {
    return;
  }

  if (v5 != 0.5 || v6 != 0.5)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v11 = *(a1 + 8);
    v12 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
      v12 = isUniquelyReferenced_nonNull_native;
    }

    v14 = *(v12 + 16);
    v15 = *(v12 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v26 = v14 + 1;
      v24 = v12;
      v25 = *(v12 + 16);
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1, v24);
      v14 = v25;
      v16 = v26;
      v12 = isUniquelyReferenced_nonNull_native;
    }

    *(v12 + 16) = v16;
    *(v12 + 8 * v14 + 32) = v11;
    *(a1 + 24) = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    *(a1 + 8) = v11 + 1;
    UnitPoint.encode(to:)(a1, v5, v6);
    ProtobufEncoder.endLengthDelimited()();
  }

  if (v8 == 0.0)
  {
    goto LABEL_23;
  }

  v12 = 0;
  v5 = fabs(v8);
  if (v5 >= 65536.0)
  {
    v17 = 25;
  }

  else
  {
    v17 = 29;
  }

  ProtobufEncoder.encodeVarint(_:)(v17);
  if (v5 >= 65536.0)
  {
    v19 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = v19 + 8;
    if (!__OFADD__(v19, 8))
    {
      if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
      {
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v8;
      }

      else
      {
        *(a1 + 8) = isUniquelyReferenced_nonNull_native;
        *(*a1 + v19) = v8;
      }

      goto LABEL_23;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = v18 + 4;
  if (__OFADD__(v18, 4))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *&v5 = v8;
  if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_42;
  }

  *(a1 + 8) = isUniquelyReferenced_nonNull_native;
  *(*a1 + v18) = LODWORD(v5);
LABEL_23:
  while (v7 != 0.0)
  {
    v12 = v2;
    v5 = fabs(v7);
    if (v5 >= 65536.0)
    {
      v20 = 33;
    }

    else
    {
      v20 = 37;
    }

    ProtobufEncoder.encodeVarint(_:)(v20);
    if (v5 >= 65536.0)
    {
      v23 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v23 + 8;
      if (!__OFADD__(v23, 8))
      {
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v7;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v23) = v7;
        }

        break;
      }
    }

    else
    {
      v21 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v21 + 4;
      if (!__OFADD__(v21, 4))
      {
        v22 = v7;
        if (*(a1 + 16) < isUniquelyReferenced_nonNull_native)
        {
          *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v22;
        }

        else
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v21) = v22;
        }

        break;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    v2 = v12;
    *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = LODWORD(v5);
  }

  if (v9)
  {
    ProtobufEncoder.encodeVarint(_:)(0x28uLL);
    ProtobufEncoder.encodeVarint(_:)(v9);
  }
}

unint64_t EllipticalGradient._Paint.init(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  if (one-time initialization token for default != -1)
  {
    result = swift_once();
  }

  v5 = static ResolvedGradient.ColorSpace.default;
  v6 = 1;
  LOBYTE(v59) = 1;
  v72 = 1;
  v7 = v3[1];
  v8 = v3[2];
  if (v7 >= v8)
  {
    v9 = 0;
    v15 = 0;
    v10 = 0.0;
    v11 = 0.5;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0.5;
    v14 = 0.0;
LABEL_6:
    v3[3] = 0;
    *a2 = v12;
    a2[8] = v5;
    *(a2 + 3) = v9;
    a2[16] = v6;
    *(a2 + 3) = v11;
    *(a2 + 4) = v13;
    *(a2 + 5) = v10;
    *(a2 + 6) = v14;
    a2[56] = v15;
    return result;
  }

  v57 = static ResolvedGradient.ColorSpace.default;
  v58 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = 0.5;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0.5;
  v14 = 0.0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v16 = v3[4];
      if (v7 < v16)
      {
        goto LABEL_15;
      }

      if (v16 < v7)
      {
        goto LABEL_98;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_99;
    }

    if (result <= 7)
    {
      goto LABEL_98;
    }

LABEL_15:
    v17 = result >> 3;
    if (result >> 3 <= 2)
    {
      break;
    }

    switch(v17)
    {
      case 3uLL:
        v33 = result & 7;
        if (v33 == 5)
        {
          v49 = v3[1];
          if (v8 < (v49 + 1))
          {
            goto LABEL_98;
          }

          v50 = *v49;
          v3[1] = v49 + 1;
          v10 = v50;
        }

        else
        {
          if (v33 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_99;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_115;
            }

            v34 = v3[1];
            if (v8 < v34 + result)
            {
              goto LABEL_98;
            }

            v3[3] = 25;
            v3[4] = v34 + result;
          }

          else
          {
            if (v33 != 1)
            {
              goto LABEL_98;
            }

            v34 = v3[1];
          }

          if (v8 < (v34 + 1))
          {
            goto LABEL_98;
          }

          v10 = *v34;
          v3[1] = v34 + 1;
        }

        break;
      case 4uLL:
        v35 = result & 7;
        if (v35 == 5)
        {
          v51 = v3[1];
          if (v8 < (v51 + 1))
          {
            goto LABEL_98;
          }

          v52 = *v51;
          v3[1] = v51 + 1;
          v14 = v52;
        }

        else
        {
          if (v35 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_99;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            v36 = v3[1];
            if (v8 < v36 + result)
            {
              goto LABEL_98;
            }

            v3[3] = 33;
            v3[4] = v36 + result;
          }

          else
          {
            if (v35 != 1)
            {
              goto LABEL_98;
            }

            v36 = v3[1];
          }

          if (v8 < (v36 + 1))
          {
            goto LABEL_98;
          }

          v14 = *v36;
          v3[1] = v36 + 1;
        }

        break;
      case 5uLL:
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_98;
          }

          v18 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_99;
          }

          if (v18 < 0)
          {
            goto LABEL_113;
          }

          v19 = v3[1] + v18;
          if (v8 < v19)
          {
            goto LABEL_98;
          }

          v3[3] = 40;
          v3[4] = v19;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_99;
        }

        v20 = result == 1;
        if (result == 2)
        {
          v20 = 2;
        }

        v58 = v20;
        break;
      default:
        goto LABEL_63;
    }

LABEL_8:
    v7 = v3[1];
    if (v7 >= v8)
    {
      v6 = v72;
      v5 = v57;
      v15 = v58;
      goto LABEL_6;
    }
  }

  if (v17 == 1)
  {
    if ((result & 7) != 2)
    {
      goto LABEL_98;
    }

    v37 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    *&v37[8 * v39 + 32] = v8;
    v3[5] = v37;
    v40 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_99;
    }

    if (v40 < 0)
    {
      goto LABEL_109;
    }

    v41 = v3[1] + v40;
    if (v8 < v41)
    {
      goto LABEL_98;
    }

    v3[2] = v41;
    ResolvedGradient.init(from:)(v3, &v59);
    v42 = v3[5];
    if (!*(v42 + 2))
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = *(v42 + 2);
      if (!v43)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
      v43 = *(v42 + 2);
      if (!v43)
      {
        goto LABEL_112;
      }
    }

    v44 = v43 - 1;
    v8 = *&v42[8 * v44 + 32];
    *(v42 + 2) = v44;
    v3[5] = v42;
    v3[2] = v8;
    v45 = v59;
    v57 = v60;
    v9 = v63;
    v46 = v64;

    v72 = v46;
    v12 = v45;
    goto LABEL_8;
  }

  if (v17 != 2)
  {
LABEL_63:
    v47 = result & 7;
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_99;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        v48 = v3[1] + result;
        if (v8 < v48)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v47 != 5)
        {
          goto LABEL_98;
        }

        v48 = v3[1] + 4;
        if (v8 < v48)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_99;
        }

        goto LABEL_8;
      }

      if (v47 != 1)
      {
        goto LABEL_98;
      }

      v48 = v3[1] + 8;
      if (v8 < v48)
      {
        goto LABEL_98;
      }
    }

    v3[1] = v48;
    goto LABEL_8;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_98;
  }

  v21 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  *&v21[8 * v23 + 32] = v8;
  v3[5] = v21;
  v24 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_99;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v3[1] + v24;
    if (v8 < v25)
    {
      goto LABEL_98;
    }

    v3[2] = v25;
    specialized CGPoint.init(from:)(v3);
    v28 = v3[5];
    if (!*(v28 + 16))
    {
      goto LABEL_111;
    }

    v29 = v26;
    v30 = v27;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v31 = *(v28 + 16);
      if (!v31)
      {
        goto LABEL_97;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
      v28 = result;
      v31 = *(result + 16);
      if (!v31)
      {
LABEL_97:
        __break(1u);
LABEL_98:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_99:
        v53 = v57;
LABEL_100:
        v59 = v12;
        v60 = v53;
        v61 = v73;
        v62 = v74;
        v63 = v9;
        v64 = v72;
        *v65 = *v71;
        *&v65[3] = *&v71[3];
        v66 = v11;
        v67 = v13;
        v68 = v10;
        v69 = v14;
        v70 = v58;
        return outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v59);
      }
    }

    v32 = v31 - 1;
    v8 = *(v28 + 8 * v32 + 32);
    *(v28 + 16) = v32;
    v3[5] = v28;
    v3[2] = v8;
    v11 = v29;
    v13 = v30;
    goto LABEL_8;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v53 = v57;
    v54 = *(a2 + 2);
    if (v54)
    {
      goto LABEL_107;
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
  }

  v53 = v57;
  v54 = *(a2 + 2);
  if (v54)
  {
LABEL_107:
    v55 = v54 - 1;
    v56 = *&a2[8 * v55 + 32];
    *(a2 + 2) = v55;
    v3[5] = a2;
    v3[2] = v56;
    goto LABEL_100;
  }

  __break(1u);
  return result;
}

double key path setter for AngularGradient._Paint.animatableData : AngularGradient._Paint(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 28);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  *(a2 + 24) = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;

  ResolvedGradient.animatableData.setter(&v10);
  result = v8 * 0.0078125;
  *(a2 + 40) = v7 * 0.0078125;
  *(a2 + 48) = v8 * 0.0078125;
  return result;
}

unint64_t RadialGradient._Paint.init(from:)@<X0>(unint64_t result@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (one-time initialization token for default != -1)
  {
    v58 = a2;
    result = swift_once();
    a2 = v58;
  }

  v6 = static ResolvedGradient.ColorSpace.default;
  v7 = 1;
  LOBYTE(v62) = 1;
  v75 = 1;
  v8 = v4[1];
  v9 = v4[2];
  if (v8 >= v9)
  {
    v10 = 0;
    v16 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v13 = 0;
    v14 = 0.0;
    v15 = 0.0;
LABEL_6:
    v4[3] = 0;
    *a3 = v12;
    a3[8] = v6;
    *(a3 + 3) = v10;
    a3[16] = v7;
    *(a3 + 3) = v11;
    *(a3 + 4) = v13;
    *(a3 + 5) = v14;
    *(a3 + 6) = v15;
    a3[56] = v16;
    return result;
  }

  v60 = static ResolvedGradient.ColorSpace.default;
  v61 = 0;
  v59 = a2;
  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0;
  v14 = 0.0;
  v15 = 0.0;
  while (1)
  {
    result = v4[3];
    if (result)
    {
      v17 = v4[4];
      if (v8 < v17)
      {
        goto LABEL_15;
      }

      if (v17 < v8)
      {
        goto LABEL_98;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_99;
    }

    if (result <= 7)
    {
      goto LABEL_98;
    }

LABEL_15:
    v18 = result >> 3;
    if (result >> 3 <= 2)
    {
      break;
    }

    switch(v18)
    {
      case 3uLL:
        v34 = result & 7;
        if (v34 == 5)
        {
          v50 = v4[1];
          if (v9 < (v50 + 1))
          {
            goto LABEL_98;
          }

          v51 = *v50;
          v4[1] = v50 + 1;
          v14 = v51;
        }

        else
        {
          if (v34 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              goto LABEL_99;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_115;
            }

            v35 = v4[1];
            if (v9 < v35 + result)
            {
              goto LABEL_98;
            }

            v4[3] = 25;
            v4[4] = v35 + result;
          }

          else
          {
            if (v34 != 1)
            {
              goto LABEL_98;
            }

            v35 = v4[1];
          }

          if (v9 < (v35 + 1))
          {
            goto LABEL_98;
          }

          v14 = *v35;
          v4[1] = v35 + 1;
        }

        break;
      case 4uLL:
        v36 = result & 7;
        if (v36 == 5)
        {
          v52 = v4[1];
          if (v9 < (v52 + 1))
          {
            goto LABEL_98;
          }

          v53 = *v52;
          v4[1] = v52 + 1;
          v15 = v53;
        }

        else
        {
          if (v36 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              goto LABEL_99;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            v37 = v4[1];
            if (v9 < v37 + result)
            {
              goto LABEL_98;
            }

            v4[3] = 33;
            v4[4] = v37 + result;
          }

          else
          {
            if (v36 != 1)
            {
              goto LABEL_98;
            }

            v37 = v4[1];
          }

          if (v9 < (v37 + 1))
          {
            goto LABEL_98;
          }

          v15 = *v37;
          v4[1] = v37 + 1;
        }

        break;
      case 5uLL:
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_98;
          }

          v19 = ProtobufDecoder.decodeVarint()();
          if (v3)
          {
            goto LABEL_99;
          }

          if (v19 < 0)
          {
            goto LABEL_113;
          }

          v20 = v4[1] + v19;
          if (v9 < v20)
          {
            goto LABEL_98;
          }

          v4[3] = 40;
          v4[4] = v20;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_99;
        }

        v21 = result == 1;
        if (result == 2)
        {
          v21 = 2;
        }

        v61 = v21;
        break;
      default:
        goto LABEL_63;
    }

LABEL_8:
    v8 = v4[1];
    if (v8 >= v9)
    {
      v7 = v75;
      v6 = v60;
      v16 = v61;
      goto LABEL_6;
    }
  }

  if (v18 == 1)
  {
    if ((result & 7) != 2)
    {
      goto LABEL_98;
    }

    v38 = v4[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    *&v38[8 * v40 + 32] = v9;
    v4[5] = v38;
    v41 = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_99;
    }

    if (v41 < 0)
    {
      goto LABEL_109;
    }

    v42 = v4[1] + v41;
    if (v9 < v42)
    {
      goto LABEL_98;
    }

    v4[2] = v42;
    ResolvedGradient.init(from:)(v4, &v62);
    v43 = v4[5];
    if (!*(v43 + 2))
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v44 = *(v43 + 2);
      if (!v44)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
      v44 = *(v43 + 2);
      if (!v44)
      {
        goto LABEL_112;
      }
    }

    v45 = v44 - 1;
    v9 = *&v43[8 * v45 + 32];
    *(v43 + 2) = v45;
    v4[5] = v43;
    v4[2] = v9;
    v46 = v62;
    v60 = v63;
    v10 = v66;
    v47 = v67;

    v75 = v47;
    v12 = v46;
    goto LABEL_8;
  }

  if (v18 != 2)
  {
LABEL_63:
    v48 = result & 7;
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_99;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        v49 = v4[1] + result;
        if (v9 < v49)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v48 != 5)
        {
          goto LABEL_98;
        }

        v49 = v4[1] + 4;
        if (v9 < v49)
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_99;
        }

        goto LABEL_8;
      }

      if (v48 != 1)
      {
        goto LABEL_98;
      }

      v49 = v4[1] + 8;
      if (v9 < v49)
      {
        goto LABEL_98;
      }
    }

    v4[1] = v49;
    goto LABEL_8;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_98;
  }

  v22 = v4[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  *&v22[8 * v24 + 32] = v9;
  v4[5] = v22;
  v25 = ProtobufDecoder.decodeVarint()();
  if (v3)
  {
    goto LABEL_99;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = v4[1] + v25;
    if (v9 < v26)
    {
      goto LABEL_98;
    }

    v4[2] = v26;
    specialized CGPoint.init(from:)(v4);
    v29 = v4[5];
    if (!*(v29 + 16))
    {
      goto LABEL_111;
    }

    v30 = v27;
    v31 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v32 = *(v29 + 16);
      if (!v32)
      {
        goto LABEL_97;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
      v29 = result;
      v32 = *(result + 16);
      if (!v32)
      {
LABEL_97:
        __break(1u);
LABEL_98:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_99:
        v54 = v60;
LABEL_100:
        v62 = v12;
        v63 = v54;
        v64 = v76;
        v65 = v77;
        v66 = v10;
        v67 = v75;
        *v68 = *v74;
        *&v68[3] = *&v74[3];
        v69 = v11;
        v70 = v13;
        v71 = v14;
        v72 = v15;
        v73 = v61;
        return v59(&v62);
      }
    }

    v33 = v32 - 1;
    v9 = *(v29 + 8 * v33 + 32);
    *(v29 + 16) = v33;
    v4[5] = v29;
    v4[2] = v9;
    v11 = v30;
    v13 = v31;
    goto LABEL_8;
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    a3 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    v54 = v60;
    v55 = *(a3 + 2);
    if (v55)
    {
      goto LABEL_107;
    }

    __break(1u);
    a3 = v4[5];
  }

  while (!*(a3 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    a3 = result;
  }

  v54 = v60;
  v55 = *(a3 + 2);
  if (v55)
  {
LABEL_107:
    v56 = v55 - 1;
    v57 = *&a3[8 * v56 + 32];
    *(a3 + 2) = v56;
    v4[5] = a3;
    v4[2] = v57;
    goto LABEL_100;
  }

  __break(1u);
  return result;
}

uint64_t ConicGradient.gradient.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v4;
}

uint64_t ConicGradient.gradient.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  *(v1 + 16) = v5;
  return result;
}

void __swiftcall ConicGradient.init(gradient:center:angle:)(SwiftUI::ConicGradient *__return_ptr retstr, SwiftUI::ResolvedGradient gradient, CGPoint center, SwiftUI::Angle angle)
{
  v4 = *(gradient.stops._rawValue + 8);
  v5 = *(gradient.stops._rawValue + 3);
  v6 = *(gradient.stops._rawValue + 16);
  retstr->gradient.stops._rawValue = *gradient.stops._rawValue;
  retstr->gradient.colorSpace = v4;
  retstr->gradient.headroom.value = v5;
  retstr->gradient.headroom.is_nil = v6;
  retstr->center.x = *&gradient.headroom.value;
  retstr->center.y = center.x;
  retstr->angle.radians = center.y;
}

float64x2_t ConicGradient.init(angular:bounds:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>, float64_t a4@<D1>, float64x2_t a5@<Q2>, float64_t a6@<D3>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (v13 >= v12)
  {
    v14 = *(a1 + 48);
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (v13 >= v12)
  {
    v15 = *(a1 + 40);
  }

  else
  {
    v15 = *(a1 + 48);
  }

  v16 = v14 - v15;
  v17 = 0.0;
  if (v14 - v15 >= 0.0)
  {
    if (v16 > 6.28318531)
    {
      v18 = v14 + -6.28318531;
      v19 = 1.0;
      v20 = v16 / -6.28318531 + 1.0;
      if (v13 < v12)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v17 = v14 - v15;
  }

  v21 = (6.28318531 - v17) * 0.5;
  v18 = v15 - v21;
  v20 = v21 / 6.28318531;
  v19 = (v17 + v21) / 6.28318531;
  if (v13 < v12)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (fabs(v20) <= 0.000001 && fabs(v19 + -1.0) <= 0.000001)
  {
    goto LABEL_24;
  }

LABEL_15:
  v22 = *(v7 + 16);
  if (!v22)
  {
LABEL_24:
    v23 = *a1;
    goto LABEL_25;
  }

  v36 = *(a1 + 24);
  v37 = *&a5.f64[0];
  v38 = a6;
  v39 = *&a3.f64[0];
  v40 = a4;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v24 = v19 - v20;
  v25 = 0;
  v26 = v22 - 1;
  if (v22 == 1)
  {
    goto LABEL_19;
  }

  v31 = !is_mul_ok(v26, 0x30uLL);
  if (&v23[48 * v26 + 48] < v23 + 48 || v31)
  {
    goto LABEL_19;
  }

  v25 = v22 & 0x7FFFFFFFFFFFFFFELL;
  v32 = (v23 + 96);
  v33 = v22 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v34 = *(v32 - 6);
    v35 = *v32;
    if (v13 < v12)
    {
      v34 = 1.0 - v34;
      v35 = 1.0 - *v32;
    }

    *(v32 - 6) = v20 + v24 * v34;
    *v32 = v20 + v24 * v35;
    v32 += 12;
    v33 -= 2;
  }

  while (v33);
  if (v22 != v25)
  {
LABEL_19:
    v27 = v22 - v25;
    v28 = &v23[48 * v25 + 48];
    do
    {
      v29 = *v28;
      if (v13 < v12)
      {
        v29 = 1.0 - *v28;
      }

      *v28 = v20 + v24 * v29;
      v28 += 6;
      --v27;
    }

    while (v27);
  }

  *&a3.f64[0] = v39;
  a4 = v40;
  *&a5.f64[0] = v37;
  a6 = v38;
  v11 = v36;
LABEL_25:
  a5.f64[1] = a6;
  *a2 = v23;
  *(a2 + 8) = v8;
  *(a2 + 12) = v9;
  *(a2 + 16) = v10;
  a3.f64[1] = a4;
  result = vaddq_f64(vmulq_f64(v11, a5), a3);
  *(a2 + 24) = result;
  *(a2 + 40) = v18;
  return result;
}

void __swiftcall ConicGradient.init(gradient:center:startAngle:endAngle:)(SwiftUI::ConicGradient *__return_ptr retstr, SwiftUI::ResolvedGradient gradient, CGPoint center, SwiftUI::Angle startAngle, SwiftUI::Angle endAngle)
{
  y = center.y;
  x = center.x;
  v8 = *&gradient.headroom.value;
  v10 = *gradient.stops._rawValue;
  v11 = *(gradient.stops._rawValue + 8);
  v12 = *(gradient.stops._rawValue + 3);
  v13 = *(gradient.stops._rawValue + 16);
  if (startAngle.radians < center.y)
  {
    radians = startAngle.radians;
  }

  else
  {
    center.y = startAngle.radians;
    radians = y;
  }

  v15 = center.y - radians;
  v16 = 0.0;
  if (center.y - radians < 0.0)
  {
LABEL_9:
    v20 = (6.28318531 - v16) * 0.5;
    v17 = radians - v20;
    v19 = v20 / 6.28318531;
    v18 = (v16 + v20) / 6.28318531;
    if (startAngle.radians < y)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (fabs(v19) <= 0.000001 && fabs(v18 + -1.0) <= 0.000001)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v15 <= 6.28318531)
  {
    v16 = center.y - radians;
    goto LABEL_9;
  }

  v17 = center.y + -6.28318531;
  v18 = 1.0;
  v19 = v15 / -6.28318531 + 1.0;
  if (startAngle.radians >= y)
  {
    goto LABEL_10;
  }

LABEL_12:
  v21 = *(v10 + 2);
  if (v21)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
    }

    v22 = v18 - v19;
    v23 = 0;
    v24 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_16;
    }

    v28 = !is_mul_ok(v24, 0x30uLL);
    if (&v10[48 * v24 + 48] < v10 + 48 || v28)
    {
      goto LABEL_16;
    }

    v23 = v21 & 0x7FFFFFFFFFFFFFFELL;
    v29 = (v10 + 96);
    v30 = v21 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v31 = *(v29 - 6);
      v32 = *v29;
      if (startAngle.radians < y)
      {
        v31 = 1.0 - v31;
        v32 = 1.0 - *v29;
      }

      *(v29 - 6) = v19 + v22 * v31;
      *v29 = v19 + v22 * v32;
      v29 += 12;
      v30 -= 2;
    }

    while (v30);
    if (v21 != v23)
    {
LABEL_16:
      v25 = v21 - v23;
      v26 = 48 * v23 + 48;
      do
      {
        v27 = *&v10[v26];
        if (startAngle.radians < y)
        {
          v27 = 1.0 - v27;
        }

        *&v10[v26] = v19 + v22 * v27;
        v26 += 48;
        --v25;
      }

      while (v25);
    }
  }

LABEL_20:
  retstr->gradient.stops._rawValue = v10;
  retstr->gradient.colorSpace = v11;
  retstr->gradient.headroom.value = v12;
  retstr->gradient.headroom.is_nil = v13;
  retstr->center.x = v8;
  retstr->center.y = x;
  retstr->angle.radians = v17;
}

void specialized ProtobufEncoder.messageField<A>(_:_:)(uint64_t a1)
{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    SDFStyle.Group.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    GraphicsFilter.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    Material.Layer.SDFLayer.GroupType.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    FixedRoundedRect.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    AccessibilityText.encode(to:)();
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    TextLayoutProperties.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    ResolvedShadowStyle.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    MeshGradient._Paint.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    ResolvedGradient.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    GraphicsImage.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    ContentTransition.CustomTransition.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    ContentTransition.NamedTransition.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    ContentTransition.NumericTextConfiguration.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    GraphicsFilter.ShaderFilter.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    VariableBlurStyle.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    Shader.ResolvedShader.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  v3[3] = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v4 + 1;
    _SymbolEffect.WiggleConfiguration.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    SDFShape.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    ContentTransition.State.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

{
  v3 = v1;
  ProtobufEncoder.encodeVarint(_:)((8 * a1) | 2);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  *&v5[8 * v7 + 32] = v4;
  *(v3 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8) = v4 + 1;
    DisplayList.Effect.encode(to:)(v3);
    if (!v2)
    {
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}