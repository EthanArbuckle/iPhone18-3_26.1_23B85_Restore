unint64_t closure #8 in DisplayList.Content.Value.init(from:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v12 = 0xE000000000000000;
LABEL_36:
    v3[3] = 0;
    *a2 = v12;
    return result;
  }

  v7 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_34;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_34:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v9 = result & 7;
    if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_34;
        }

        v11 = v3[1] + 4;
        if (v6 < v11)
        {
          goto LABEL_34;
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
          return result;
        }

        goto LABEL_4;
      }

      if (v9 != 1)
      {
        goto LABEL_34;
      }

      v11 = v3[1] + 8;
      if (v6 < v11)
      {
        goto LABEL_34;
      }
    }

    v3[1] = v11;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v12 = v7 | 0xE000000000000000;
      goto LABEL_36;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_18:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = result;
    goto LABEL_4;
  }

  if (v9 != 2)
  {
    goto LABEL_34;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = v3[1] + result;
    if (v6 < v10)
    {
      goto LABEL_34;
    }

    v3[3] = 8;
    v3[4] = v10;
    goto LABEL_18;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void DisplayList.Effect.encode(to:)(char *a1)
{
  v6 = *v1;
  v7 = *(v1 + 8);
  switch(*(v1 + 12))
  {
    case 1:
      goto LABEL_30;
    case 2:
      v6 = v6;
      v9 = 80;
      goto LABEL_15;
    case 3:
      goto LABEL_48;
    case 4:
      v49 = a1;
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v56 = *(a1 + 1);
      isUniquelyReferenced_nonNull_native = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        goto LABEL_102;
      }

      if (*(a1 + 2) < isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_107;
      }

      *(a1 + 1) = isUniquelyReferenced_nonNull_native;
      *(*a1 + v56) = v6;
      return;
    case 5:
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v6, v7 & 1);
      return;
    case 6:
      v62 = *(v6 + 32);
      v80[0] = *(v6 + 16);
      v80[1] = v62;
      v81 = *(v6 + 48);
      LOWORD(v60) = *(v6 + 49);
      v3 = *(v6 + 50);
      LODWORD(v6) = *(v6 + 52);
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v4 = *(a1 + 1);
      v49 = *(a1 + 3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_73;
      }

      goto LABEL_105;
    case 7:
      v15 = *(v6 + 16);
      v71 = *(v6 + 32);
      ProtobufEncoder.encodeVarint(_:)(0x32uLL);
      v5 = *(a1 + 1);
      v12 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_18;
      }

      goto LABEL_96;
    case 8:
      v61 = *(v6 + 32);
      v82[0] = *(v6 + 16);
      v82[1] = v61;
      v82[2] = *(v6 + 48);
      v83 = *(v6 + 64);
      outlined init with copy of SDFShape(v82, &v73);
      specialized ProtobufEncoder.messageField<A>(_:_:)(24);
      outlined destroy of SDFShape(v82);
      return;
    case 9:
      v20 = *(v6 + 16);
      v19 = *(v6 + 24);
      v22 = *(v6 + 32);
      v21 = *(v6 + 40);
      v24 = *(v6 + 48);
      v23 = *(v6 + 56);
      if (*(v6 + 88) > 1u)
      {
        if (*(v6 + 88) == 2)
        {
          ProtobufEncoder.encodeVarint(_:)(0xAAuLL);
          specialized ProtobufEncoder.encodeMessage<A>(_:)(v20, v19, v22);
        }

        else
        {
          v92 = *(v6 + 16);
          v93 = v19;
          v94 = v22;
          v95 = v21;
          v96 = v24;
          v97 = v23;
          v98 = *(v6 + 64);
          v99 = *(v6 + 80);
          specialized ProtobufEncoder.messageField<A>(_:_:)(22);
        }
      }

      else if (*(v6 + 88))
      {
        v89[0] = *(v6 + 16);
        *&v89[1] = v19;
        *&v89[2] = v22;
        v89[3] = v21;
        v89[4] = v24;
        v89[5] = v23;
        v90 = *(v6 + 64);
        v91 = *(v6 + 80);
        ProtobufEncoder.encodeVarint(_:)(0x42uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(v89);
      }

      else
      {
        *&v84 = *(v6 + 16);
        *(&v84 + 1) = v19;
        v85 = v22;
        v86 = v21;
        v87 = v24;
        v88 = v23;
        ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(&v84);
      }

      return;
    case 0xA:
      v25 = *(v6 + 96);
      v100[4] = *(v6 + 80);
      v100[5] = v25;
      v101[0] = *(v6 + 112);
      *(v101 + 12) = *(v6 + 124);
      v26 = *(v6 + 32);
      v100[0] = *(v6 + 16);
      v100[1] = v26;
      v27 = *(v6 + 64);
      v100[2] = *(v6 + 48);
      v100[3] = v27;
      outlined init with copy of GraphicsFilter(v100, &v73);
      specialized ProtobufEncoder.messageField<A>(_:_:)(9);
      outlined destroy of GraphicsFilter(v100);
      return;
    case 0xB:
      outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
      outlined init with copy of AnyTrackedValue(&v73, v77);
      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v7 = *(a1 + 1);
      v49 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_57;
      }

      goto LABEL_100;
    case 0xC:
      v16 = *(v6 + 16);
      v17 = *(v6 + 24) | (*(v6 + 28) << 32);
      v18 = *(v6 + 29);
      outlined copy of ContentTransition.Storage(v16, v17, v18);

      specialized ProtobufEncoder.messageField<A>(_:_:)(16);
      outlined consume of ContentTransition.Storage(v16, v17, v18);

      return;
    case 0xD:
      outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
      v30 = v75;
      v31 = v76;
      v32 = __swift_project_boxed_opaque_existential_1(&v73, v75);
      v78 = v30;
      v79 = *(v31 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, v32, v30);
      ProtobufEncoder.encodeVarint(_:)(0x62uLL);
      v15 = *(a1 + 1);
      v12 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_25;
      }

      goto LABEL_98;
    case 0xE:
      v10 = *(v6 + 16);

      ProtobufEncoder.encodeVarint(_:)(0x72uLL);
      v11 = *(a1 + 1);
      v12 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v15;
      *&v12[8 * v14 + 32] = v11;
      *(a1 + 3) = v12;
      if (!__OFADD__(v11, 1))
      {
        *(a1 + 1) = v11 + 1;
        closure #3 in DisplayList.Effect.encode(to:)(a1, v10);
        if (v2)
        {

          return;
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_96:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
LABEL_18:
      v29 = *(v12 + 2);
      v28 = *(v12 + 3);
      if (v29 >= v28 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v12);
      }

      *(v12 + 2) = v29 + 1;
      *&v12[8 * v29 + 32] = v5;
      *(a1 + 3) = v12;
      if (!__OFADD__(v5, 1))
      {
        *(a1 + 1) = v5 + 1;
        specialized ProtobufEncoder.messageField<A>(_:_:)(1);
        if (v2)
        {
          return;
        }

        if (v71)
        {
          ProtobufEncoder.encodeVarint(_:)(0x10uLL);
          ProtobufEncoder.encodeVarint(_:)(v71);
        }

        goto LABEL_91;
      }

      __break(1u);
LABEL_98:
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
LABEL_25:
      v35 = *(v12 + 2);
      v34 = *(v12 + 3);
      if (v35 >= v34 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v12);
      }

      *(v12 + 2) = v35 + 1;
      *&v12[8 * v35 + 32] = v15;
      *(a1 + 3) = v12;
      v36 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        swift_willThrow();
        return;
      }

      goto LABEL_53;
    case 0xF:
      ProtobufEncoder.encodeVarint(_:)(0x8AuLL);
      v7 = *(a1 + 1);
      v37 = *(a1 + 3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      v6 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v6;
      *&v37[8 * v39 + 32] = v7;
      *(a1 + 3) = v37;
      v40 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_90;
      }

      __break(1u);
LABEL_39:
      if (!(v6 | v7))
      {
        return;
      }

      if (v6 ^ 1 | v7)
      {
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        v67 = *(a1 + 1);
        v68 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
        }

        v70 = *(v68 + 2);
        v69 = *(v68 + 3);
        if (v70 >= v69 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v68);
        }

        *(v68 + 2) = v70 + 1;
        *&v68[8 * v70 + 32] = v67;
        *(a1 + 3) = v68;
        v40 = v67 + 1;
        if (!__OFADD__(v67, 1))
        {
          goto LABEL_90;
        }

        __break(1u);
      }

      else
      {
        ProtobufEncoder.encodeVarint(_:)(0xAuLL);
        v41 = *(a1 + 1);
        v42 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        v6 = v44 + 1;
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v42);
        }

        *(v42 + 2) = v6;
        *&v42[8 * v44 + 32] = v41;
        *(a1 + 3) = v42;
        v40 = v41 + 1;
        if (!__OFADD__(v41, 1))
        {
LABEL_90:
          *(a1 + 1) = v40;
          goto LABEL_91;
        }

        __break(1u);
LABEL_48:
        outlined init with copy of AnyTrackedValue(v6 + 16, &v73);
        v45 = v75;
        v46 = v76;
        v47 = __swift_project_boxed_opaque_existential_1(&v73, v75);
        v78 = v45;
        v79 = *(v46 + 8);
        v48 = __swift_allocate_boxed_opaque_existential_1(v77);
        (*(*(v45 - 8) + 16))(v48, v47, v45);
        ProtobufEncoder.encodeVarint(_:)(0x6AuLL);
        v7 = *(a1 + 1);
        v49 = *(a1 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        *&v49[8 * v51 + 32] = v7;
        *(a1 + 3) = v49;
        v36 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_100:
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
LABEL_57:
          v53 = *(v49 + 2);
          v52 = *(v49 + 3);
          if (v53 >= v52 >> 1)
          {
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v49);
          }

          *(v49 + 2) = v53 + 1;
          *&v49[8 * v53 + 32] = v7;
          *(a1 + 3) = v49;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
LABEL_67:
            v60 = *(v49 + 2);
            v59 = *(v49 + 3);
            v6 = v60 + 1;
            if (v60 >= v59 >> 1)
            {
              v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v49);
            }

            *(v49 + 2) = v6;
            *&v49[8 * v60 + 32] = v7;
            *(a1 + 3) = v49;
            if (!__OFADD__(v7, 1))
            {
              *(a1 + 1) = v7 + 1;
              StrongHash.encode(to:)(a1);
LABEL_91:
              ProtobufEncoder.endLengthDelimited()();
              return;
            }

            __break(1u);
LABEL_105:
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
            v49 = isUniquelyReferenced_nonNull_native;
LABEL_73:
            v64 = *(v49 + 2);
            v63 = *(v49 + 3);
            if (v64 >= v63 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v49);
              v49 = isUniquelyReferenced_nonNull_native;
            }

            *(v49 + 2) = v64 + 1;
            *&v49[8 * v64 + 32] = v4;
            *(a1 + 3) = v49;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_107:
              *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v6;
            }

            else
            {
              *(a1 + 1) = v4 + 1;
              if (v3)
              {
                v65 = 256;
              }

              else
              {
                v65 = 0;
              }

              closure #1 in DisplayList.Effect.encode(to:)(a1, v80, v65 | v60, v6);
              if (!v2)
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            *(a1 + 1) = v7 + 1;
            v54 = v78;
            v55 = v79;
            __swift_project_boxed_opaque_existential_1(v77, v78);
            _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v54, v55);
            if (!v2)
            {
              ProtobufEncoder.endLengthDelimited()();
            }

            __swift_destroy_boxed_opaque_existential_1(&v73);
            outlined destroy of CodableEffectAnimation(v77);
          }
        }

        else
        {
LABEL_53:
          *(a1 + 1) = v36;
          CodableViewFactory.encode(to:)(a1);
          if (!v2)
          {
            ProtobufEncoder.endLengthDelimited()();
          }

          outlined destroy of CodableViewFactory(v77);
          __swift_destroy_boxed_opaque_existential_1(&v73);
        }
      }

      return;
    case 0x10:
      v58 = *(v6 + 32);
      v72 = *(v6 + 16);
      ProtobufEncoder.encodeVarint(_:)(0x9AuLL);
      v73 = v72;
      v74 = v58;
      v7 = *(a1 + 1);
      v49 = *(a1 + 3);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_67;
      }

      goto LABEL_103;
    case 0x11:
    case 0x12:
      return;
    case 0x13:
      v66 = *(v6 + 36);

      LOBYTE(v73) = v66;
      specialized ProtobufEncoder.messageField<A>(_:_:)(20);

      return;
    case 0x14:
      goto LABEL_39;
    default:
      v6 = *(v6 + 16);
      v9 = 120;
LABEL_15:
      ProtobufEncoder.encodeVarint(_:)(v9);
      ProtobufEncoder.encodeVarint(_:)(v6);
      return;
  }
}

void closure #1 in DisplayList.Effect.encode(to:)(uint64_t a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  *(a1 + 24) = v9;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    Path.encode(to:)();
    if (!v4)
    {
      ProtobufEncoder.endLengthDelimited()();
      if (a3 & 0x100) == 0 || (a3)
      {
        ProtobufEncoder.encodeVarint(_:)(0x12uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(a3 & 0x101);
      }

      if (a4)
      {
        ProtobufEncoder.encodeVarint(_:)(0x18uLL);
        ProtobufEncoder.encodeVarint(_:)(a4);
      }
    }
  }
}

void closure #3 in DisplayList.Effect.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AccessibilityNodeAttachment(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of AccessibilityNodeAttachment(v10, v8);
      v11 = a1[1];
      v12 = a1[2];
      if (v11 >= v12)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }

        if (v12 < v17)
        {
          v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
        }

        else
        {
          a1[1] = v17;
          v18 = (*a1 + v11);
        }

        *v18 = 10;
        v13 = a1[1];
      }

      else
      {
        *(*a1 + v11) = 10;
        v13 = v11 + 1;
        a1[1] = v11 + 1;
      }

      v14 = a1[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      *&v14[8 * v16 + 32] = v13;
      a1[3] = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      a1[1] = v13 + 1;
      AccessibilityNodeAttachment.encode(to:)(a1);
      if (v2)
      {
        outlined destroy of AccessibilityNodeAttachment(v8);
        return;
      }

      ProtobufEncoder.endLengthDelimited()();
      outlined destroy of AccessibilityNodeAttachment(v8);
      v10 += v20;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

int64_t _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v8, a2, a3);
  if (v9)
  {
    return (*(*(a3 + 16) + 8))(a1, a2);
  }

  else
  {
    return ProtobufEncoder.messageField<A>(_:_:)(v8, v3, a2, *(a3 + 16));
  }
}

int64_t CodableEffectAnimation.encode(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v3, v4);
}

uint64_t CodableEffectAnimation.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
LABEL_64:
    a1[3] = 0;
    outlined init with copy of _DisplayList_AnyEffectAnimation?(&v46, &v41);
    if (v42)
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
      outlined init with take of AnyTrackedValue(&v41, &v43);
      return outlined init with take of AnyTrackedValue(&v43, a2);
    }

    else
    {
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v41, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
    }
  }

  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v6 < v9)
      {
        goto LABEL_8;
      }

      if (v9 < v6)
      {
        goto LABEL_67;
      }

      a1[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
    }

    v8 = v10;
    if (v10 < 8)
    {
LABEL_67:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
    }

LABEL_8:
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        *(&v44 + 1) = &type metadata for DisplayList.OffsetAnimation;
        v45 = &protocol witness table for DisplayList.OffsetAnimation;
        v27 = swift_allocObject();
        *&v43 = v27;
        if ((v8 & 7) != 2)
        {
          goto LABEL_69;
        }

        v28 = v27;
        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_70;
        }

        _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm(a1, v49);
        v3 = 0;
        v29 = a1[5];
        if (!*(v29 + 2))
        {
          goto LABEL_85;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v30 = *(v29 + 2);
          if (!v30)
          {
            goto LABEL_87;
          }
        }

        else
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          v30 = *(v29 + 2);
          if (!v30)
          {
            goto LABEL_87;
          }
        }

        v31 = v30 - 1;
        v7 = *&v29[8 * v31 + 32];
        *(v29 + 2) = v31;
        a1[5] = v29;
        a1[2] = v7;
        v32 = v49[1];
        *(v28 + 16) = v49[0];
        *(v28 + 32) = v32;
        *(v28 + 48) = v50;
LABEL_36:
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
LABEL_43:
        v46 = v43;
        v47 = v44;
        v48 = v45;
        goto LABEL_44;
      }

      if (v11 == 2)
      {
        *(&v44 + 1) = &type metadata for DisplayList.ScaleAnimation;
        v45 = &protocol witness table for DisplayList.ScaleAnimation;
        v12 = swift_allocObject();
        *&v43 = v12;
        if ((v8 & 7) != 2)
        {
          goto LABEL_69;
        }

        v13 = v12;
        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_70;
        }

        sub_18D3AF000(a1, (v13 + 16));
        v3 = 0;
        v14 = a1[5];
        if (!*(v14 + 2))
        {
          goto LABEL_84;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v15 = *(v14 + 2);
          if (!v15)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
          v15 = *(v14 + 2);
          if (!v15)
          {
            goto LABEL_88;
          }
        }

LABEL_42:
        v35 = v15 - 1;
        v7 = *&v14[8 * v35 + 32];
        *(v14 + 2) = v35;
        a1[5] = v14;
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
        a1[2] = v7;
        goto LABEL_43;
      }

      goto LABEL_25;
    }

    if (v11 == 3)
    {
      *(&v44 + 1) = &type metadata for DisplayList.RotationAnimation;
      v45 = &protocol witness table for DisplayList.RotationAnimation;
      v33 = swift_allocObject();
      *&v43 = v33;
      if ((v8 & 7) != 2)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_70:
        outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
        return __swift_deallocate_boxed_opaque_existential_1(&v43);
      }

      v34 = v33;
      ProtobufDecoder.beginMessage()();
      if (v3)
      {
        goto LABEL_70;
      }

      _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV08RotationD0V_Tt1g5Tm(a1, (v34 + 16));
      v3 = 0;
      v14 = a1[5];
      if (!*(v14 + 2))
      {
        goto LABEL_83;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = *(v14 + 2);
        if (!v15)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
        v15 = *(v14 + 2);
        if (!v15)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }
      }

      goto LABEL_42;
    }

    if (v11 == 4)
    {
      break;
    }

LABEL_25:
    v25 = v8 & 7;
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v36 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
        }

        if (v36 < 0)
        {
          goto LABEL_89;
        }

        v26 = a1[1] + v36;
        if (v7 < v26)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v25 != 5)
        {
          goto LABEL_67;
        }

        v26 = a1[1] + 4;
        if (v7 < v26)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_55;
    }

    if ((v8 & 7) != 0)
    {
      if (v25 != 1)
      {
        goto LABEL_67;
      }

      v26 = a1[1] + 8;
      if (v7 < v26)
      {
        goto LABEL_67;
      }

LABEL_55:
      a1[1] = v26;
      goto LABEL_44;
    }

    ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      return outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
    }

LABEL_44:
    v6 = a1[1];
    if (v6 >= v7)
    {
      goto LABEL_64;
    }
  }

  *(&v44 + 1) = &type metadata for DisplayList.OpacityAnimation;
  v45 = &protocol witness table for DisplayList.OpacityAnimation;
  if ((v8 & 7) != 2)
  {
    goto LABEL_69;
  }

  ProtobufDecoder.beginMessage()();
  if (v3)
  {
    goto LABEL_70;
  }

  v16 = _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV07OpacityD0V_Tt1g5Tm(a1);
  v3 = 0;
  v19 = a1[5];
  if (*(v19 + 2))
  {
    v20 = v17;
    v21 = v18;
    v22 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = *(v19 + 2);
      if (!v23)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v23 = *(v19 + 2);
      if (!v23)
      {
        goto LABEL_86;
      }
    }

    v24 = v23 - 1;
    v7 = *&v19[8 * v24 + 32];
    *(v19 + 2) = v24;
    a1[5] = v19;
    a1[2] = v7;
    *&v43 = v20;
    *(&v43 + 1) = v21;
    *&v44 = v22;
    goto LABEL_36;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v38 = *(a2 + 2);
    if (v38)
    {
      goto LABEL_80;
    }

    __break(1u);
    a2 = a1[5];
    if (!*(a2 + 2))
    {
      goto LABEL_90;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = *(a2 + 2);
      if (v38)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v38 = *(a2 + 2);
      if (v38)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
    a2 = a1[5];
    if (!*(a2 + 2))
    {
      goto LABEL_91;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = *(a2 + 2);
      if (v38)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v38 = *(a2 + 2);
      if (v38)
      {
        goto LABEL_80;
      }
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v38 = *(a2 + 2);
    if (v38)
    {
LABEL_80:
      v39 = v38 - 1;
      v40 = *&a2[8 * v39 + 32];
      *(a2 + 2) = v39;
      a1[5] = a2;
      outlined destroy of _DisplayList_AnyEffectAnimator?(&v46, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
      a1[2] = v40;
      return __swift_deallocate_boxed_opaque_existential_1(&v43);
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v38 = *(result + 16);
    if (v38)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
  return result;
}

int64_t protocol witness for ProtobufEncodableMessage.encode(to:) in conformance CodableEffectAnimation(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return _DisplayList_AnyEffectAnimation.encodeAnimation(to:)(a1, v3, v4);
}

int64_t DisplayList.InterpolatorAnimation.encode(to:)(int64_t result)
{
  v3 = result;
  v4 = *(v1 + 20);
  v5 = *(v1 + 24);
  if (v5)
  {

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v6 = v3[1];
    v7 = v3[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v10;
    *&v7[8 * v9 + 32] = v6;
    v3[3] = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
      goto LABEL_12;
    }

    v3[1] = v6 + 1;
    CodableAnimation.encode(to:)(v3, v5);
    if (v2)
    {
    }

    ProtobufEncoder.endLengthDelimited()();
  }

  if (v4)
  {
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v10 = v3[1];
  v7 = v3[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v7 + 2);
  v11 = *(v7 + 3);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v12 + 1;
  *&v7[8 * v12 + 32] = v10;
  v3[3] = v7;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v3[1] = v10 + 1;
    StrongHash.encode(to:)(v3);
    return ProtobufEncoder.endLengthDelimited()();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableViewFactory.Error and conformance CodableViewFactory.Error()
{
  result = lazy protocol witness table cache variable for type CodableViewFactory.Error and conformance CodableViewFactory.Error;
  if (!lazy protocol witness table cache variable for type CodableViewFactory.Error and conformance CodableViewFactory.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableViewFactory.Error and conformance CodableViewFactory.Error);
  }

  return result;
}

uint64_t outlined init with copy of _DisplayList_AnyEffectAnimation?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimation);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193AC4820);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CodableEffectAnimation.Tag(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag()
{
  result = lazy protocol witness table cache variable for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag;
  if (!lazy protocol witness table cache variable for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableEffectAnimation.Tag and conformance CodableEffectAnimation.Tag);
  }

  return result;
}

unint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV06OffsetD0V_Tt1g5Tm@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 0;
    while (1)
    {
      result = *(a1 + 24);
      if (result)
      {
        v18 = *(a1 + 32);
        if (v5 < v18)
        {
          goto LABEL_15;
        }

        if (v18 < v5)
        {
          goto LABEL_4;
        }

        *(a1 + 24) = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_4;
      }

LABEL_15:
      v19 = result >> 3;
      v20 = result & 7;
      if (result >> 3 == 3)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v33 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
        }

        v3 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v3 >= v34 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v3 + 1, 1, v33);
        }

        *(v33 + 2) = v3 + 1;
        *&v33[8 * v3 + 32] = v6;
        *(a1 + 40) = v33;
        v35 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v35 < 0)
        {
          goto LABEL_86;
        }

        v36 = *(a1 + 8) + v35;
        if (v6 < v36)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v36;
        v37 = specialized CodableAnimation.init(from:)(a1);
        v38 = *(a1 + 40);
        if (!*(v38 + 2))
        {
          goto LABEL_88;
        }

        v39 = v37;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v40 = *(v38 + 2);
          if (!v40)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
          v40 = *(v38 + 2);
          if (!v40)
          {
            goto LABEL_91;
          }
        }

        v41 = v40 - 1;
        v6 = *&v38[8 * v41 + 32];
        *(v38 + 2) = v41;

        *(a1 + 40) = v38;
        *(a1 + 16) = v6;
        v7 = v39;
        goto LABEL_8;
      }

      if (v19 == 2)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v27 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v3 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v3 >= v28 >> 1)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v3 + 1, 1, v27);
        }

        *(v27 + 2) = v3 + 1;
        *&v27[8 * v3 + 32] = v6;
        *(a1 + 40) = v27;
        v29 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v29 < 0)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          __break(1u);
LABEL_93:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v43 = *(v3 + 16);
            if (v43)
            {
              goto LABEL_83;
            }

            __break(1u);
            v3 = *(a1 + 40);
            if (!*(v3 + 16))
            {
              goto LABEL_93;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v43 = *(v3 + 16);
              if (v43)
              {
                goto LABEL_83;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v43 = *(v3 + 16);
              if (v43)
              {
                goto LABEL_83;
              }
            }

            __break(1u);
            v3 = *(a1 + 40);
          }

          while (!*(v3 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v43 = *(v3 + 16);
            if (v43)
            {
LABEL_83:
              v44 = v43 - 1;
              v45 = *(v3 + 8 * v44 + 32);
              *(v3 + 16) = v44;

              *(a1 + 40) = v3;
              *(a1 + 16) = v45;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
            v43 = *(result + 16);
            if (v43)
            {
              goto LABEL_83;
            }
          }

          __break(1u);
          return result;
        }

        v30 = *(a1 + 8) + v29;
        if (v6 < v30)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v30;
        specialized _OffsetEffect.init(from:)(a1);
        v15 = *(a1 + 40);
        if (!*(v15 + 16))
        {
          goto LABEL_87;
        }

        v9 = v31;
        v10 = v32;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v16 = *(v15 + 16);
          if (!v16)
          {
            goto LABEL_90;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v15 = result;
          v16 = *(result + 16);
          if (!v16)
          {
            goto LABEL_90;
          }
        }

        v8 = 0;
        goto LABEL_7;
      }

      if (v19 == 1)
      {
        if (v20 != 2)
        {
          goto LABEL_4;
        }

        v21 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
        }

        v3 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v3 >= v22 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v3 + 1, 1, v21);
        }

        *(v21 + 2) = v3 + 1;
        *&v21[8 * v3 + 32] = v6;
        *(a1 + 40) = v21;
        v23 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v23 < 0)
        {
          goto LABEL_85;
        }

        v24 = *(a1 + 8) + v23;
        if (v6 < v24)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v24;
        specialized _OffsetEffect.init(from:)(a1);
        v15 = *(a1 + 40);
        if (!*(v15 + 16))
        {
          goto LABEL_89;
        }

        v11 = v25;
        v13 = v26;
        v3 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v16 = *(v15 + 16);
          if (!v16)
          {
            goto LABEL_72;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v15 = result;
          v16 = *(result + 16);
          if (!v16)
          {
LABEL_72:
            __break(1u);
          }
        }

        v12 = 0;
LABEL_7:
        v17 = v16 - 1;
        v6 = *(v15 + 8 * v17 + 32);
        *(v15 + 16) = v17;
        *(a1 + 40) = v15;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if ((result & 7) > 1)
      {
        if (v20 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }

          v42 = *(a1 + 8) + result;
          if (v6 < v42)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v20 != 5)
          {
            goto LABEL_4;
          }

          v42 = *(a1 + 8) + 4;
          if (v6 < v42)
          {
            goto LABEL_4;
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
          }

          goto LABEL_8;
        }

        if (v20 != 1)
        {
          goto LABEL_4;
        }

        v42 = *(a1 + 8) + 8;
        if (v6 < v42)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v42;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (((v12 | v8) & 1) == 0 && v7)
        {
          *a2 = v11;
          a2[1] = v13;
          a2[2] = v9;
          a2[3] = v10;
          a2[4] = v7;
          return result;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

uint64_t _s7SwiftUI15EffectAnimation33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLPAAE4fromxAA15ProtobufDecoderVz_tKcfCAA11DisplayListV07OpacityD0V_Tt1g5Tm(unint64_t a1)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v6 = 0;
    *(a1 + 24) = 0;
    goto LABEL_4;
  }

  v6 = 0;
  v7 = 1;
  v8 = 1;
  do
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v4 < v13)
      {
        goto LABEL_16;
      }

      if (v13 < v4)
      {
        goto LABEL_4;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      goto LABEL_74;
    }

    if (v12 < 8)
    {
      goto LABEL_4;
    }

LABEL_16:
    v14 = v12 >> 3;
    v15 = v12 & 7;
    if (v12 >> 3 == 3)
    {
      if (v15 != 2)
      {
        goto LABEL_4;
      }

      v2 = *(a1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v25 = *(v2 + 2);
      v24 = *(v2 + 3);
      if (v25 >= v24 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v2);
      }

      *(v2 + 2) = v25 + 1;
      *&v2[8 * v25 + 32] = v5;
      *(a1 + 40) = v2;
      v26 = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_74;
      }

      if (v26 < 0)
      {
        goto LABEL_87;
      }

      v27 = *(a1 + 8) + v26;
      if (v5 < v27)
      {
        goto LABEL_4;
      }

      *(a1 + 16) = v27;
      v28 = specialized CodableAnimation.init(from:)(a1);
      v29 = *(a1 + 40);
      if (!*(v29 + 2))
      {
        goto LABEL_89;
      }

      v2 = v28;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = *(v29 + 2);
        if (!v30)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
        v30 = *(v29 + 2);
        if (!v30)
        {
          goto LABEL_92;
        }
      }

      v31 = v30 - 1;
      v5 = *&v29[8 * v31 + 32];
      *(v29 + 2) = v31;

      *(a1 + 40) = v29;
      *(a1 + 16) = v5;
      v6 = v2;
    }

    else
    {
      if (v14 == 2)
      {
        if (v15 != 2)
        {
          goto LABEL_4;
        }

        v2 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v21 = *(v2 + 2);
        v20 = *(v2 + 3);
        if (v21 >= v20 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v2);
        }

        *(v2 + 2) = v21 + 1;
        *&v2[8 * v21 + 32] = v5;
        *(a1 + 40) = v2;
        v22 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_74;
        }

        if (v22 < 0)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          __break(1u);
LABEL_94:
          __break(1u);
          do
          {
            __break(1u);
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v34 = *(v2 + 2);
            if (v34)
            {
              goto LABEL_84;
            }

            __break(1u);
            v2 = *(a1 + 40);
            if (!*(v2 + 2))
            {
              goto LABEL_94;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v34 = *(v2 + 2);
              if (v34)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
              v34 = *(v2 + 2);
              if (v34)
              {
                goto LABEL_84;
              }
            }

            __break(1u);
            v2 = *(a1 + 40);
          }

          while (!*(v2 + 2));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v34 = *(v2 + 2);
            if (v34)
            {
LABEL_84:
              v35 = v34 - 1;
              v36 = *&v2[8 * v35 + 32];
              *(v2 + 2) = v35;

              *(a1 + 40) = v2;
              *(a1 + 16) = v36;
              return v6;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
            v2 = result;
            v34 = *(result + 16);
            if (v34)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          return result;
        }

        v23 = *(a1 + 8) + v22;
        if (v5 < v23)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v23;
        specialized _OpacityEffect.init(from:)(a1);
        v2 = *(a1 + 40);
        if (!*(v2 + 2))
        {
          goto LABEL_88;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_91;
          }
        }

        v7 = 0;
        goto LABEL_8;
      }

      if (v14 == 1)
      {
        if (v15 != 2)
        {
          goto LABEL_4;
        }

        v2 = *(a1 + 40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v17 = *(v2 + 2);
        v16 = *(v2 + 3);
        if (v17 >= v16 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
        }

        *(v2 + 2) = v17 + 1;
        *&v2[8 * v17 + 32] = v5;
        *(a1 + 40) = v2;
        v18 = ProtobufDecoder.decodeVarint()();
        if (v1)
        {
          goto LABEL_74;
        }

        if (v18 < 0)
        {
          goto LABEL_86;
        }

        v19 = *(a1 + 8) + v18;
        if (v5 < v19)
        {
          goto LABEL_4;
        }

        *(a1 + 16) = v19;
        specialized _OpacityEffect.init(from:)(a1);
        v2 = *(a1 + 40);
        if (!*(v2 + 2))
        {
          goto LABEL_90;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v10 = *(v2 + 2);
          if (!v10)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v10 = *(v2 + 2);
          if (!v10)
          {
LABEL_73:
            __break(1u);
LABEL_74:
            v6 = v1;

            return v6;
          }
        }

        v8 = 0;
LABEL_8:
        v11 = v10 - 1;
        v5 = *&v2[8 * v11 + 32];
        *(v2 + 2) = v11;
        *(a1 + 40) = v2;
        *(a1 + 16) = v5;
        goto LABEL_9;
      }

      if ((v12 & 7) > 1)
      {
        if (v15 == 2)
        {
          v33 = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            goto LABEL_74;
          }

          if (v33 < 0)
          {
            goto LABEL_93;
          }

          v32 = *(a1 + 8) + v33;
          if (v5 < v32)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_4;
          }

          v32 = *(a1 + 8) + 4;
          if (v5 < v32)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_69;
      }

      if ((v12 & 7) != 0)
      {
        if (v15 != 1)
        {
          goto LABEL_4;
        }

        v32 = *(a1 + 8) + 8;
        if (v5 < v32)
        {
          goto LABEL_4;
        }

LABEL_69:
        *(a1 + 8) = v32;
        goto LABEL_9;
      }

      ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        goto LABEL_74;
      }
    }

LABEL_9:
    v4 = *(a1 + 8);
  }

  while (v4 < v5);
  *(a1 + 24) = 0;
  if (((v8 | v7) & 1) == 0 && v6)
  {
    return v6;
  }

LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();

  return v6;
}

uint64_t outlined init with copy of AccessibilityNodeAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AccessibilityNodeAttachment(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *GraphicsFilter.VibrantColorMatrix.init(_:maxColorComponent:options:)@<X0>(_OWORD *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v4 = *a2;
  v5 = result[3];
  *(a3 + 32) = result[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = result[4];
  v6 = result[1];
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 80) = a4;
  *(a3 + 84) = v4;
  return result;
}

uint64_t GraphicsFilter.ColorMonochrome.init(color:amount:bias:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 20) = a3;
  *(a2 + 24) = a4;
  return result;
}

uint64_t GraphicsFilter.AlphaThreshold.init(color:amount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v3 = *(result + 16);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 20) = a3;
  return result;
}

uint64_t GraphicsFilter.ShaderFilter.init(shader:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = *(result + 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  return result;
}

__n128 GraphicsFilter.DisplacementMap.mask.setter(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v10[4] = *(v1 + 72);
  v11[0] = v4;
  *(v11 + 12) = *(v1 + 100);
  v5 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v5;
  v10[2] = *(v1 + 40);
  v10[3] = v3;
  outlined destroy of VariableBlurStyle.Mask(v10);
  v6 = *(a1 + 32);
  *(v1 + 56) = *(a1 + 48);
  v7 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v7;
  *(v1 + 100) = *(a1 + 92);
  result = *a1;
  v9 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v9;
  *(v1 + 40) = v6;
  return result;
}

float GraphicsFilter.ColorMonochrome.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.ColorMonochrome.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

__n128 GraphicsFilter.VibrantColorMatrix.matrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.VibrantColorMatrix.matrix.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

BOOL static GraphicsFilter.VibrantColorMatrix.== infix(_:_:)(uint64_t a1, float *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v14[4] = *(a2 + 4);
  v8 = *a2;
  v14[1] = *(a2 + 1);
  v13[4] = v3;
  v14[0] = v8;
  v9 = a2[20];
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14);
  result = 0;
  if ((v11 & 1) != 0 && v5 == v9)
  {
    return v6 == v10;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GraphicsFilter.VibrantColorMatrix(uint64_t a1, float *a2)
{
  v2 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v5 = *(a1 + 80);
  v6 = *(a1 + 84);
  v7 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v7;
  v14[4] = *(a2 + 4);
  v8 = *a2;
  v14[1] = *(a2 + 1);
  v13[4] = v3;
  v14[0] = v8;
  v9 = a2[20];
  v10 = *(a2 + 84);
  v11 = specialized static _ColorMatrix.== infix(_:_:)(v13, v14);
  result = 0;
  if ((v11 & 1) != 0 && v5 == v9)
  {
    return v6 == v10;
  }

  return result;
}

void GraphicsFilter.Curve.values.setter(float a1, float a2, float a3, float a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 GraphicsFilter.LuminanceCurve.curve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 GraphicsFilter.LuminanceCurve.curve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.redCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.redCurve.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.greenCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.greenCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.blueCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.blueCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 GraphicsFilter.ColorCurves.opacityCurve.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[3];
  *a1 = result;
  return result;
}

__n128 GraphicsFilter.ColorCurves.opacityCurve.setter(__n128 *a1)
{
  result = *a1;
  v1[3] = *a1;
  return result;
}

void __swiftcall GraphicsFilter.ColorCurves.init(redCurve:greenCurve:blueCurve:opacityCurve:)(SwiftUI::GraphicsFilter::ColorCurves *__return_ptr retstr, SwiftUI::GraphicsFilter::Curve redCurve, SwiftUI::GraphicsFilter::Curve greenCurve, SwiftUI::GraphicsFilter::Curve blueCurve, SwiftUI::GraphicsFilter::Curve opacityCurve)
{
  v9 = *v6;
  retstr->redCurve = *v5;
  retstr->greenCurve = v9;
  v10 = *v8;
  retstr->blueCurve = *v7;
  retstr->opacityCurve = v10;
}

id GraphicsFilter.ShaderFilter.shader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v3;
  return v2;
}

__n128 GraphicsFilter.ShaderFilter.shader.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 6);

  *v1 = v3;
  result = *(a1 + 1);
  *(v1 + 8) = result;
  *(v1 + 24) = v4;
  return result;
}

float GraphicsFilter.AlphaThreshold.color.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 GraphicsFilter.AlphaThreshold.color.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

SwiftUI::GraphicsFilter::EDRGainMultiply __swiftcall GraphicsFilter.EDRGainMultiply.init(amount:scale:isAdaptive:allowsGroup:)(Swift::Float amount, Swift::Float scale, Swift::Bool isAdaptive, Swift::Bool allowsGroup)
{
  *v4 = amount;
  *(v4 + 4) = scale;
  *(v4 + 8) = isAdaptive;
  *(v4 + 9) = allowsGroup;
  result.scale = scale;
  result.amount = amount;
  result.isAdaptive = isAdaptive;
  return result;
}

uint64_t GraphicsFilter.DisplacementMap.mask.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 88);
  v13 = *(v1 + 72);
  v3 = v13;
  v14[0] = v4;
  *(v14 + 12) = *(v1 + 100);
  v5 = *(v14 + 12);
  v6 = *(v1 + 24);
  v10[0] = *(v1 + 8);
  v10[1] = v6;
  v11 = *(v1 + 40);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *(a1 + 92) = v5;
  return outlined init with copy of VariableBlurStyle.Mask(v10, &v9);
}

uint64_t static GraphicsBlendMode.normal.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = static GraphicsBlendMode.normal;
  v3 = byte_1ED52F818;
  *a1 = static GraphicsBlendMode.normal;
  *(a1 + 8) = v3;

  return outlined copy of GraphicsBlendMode(v2, v3);
}

uint64_t GraphicsFilter.changesDOD.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v8[0] = v0[6];
  *(v8 + 12) = *(v0 + 108);
  v2 = v0[1];
  v7[0] = *v0;
  v7[1] = v2;
  v3 = v0[3];
  v7[2] = v0[2];
  v7[3] = v3;
  v4 = _s7SwiftUI14GraphicsFilterOWOg(v7);
  v5 = 0;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      v5 = *(_s7SwiftUI14GraphicsFilterOWOj6_(v7) + 8) ^ 1;
      return v5 & 1;
    }

    if (v4 != 2)
    {
      return v5 & 1;
    }

    goto LABEL_8;
  }

  if (v4 == 3 || v4 == 4 || v4 == 21)
  {
LABEL_8:
    _s7SwiftUI14GraphicsFilterOWOj6_(v7);
    v5 = 1;
  }

  return v5 & 1;
}

void GraphicsFilter.encode(to:)(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[3];
  v143[2] = v1[2];
  v143[3] = v6;
  v143[0] = v4;
  v143[1] = v5;
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  *&v144[12] = *(v1 + 108);
  v143[5] = v8;
  *v144 = v9;
  v143[4] = v7;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v143))
  {
    case 1u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      specialized ProtobufEncoder.messageField<A>(_:_:)(18);
      return;
    case 2u:
      goto LABEL_36;
    case 3u:
      v45 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v46 = *(v45 + 80);
      v113[4] = *(v45 + 64);
      v113[5] = v46;
      v113[6] = *(v45 + 96);
      v114 = *(v45 + 112);
      v47 = *(v45 + 16);
      v113[0] = *v45;
      v113[1] = v47;
      v48 = *(v45 + 48);
      v113[2] = *(v45 + 32);
      v113[3] = v48;
      v39 = v113;
      v40 = 23;
      goto LABEL_42;
    case 4u:
      goto LABEL_13;
    case 5u:
      v63 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v64 = *(v63 + 48);
      v118[2] = *(v63 + 32);
      v118[3] = v64;
      v119 = *(v63 + 64);
      v65 = *(v63 + 16);
      v118[0] = *v63;
      v118[1] = v65;
      ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v118);
      return;
    case 6u:
      goto LABEL_61;
    case 7u:
      v49 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v50 = *(v49 + 16);
      v120[5] = *v49;
      v121 = v50;
      ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v51 = *(v11 + 2);
      v52 = *(v11 + 3);
      v53 = v51 + 1;
      if (v51 >= v52 >> 1)
      {
        v107 = v51 + 1;
        v93 = v11;
        v94 = *(v11 + 2);
        v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v51 + 1, 1, v93);
        v51 = v94;
        v53 = v107;
        v11 = v95;
      }

      *(v11 + 2) = v53;
      *&v11[8 * v51 + 32] = v10;
      *(a1 + 24) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 8) = v10 + 1;
LABEL_74:
        Color.ResolvedHDR.encode(to:)(a1);
        goto LABEL_82;
      }

      __break(1u);
LABEL_87:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_3:
      v12 = *(v11 + 2);
      v13 = *(v11 + 3);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v108 = v12 + 1;
        v96 = v11;
        v97 = *(v11 + 2);
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1, v96);
        v12 = v97;
        v14 = v108;
        v11 = v98;
      }

      *(v11 + 2) = v14;
      *&v11[8 * v12 + 32] = v10;
      *(a1 + 24) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 8) = v10 + 1;
        BlurStyle.encode(to:)(a1);
        goto LABEL_82;
      }

      __break(1u);
LABEL_89:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_70:
      v78 = *(v11 + 2);
      v79 = *(v11 + 3);
      v80 = v78 + 1;
      if (v78 >= v79 >> 1)
      {
        v109 = v78 + 1;
        v99 = v11;
        v100 = *(v11 + 2);
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v78 + 1, 1, v99);
        v78 = v100;
        v80 = v109;
        v11 = v101;
      }

      *(v11 + 2) = v80;
      *&v11[8 * v78 + 32] = v10;
      *(a1 + 24) = v11;
      if (!__OFADD__(v10, 1))
      {
        *(a1 + 8) = v10 + 1;
        goto LABEL_74;
      }

      __break(1u);
LABEL_91:
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
LABEL_78:
      v82 = *(v11 + 2);
      v83 = *(v11 + 3);
      v84 = v82 + 1;
      if (v82 >= v83 >> 1)
      {
        v110 = v82 + 1;
        v102 = v11;
        v103 = *(v11 + 2);
        v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v82 + 1, 1, v102);
        v82 = v103;
        v84 = v110;
        v11 = v104;
      }

      *(v11 + 2) = v84;
      *&v11[8 * v82 + 32] = v10;
      *(a1 + 24) = v11;
      v29 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
      }

      else
      {
LABEL_81:
        *(a1 + 8) = v29;
LABEL_82:
        ProtobufEncoder.endLengthDelimited()();
      }

      return;
    case 8u:
      v76 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v77 = *(v76 + 16);
      v122 = *v76;
      v123 = v77;
      ProtobufEncoder.encodeVarint(_:)(0xD2uLL);
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }

      goto LABEL_89;
    case 9u:
      goto LABEL_18;
    case 0xAu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x39uLL);
      v20 = *(a1 + 8);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      goto LABEL_93;
    case 0xBu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x41uLL);
      v20 = *(a1 + 8);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_13:
      v22 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v23 = *(v22 + 16);
      v115 = *v22;
      v116 = v23;
      v117[0] = *(v22 + 32);
      *(v117 + 13) = *(v22 + 45);
      specialized ProtobufEncoder.messageField<A>(_:_:)(2);
      return;
    case 0xCu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x49uLL);
      v20 = *(a1 + 8);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_18:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x31uLL);
      v20 = *(a1 + 8);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
LABEL_67:
        if (*(a1 + 16) < v21)
        {
          *ProtobufEncoder.growBufferSlow(to:)(v21) = v19;
        }

        else
        {
          *(a1 + 8) = v21;
          *(*a1 + v20) = v19;
        }

        return;
      }

      __break(1u);
LABEL_22:
      ProtobufEncoder.encodeVarint(_:)(0x5AuLL);
      v24 = *(a1 + 8);
      v25 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      }

      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = v26 + 1;
      if (v26 >= v27 >> 1)
      {
        v105 = v26 + 1;
        v87 = v25;
        v88 = *(v25 + 2);
        v89 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v26 + 1, 1, v87);
        v26 = v88;
        v28 = v105;
        v25 = v89;
      }

      *(v25 + 2) = v28;
      *&v25[8 * v26 + 32] = v24;
      *(a1 + 24) = v25;
      v29 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_29:
      ProtobufEncoder.encodeVarint(_:)(0x52uLL);
      v30 = *(a1 + 8);
      v31 = *(a1 + 24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
      }

      v32 = *(v31 + 2);
      v33 = *(v31 + 3);
      v34 = v32 + 1;
      if (v32 >= v33 >> 1)
      {
        v106 = v32 + 1;
        v90 = v31;
        v91 = *(v31 + 2);
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v32 + 1, 1, v90);
        v32 = v91;
        v34 = v106;
        v31 = v92;
      }

      *(v31 + 2) = v34;
      *&v31[8 * v32 + 32] = v30;
      *(a1 + 24) = v31;
      v29 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_36:
      v35 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v36 = *(v35 + 80);
      v111[4] = *(v35 + 64);
      v111[5] = v36;
      v111[6] = *(v35 + 96);
      v112 = *(v35 + 112);
      v37 = *(v35 + 16);
      v111[0] = *v35;
      v111[1] = v37;
      v38 = *(v35 + 48);
      v111[2] = *(v35 + 32);
      v111[3] = v38;
      v39 = v111;
      v40 = 22;
LABEL_42:
      specialized ProtobufEncoder.messageField<A>(_:_:)(v40, v39);
      return;
    case 0xDu:
      v19 = *_s7SwiftUI14GraphicsFilterOWOj6_(v143);
      if (v19 == 0.0)
      {
        return;
      }

      ProtobufEncoder.encodeVarint(_:)(0x61uLL);
      v20 = *(a1 + 8);
      v21 = v20 + 8;
      if (!__OFADD__(v20, 8))
      {
        goto LABEL_67;
      }

      __break(1u);
LABEL_61:
      v70 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v71 = *(v70 + 48);
      v120[2] = *(v70 + 32);
      v120[3] = v71;
      v120[4] = *(v70 + 64);
      v72 = *(v70 + 16);
      v120[0] = *v70;
      v120[1] = v72;
      v73 = *(v70 + 80);
      ProtobufEncoder.encodeVarint(_:)(0x22uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v120);
      if (!v2)
      {
        if (v73)
        {
          ProtobufEncoder.encodeVarint(_:)(0x98uLL);
          ProtobufEncoder.encodeVarint(_:)(1uLL);
        }
      }

      return;
    case 0xEu:
      v17 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v18 = *(v17 + 24);
      v124 = *v17;
      v125 = *(v17 + 16);
      v126 = v18;
      specialized ProtobufEncoder.messageField<A>(_:_:)(13);
      return;
    case 0xFu:
      v41 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v42 = *(v41 + 48);
      v128[2] = *(v41 + 32);
      v128[3] = v42;
      v129[0] = *(v41 + 64);
      *(v129 + 13) = *(v41 + 77);
      v43 = *(v41 + 80) == INFINITY;
      v44 = *(v41 + 16);
      v128[0] = *v41;
      v128[1] = v44;
      if (v43 && !*(v41 + 84))
      {
        v85 = *(v41 + 48);
        v127[2] = *(v41 + 32);
        v127[3] = v85;
        v127[4] = *(v41 + 64);
        v86 = *(v41 + 16);
        v127[0] = *v41;
        v127[1] = v86;
        ProtobufEncoder.encodeVarint(_:)(0x72uLL);
        specialized ProtobufEncoder.encodeMessage<A>(_:)(v127);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(27, v128);
      }

      return;
    case 0x10u:
      v15 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v16 = *(v15 + 16);
      v129[2] = *v15;
      v130 = v16;
      specialized ProtobufEncoder.messageField<A>(_:_:)(15);
      return;
    case 0x11u:
      v54 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v55 = v54[1];
      v131 = *v54;
      v132 = v55;
      v56 = v54[3];
      v133 = v54[2];
      v134 = v56;
      specialized ProtobufEncoder.messageField<A>(_:_:)(20);
      return;
    case 0x12u:
      v74 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v75 = *(v74 + 24);
      v135 = *v74;
      v136 = *(v74 + 8);
      v137 = v75;
      v138 = *(v74 + 32);
      specialized ProtobufEncoder.messageField<A>(_:_:)(17);
      return;
    case 0x13u:
      v81 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v139 = *v81;
      v140 = *(v81 + 16);
      ProtobufEncoder.encodeVarint(_:)(0xAAuLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(&v139);
      return;
    case 0x14u:
      v57 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v58 = *v57;
      v59 = *(v57 + 4);
      v60 = *(v57 + 8);
      v61 = *(v57 + 9);
      ProtobufEncoder.encodeVarint(_:)(0xC2uLL);
      if (v61)
      {
        v62 = 256;
      }

      else
      {
        v62 = 0;
      }

      specialized ProtobufEncoder.encodeMessage<A>(_:)(v62 | v60, v58, v59);
      return;
    case 0x15u:
      v66 = _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      v67 = *(v66 + 80);
      v141[4] = *(v66 + 64);
      v141[5] = v67;
      v141[6] = *(v66 + 96);
      v142 = *(v66 + 112);
      v68 = *(v66 + 16);
      v141[0] = *v66;
      v141[1] = v68;
      v69 = *(v66 + 48);
      v141[2] = *(v66 + 32);
      v141[3] = v69;
      specialized ProtobufEncoder.messageField<A>(_:_:)(25, v141);
      return;
    case 0x16u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      return;
    case 0x17u:
      ProtobufEncoder.encodeVarint(_:)(0x82uLL);
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_78;
      }

      goto LABEL_91;
    case 0x18u:
      goto LABEL_29;
    case 0x19u:
      goto LABEL_22;
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v143);
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      v10 = *(a1 + 8);
      v11 = *(a1 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_3;
      }

      goto LABEL_87;
  }
}

int64_t GraphicsFilter.ColorMonochrome.encode(to:)(uint64_t a1)
{
  v4 = *(v1 + 20);
  v3 = *(v1 + 24);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
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
  *(a1 + 24) = v6;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  *(a1 + 8) = v5 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v4 == 1.0)
  {
    goto LABEL_10;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v10 = *(a1 + 8);
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a1 + 16) < result)
  {
    goto LABEL_18;
  }

  *(a1 + 8) = result;
  *(*a1 + v10) = v4;
LABEL_10:
  if (v3 != 0.0)
  {
    while (1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v11 = *(a1 + 8);
      result = v11 + 4;
      if (!__OFADD__(v11, 4))
      {
        break;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v4;
      if (v3 == 0.0)
      {
        return result;
      }
    }

    if (*(a1 + 16) < result)
    {
      result = ProtobufEncoder.growBufferSlow(to:)(result);
      *result = v3;
    }

    else
    {
      *(a1 + 8) = result;
      *(*a1 + v11) = v3;
    }
  }

  return result;
}

unint64_t GraphicsFilter.ColorMonochrome.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0uLL;
  if (v5 >= v6)
  {
LABEL_61:
    v27 = v7;
    v8 = 0;
    v9 = 1.0;
    v10 = 2143289344;
LABEL_62:
    v3[3] = 0;
    *a2 = v27;
    *(a2 + 16) = v10;
    *(a2 + 20) = v9;
    *(a2 + 24) = v8;
    return result;
  }

  v27 = 0uLL;
  v8 = 0;
  v9 = 1.0;
  v10 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v5)
      {
        goto LABEL_63;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_63:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 == 3)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v22 = v3[1];
        if (v6 < v22 + result)
        {
          goto LABEL_63;
        }

        v3[3] = 29;
        v3[4] = v22 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_63;
        }

        v22 = v3[1];
      }

      if (v6 < (v22 + 1))
      {
        goto LABEL_63;
      }

      v8 = *v22;
      v3[1] = v22 + 1;
      goto LABEL_4;
    }

    if (v12 == 2)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_68;
        }

        v21 = v3[1];
        if (v6 < v21 + result)
        {
          goto LABEL_63;
        }

        v3[3] = 21;
        v3[4] = v21 + result;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_63;
        }

        v21 = v3[1];
      }

      if (v6 < (v21 + 1))
      {
        goto LABEL_63;
      }

      v9 = *v21;
      v3[1] = v21 + 1;
      goto LABEL_4;
    }

    if (v12 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v13 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          v23 = v3[1] + result;
          if (v6 < v23)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_63;
          }

          v23 = v3[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_63;
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
            return result;
          }

          goto LABEL_4;
        }

        if (v13 != 1)
        {
          goto LABEL_63;
        }

        v23 = v3[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_63;
        }
      }

      v3[1] = v23;
      goto LABEL_4;
    }

    if (v13 != 2)
    {
      goto LABEL_63;
    }

    v14 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v6;
    v3[5] = v14;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v17 = v3[1] + result;
    if (v6 < v17)
    {
      goto LABEL_63;
    }

    v3[2] = v17;
    specialized Color.ResolvedHDR.init(from:)(v3, &v28);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_67;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v18 + 16);
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v20 = v19 - 1;
    v6 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v6;
    v27 = v28;
    v10 = v29;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v26 = *(result + 16);
  if (v26)
  {
    v24 = v26 - 1;
    v25 = *(result + 8 * v24 + 32);
    *(result + 16) = v24;
    v3[5] = result;
    v3[2] = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GraphicsFilter.VibrantColorMatrix.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *(v3 + 48);
  v11[2] = *(v3 + 32);
  v11[3] = v5;
  v11[4] = *(v3 + 64);
  v6 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 84);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v11);
  if (!v2)
  {
    if (v8)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
    }

    if (v7 != INFINITY)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v9 = a1[1];
      v10 = v9 + 4;
      if (__OFADD__(v9, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v10)
      {
        a1[1] = v10;
        *(*a1 + v9) = v7;
        return;
      }

      *ProtobufEncoder.growBufferSlow(to:)(v10) = v7;
    }
  }
}

unint64_t GraphicsFilter.VibrantColorMatrix.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v17 = 0u;
    v18 = xmmword_18DDD8E20;
    v8 = 2139095040;
    v15 = xmmword_18DDC57D0;
    v16 = xmmword_18DDD8E20;
    v19 = xmmword_18DDC57D0;
LABEL_50:
    v3[3] = 0;
    *a2 = v18;
    *(a2 + 16) = v19;
    *(a2 + 32) = v17;
    *(a2 + 48) = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v8;
    *(a2 + 84) = v7;
    return result;
  }

  v7 = 0;
  v8 = 2139095040;
  v17 = 0u;
  v18 = xmmword_18DDD8E20;
  v15 = xmmword_18DDC57D0;
  v16 = xmmword_18DDD8E20;
  v19 = xmmword_18DDC57D0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_48:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result >> 3;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v10 == 2)
    {
      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_48;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        v11 = v3[1] + result;
        if (v6 < v11)
        {
          goto LABEL_48;
        }

        v3[3] = 16;
        v3[4] = v11;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if (v10 != 1)
      {
        v13 = result & 7;
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            v14 = v3[1] + result;
            if (v6 < v14)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_48;
            }

            v14 = v3[1] + 4;
            if (v6 < v14)
            {
              goto LABEL_48;
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
              return result;
            }

            goto LABEL_4;
          }

          if (v13 != 1)
          {
            goto LABEL_48;
          }

          v14 = v3[1] + 8;
          if (v6 < v14)
          {
            goto LABEL_48;
          }
        }

        v3[1] = v14;
        goto LABEL_4;
      }

      if ((result & 7) != 2)
      {
        goto LABEL_48;
      }

      result = specialized ProtobufDecoder.decodeMessage<A>()(v20);
      if (v2)
      {
        return result;
      }

      v18 = v20[0];
      v19 = v20[1];
      v16 = v20[3];
      v17 = v20[2];
      v15 = v20[4];
    }

LABEL_4:
    v5 = v3[1];
    v6 = v3[2];
    if (v5 >= v6)
    {
      goto LABEL_50;
    }
  }

  if ((result & 7) != 2)
  {
    if ((result & 7) != 5)
    {
      goto LABEL_48;
    }

    v12 = v3[1];
LABEL_41:
    if (v6 < (v12 + 1))
    {
      goto LABEL_48;
    }

    v8 = *v12;
    v3[1] = v12 + 1;
    goto LABEL_4;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = v3[1];
    if (v6 < v12 + result)
    {
      goto LABEL_48;
    }

    v3[3] = 29;
    v3[4] = v12 + result;
    goto LABEL_41;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.VibrantColorMatrix(void *a1)
{
  v3 = v1;
  v5 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v5;
  v12[4] = *(v3 + 64);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 84);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  specialized ProtobufEncoder.encodeMessage<A>(_:)(v12);
  if (!v2)
  {
    if (v8)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v8);
    }

    if (v7 != INFINITY)
    {
      ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
      v9 = a1[1];
      v10 = v9 + 4;
      if (__OFADD__(v9, 4))
      {
        __break(1u);
      }

      else if (a1[2] >= v10)
      {
        a1[1] = v10;
        v11 = (*a1 + v9);
LABEL_8:
        *v11 = v7;
        return;
      }

      v11 = ProtobufEncoder.growBufferSlow(to:)(v10);
      goto LABEL_8;
    }
  }
}

float *GraphicsFilter.LuminanceCurve.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 1);
  v7 = *(v2 + 2);
  v6 = *(v2 + 3);
  v8 = v2[4];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v9 = a1[1];
  v10 = a1[3];
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
  a1[3] = v10;
  v14 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  a1[1] = v14;
  isUniquelyReferenced_nonNull_native = v9 + 5;
  if (__OFADD__(v14, 4))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v15 = (*a1 + v14);
    goto LABEL_9;
  }

LABEL_25:
  v15 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v15 = v5;
  v16 = a1[1];
  v17 = v16 + 4;
  if (__OFADD__(v16, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v17)
  {
    a1[1] = v17;
    v18 = (*a1 + v16);
    goto LABEL_12;
  }

  v18 = ProtobufEncoder.growBufferSlow(to:)(v17);
LABEL_12:
  *v18 = v4;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_15;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_15:
  *v21 = v7;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_18;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_18:
  *v24 = v6;
  result = ProtobufEncoder.endLengthDelimited()();
  if (v8 == 0.0)
  {
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v26 = a1[1];
  result = (v26 + 4);
  if (__OFADD__(v26, 4))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a1[2] < result)
  {
LABEL_33:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v8;
    return result;
  }

  a1[1] = result;
  *(*a1 + v26) = v8;
  return result;
}

unint64_t GraphicsFilter.LuminanceCurve.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v15 = 0uLL;
  v16 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v9 = 0uLL;
    v8 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 16) = v8;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_15;
      }

      if (v10 < v5)
      {
        goto LABEL_48;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_48;
    }

LABEL_15:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v13 = v3[1];
        if (v6 < v13 + result)
        {
          goto LABEL_48;
        }

        v3[3] = 21;
        v3[4] = v13 + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_48;
        }

        v13 = v3[1];
      }

      v5 = (v13 + 1);
      if (v6 < (v13 + 1))
      {
        goto LABEL_48;
      }

      v8 = *v13;
      goto LABEL_7;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_48;
        }

        v5 = v3[1] + 4;
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        v5 = v3[1];
        goto LABEL_8;
      }

      if (v11 != 1)
      {
        goto LABEL_48;
      }

      v5 = v3[1] + 8;
    }

    if (v6 < v5)
    {
      goto LABEL_48;
    }

LABEL_7:
    v3[1] = v5;
LABEL_8:
    if (v5 >= v6)
    {
      v9 = v15;
      goto LABEL_4;
    }
  }

  if (v11 != 2)
  {
    if (v11 != 5)
    {
      goto LABEL_48;
    }

    v12 = v3[1];
LABEL_34:
    v5 = (v12 + 1);
    if (v6 < (v12 + 1))
    {
      goto LABEL_48;
    }

    v14 = *v12;
    v3[1] = v5;
    if (v7 < 4)
    {
      *(&v15 + v7++) = v14;
    }

    goto LABEL_8;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v12 = v3[1];
    if (v6 < v12 + result)
    {
      goto LABEL_48;
    }

    v3[3] = 13;
    v3[4] = v12 + result;
    goto LABEL_34;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

int64_t GraphicsFilter.ColorCurves.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v83 = v2[9];
  v84 = v2[8];
  v81 = v2[11];
  v82 = v2[10];
  v79 = v2[13];
  v80 = v2[12];
  v77 = v2[15];
  v78 = v2[14];
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v12 = a1[1];
  v13 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = isUniquelyReferenced_nonNull_native;
  }

  *(v13 + 16) = v16 + 1;
  *(v13 + 8 * v16 + 32) = v12;
  a1[3] = v13;
  v17 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_71;
  }

  a1[1] = v17;
  isUniquelyReferenced_nonNull_native = v12 + 5;
  if (__OFADD__(v17, 4))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (a1[2] >= isUniquelyReferenced_nonNull_native)
  {
    a1[1] = isUniquelyReferenced_nonNull_native;
    v18 = (*a1 + v17);
    goto LABEL_9;
  }

LABEL_72:
  v18 = ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native);
LABEL_9:
  *v18 = v5;
  v19 = a1[1];
  v20 = v19 + 4;
  if (__OFADD__(v19, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v20)
  {
    a1[1] = v20;
    v21 = (*a1 + v19);
    goto LABEL_12;
  }

  v21 = ProtobufEncoder.growBufferSlow(to:)(v20);
LABEL_12:
  *v21 = v4;
  v22 = a1[1];
  v23 = v22 + 4;
  if (__OFADD__(v22, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v23)
  {
    a1[1] = v23;
    v24 = (*a1 + v22);
    goto LABEL_15;
  }

  v24 = ProtobufEncoder.growBufferSlow(to:)(v23);
LABEL_15:
  *v24 = v7;
  v25 = a1[1];
  v26 = v25 + 4;
  if (__OFADD__(v25, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v26)
  {
    a1[1] = v26;
    v27 = (*a1 + v25);
    goto LABEL_18;
  }

  v27 = ProtobufEncoder.growBufferSlow(to:)(v26);
LABEL_18:
  *v27 = v6;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x12uLL);
  v28 = a1[1];
  v29 = a1[3];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  if ((v30 & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
    v29 = v30;
  }

  v32 = *(v29 + 16);
  v31 = *(v29 + 24);
  if (v32 >= v31 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
    v29 = v30;
  }

  *(v29 + 16) = v32 + 1;
  *(v29 + 8 * v32 + 32) = v28;
  a1[3] = v29;
  v33 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
    goto LABEL_80;
  }

  a1[1] = v33;
  v30 = v28 + 5;
  if (__OFADD__(v33, 4))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (a1[2] >= v30)
  {
    a1[1] = v30;
    v34 = (*a1 + v33);
    goto LABEL_26;
  }

LABEL_81:
  v34 = ProtobufEncoder.growBufferSlow(to:)(v30);
LABEL_26:
  *v34 = v9;
  v35 = a1[1];
  v36 = v35 + 4;
  if (__OFADD__(v35, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v36)
  {
    a1[1] = v36;
    v37 = (*a1 + v35);
    goto LABEL_29;
  }

  v37 = ProtobufEncoder.growBufferSlow(to:)(v36);
LABEL_29:
  *v37 = v8;
  v38 = a1[1];
  v39 = v38 + 4;
  if (__OFADD__(v38, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v39)
  {
    a1[1] = v39;
    v40 = (*a1 + v38);
    goto LABEL_32;
  }

  v40 = ProtobufEncoder.growBufferSlow(to:)(v39);
LABEL_32:
  *v40 = v11;
  v41 = a1[1];
  v42 = v41 + 4;
  if (__OFADD__(v41, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v42)
  {
    a1[1] = v42;
    v43 = (*a1 + v41);
    goto LABEL_35;
  }

  v43 = ProtobufEncoder.growBufferSlow(to:)(v42);
LABEL_35:
  *v43 = v10;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x1AuLL);
  v44 = a1[1];
  v45 = a1[3];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  if ((v46 & 1) == 0)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
    v45 = v46;
  }

  v48 = *(v45 + 16);
  v47 = *(v45 + 24);
  if (v48 >= v47 >> 1)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
    v45 = v46;
  }

  *(v45 + 16) = v48 + 1;
  *(v45 + 8 * v48 + 32) = v44;
  a1[3] = v45;
  v49 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
    __break(1u);
    goto LABEL_89;
  }

  a1[1] = v49;
  v46 = v44 + 5;
  if (__OFADD__(v49, 4))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (a1[2] >= v46)
  {
    a1[1] = v46;
    v50 = (*a1 + v49);
    goto LABEL_43;
  }

LABEL_90:
  v50 = ProtobufEncoder.growBufferSlow(to:)(v46);
LABEL_43:
  *v50 = v84;
  v51 = a1[1];
  v52 = v51 + 4;
  if (__OFADD__(v51, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v52)
  {
    a1[1] = v52;
    v53 = (*a1 + v51);
    goto LABEL_46;
  }

  v53 = ProtobufEncoder.growBufferSlow(to:)(v52);
LABEL_46:
  *v53 = v83;
  v54 = a1[1];
  v55 = v54 + 4;
  if (__OFADD__(v54, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v55)
  {
    a1[1] = v55;
    v56 = (*a1 + v54);
    goto LABEL_49;
  }

  v56 = ProtobufEncoder.growBufferSlow(to:)(v55);
LABEL_49:
  *v56 = v82;
  v57 = a1[1];
  v58 = v57 + 4;
  if (__OFADD__(v57, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v58)
  {
    a1[1] = v58;
    v59 = (*a1 + v57);
    goto LABEL_52;
  }

  v59 = ProtobufEncoder.growBufferSlow(to:)(v58);
LABEL_52:
  *v59 = v81;
  ProtobufEncoder.endLengthDelimited()();
  ProtobufEncoder.encodeVarint(_:)(0x22uLL);
  v60 = a1[1];
  v61 = a1[3];
  v62 = swift_isUniquelyReferenced_nonNull_native();
  if ((v62 & 1) == 0)
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 16) + 1, 1, v61);
    v61 = v62;
  }

  v64 = *(v61 + 16);
  v63 = *(v61 + 24);
  if (v64 >= v63 >> 1)
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
    v61 = v62;
  }

  *(v61 + 16) = v64 + 1;
  *(v61 + 8 * v64 + 32) = v60;
  a1[3] = v61;
  v65 = v60 + 1;
  if (__OFADD__(v60, 1))
  {
    __break(1u);
    goto LABEL_98;
  }

  a1[1] = v65;
  v62 = v60 + 5;
  if (__OFADD__(v65, 4))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (a1[2] >= v62)
  {
    a1[1] = v62;
    v66 = (*a1 + v65);
    goto LABEL_60;
  }

LABEL_99:
  v66 = ProtobufEncoder.growBufferSlow(to:)(v62);
LABEL_60:
  *v66 = v80;
  v67 = a1[1];
  v68 = v67 + 4;
  if (__OFADD__(v67, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v68)
  {
    a1[1] = v68;
    v69 = (*a1 + v67);
    goto LABEL_63;
  }

  v69 = ProtobufEncoder.growBufferSlow(to:)(v68);
LABEL_63:
  *v69 = v79;
  v70 = a1[1];
  v71 = v70 + 4;
  if (__OFADD__(v70, 4))
  {
    __break(1u);
  }

  else if (a1[2] >= v71)
  {
    a1[1] = v71;
    v72 = (*a1 + v70);
    goto LABEL_66;
  }

  v72 = ProtobufEncoder.growBufferSlow(to:)(v71);
LABEL_66:
  *v72 = v78;
  v73 = a1[1];
  v74 = v73 + 4;
  if (__OFADD__(v73, 4))
  {
    __break(1u);
    goto LABEL_105;
  }

  if (a1[2] < v74)
  {
LABEL_105:
    v75 = ProtobufEncoder.growBufferSlow(to:)(v74);
    goto LABEL_69;
  }

  a1[1] = v74;
  v75 = (*a1 + v73);
LABEL_69:
  *v75 = v77;
  return ProtobufEncoder.endLengthDelimited()();
}

unint64_t GraphicsFilter.ColorCurves.init(from:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = result;
  v32 = 0uLL;
  v33 = 0;
  v30 = 0uLL;
  v31 = 0;
  v28 = 0uLL;
  v29 = 0;
  v26 = 0uLL;
  v27 = 0;
  v5 = 0uLL;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
LABEL_4:
    v3[3] = 0;
    *a2 = v5;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v6 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v6)
      {
        goto LABEL_72;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_72:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v16 == 3)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v21 = v3[1];
        if (v7 < v21 + result)
        {
          goto LABEL_72;
        }

        v3[3] = 29;
        v3[4] = v21 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v21 = v3[1];
      }

      v6 = (v21 + 1);
      if (v7 < (v21 + 1))
      {
        goto LABEL_72;
      }

      v25 = *v21;
      v3[1] = v6;
      if (v9 < 4)
      {
        *(&v28 + v9++) = v25;
        v29 = v9;
      }

      goto LABEL_6;
    }

    if (v16 == 4)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v19 = v3[1];
        if (v7 < v19 + result)
        {
          goto LABEL_72;
        }

        v3[3] = 37;
        v3[4] = v19 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v19 = v3[1];
      }

      v6 = (v19 + 1);
      if (v7 < (v19 + 1))
      {
        goto LABEL_72;
      }

      v23 = *v19;
      v3[1] = v6;
      if (v8 < 4)
      {
        *(&v26 + v8++) = v23;
        v27 = v8;
      }

      goto LABEL_6;
    }

LABEL_24:
    if ((result & 7) > 1)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        v6 = v3[1] + result;
        if (v7 < v6)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_72;
        }

        v6 = v3[1] + 4;
        if (v7 < v6)
        {
          goto LABEL_72;
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
          return result;
        }

        v6 = v3[1];
        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_72;
      }

      v6 = v3[1] + 8;
      if (v7 < v6)
      {
        goto LABEL_72;
      }
    }

    v3[1] = v6;
LABEL_6:
    if (v6 >= v7)
    {
      v5 = v32;
      v12 = v30;
      v13 = v28;
      v14 = v26;
      goto LABEL_4;
    }
  }

  if (v16 == 1)
  {
    if (v17 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      v20 = v3[1];
      if (v7 < v20 + result)
      {
        goto LABEL_72;
      }

      v3[3] = 13;
      v3[4] = v20 + result;
    }

    else
    {
      if (v17 != 5)
      {
        goto LABEL_72;
      }

      v20 = v3[1];
    }

    v6 = (v20 + 1);
    if (v7 < (v20 + 1))
    {
      goto LABEL_72;
    }

    v24 = *v20;
    v3[1] = v6;
    if (v11 < 4)
    {
      *(&v32 + v11++) = v24;
      v33 = v11;
    }

    goto LABEL_6;
  }

  if (v16 != 2)
  {
    goto LABEL_24;
  }

  if (v17 != 2)
  {
    if (v17 != 5)
    {
      goto LABEL_72;
    }

    v18 = v3[1];
LABEL_43:
    v6 = (v18 + 1);
    if (v7 < (v18 + 1))
    {
      goto LABEL_72;
    }

    v22 = *v18;
    v3[1] = v6;
    if (v10 < 4)
    {
      *(&v30 + v10++) = v22;
      v31 = v10;
    }

    goto LABEL_6;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v18 = v3[1];
    if (v7 < v18 + result)
    {
      goto LABEL_72;
    }

    v3[3] = 21;
    v3[4] = v18 + result;
    goto LABEL_43;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

void GraphicsFilter.ShaderFilter.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (!v2 && (v5 != 0.0 || v6 != 0.0))
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v9 = *(v8 + 2);
    v10 = *(v8 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v8;
      v13 = *(v8 + 2);
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v8 = v14;
    }

    *(v8 + 2) = v11;
    *&v8[8 * v9 + 32] = v7;
    *(a1 + 24) = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(a1 + 8) = v7 + 1;
      CGSize.encode(to:)(a1, v5, v6);
      ProtobufEncoder.endLengthDelimited()();
    }
  }
}

void GraphicsFilter.ShaderFilter.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 0;
    v41 = 0;
    v9 = 0;
    v10 = 1;
    v11 = 0;
    while (1)
    {
      v12 = a1[3];
      if (v12)
      {
        v13 = a1[4];
        if (v5 < v13)
        {
          goto LABEL_11;
        }

        if (v13 < v5)
        {
          goto LABEL_58;
        }

        a1[3] = 0;
      }

      v12 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_59;
      }

      if (v12 < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      if (v12 >> 3 == 2)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_58;
        }

        v3 = v2;
        v22 = a1[5];
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
        *&v22[8 * v24 + 32] = v6;
        a1[5] = v22;
        v25 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
LABEL_59:
          outlined consume of Shader.ResolvedShader?(v10);
          return;
        }

        if (v25 < 0)
        {
          goto LABEL_67;
        }

        v26 = a1[1] + v25;
        if (v6 < v26)
        {
LABEL_58:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of Shader.ResolvedShader?(v10);
          return;
        }

        a1[2] = v26;
        specialized CGPoint.init(from:)(a1);
        v29 = a1[5];
        if (!*(v29 + 2))
        {
          goto LABEL_69;
        }

        v9 = v27;
        v11 = v28;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v30 = *(v29 + 2);
          if (!v30)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew()(v29);
          v30 = *(v29 + 2);
          if (!v30)
          {
LABEL_55:
            __break(1u);
            break;
          }
        }

        v31 = v30 - 1;
        v6 = *&v29[8 * v31 + 32];
        *(v29 + 2) = v31;
        a1[5] = v29;
        a1[2] = v6;
        goto LABEL_4;
      }

      if (v12 >> 3 == 1)
      {
        if ((v12 & 7) != 2)
        {
          goto LABEL_58;
        }

        v3 = v2;
        v14 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        if (v16 >= v15 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v16 + 1;
        *&v14[8 * v16 + 32] = v6;
        a1[5] = v14;
        v17 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_59;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v35 = *(v3 + 2);
            if (v35)
            {
              goto LABEL_65;
            }

            __break(1u);
            v3 = a1[5];
          }

          while (!*(v3 + 2));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v35 = *(v3 + 2);
            if (v35)
            {
LABEL_65:
              v36 = v35 - 1;
              v37 = *&v3[8 * v36 + 32];
              *(v3 + 2) = v36;
              outlined consume of Shader.ResolvedShader?(v10);
              a1[5] = v3;
              a1[2] = v37;
              return;
            }
          }

          else
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v35 = *(v3 + 2);
            if (v35)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
          return;
        }

        v18 = a1[1] + v17;
        if (v6 < v18)
        {
          goto LABEL_58;
        }

        a1[2] = v18;
        Shader.ResolvedShader.init(from:)(a1, v39);
        v19 = a1[5];
        if (!*(v19 + 2))
        {
          goto LABEL_68;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_70;
          }
        }

        v21 = v20 - 1;
        v6 = *&v19[8 * v21 + 32];
        *(v19 + 2) = v21;
        outlined consume of Shader.ResolvedShader?(v10);
        a1[5] = v19;
        a1[2] = v6;
        v10 = v39[0];
        v7 = v39[1];
        v8 = v39[2];
        v41 = v40;
        goto LABEL_4;
      }

      v32 = v12 & 7;
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v34 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_59;
          }

          if (v34 < 0)
          {
            goto LABEL_71;
          }

          v33 = a1[1] + v34;
          if (v6 < v33)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v32 != 5)
          {
            goto LABEL_58;
          }

          v33 = a1[1] + 4;
          if (v6 < v33)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if ((v12 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_59;
          }

          goto LABEL_4;
        }

        if (v32 != 1)
        {
          goto LABEL_58;
        }

        v33 = a1[1] + 8;
        if (v6 < v33)
        {
          goto LABEL_58;
        }
      }

      a1[1] = v33;
LABEL_4:
      v5 = a1[1];
      if (v5 >= v6)
      {
        a1[3] = 0;
        if (v10 == 1)
        {
          goto LABEL_57;
        }

        *a2 = v10;
        *(a2 + 8) = v7;
        *(a2 + 16) = v8;
        *(a2 + 24) = v41;
        *(a2 + 32) = v9;
        *(a2 + 40) = v11;
        return;
      }
    }
  }

  a1[3] = 0;
LABEL_57:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

int64_t GraphicsFilter.AlphaThreshold.encode(to:)(uint64_t a1)
{
  v3 = *(v1 + 20);
  ProtobufEncoder.encodeVarint(_:)(0xAuLL);
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
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
  *(a1 + 24) = v5;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a1 + 8) = v4 + 1;
  Color.ResolvedHDR.encode(to:)(a1);
  result = ProtobufEncoder.endLengthDelimited()();
  if (v3 == 0.5)
  {
    return result;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v9 = *(a1 + 8);
  result = v9 + 4;
  if (__OFADD__(v9, 4))
  {
    goto LABEL_12;
  }

  if (*(a1 + 16) < result)
  {
LABEL_13:
    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v3;
    return result;
  }

  *(a1 + 8) = result;
  *(*a1 + v9) = v3;
  return result;
}

unint64_t GraphicsFilter.AlphaThreshold.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = xmmword_18DD85540;
  if (v5 >= v6)
  {
LABEL_51:
    v24 = v7;
    v8 = 0.5;
    v9 = 2143289344;
LABEL_52:
    v3[3] = 0;
    *a2 = v24;
    *(a2 + 16) = v9;
    *(a2 + 20) = v8;
    return result;
  }

  v24 = xmmword_18DD85540;
  v8 = 0.5;
  v9 = 2143289344;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_53;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result & 7;
    if (result >> 3 == 2)
    {
      if (v11 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v19 = v3[1];
        if (v6 < v19 + result)
        {
          goto LABEL_53;
        }

        v3[3] = 21;
        v3[4] = v19 + result;
      }

      else
      {
        if (v11 != 5)
        {
          goto LABEL_53;
        }

        v19 = v3[1];
      }

      if (v6 < (v19 + 1))
      {
        goto LABEL_53;
      }

      v8 = *v19;
      v3[1] = v19 + 1;
      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v11 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v20 = v3[1] + result;
          if (v6 < v20)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v11 != 5)
          {
            goto LABEL_53;
          }

          v20 = v3[1] + 4;
          if (v6 < v20)
          {
            goto LABEL_53;
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
            return result;
          }

          goto LABEL_4;
        }

        if (v11 != 1)
        {
          goto LABEL_53;
        }

        v20 = v3[1] + 8;
        if (v6 < v20)
        {
          goto LABEL_53;
        }
      }

      v3[1] = v20;
      goto LABEL_4;
    }

    if (v11 != 2)
    {
      goto LABEL_53;
    }

    v12 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    *&v12[8 * v14 + 32] = v6;
    v3[5] = v12;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v15 = v3[1] + result;
    if (v6 < v15)
    {
      goto LABEL_53;
    }

    v3[2] = v15;
    specialized Color.ResolvedHDR.init(from:)(v3, &v25);
    v16 = v3[5];
    if (!*(v16 + 16))
    {
      goto LABEL_57;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = *(v16 + 16);
      if (!v17)
      {
        goto LABEL_50;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v16 = result;
      v17 = *(result + 16);
      if (!v17)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v18 = v17 - 1;
    v6 = *(v16 + 8 * v18 + 32);
    *(v16 + 16) = v18;
    v3[5] = v16;
    v3[2] = v6;
    v24 = v25;
    v9 = v26;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v23 = *(result + 16);
  if (v23)
  {
    v21 = v23 - 1;
    v22 = *(result + 8 * v21 + 32);
    *(result + 16) = v21;
    v3[5] = result;
    v3[2] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void GraphicsFilter.DisplacementMap.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 17;
    }

    else
    {
      v9 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, v13);
}

unint64_t GraphicsFilter.DisplacementMap.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 < v5)
  {
    v48 = 0;
    v49 = 0.0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v9 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v50 = 0x80000000;
    v10 = 0.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v11 = v3[4];
        if (v4 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v4)
        {
          goto LABEL_56;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_58;
      }

      if (result <= 7)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        v30 = result & 7;
        if (v30 == 5)
        {
          v34 = v3[1];
          if (v5 < (v34 + 1))
          {
            goto LABEL_56;
          }

          v35 = *v34;
          v3[1] = v34 + 1;
          v10 = v35;
        }

        else
        {
          if (v30 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_58;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v31 = v3[1];
            if (v5 < v31 + result)
            {
              goto LABEL_56;
            }

            v3[3] = 17;
            v3[4] = v31 + result;
          }

          else
          {
            if (v30 != 1)
            {
              goto LABEL_56;
            }

            v31 = v3[1];
          }

          if (v5 < (v31 + 1))
          {
            goto LABEL_56;
          }

          v10 = *v31;
          v3[1] = v31 + 1;
        }
      }

      else if (result >> 3 == 1)
      {
        v47 = v9;
        if ((result & 7) != 2)
        {
          goto LABEL_57;
        }

        v12 = v3[5];
        v13 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v5 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v5;
        *&v12[8 * v15 + 32] = v13;
        v3[5] = v12;
        v16 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_59;
        }

        if (v16 < 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v38 = *(result + 16);
          if (!v38)
          {
            __break(1u);
            return result;
          }

          v36 = v38 - 1;
          v37 = *(result + 8 * v36 + 32);
          *(result + 16) = v36;
          v3[5] = result;
          v3[2] = v37;
          v8 = v5;
LABEL_59:
          v60 = v10;
          v61 = v49;
          v62 = v6;
          v63 = v7;
          v64 = v8;
          v65 = v48;
          v66 = v57;
          v67 = v56;
          v68 = v55;
          v69 = v47;
          v70 = v54;
          v71 = v53;
          v72 = v52;
          v73 = v51;
          v74 = v50;
          return outlined destroy of GraphicsFilter.DisplacementMap(&v60);
        }

        v17 = v3[1] + v16;
        if (v13 < v17)
        {
          goto LABEL_57;
        }

        v3[2] = v17;
        VariableBlurStyle.Mask.init(from:)(v3, &v60);
        v18 = v3[5];
        if (!*(v18 + 16))
        {
          goto LABEL_62;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v19 = *(v18 + 16);
          if (!v19)
          {
            goto LABEL_53;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          v18 = result;
          v19 = *(result + 16);
          if (!v19)
          {
LABEL_53:
            __break(1u);
            break;
          }
        }

        v20 = v19 - 1;
        v5 = *(v18 + 8 * v20 + 32);
        *(v18 + 16) = v20;
        v3[5] = v18;
        v3[2] = v5;
        v45 = v61;
        v46 = v60;
        v43 = v63;
        v44 = v62;
        v41 = v65;
        v42 = v64;
        v40 = v66;
        v21 = v6;
        v22 = v67;
        v9 = v68;
        v23 = v69;
        v24 = v70;
        v25 = v7;
        v27 = v71;
        v26 = v72;
        v28 = v8;
        v29 = v73;
        *v58 = v49;
        v58[1] = v21;
        v58[2] = v25;
        v58[3] = v28;
        v58[4] = v48;
        v58[5] = v57;
        v58[6] = v56;
        v58[7] = v55;
        v58[8] = v47;
        v58[9] = v54;
        v58[10] = v53;
        v58[11] = v52;
        v58[12] = v51;
        v59 = v50;
        result = outlined destroy of VariableBlurStyle.Mask(v58);
        v49 = v46;
        v48 = v42;
        v57 = v41;
        v55 = v22;
        v56 = v40;
        v6 = *&v45;
        v53 = v24;
        v54 = v23;
        v51 = v26;
        v52 = v27;
        v7 = v44;
        v50 = v29;
        v8 = v43;
      }

      else
      {
        v32 = result & 7;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
LABEL_58:
              v47 = v9;
              goto LABEL_59;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v33 = v3[1] + result;
            if (v5 < v33)
            {
LABEL_56:
              v47 = v9;
LABEL_57:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_59;
            }
          }

          else
          {
            if (v32 != 5)
            {
              goto LABEL_56;
            }

            v33 = v3[1] + 4;
            if (v5 < v33)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((result & 7) != 0)
        {
          if (v32 != 1)
          {
            goto LABEL_56;
          }

          v33 = v3[1] + 8;
          if (v5 < v33)
          {
            goto LABEL_56;
          }

LABEL_3:
          v3[1] = v33;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_58;
        }
      }

LABEL_4:
      v4 = v3[1];
      if (v4 >= v5)
      {
        goto LABEL_55;
      }
    }
  }

  v48 = 0;
  v49 = 0.0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v9 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v10 = 0.0;
  v50 = 0x80000000;
LABEL_55:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 8) = v49;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v48;
  *(a2 + 48) = v57;
  *(a2 + 56) = v56;
  *(a2 + 64) = v55;
  *(a2 + 72) = v9;
  *(a2 + 80) = v54;
  *(a2 + 88) = v53;
  *(a2 + 96) = v52;
  *(a2 + 104) = v51;
  *(a2 + 112) = v50;
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.DisplacementMap(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 17;
    }

    else
    {
      v9 = 21;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, v13);
}

void GraphicsFilter.EDRGainMultiply.encode(to:)(void *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 4);
  v6 = *(v2 + 8);
  v7 = *(v2 + 9);
  if (*v2 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v8 = a1[1];
    v9 = v8 + 4;
    if (__OFADD__(v8, 4))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (a1[2] < v9)
    {
      goto LABEL_16;
    }

    a1[1] = v9;
    *(*a1 + v8) = v5;
  }

  while (1)
  {
    if (v4 == 1.0)
    {
      goto LABEL_9;
    }

    ProtobufEncoder.encodeVarint(_:)(0x15uLL);
    v10 = a1[1];
    v9 = v10 + 4;
    if (!__OFADD__(v10, 4))
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    *ProtobufEncoder.growBufferSlow(to:)(v9) = v5;
  }

  if (a1[2] >= v9)
  {
    a1[1] = v9;
    *(*a1 + v10) = v4;
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
    goto LABEL_11;
  }

  *ProtobufEncoder.growBufferSlow(to:)(v9) = v4;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  if ((v7 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

unint64_t GraphicsFilter.EDRGainMultiply.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1.0;
    v10 = 0;
    v9 = 1;
LABEL_4:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 4) = v8;
    *(a2 + 8) = v7;
    *(a2 + 9) = v9;
    return result;
  }

  v7 = 0;
  v8 = 1.0;
  v9 = 1;
  v10 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_13;
      }

      if (v11 < v5)
      {
        goto LABEL_66;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_66:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_66;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_66;
        }

        v3[3] = 24;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result != 0;
    }

    else
    {
      if (v12 != 4)
      {
LABEL_29:
        if ((result & 7) > 1)
        {
          if (v13 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v16 = v3[1] + result;
            if (v6 < v16)
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_66;
            }

            v16 = v3[1] + 4;
            if (v6 < v16)
            {
              goto LABEL_66;
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
              return result;
            }

            goto LABEL_6;
          }

          if (v13 != 1)
          {
            goto LABEL_66;
          }

          v16 = v3[1] + 8;
          if (v6 < v16)
          {
            goto LABEL_66;
          }
        }

        v3[1] = v16;
        goto LABEL_6;
      }

      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_66;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v15 = v3[1] + result;
        if (v6 < v15)
        {
          goto LABEL_66;
        }

        v3[3] = 32;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v9 = result != 0;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 1)
  {
    if (v13 == 2)
    {
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      v17 = v3[1];
      if (v6 < v17 + result)
      {
        goto LABEL_66;
      }

      v3[3] = 13;
      v3[4] = v17 + result;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_66;
      }

      v17 = v3[1];
    }

    if (v6 < (v17 + 1))
    {
      goto LABEL_66;
    }

    v10 = *v17;
    v3[1] = v17 + 1;
    goto LABEL_6;
  }

  if (v12 != 2)
  {
    goto LABEL_29;
  }

  if (v13 != 2)
  {
    if (v13 != 5)
    {
      goto LABEL_66;
    }

    v14 = v3[1];
LABEL_53:
    if (v6 < (v14 + 1))
    {
      goto LABEL_66;
    }

    v8 = *v14;
    v3[1] = v14 + 1;
    goto LABEL_6;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1];
    if (v6 < v14 + result)
    {
      goto LABEL_66;
    }

    v3[3] = 21;
    v3[4] = v14 + result;
    goto LABEL_53;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

void GraphicsFilter.GlassBackgroundStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 9;
    }

    else
    {
      v9 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(2, v13);
}

unint64_t GraphicsFilter.GlassBackgroundStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 < v5)
  {
    v48 = 0;
    v49 = 0.0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v9 = 0;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v50 = 0x80000000;
    v10 = 0.0;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v11 = v3[4];
        if (v4 < v11)
        {
          goto LABEL_11;
        }

        if (v11 < v4)
        {
          goto LABEL_56;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_58;
      }

      if (result <= 7)
      {
        goto LABEL_56;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        v47 = v9;
        if ((result & 7) != 2)
        {
          goto LABEL_57;
        }

        v14 = v3[5];
        v15 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v5 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
        }

        *(v14 + 2) = v5;
        *&v14[8 * v17 + 32] = v15;
        v3[5] = v14;
        v18 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_59;
        }

        if (v18 < 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v38 = *(result + 16);
          if (!v38)
          {
            __break(1u);
            return result;
          }

          v36 = v38 - 1;
          v37 = *(result + 8 * v36 + 32);
          *(result + 16) = v36;
          v3[5] = result;
          v3[2] = v37;
          v8 = v5;
LABEL_59:
          v60 = v10;
          v61 = v49;
          v62 = v6;
          v63 = v7;
          v64 = v8;
          v65 = v48;
          v66 = v57;
          v67 = v56;
          v68 = v55;
          v69 = v47;
          v70 = v54;
          v71 = v53;
          v72 = v52;
          v73 = v51;
          v74 = v50;
          return outlined destroy of GraphicsFilter.GlassBackgroundStyle(&v60);
        }

        v19 = v3[1] + v18;
        if (v15 < v19)
        {
          goto LABEL_57;
        }

        v3[2] = v19;
        VariableBlurStyle.Mask.init(from:)(v3, &v60);
        v20 = v3[5];
        if (!*(v20 + 16))
        {
          goto LABEL_62;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = *(v20 + 16);
          if (!v21)
          {
            goto LABEL_53;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
          v20 = result;
          v21 = *(result + 16);
          if (!v21)
          {
LABEL_53:
            __break(1u);
            break;
          }
        }

        v22 = v21 - 1;
        v5 = *(v20 + 8 * v22 + 32);
        *(v20 + 16) = v22;
        v3[5] = v20;
        v3[2] = v5;
        v45 = v61;
        v46 = v60;
        v43 = v63;
        v44 = v62;
        v41 = v65;
        v42 = v64;
        v40 = v66;
        v23 = v6;
        v24 = v67;
        v9 = v68;
        v25 = v69;
        v26 = v70;
        v27 = v7;
        v29 = v71;
        v28 = v72;
        v30 = v8;
        v31 = v73;
        *v58 = v49;
        v58[1] = v23;
        v58[2] = v27;
        v58[3] = v30;
        v58[4] = v48;
        v58[5] = v57;
        v58[6] = v56;
        v58[7] = v55;
        v58[8] = v47;
        v58[9] = v54;
        v58[10] = v53;
        v58[11] = v52;
        v58[12] = v51;
        v59 = v50;
        result = outlined destroy of VariableBlurStyle.Mask(v58);
        v49 = v46;
        v48 = v42;
        v57 = v41;
        v55 = v24;
        v56 = v40;
        v6 = *&v45;
        v53 = v26;
        v54 = v25;
        v51 = v28;
        v52 = v29;
        v7 = v44;
        v50 = v31;
        v8 = v43;
      }

      else if (result >> 3 == 1)
      {
        v12 = result & 7;
        if (v12 == 5)
        {
          v34 = v3[1];
          if (v5 < (v34 + 1))
          {
            goto LABEL_56;
          }

          v35 = *v34;
          v3[1] = v34 + 1;
          v10 = v35;
        }

        else
        {
          if (v12 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_58;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v13 = v3[1];
            if (v5 < v13 + result)
            {
              goto LABEL_56;
            }

            v3[3] = 9;
            v3[4] = v13 + result;
          }

          else
          {
            if (v12 != 1)
            {
              goto LABEL_56;
            }

            v13 = v3[1];
          }

          if (v5 < (v13 + 1))
          {
            goto LABEL_56;
          }

          v10 = *v13;
          v3[1] = v13 + 1;
        }
      }

      else
      {
        v32 = result & 7;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
LABEL_58:
              v47 = v9;
              goto LABEL_59;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            v33 = v3[1] + result;
            if (v5 < v33)
            {
LABEL_56:
              v47 = v9;
LABEL_57:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
              goto LABEL_59;
            }
          }

          else
          {
            if (v32 != 5)
            {
              goto LABEL_56;
            }

            v33 = v3[1] + 4;
            if (v5 < v33)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_3;
        }

        if ((result & 7) != 0)
        {
          if (v32 != 1)
          {
            goto LABEL_56;
          }

          v33 = v3[1] + 8;
          if (v5 < v33)
          {
            goto LABEL_56;
          }

LABEL_3:
          v3[1] = v33;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_58;
        }
      }

LABEL_4:
      v4 = v3[1];
      if (v4 >= v5)
      {
        goto LABEL_55;
      }
    }
  }

  v48 = 0;
  v49 = 0.0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v9 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v10 = 0.0;
  v50 = 0x80000000;
LABEL_55:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 8) = v49;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v48;
  *(a2 + 48) = v57;
  *(a2 + 56) = v56;
  *(a2 + 64) = v55;
  *(a2 + 72) = v9;
  *(a2 + 80) = v54;
  *(a2 + 88) = v53;
  *(a2 + 96) = v52;
  *(a2 + 104) = v51;
  *(a2 + 112) = v50;
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsFilter.GlassBackgroundStyle(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 56);
  v6 = *(v2 + 88);
  v13[4] = *(v2 + 72);
  v14[0] = v6;
  *(v14 + 12) = *(v2 + 100);
  v7 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  v13[2] = *(v2 + 40);
  v13[3] = v5;
  if (v4 != 0.0)
  {
    v8 = fabs(v4);
    if (v8 >= 65536.0)
    {
      v9 = 9;
    }

    else
    {
      v9 = 13;
    }

    ProtobufEncoder.encodeVarint(_:)(v9);
    if (v8 < 65536.0)
    {
      v10 = a1[1];
      v11 = v10 + 4;
      if (!__OFADD__(v10, 4))
      {
        *&v4 = v4;
        if (a1[2] >= v11)
        {
          a1[1] = v11;
          *(*a1 + v10) = LODWORD(v4);
          goto LABEL_12;
        }

LABEL_15:
        *ProtobufEncoder.growBufferSlow(to:)(v11) = LODWORD(v4);
        goto LABEL_12;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v12 = a1[1];
    v11 = v12 + 8;
    if (__OFADD__(v12, 8))
    {
      goto LABEL_14;
    }

    if (a1[2] < v11)
    {
      *ProtobufEncoder.growBufferSlow(to:)(v11) = v4;
    }

    else
    {
      a1[1] = v11;
      *(*a1 + v12) = v4;
    }
  }

LABEL_12:
  specialized ProtobufEncoder.messageField<A>(_:_:)(2, v13);
}

void GraphicsBlendMode.encode(to:)()
{
  if (v0[1])
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v1 = *v0;
    if ((*v0 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance GraphicsBlendMode()
{
  if (v0[1])
  {
    lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v1 = *v0;
    if ((*v0 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(8uLL);
      ProtobufEncoder.encodeVarint(_:)(v1 & 0x7FFFFFFF);
    }
  }
}

BOOL specialized static GraphicsFilter.ColorMonochrome.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && (a1[1].f32[0] == a2[1].f32[0] ? (v2 = a1[1].f32[1] == a2[1].f32[1]) : (v2 = 0), v2))
  {
    return a1[1].f32[2] == a2[1].f32[2];
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static GraphicsFilter.ColorCurves.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_f32(*a1, *a2), vceqq_f32(a1[1], a2[1])))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vceqq_f32(a1[2], a2[2]), xmmword_18DDA9F30)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vceqq_f32(a1[3], a2[3])));
  }

  return v2 & 1;
}

BOOL specialized static GraphicsFilter.ShaderFilter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *a2;
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v7 = *(a2 + 40);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = v2;
  v13 = v5;
  v14 = *(a2 + 8);
  v15 = v6;
  v9 = v5;
  v10 = v16;
  v11 = specialized static Shader.ResolvedShader.== infix(_:_:)(&v16, &v13);

  if (!v11)
  {
    return 0;
  }

  if (v3 == v7)
  {
    return v4 == v8;
  }

  return 0;
}

BOOL specialized static GraphicsFilter.EDRGainMultiply.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1 != *a2;
  if (*(a1 + 4) != *(a2 + 4))
  {
    v2 = 1;
  }

  return ((v2 | (*(a1 + 8) ^ *(a2 + 8) | *(a2 + 9) ^ *(a1 + 9))) & 1) == 0;
}

uint64_t specialized static GraphicsFilter.DisplacementMap.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v4 = *(a1 + 88);
  v35[4] = *(a1 + 72);
  v36[0] = v4;
  *(v36 + 12) = *(a1 + 100);
  v5 = *(a1 + 24);
  v35[0] = *(a1 + 8);
  v35[1] = v5;
  v35[2] = *(a1 + 40);
  v35[3] = v3;
  *&v3 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v37[0] = *(a2 + 8);
  v37[1] = v6;
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *&v38[12] = *(a2 + 100);
  v10 = *(a2 + 88);
  v37[4] = v9;
  *v38 = v10;
  v37[2] = v7;
  v37[3] = v8;
  if (v2 == *&v3)
  {
    v11 = *(a1 + 56);
    v12 = *(a1 + 88);
    v29 = *(a1 + 72);
    v30[0] = v12;
    *(v30 + 12) = *(a1 + 100);
    v13 = *(a1 + 24);
    v25 = *(a1 + 8);
    v26 = v13;
    v27 = *(a1 + 40);
    v28 = v11;
    v14 = *(a2 + 56);
    v15 = *(a2 + 88);
    v23 = *(a2 + 72);
    v24[0] = v15;
    *(v24 + 12) = *(a2 + 100);
    v16 = *(a2 + 24);
    v19 = *(a2 + 8);
    v20 = v16;
    v21 = *(a2 + 40);
    v22 = v14;
    outlined init with copy of VariableBlurStyle.Mask(v35, v33);
    outlined init with copy of VariableBlurStyle.Mask(v37, v33);
    v17 = specialized static VariableBlurStyle.Mask.== infix(_:_:)(&v25, &v19);
    v31[4] = v23;
    v32[0] = v24[0];
    *(v32 + 12) = *(v24 + 12);
    v31[0] = v19;
    v31[1] = v20;
    v31[2] = v21;
    v31[3] = v22;
    outlined destroy of VariableBlurStyle.Mask(v31);
    v33[4] = v29;
    v34[0] = v30[0];
    *(v34 + 12) = *(v30 + 12);
    v33[0] = v25;
    v33[1] = v26;
    v33[2] = v27;
    v33[3] = v28;
    outlined destroy of VariableBlurStyle.Mask(v33);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL specialized static GraphicsBlendMode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      outlined copy of GraphicsBlendMode(*a2, 1);
      outlined copy of GraphicsBlendMode(v2, 1);
      outlined consume of GraphicsBlendMode(v2, 1);
      outlined consume of GraphicsBlendMode(v4, 1);
      return v2 == v4;
    }

    swift_unknownObjectRetain();
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(*a1, 0);
    outlined consume of GraphicsBlendMode(v4, 0);
    return v2 == v4;
  }

  outlined copy of GraphicsBlendMode(v4, v5);
  outlined consume of GraphicsBlendMode(v2, v3);
  outlined consume of GraphicsBlendMode(v4, v5);
  return 0;
}

double _s7SwiftUI14GraphicsFilterOWOi23_(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

void outlined consume of Shader.ResolvedShader?(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options()
{
  result = lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options;
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options;
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options;
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options;
  if (!lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GraphicsFilter.VibrantColorMatrix.Options and conformance GraphicsFilter.VibrantColorMatrix.Options);
  }

  return result;
}

uint64_t assignWithCopy for GraphicsFilter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  v32 = *(a2 + 120);
  outlined copy of GraphicsFilter(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31, v32);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  v24 = *(a1 + 120);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  *(a1 + 120) = v32;
  outlined consume of GraphicsFilter(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *(a2 + 120);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 120) = v4;
  outlined consume of GraphicsFilter(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  return a1;
}

uint64_t storeEnumTagSinglePayload for GraphicsFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFE9)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 131049;
    if (a3 > 0x1FFE8)
    {
      *(result + 124) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFE8)
    {
      *(result + 124) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 120) = (-33554432 * a2) & 0x3C000000 | (((-a2 >> 5) & 0x7F) << 9) | (((-64 * a2) & 0x7C0000) - (a2 << 23)) & 0xFC0000;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GraphicsFilter(uint64_t result, unsigned int a2)
{
  if (a2 < 0x17)
  {
    *(result + 120) = (a2 << 25) & 0x3C000000 | ((a2 & 1) << 23) | *(result + 120) & 0xC30301FF;
  }

  else
  {
    *result = a2 - 23;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 746586112;
  }

  return result;
}

__n128 __swift_memcpy85_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.VibrantColorMatrix(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 85))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GraphicsFilter.VibrantColorMatrix(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
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

  *(result + 85) = v3;
  return result;
}

__n128 __swift_memcpy64_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t initializeWithCopy for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter.ShaderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.ShaderFilter(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphicsFilter.ShaderFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t initializeWithCopy for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  return a1;
}

uint64_t assignWithCopy for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);
  outlined copy of VariableBlurStyle.Mask(v3, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 112);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  *(a1 + 96) = v27;
  *(a1 + 104) = v28;
  *(a1 + 112) = v29;
  outlined consume of VariableBlurStyle.Mask(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for GraphicsFilter.DisplacementMap(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 104);
  v4 = *(a2 + 112);
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = v3;
  *(a1 + 112) = v4;
  outlined consume of VariableBlurStyle.Mask(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphicsFilter.DisplacementMap(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
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

double storeEnumTagSinglePayload for GraphicsFilter.DisplacementMap(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 112) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 116) = 1;
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
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 100) = 0u;
      return result;
    }

    *(a1 + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(accessibilityName:)(uint64_t a1)
{
  type metadata accessor for AccessibilityColorStorage();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2, 0, 1, MEMORY[0x1E69E7CC0]);
}

unint64_t AccessibilityColorStorage.resolve<A>(into:in:with:)(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = *(v5 + 16);
  v17 = v8;
  v18 = v9;
  result = Color.resolveAccessibilityName(in:)(&v17, v11);
  if (v13)
  {
    v17 = result;
    v18 = v13;
    v16[0] = v8;
    v16[1] = v9;
    v15 = v10;
    v14 = lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v17, v16, &v15, a4, MEMORY[0x1E69E6158], a5, v14);
  }

  return result;
}

uint64_t Color.resolveAccessibilityName(in:)(unint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v109 = *a1;
  v110 = v9;
  *v11.i64 = (*(*a2 + 112))(&v109, v6);
  v12 = v11.i32[0];
  v14 = v13;
  v16 = v15;
  v18 = *v17.i32;
  LOBYTE(v109) = 1;
  v19 = RGBToHSB(_:_:_:)(v11, v13, v15, v17);
  v21 = v109;
  v109 = __PAIR64__(LODWORD(v14), v12);
  v110 = __PAIR64__(LODWORD(v19), LODWORD(v16));
  v111 = v20;
  v112 = v22;
  v113 = v18;
  v114 = 0;
  v115 = v21;
  if (v18 == 0.0)
  {
    v23 = 0;
LABEL_5:
    v26 = 2;
    v27 = 2;
    goto LABEL_6;
  }

  v24 = *&v19;
  v25 = v20;
  if (AccessibilityColorValues.luma.getter() > 0.99)
  {
    v23 = 1;
    goto LABEL_5;
  }

  if (AccessibilityColorValues.luma.getter() >= 0.01)
  {
    v98 = AccessibilityColorValues.luma.getter();
    if (v25 >= 0.05)
    {
      v100 = AccessibilityColorValues.luma.getter();
      if (v100 > 0.85)
      {
        v101 = 1;
      }

      else
      {
        v101 = 2;
      }

      if (v100 >= 0.35)
      {
        v27 = v101;
      }

      else
      {
        v27 = 0;
      }

      v102 = AccessibilityColorValues.luma.getter();
      if (v98 >= 0.54 || v24 <= 0.056 || v24 >= 0.111)
      {
        if (v102 > 0.7)
        {
          v103 = 1;
        }

        else
        {
          v103 = 2;
        }

        if (v25 <= 0.9)
        {
          v104 = 2;
        }

        else
        {
          v104 = v103;
        }

        if (v25 >= 0.2)
        {
          v26 = v104;
        }

        else
        {
          v26 = 0;
        }

        v23 = specialized AccessibilityColorKey.init(hue:)(v24);
        if (v23 == 21)
        {
          return 0;
        }
      }

      else if (v25 >= 0.2)
      {
        v26 = 2;
        if (v25 > 0.9)
        {
          if (v102 > 0.7)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }
        }

        v23 = 4;
      }

      else
      {
        v26 = 0;
        v23 = 4;
      }
    }

    else
    {
      if (v98 > 0.85)
      {
        v99 = 1;
      }

      else
      {
        v99 = 2;
      }

      v26 = 2;
      if (v98 >= 0.35)
      {
        v27 = v99;
      }

      else
      {
        v27 = 0;
      }

      v23 = 3;
    }
  }

  else
  {
    v26 = 2;
    v27 = 2;
    v23 = 2;
  }

LABEL_6:
  v28 = AccessibilityColorKey.rawValue.getter(v23);
  v30 = v29;
  if (v9)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, v8);
  }

  else
  {
    v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
    if (v31)
    {
      (*(v5 + 16))(v8, &v31[*(*v31 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v32 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v8, v32, v4);
    }
  }

  v108 = v5;
  if (one-time initialization token for accessibilityBundle != -1)
  {
    swift_once();
  }

  v33 = static AccessibilityLocalizedString.accessibilityBundle;
  v34 = MEMORY[0x193ABEC20](v28, v30);

  v35 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v37 = _LocalizeString(v33, v34, v35, isa);

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v27 != 2)
  {
    v106 = v38;
    v107 = v4;
    if (v27)
    {
      v58 = 0x746867696CLL;
    }

    else
    {
      v58 = 1802658148;
    }

    if (v27)
    {
      v59 = 0xE500000000000000;
    }

    else
    {
      v59 = 0xE400000000000000;
    }

    if (v26 == 2)
    {
      v60 = MEMORY[0x193ABEC20](0xD000000000000025, 0x800000018DD7BC30);
      v61 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v62 = Locale._bridgeToObjectiveC()().super.isa;
      v63 = _LocalizeString(v33, v60, v61, v62);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_18DDAB4C0;
      v65 = MEMORY[0x193ABEC20](v58, v59);

      v66 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v67 = Locale._bridgeToObjectiveC()().super.isa;
      v68 = _LocalizeString(v33, v65, v66, v67);

      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v73 = lazy protocol witness table accessor for type String and conformance String();
      *(v64 + 32) = v69;
      *(v64 + 40) = v71;
      *(v64 + 96) = v72;
      *(v64 + 104) = v73;
      v74 = v106;
      *(v64 + 64) = v73;
      *(v64 + 72) = v74;
      *(v64 + 80) = v40;
    }

    else
    {
      v75 = 0x68736979617267;
      if (v26)
      {
        v75 = 0x746E6172626976;
      }

      v105[0] = v75;
      v76 = MEMORY[0x193ABEC20](0xD00000000000001BLL, 0x800000018DD7BC10);
      v77 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v78 = Locale._bridgeToObjectiveC()().super.isa;
      v79 = _LocalizeString(v33, v76, v77, v78);

      v105[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_18DDAF080;
      v81 = MEMORY[0x193ABEC20](v58, v59);

      v82 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v83 = Locale._bridgeToObjectiveC()().super.isa;
      v84 = _LocalizeString(v33, v81, v82, v83);

      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v88 = MEMORY[0x1E69E6158];
      *(v80 + 56) = MEMORY[0x1E69E6158];
      v89 = lazy protocol witness table accessor for type String and conformance String();
      *(v80 + 64) = v89;
      *(v80 + 32) = v85;
      *(v80 + 40) = v87;
      v90 = MEMORY[0x193ABEC20](v105[0], 0xE700000000000000);

      v91 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
      v92 = Locale._bridgeToObjectiveC()().super.isa;
      v93 = _LocalizeString(v33, v90, v91, v92);

      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      *(v80 + 96) = v88;
      *(v80 + 104) = v89;
      *(v80 + 72) = v94;
      *(v80 + 80) = v96;
      *(v80 + 136) = v88;
      *(v80 + 144) = v89;
      *(v80 + 112) = v106;
      *(v80 + 120) = v40;
    }

    goto LABEL_34;
  }

  if (v26 != 2)
  {
    v107 = v4;
    if (v26)
    {
      v41 = 0x746E6172626976;
    }

    else
    {
      v41 = 0x68736979617267;
    }

    v42 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD7BC60);
    v106 = v38;
    v43 = v42;
    v44 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
    v45 = Locale._bridgeToObjectiveC()().super.isa;
    v46 = _LocalizeString(v33, v43, v44, v45);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_18DDAB4C0;
    v48 = MEMORY[0x193ABEC20](v41, 0xE700000000000000);

    v49 = MEMORY[0x193ABEC20](0x6269737365636341, 0xED00007974696C69);
    v50 = Locale._bridgeToObjectiveC()().super.isa;
    v51 = _LocalizeString(v33, v48, v49, v50);

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v56 = lazy protocol witness table accessor for type String and conformance String();
    *(v47 + 32) = v52;
    *(v47 + 40) = v54;
    *(v47 + 96) = v55;
    *(v47 + 104) = v56;
    v57 = v106;
    *(v47 + 64) = v56;
    *(v47 + 72) = v57;
    *(v47 + 80) = v40;
LABEL_34:
    v38 = static String.localizedStringWithFormat(_:_:)();

    v4 = v107;
  }

  (*(v108 + 8))(v8, v4);
  return v38;
}

uint64_t AccessibilityColorStorage.isEqual(to:)()
{
  v1 = v0;
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(result + 16);
    if (v3 == *(v1 + 16))
    {
      return 1;
    }

    else
    {
      v4 = *(*v3 + 88);

      LOBYTE(v4) = v4(v5);

      return v4 & 1;
    }
  }

  return result;
}

float AccessibilityColorValues.luma.getter()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    return *(v0 + 28);
  }

  v1 = vmul_f32(*(v0 + 4), 0x3D93DD983F371759);
  v2 = *(v0 + 24) * (((*v0 * 0.2126) + v1.f32[0]) + v1.f32[1]);
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  result = fminf(v2, 1.0);
  *(v0 + 28) = result;
  *(v0 + 32) = 0;
  return result;
}

uint64_t AccessibilityColorKey.rawValue.getter(char a1)
{
  result = 0x726170736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6574696877;
      break;
    case 2:
      result = 0x6B63616C62;
      break;
    case 3:
      result = 2036429415;
      break;
    case 4:
      result = 0x6E776F7262;
      break;
    case 5:
      result = 6579570;
      break;
    case 6:
      result = 0x6E61726F20646572;
      break;
    case 7:
      result = 0x65676E61726FLL;
      break;
    case 8:
      result = 0x792065676E61726FLL;
      break;
    case 9:
      result = 0x776F6C6C6579;
      break;
    case 10:
      result = 0x6720776F6C6C6579;
      break;
    case 11:
      result = 0x6E65657267;
      break;
    case 12:
      result = 0x6572672065756C62;
      break;
    case 13:
      result = 1851881827;
      break;
    case 14:
      result = 0x756C62206E617963;
      break;
    case 15:
      result = 1702194274;
      break;
    case 16:
      result = 0x67616D2065756C62;
      break;
    case 17:
      result = 0x61746E6567616DLL;
      break;
    case 18:
      result = 0x2061746E6567616DLL;
      break;
    case 19:
      result = 1802398064;
      break;
    case 20:
      result = 0x646572206B6E6970;
      break;
    default:
      return result;
  }

  return result;
}

id one-time initialization function for accessibilityBundle()
{
  type metadata accessor for AXCustomContent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static AccessibilityLocalizedString.accessibilityBundle = result;
  return result;
}

double RGBToHSB(_:_:_:)(int8x16_t a1, float a2, float a3, int8x16_t a4)
{
  v4 = a3;
  v5 = a2;
  if (a2 <= *a1.i32)
  {
    v7 = a3 == *a1.i32;
    v6 = a3 >= *a1.i32;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    if (a2 >= *a1.i32)
    {
      a2 = *a1.i32;
    }

    if (*a1.i32 < a3)
    {
      a3 = *a1.i32;
    }

    if (*a1.i32 <= v5)
    {
      v9 = v4 == v5;
      v8 = v4 >= v5;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (!v9 && v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = a3;
    }

    if (!v9 && v8)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  else
  {
    if (a2 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = a2;
    }

    v11 = *a1.i32;
  }

  v12 = 0.0;
  if (v11 > 0.0)
  {
    v13 = v11 - v10;
    if (((v11 - v10) / v11) != 0.0)
    {
      v14 = (v11 - v5) / v13;
      v15 = (v11 - v4) / v13;
      if (v11 == *a1.i32)
      {
        if (v10 == v5)
        {
          v12 = v15 + 5.0;
        }

        else
        {
          v12 = 1.0 - v14;
        }
      }

      else
      {
        v7 = v11 == v5;
        v17 = (v11 - *a1.i32) / v13;
        if (v7)
        {
          if (v10 == v4)
          {
            v12 = v17 + 1.0;
          }

          else
          {
            v12 = 3.0 - v15;
          }
        }

        else if (v10 == *a1.i32)
        {
          v12 = v14 + 3.0;
        }

        else
        {
          v12 = 5.0 - v17;
        }
      }
    }
  }

  *a1.i32 = v12 / 6.0;
  *a4.i32 = (v12 / 6.0) - truncf(v12 / 6.0);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  a1.i64[0] = vbslq_s8(v16, a4, a1).u64[0];
  return *a1.i64;
}

uint64_t specialized AccessibilityColorKey.init(hue:)(float a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 21;
  }

  if (a1 < 0.028)
  {
    return 5;
  }

  if (a1 < 0.056)
  {
    return 6;
  }

  if (a1 < 0.111)
  {
    return 7;
  }

  if (a1 < 0.129)
  {
    return 8;
  }

  if (a1 < 0.167)
  {
    return 9;
  }

  if (a1 < 0.222)
  {
    return 10;
  }

  if (a1 < 0.389)
  {
    return 11;
  }

  if (a1 < 0.469)
  {
    return 12;
  }

  if (a1 < 0.54)
  {
    return 13;
  }

  if (a1 < 0.611)
  {
    return 14;
  }

  if (a1 < 0.667)
  {
    return 15;
  }

  if (a1 < 0.8)
  {
    return 16;
  }

  if (a1 < 0.889)
  {
    return 17;
  }

  if (a1 < 0.917)
  {
    return 18;
  }

  if (a1 < 0.958)
  {
    return 19;
  }

  if (a1 >= 0.986)
  {
    return 5;
  }

  return 20;
}

unint64_t type metadata accessor for AXCustomContent()
{
  result = lazy cache variable for type metadata for AXCustomContent;
  if (!lazy cache variable for type metadata for AXCustomContent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AXCustomContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MRUIKitFeature and conformance MRUIKitFeature()
{
  result = lazy protocol witness table cache variable for type MRUIKitFeature and conformance MRUIKitFeature;
  if (!lazy protocol witness table cache variable for type MRUIKitFeature and conformance MRUIKitFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MRUIKitFeature and conformance MRUIKitFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RSSFeature and conformance RSSFeature()
{
  result = lazy protocol witness table cache variable for type RSSFeature and conformance RSSFeature;
  if (!lazy protocol witness table cache variable for type RSSFeature and conformance RSSFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RSSFeature and conformance RSSFeature);
  }

  return result;
}

uint64_t initializeWithCopy for AnyCodable(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a1 + 40) = v3;
  (**(v4 - 8))();
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_2(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      result[5] = a2[5];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

_OWORD *assignWithTake for AnyCodable(_OWORD *a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  return a1;
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v8 = *(*(a2 - 8) + 32);

  return v8(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v34 = a4;
  v35 = a3;
  type metadata accessor for AnyCodable.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    goto LABEL_3;
  }

  LOBYTE(v38[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v15 = _typeByName(_:)();
  v37 = v15;
  if (!v15)
  {
    type metadata accessor for AnyCodable.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v23 = v12;
    *(v23 + 8) = v14;
    *(v23 + 16) = 1;
    swift_willThrow();
    (*(v36 + 8))(v8, v6);
LABEL_3:
    v10 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v33 = a1;

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v16 = (*(v35 + 8))(v37, v37, a2);
  v18 = v17;
  v20 = v19;
  swift_beginAccess();
  v39 = v16;
  v40 = v18;
  v41 = v20;
  swift_beginAccess();
  if (!v39)
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    v35 = *(v27 + 48);
    *v26 = v37;
    v34 = KeyedDecodingContainer.codingPath.getter();
    *&v38[0] = 0;
    *(&v38[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    v28 = _typeName(_:qualified:)();
    v30 = v29;

    *&v38[0] = v28;
    *(&v38[0] + 1) = v30;
    MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD7BCF0);
    v31 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v31);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v36 + 8))(v8, v6);
    a1 = v33;
    goto LABEL_3;
  }

  v43 = 1;
  static Decodable<>.decode<A>(from:in:)(v39, v40, v41, v38);
  (*(v36 + 8))(v8, v6);
  outlined init with take of Decodable & Encodable(v38, v42);
  v21 = v42[1];
  v22 = v34;
  *v34 = v42[0];
  v22[1] = v21;
  v22[2] = v42[2];
  v10 = v33;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static Decodable<>.decode<A>(from:in:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  a4[3] = a1;
  a4[4] = a2;
  a4[5] = a3;
  __swift_allocate_boxed_opaque_existential_1(a4);
  type metadata accessor for KeyedDecodingContainer();
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a4);
  }

  return result;
}

uint64_t AnyCodable.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v15[0] = *(a2 + 24);
  v15[1] = v5;
  type metadata accessor for AnyCodable.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of Decodable & Encodable(v3, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v16);
  _mangledTypeName(_:)();
  if (v11)
  {
    LOBYTE(v16[0]) = 0;
    v12 = v16[7];
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v12)
    {
      (*(v7 + 8))(v9, v6);
    }

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    LOBYTE(v16[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  else
  {
    type metadata accessor for AnyCodable.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v14 = DynamicType;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t AnyCodable.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t AnyCodable.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance AnyCodable<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18D3AF908(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = AnyCodable.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AnyCodable.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AnyCodable<A>.CodingKeys@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18D3AF908(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyCodable<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined copy of AnyCodable<A>.Errors<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t outlined consume of AnyCodable<A>.Errors<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnyCodable<A>.Errors<A>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AnyCodable<A>.Errors<A>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of AnyCodable<A>.Errors<A>(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AnyCodable.Errors(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of AnyCodable<A>.Errors<A>(v4, v5, v6);
  return a1;
}

uint64_t Text.init<A>(_:formatter:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  type metadata accessor for FormatterTextStorage();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = a2;
  return result;
}

{
  type metadata accessor for FormatterTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

id FormatterTextStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = a2[1];
  v11 = *a3;
  v12 = *(v5 + 24);
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = v13;
    ObjectType = swift_getObjectType();
    v25 = v9;
    v26 = v10;
    (*(v15 + 8))(&v25, ObjectType, v15);
  }

  result = [v12 stringForObjectValue_];
  if (result)
  {
    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v25 = v19;
    v26 = v21;
    v24[0] = v9;
    v24[1] = v10;
    v23 = v11;
    v22 = lazy protocol witness table accessor for type String and conformance String();
    ResolvedTextContainer.append<A>(_:in:with:)(&v25, v24, &v23, a4, MEMORY[0x1E69E6158], a5, v22);
  }

  return result;
}

uint64_t FormatterTextStorage.isEqual(to:)()
{
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSObject);
    v2 = *(v1 + 16);

    v3 = v2;
    v4 = static NSObject.== infix(_:_:)();

    if (v4)
    {
      v5 = *(v1 + 24);
      v6 = static NSObject.== infix(_:_:)();

      return v6 & 1;
    }
  }

  return 0;
}

void FormatterTextStorage.__ivar_destroyer()
{
  v1 = *(v0 + 24);
}

uint64_t FormatterTextStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t FormatStyleBox.__allocating_init(input:format:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FormatStyleBox.init(input:format:)(a1, a2);
  return v4;
}

uint64_t FormatStyleBox.__ivar_destroyer()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v4 = *(*(v2 - 8) + 8);
  v5 = v0 + *(*v0 + 144);

  return v4(v5, v2);
}

uint64_t FormatStyleBox.deinit()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 144), v2);
  return v0;
}

uint64_t FormatStyleBox.__deallocating_deinit()
{
  FormatStyleBox.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Text.init<A>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for String);
}

{
  return specialized Text.init<A>(_:format:)(a1, a2, a3, a4, a5, &protocol witness table for AttributedString);
}

uint64_t specialized Collection.count.getter()
{
  v1 = v0;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v3 = v2;
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - v4;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  type metadata accessor for RangeSet<String.Index>.Ranges(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, type metadata accessor for SelectionRanges);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = v1;
  outlined init with copy of SelectionRanges<String.Index>(v1, &v24 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v10, v16, v7);
    RangeSet.ranges.getter();
    v24 = RangeSet.Ranges.startIndex.getter();
    v19 = v25;
    (*(v25 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v16);
    v24 = 0;
    v19 = v25;
  }

  outlined init with copy of SelectionRanges<String.Index>(v17, v13);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v21 = v19;
    RangeSet.ranges.getter();
    v22 = RangeSet.Ranges.count.getter();
    (*(v21 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of SelectionRanges<String.Index>(v13);
    v22 = 1;
  }

  return specialized BidirectionalCollection._distance(from:to:)(v24, EnumCaseMultiPayload == 1, v22, v20 == 1);
}

{
  v1 = v0;
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0);
  v3 = v2;
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  type metadata accessor for SelectionRanges<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  v17 = v1;
  outlined init with copy of (Hashable, isUnary: Bool)(v1, &v24 - v15, type metadata accessor for SelectionRanges<AttributedString.Index>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v8 + 32))(v10, v16, v7);
    RangeSet.ranges.getter();
    v24 = RangeSet.Ranges.startIndex.getter();
    v19 = v25;
    (*(v25 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of (Hashable, isUnary: Bool)(v16, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v24 = 0;
    v19 = v25;
  }

  outlined init with copy of (Hashable, isUnary: Bool)(v17, v13, type metadata accessor for SelectionRanges<AttributedString.Index>);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    v21 = v19;
    RangeSet.ranges.getter();
    v22 = RangeSet.Ranges.count.getter();
    (*(v21 + 8))(v5, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    outlined destroy of (Hashable, isUnary: Bool)(v13, type metadata accessor for SelectionRanges<AttributedString.Index>);
    v22 = 1;
  }

  return specialized BidirectionalCollection._distance(from:to:)(v24, EnumCaseMultiPayload == 1, v22, v20 == 1);
}

{
  v0 = 0;
  v1 = 0;
  while (1)
  {
    result = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    if (byte_1F0043DA0 == v1)
    {
      v2 = 0;
    }

    else if (byte_1F0043DA1 == v1)
    {
      v2 = 1;
    }

    else if (byte_1F0043DA2 == v1)
    {
      v2 = 2;
    }

    else if (byte_1F0043DA3 == v1)
    {
      v2 = 3;
    }

    else if (byte_1F0043DA4 == v1)
    {
      v2 = 4;
    }

    else if (byte_1F0043DA5 == v1)
    {
      v2 = 5;
    }

    else if (byte_1F0043DA6 == v1)
    {
      v2 = 6;
    }

    else if (asc_1F0043DA7[0] == v1)
    {
      v2 = 7;
    }

    else if (asc_1F0043DA7[1] == v1)
    {
      v2 = 8;
    }

    else if (asc_1F0043DA7[2] == v1)
    {
      v2 = 9;
    }

    else if (asc_1F0043DA7[3] == v1)
    {
      v2 = 10;
    }

    else
    {
      if (asc_1F0043DA7[4] != v1)
      {
        goto LABEL_32;
      }

      v2 = 11;
    }

    if (v2 >= 0xA)
    {
      v2 = 10;
    }

    v1 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v2 + 33);
    ++v0;
    if (v1 == 11)
    {
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}