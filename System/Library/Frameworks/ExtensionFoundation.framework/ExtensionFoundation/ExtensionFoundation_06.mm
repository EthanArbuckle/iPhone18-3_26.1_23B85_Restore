uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppExtensionPoint(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t AppExtensionPoint.Name.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t AppExtensionPoint.Identifier.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = StaticString.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AppExtensionPoint.Identifier.init(host:name:)@<X0>(uint64_t *a1@<X8>)
{
  v5 = StaticString.description.getter();
  v6 = v2;
  MEMORY[0x1865F37A0](46, 0xE100000000000000);
  v3 = StaticString.description.getter();
  MEMORY[0x1865F37A0](v3);

  *a1 = v5;
  a1[1] = v6;
  return result;
}

__n128 AppExtensionPoint.Scope.init(restriction:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  a2[1].n128_u8[1] = v3;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint.Error and conformance AppExtensionPoint.Error);
  }

  return result;
}

id specialized @nonobjc LSExtensionPointRecord.init(identifier:platform:parentAppRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1865F36D0]();

  v13[0] = 0;
  v8 = [v4 initWithIdentifier:v7 platform:a3 parentAppRecord:a4 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPoint and conformance AppExtensionPoint()
{
  result = lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint;
  if (!lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPoint and conformance AppExtensionPoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19ExtensionFoundation03AppA5PointV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for AppExtensionPoint.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Definition(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppExtensionPoint.Definition(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Name(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Name(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Identifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.Scope(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Scope(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.Scope.Restriction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t getEnumTag for AppExtensionPoint.Scope.Restriction(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AppExtensionPoint.Scope.Restriction(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPoint.UserInterface(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppExtensionPoint.UserInterface(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined copy of _ScopeRestriction(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionAvailability.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____EXExtensionAvailability_enabledCount);
  v4 = MEMORY[0x1865F36D0](0x4364656C62616E65, 0xEC000000746E756FLL);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____EXExtensionAvailability_disabledCount);
  v6 = MEMORY[0x1865F36D0](0x64656C6261736964, 0xED0000746E756F43);
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____EXExtensionAvailability_unelectedCount);
  v8 = MEMORY[0x1865F36D0](0x657463656C656E75, 0xEE00746E756F4364);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id _EXExtensionAvailability.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized _EXExtensionAvailability.init(coder:)(a1);

  return v4;
}

id _EXExtensionAvailability.init(coder:)(void *a1)
{
  v2 = specialized _EXExtensionAvailability.init(coder:)(a1);

  return v2;
}

id _EXExtensionAvailability.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionAvailability();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _EXExtensionAvailabilityObserver.__deallocating_deinit()
{
  _EXExtensionAvailabilityObserver.invalidate()();
  v1 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock + 8);

  v4 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _EXExtensionAvailabilityObserver.start()()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v4 = MEMORY[0x1865F3F40](0, v3);
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_8:
    v7 = static _EXDiscoveryController.shared;
    type metadata accessor for _EXQuery();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if ([v1 isKindOfClass_])
    {
      v9 = v1;
      specialized _EXDiscoveryController.add(activeQueryObserver:query:)(v2, v9, v7);

      if (([v9 isKindOfClass_] & 1) == 0)
      {
LABEL_25:
        v15 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
        goto LABEL_26;
      }

      v21 = v9;
      v10 = _EXDiscoveryController.identities(matching:)(v21);

      v11 = *&v10[OBJC_IVAR____EXQueryResult_availablility];
      if (v11)
      {
        v13 = *(v2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
        v12 = *(v2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock + 8);
        type metadata accessor for _EXExtensionAvailability();
        v14 = swift_getObjCClassFromMetadata();
        v15 = v11;
        if ([v15 isKindOfClass_])
        {
          v13(v15);

          return;
        }

LABEL_26:
        v20 = [objc_opt_self() _EX_parameterError];
        swift_willThrow();

        swift_unexpectedError();
        __break(1u);
        return;
      }

      __break(1u);
    }

    v19 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_25;
  }

  v4 = *(v3 + 32);
LABEL_6:
  v1 = v4;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 preferInProcessDiscovery];

  if (v6)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = static _EXServiceClient.shared;
  v22[3] = type metadata accessor for _EXExtensionAvailabilityObserver();
  v23 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  v22[0] = v2;
  v17 = *(v16 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
  MEMORY[0x1EEE9AC00](v23);

  os_unfair_lock_lock(v17 + 4);
  partial apply for closure #1 in _EXServiceClient.add(queryObserver:)(v18);
  os_unfair_lock_unlock(v17 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);

  _EXServiceClient.fetchResults(with:completion:)(v1, partial apply for closure #1 in _EXExtensionAvailabilityObserver.start(), v2);
}

void closure #1 in _EXExtensionAvailabilityObserver.start()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____EXQueryResult_availablility);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(a2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  v3 = *(a2 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock + 8);
  type metadata accessor for _EXExtensionAvailability();
  if (![v2 isKindOfClass_])
  {
LABEL_7:
    v5 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v6 = v2;
  v4();
}

Swift::Void __swiftcall _EXExtensionAvailabilityObserver.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v1 < 0)
  {
    v9 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries);
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v2 = MEMORY[0x1865F3F40](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_8:
    v5 = static _EXDiscoveryController.shared;
    type metadata accessor for _EXQuery();
    if ([v1 isKindOfClass_])
    {
      v11 = v1;
      specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(v0, v11, v5);
    }

    else
    {
      v10 = [objc_opt_self() _EX_parameterError];
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
    }

    return;
  }

  v2 = *(v1 + 32);
LABEL_6:
  v1 = v2;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 preferInProcessDiscovery];

  if (v4)
  {
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static _EXServiceClient.shared;
  v12[3] = type metadata accessor for _EXExtensionAvailabilityObserver();
  v13 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  v12[0] = v0;
  v7 = *(v6 + OBJC_IVAR____EXServiceClient_activeQueriesLock);
  MEMORY[0x1EEE9AC00](v13);

  os_unfair_lock_lock(v7 + 4);
  partial apply for closure #1 in _EXServiceClient.remove(queryObserver:)(v8);
  os_unfair_lock_unlock(v7 + 4);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t protocol witness for Identifiable.id.getter in conformance _EXExtensionAvailabilityObserver@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for _EXExtensionAvailabilityObserver();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXExtensionAvailabilityObserver()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXExtensionAvailabilityObserver()
{
  Hasher.init(_seed:)();
  v1 = *v0 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_uuid;
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _EXExtensionAvailabilityObserver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static UUID.== infix(_:_:)();
}

void static _EXExtensionAvailability.add(changeObserver:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for _EXExtensionAvailabilityObserver();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  UUID.init()();
  v10 = OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_queries;
  v11 = [objc_allocWithZone(type metadata accessor for _EXQuery()) init];
  *&v11[OBJC_IVAR____EXQuery_resultType] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1848BBBA0;
  *(v9 + v10) = v12;
  *(v12 + 32) = v11;
  v13 = (v9 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  *v13 = a1;
  v13[1] = a2;

  _EXExtensionAvailabilityObserver.start()();
  a3[3] = v6;
  *a3 = v9;
}

void specialized _EXDiscoveryController.add(activeQueryObserver:query:)(uint64_t a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  if (specialized static _EXDiscoveryController.canRun(query:)(a2))
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.discovery);
    v8 = a3;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v8;
      v13[1] = v9;
      v14 = v8;
      v15 = v9;
      _os_log_impl(&dword_1847D1000, v10, v11, "%{public}@ Adding observer for query '%{public}@'", v12, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v13, -1, -1);
      MEMORY[0x1865F56C0](v12, -1, -1);
    }

    v16 = *&v8[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
    os_unfair_lock_lock(v16 + 4);
    v17 = OBJC_IVAR____EXDiscoveryController_activeQueries;
    swift_beginAccess();
    v18 = *&v8[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {
      if (v18 < 0)
      {
        v19 = *&v8[v17];
      }

      v20 = *&v8[v17];

      v21 = __CocoaSet.count.getter();

      v18 = *&v8[v17];
    }

    else
    {
      v21 = *(v18 + 16);
    }

    v30 = specialized Dictionary.subscript.getter(v9, v18);

    if (!v30)
    {
      type metadata accessor for _EXActiveQuery();
      v31 = swift_allocObject();
      v31[2] = v9;
      v31[3] = v8;
      v32 = MEMORY[0x1E69E7CD0];
      v31[4] = MEMORY[0x1E69E7CD0];
      v31[5] = v32;
      v31[6] = v32;
      swift_beginAccess();
      v33 = *&v8[v17];
      if ((v33 & 0xC000000000000001) != 0)
      {
        if (v33 >= 0)
        {
          v33 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v34 = v8;
        v35 = v9;

        v36 = __CocoaSet.count.getter();
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          return;
        }

        *&v8[v17] = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v33, v36 + 1);
      }

      else
      {
        v37 = v8;
        v38 = v9;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = *&v8[v17];
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v9, isUniquelyReferenced_nonNull_native);
      *&v8[v17] = v61;
      swift_endAccess();
      v40 = v9;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v59 = v16;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138543362;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&dword_1847D1000, v41, v42, "New active query %{public}@'", v43, 0xCu);
        outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v44, -1, -1);
        v46 = v43;
        v16 = v59;
        MEMORY[0x1865F56C0](v46, -1, -1);
      }
    }

    swift_beginAccess();
    swift_retain_n();
    specialized Set._Variant.insert(_:)(&v61, a1, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v61, a1, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    if (v21 <= 0)
    {
      v47 = v8;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        *(v50 + 4) = v47;
        *v51 = v47;
        v52 = v47;
        _os_log_impl(&dword_1847D1000, v48, v49, "%{public}@ LS database observing started.", v50, 0xCu);
        outlined destroy of NSObject?(v51, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        MEMORY[0x1865F56C0](v51, -1, -1);
        MEMORY[0x1865F56C0](v50, -1, -1);
      }

      v53 = [objc_opt_self() sharedInstance];
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      aBlock[4] = partial apply for closure #1 in _EXDiscoveryController.add(activeQueryObserver:query:);
      aBlock[5] = v54;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_6;
      v55 = _Block_copy(aBlock);
      v56 = v47;

      v57 = [v53 addChangeObserver_];
      _Block_release(v55);

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v58 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
      swift_beginAccess();
      outlined assign with take of Any?(aBlock, &v56[v58]);
      swift_endAccess();
      [*&v56[OBJC_IVAR____EXDiscoveryController_observer] startObserving];
    }

    _EXActiveQuery.update()();

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.discovery);
    v23 = a3;
    v24 = a2;
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v23;
      v27[1] = v24;
      v28 = v23;
      v29 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v27, -1, -1);
      MEMORY[0x1865F56C0](v26, -1, -1);
    }
  }
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(void *a1, void *a2, void *a3)
{
  specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(a1, a2, a3, lazy protocol witness table cache variable for type _EXConnectionActiveQueryObserver and conformance _EXConnectionActiveQueryObserver, type metadata accessor for _EXConnectionActiveQueryObserver);
}

{
  specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(a1, a2, a3, &lazy protocol witness table cache variable for type QueryController and conformance QueryController, type metadata accessor for QueryController);
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(void *a1, void *a2, void *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(a4, a5);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.discovery);
  v11 = a3;
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = v10;
    v17 = swift_slowAlloc();
    *v15 = 138543618;
    *(v15 + 4) = v11;
    *(v15 + 12) = 2114;
    *(v15 + 14) = v12;
    *v17 = v11;
    v17[1] = v12;
    v18 = v11;
    v19 = v12;
    _os_log_impl(&dword_1847D1000, v13, v14, "%{public}@ Removing observer for query '%{public}@'", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v20 = v17;
    v10 = v16;
    MEMORY[0x1865F56C0](v20, -1, -1);
    MEMORY[0x1865F56C0](v15, -1, -1);
  }

  v21 = *&v11[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
  os_unfair_lock_lock(v21 + 4);
  v22 = OBJC_IVAR____EXDiscoveryController_activeQueries;
  swift_beginAccess();
  v23 = *&v11[v22];

  v24 = specialized Dictionary.subscript.getter(v12, v23);

  if (v24)
  {
    swift_beginAccess();
    v25 = a1;
    specialized Set._Variant.remove(_:)(v25, v8);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v25, v8);
    swift_endAccess();

    swift_unknownObjectRelease();
    v26 = *(v24 + 32);

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v27);

    v29 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);

    if (!v29)
    {
      v30 = v11;
      v31 = v12;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v50 = v10;
        v35 = swift_slowAlloc();
        *v34 = 138543618;
        *(v34 + 4) = v30;
        *(v34 + 12) = 2114;
        *(v34 + 14) = v31;
        *v35 = v30;
        v35[1] = v31;
        v36 = v30;
        v37 = v31;
        _os_log_impl(&dword_1847D1000, v32, v33, "%{public}@  No more observers for query '%{public}@ '", v34, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v35, -1, -1);
        MEMORY[0x1865F56C0](v34, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v31);
      swift_endAccess();
    }

    v38 = *&v11[v22];
    if ((v38 & 0xC000000000000001) != 0)
    {
      if (v38 < 0)
      {
        v39 = *&v11[v22];
      }

      v40 = *&v11[v22];

      v41 = __CocoaSet.count.getter();

      if (v41)
      {
        goto LABEL_14;
      }
    }

    else if (*(v38 + 16))
    {
LABEL_14:

      goto LABEL_21;
    }

    [*&v11[OBJC_IVAR____EXDiscoveryController_observer] stopObserving];
    v42 = v11;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      *(v45 + 4) = v42;
      *v46 = v42;
      v47 = v42;
      _os_log_impl(&dword_1847D1000, v43, v44, "%{public}@ LS database observing stopped", v45, 0xCu);
      outlined destroy of NSObject?(v46, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v46, -1, -1);
      MEMORY[0x1865F56C0](v45, -1, -1);
    }

    v48 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
    swift_beginAccess();
    outlined init with copy of Any?(&v42[v48], &v51);
    if (v52)
    {
      outlined init with take of Any(&v51, &v53);
      v49 = [objc_opt_self() sharedInstance];
      __swift_project_boxed_opaque_existential_1(&v53, v54);
      [v49 removeChangeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v53);
    }

    else
    {

      outlined destroy of NSObject?(&v51, &_sypSgMd, &_sypSgMR);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(v21 + 4);
}

void specialized _EXDiscoveryController.remove(activeQueryObserver:query:)(uint64_t a1, void *a2, void *a3)
{
  v6 = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  if (one-time initialization token for discovery != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, static Logger.discovery);
  v9 = a3;
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = v8;
    v15 = swift_slowAlloc();
    *v13 = 138543618;
    *(v13 + 4) = v9;
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    *v15 = v9;
    v15[1] = v10;
    v16 = v9;
    v17 = v10;
    _os_log_impl(&dword_1847D1000, v11, v12, "%{public}@ Removing observer for query '%{public}@'", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v18 = v15;
    v8 = v14;
    MEMORY[0x1865F56C0](v18, -1, -1);
    MEMORY[0x1865F56C0](v13, -1, -1);
  }

  v19 = *&v9[OBJC_IVAR____EXDiscoveryController_activeQueriesLock];
  os_unfair_lock_lock(v19 + 4);
  v20 = OBJC_IVAR____EXDiscoveryController_activeQueries;
  swift_beginAccess();
  v21 = *&v9[v20];

  v22 = specialized Dictionary.subscript.getter(v10, v21);

  if (v22)
  {
    swift_beginAccess();

    specialized Set._Variant.remove(_:)(v23, v6);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1, v6);
    swift_endAccess();

    swift_unknownObjectRelease();
    v24 = *(v22 + 32);

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v25);

    v27 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);

    if (!v27)
    {
      v28 = v9;
      v29 = v10;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v48 = v8;
        v33 = swift_slowAlloc();
        *v32 = 138543618;
        *(v32 + 4) = v28;
        *(v32 + 12) = 2114;
        *(v32 + 14) = v29;
        *v33 = v28;
        v33[1] = v29;
        v34 = v28;
        v35 = v29;
        _os_log_impl(&dword_1847D1000, v30, v31, "%{public}@  No more observers for query '%{public}@ '", v32, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v33, -1, -1);
        MEMORY[0x1865F56C0](v32, -1, -1);
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(v29);
      swift_endAccess();
    }

    v36 = *&v9[v20];
    if ((v36 & 0xC000000000000001) != 0)
    {
      if (v36 < 0)
      {
        v37 = *&v9[v20];
      }

      v38 = *&v9[v20];

      v39 = __CocoaSet.count.getter();

      if (v39)
      {
        goto LABEL_14;
      }
    }

    else if (*(v36 + 16))
    {
LABEL_14:

      goto LABEL_21;
    }

    [*&v9[OBJC_IVAR____EXDiscoveryController_observer] stopObserving];
    v40 = v9;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_1847D1000, v41, v42, "%{public}@ LS database observing stopped", v43, 0xCu);
      outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v44, -1, -1);
      MEMORY[0x1865F56C0](v43, -1, -1);
    }

    v46 = OBJC_IVAR____EXDiscoveryController_settingsStoreToken;
    swift_beginAccess();
    outlined init with copy of Any?(&v40[v46], &v49);
    if (v50)
    {
      outlined init with take of Any(&v49, &v51);
      v47 = [objc_opt_self() sharedInstance];
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      [v47 removeChangeObserver_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    }

    else
    {

      outlined destroy of NSObject?(&v49, &_sypSgMd, &_sypSgMR);
    }
  }

LABEL_21:
  os_unfair_lock_unlock(v19 + 4);
}

void specialized _EXExtensionAvailabilityObserver.query(_:resultDidUpdate:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____EXQueryResult_availablility);
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock);
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation32_EXExtensionAvailabilityObserver_observerBlock + 8);
  type metadata accessor for _EXExtensionAvailability();
  if (![v2 isKindOfClass_])
  {
LABEL_7:
    v5 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v6 = v2;
  v4();
}

id specialized _EXExtensionAvailability.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____EXExtensionAvailability_enabledCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_enabledCount] = 0;
  v4 = OBJC_IVAR____EXExtensionAvailability_disabledCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_disabledCount] = 0;
  v5 = OBJC_IVAR____EXExtensionAvailability_unelectedCount;
  *&v1[OBJC_IVAR____EXExtensionAvailability_unelectedCount] = 0;
  v6 = MEMORY[0x1865F36D0](0x4364656C62616E65, 0xEC000000746E756FLL);
  v7 = [a1 decodeIntegerForKey_];

  *&v1[v3] = v7;
  v8 = MEMORY[0x1865F36D0](0x64656C6261736964, 0xED0000746E756F43);
  v9 = [a1 decodeIntegerForKey_];

  *&v1[v4] = v9;
  v10 = MEMORY[0x1865F36D0](0x657463656C656E75, 0xEE00746E756F4364);
  v11 = [a1 decodeIntegerForKey_];

  *&v1[v5] = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for _EXExtensionAvailability();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t type metadata accessor for _EXExtensionAvailabilityObserver()
{
  result = type metadata singleton initialization cache for _EXExtensionAvailabilityObserver;
  if (!type metadata singleton initialization cache for _EXExtensionAvailabilityObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _EXExtensionAvailabilityObserver()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _EXExtensionAvailabilityObserver(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(&lazy protocol witness table cache variable for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver, type metadata accessor for _EXExtensionAvailabilityObserver);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _EXExtensionAvailabilityObserver and conformance _EXExtensionAvailabilityObserver(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _EXExtensionInstanceIdentifier.effectiveIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {
    v4 = type metadata accessor for UUID();
    v5 = *(*(v4 - 8) + 56);
    v6 = v4;
    v7 = a1;
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
    v10 = type metadata accessor for UUID();
    v12 = *(v10 - 8);
    (*(v12 + 16))(a1, v2 + v9, v10);
    v5 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v6 = v10;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t static _EXExtensionInstanceIdentifier.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static _EXExtensionInstanceIdentifier.supportsSecureCoding = a1;
  return result;
}

id static _EXExtensionInstanceIdentifier.default()()
{
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  v1 = static _EXExtensionInstanceIdentifier._defaultInstanceIdentifier;

  return v1;
}

id _EXExtensionInstanceIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXExtensionInstanceIdentifier.init()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  v8 = [v1 initWithIdentifier_];

  return v8;
}

uint64_t _EXExtensionInstanceIdentifier.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v2);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v11 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v9 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v8, v4);
    v13.receiver = v9;
    v13.super_class = v2;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _EXExtensionInstanceIdentifier.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v10 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v8, v4);
    v11 = type metadata accessor for _EXExtensionInstanceIdentifier();
    v13.receiver = v2;
    v13.super_class = v11;
    v12 = objc_msgSendSuper2(&v13, sel_init);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall _EXExtensionInstanceIdentifier.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = MEMORY[0x1865F36D0](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v3];
}

uint64_t _EXExtensionInstanceIdentifier.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____EXExtensionInstanceIdentifier_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _EXExtensionInstanceIdentifier.isDefault.getter()
{
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if (one-time initialization token for _defaultInstanceIdentifier != -1)
  {
    swift_once();
  }

  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t _EXExtensionInstanceIdentifier.description.getter()
{
  _StringGuts.grow(_:)(36);

  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v0);

  MEMORY[0x1865F37A0](93, 0xE100000000000000);
  return 0xD000000000000021;
}

id _EXExtensionInstanceIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionInstanceIdentifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for _extensionProcessBackgroundQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = type metadata accessor for DispatchQoS();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v4);
  static DispatchQoS.unspecified.getter();
  v10[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static _EXExtensionProcess._extensionProcessBackgroundQueue = result;
  return result;
}

xpc_connection_t _EXExtensionProcess.makeLibXPCConnection()()
{
  v1 = *(*(v0 + OBJC_IVAR____EXExtensionProcess__processHandle) + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v2)
    {
      return xpc_connection_create_from_endpoint(v2);
    }
  }

  v4 = objc_opt_self();
  v5 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
  [v4 _EX_errorWithCode_description_];

  return swift_willThrow();
}

Swift::Void __swiftcall _EXExtensionProcess.invalidate()()
{
  v1 = OBJC_IVAR____EXExtensionProcess__observer;
  v2 = *(v0 + OBJC_IVAR____EXExtensionProcess__observer);
  v3 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  v4 = *&v2[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock];
  v5 = v2;
  os_unfair_lock_lock(v4 + 4);
  v6 = &v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v7 = *&v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  v8 = *&v5[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  os_unfair_lock_unlock((*&v2[v3] + 16));

  v9 = *(v0 + OBJC_IVAR____EXExtensionProcess__processHandle);
  v10 = *(v0 + v1);
  v11 = *(v9 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
  v12 = v10;
  os_unfair_lock_lock(v11 + 4);
  [*(v9 + OBJC_IVAR____EXExtensionProcessHandle_observers) removeObject_];
  os_unfair_lock_unlock(v11 + 4);

  _EXExtensionProcessHandle.invalidate()();
}

id _EXExtensionProcess.isValid.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXExtensionProcess__processHandle);
  v2 = OBJC_IVAR____EXExtensionProcessHandle_invalidationLock;
  os_unfair_lock_lock((*(v1 + OBJC_IVAR____EXExtensionProcessHandle_invalidationLock) + 16));
  v3 = *(v1 + OBJC_IVAR____EXExtensionProcessHandle_assertion);
  if (v3)
  {
    v4 = [v3 isValid];
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((*(v1 + v2) + 16));
  return v4;
}

id _EXExtensionProcess.configuration.getter()
{
  v1 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void _EXExtensionProcess.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____EXExtensionProcess_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id _EXExtensionProcess.extensionIdentity.getter()
{
  v1 = [v0 configuration];
  v2 = [v1 extensionIdentity];

  return v2;
}

BOOL _EXExtensionProcess.matchesProcess(_:)(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [v1 auditToken];
  [a1 auditToken];
  result = _EXAuditTokenEqual(&v6, &v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id _EXExtensionProcess.processPredicate()()
{
  [v0 rbs_pid];
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  v2 = [objc_opt_self() predicateMatchingIdentifier_];

  return v2;
}

void __swiftcall _EXExtensionProcess.init()(_EXExtensionProcess *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _EXExtensionProcess.init(appExtensionProcess:)(char **a1)
{
  v1 = *a1;

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *&v1[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v4 = _EXLaunchConfiguration.hostConfiguration.getter();
  v5 = [v2 initWithProcessHandle:v1 configuration:v4];

  return v5;
}

id _EXExtensionProcessHandle.ProcessObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized _EXExtensionProcess.init(processHandle:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
  v5 = OBJC_IVAR____EXExtensionProcess__processHandle;
  *&v1[OBJC_IVAR____EXExtensionProcess__processHandle] = a1;
  v6 = v4;
  v7 = a1;
  v8 = _EXLaunchConfiguration.hostConfiguration.getter();
  *&v2[OBJC_IVAR____EXExtensionProcess_configuration] = v8;
  v9 = *&v8[OBJC_IVAR____EXHostConfiguration_interruptionHandler];
  v10 = *&v8[OBJC_IVAR____EXHostConfiguration_interruptionHandler + 8];
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v12 = destructiveProjectEnumData for Platform;
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *&v15[v17] = v18;
  *v16 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  v16[1] = v13;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSXPCConnection) -> (@unowned Bool))?(v9, v10);
  v26.receiver = v15;
  v26.super_class = v14;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  *&v2[OBJC_IVAR____EXExtensionProcess__observer] = v19;
  v20 = *&v2[v5];
  v21 = *&v20[OBJC_IVAR____EXExtensionProcessHandle_observersLock];
  v22 = v19;
  v23 = v20;
  os_unfair_lock_lock(v21 + 4);
  [*&v23[OBJC_IVAR____EXExtensionProcessHandle_observers] addObject_];
  os_unfair_lock_unlock(v21 + 4);

  v25.receiver = v2;
  v25.super_class = _EXExtensionProcess;
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of UUID?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t _EXNSExtensionShim.makeDefaultImplementation()()
{
  v1 = [v0 identity];
  v2 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  result = outlined init with copy of UUID?(v1 + v2, &v19, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (v20)
  {

    outlined init with take of _InnerAppExtensionIdentity(&v19, v21);
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = type metadata accessor for _EXNSExtensionShim.Implementation();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *&v8[v9] = v10;
    v11 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requests;
    v12 = v0;
    *&v8[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v13 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
    *v13 = 0;
    *(v13 + 1) = 0;
    outlined init with copy of AppExtensionIdentity(v21, &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity]);
    v14 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
    *v14 = partial apply for closure #1 in _EXNSExtensionShim.makeDefaultImplementation();
    v14[1] = v4;
    v15 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
    *v15 = partial apply for closure #2 in _EXNSExtensionShim.makeDefaultImplementation();
    v15[1] = v5;
    v16 = &v8[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
    *v16 = partial apply for closure #3 in _EXNSExtensionShim.makeDefaultImplementation();
    v16[1] = v6;
    v18.receiver = v8;
    v18.super_class = v7;
    v17 = objc_msgSendSuper2(&v18, sel_init);
    outlined destroy of AppExtensionIdentity(v21);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, uint64_t a2, id a3)
{
  v4 = [a3 requestCompletionBlock];
  if (v4)
  {
    v5 = v4;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
      v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v6.super.isa = 0;
    }

    (v5)[2](v5, isa, v6.super.isa);

    _Block_release(v5);
  }
}

void closure #2 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, uint64_t a2, id a3)
{
  v4 = [a3 requestCancellationBlock];
  if (v4)
  {
    v5 = v4;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
      v6 = _convertErrorToNSError(_:)();
    }

    else
    {
      v6 = 0;
    }

    (v5)[2](v5, isa, v6);

    _Block_release(v5);
  }
}

void closure #3 in _EXNSExtensionShim.makeDefaultImplementation()(int a1, id a2)
{
  v2 = [a2 requestInterruptionBlock];
  if (v2)
  {
    v3 = v2;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v3)[2](v3, isa);
    _Block_release(v3);
  }
}

void _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v8 = v2 + *(v21 + 36);
  v9 = *(v8 + 8);
  v10 = *v8;
  v11 = v9;
  v12.super.isa = _EXExtensionProcessHandle.makeXPCConnectionRetainProcess(_:)(0).super.isa;

  if (!v13)
  {
    v14 = specialized static NSXPCInterface.defaultImplementationXPCInterface.getter();
    [(objc_class *)v12.super.isa setRemoteObjectInterface:v14];

    [(objc_class *)v12.super.isa resume];
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    v17 = v23;
    *(v16 + 16) = v20;
    *(v16 + 24) = v17;
    (*(v5 + 32))(v16 + v15, v7, v4);
    aBlock[4] = partial apply for closure #1 in _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_49;
    v18 = _Block_copy(aBlock);

    [(objc_class *)v12.super.isa setInvalidationHandler:v18];
    _Block_release(v18);
    v19 = *(v21 + 40);

    *(v3 + v19) = v12;
  }
}

uint64_t _EXNSExtensionShim.Implementation.Request.begin()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](_EXNSExtensionShim.Implementation.Request.begin(), 0, 0);
}

{
  v1 = v0[3];
  v2 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v3 = *(v1 + *(v2 + 40));
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v1 + *(v2 + 20));
    v5 = v3;
    v6 = [v4 inputItems];
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized _arrayForceCast<A, B>(_:)(v7);
    v0[5] = v8;

    v9 = swift_task_alloc();
    v0[6] = v9;
    *(v9 + 16) = v5;
    *(v9 + 24) = v8;
    v10 = *(MEMORY[0x1E69E8920] + 4);
    v11 = swift_task_alloc();
    v0[7] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15NSExtensionItemCGMd, &_sSaySo15NSExtensionItemCGMR);
    *v11 = v0;
    v11[1] = _EXNSExtensionShim.Implementation.Request.begin();

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0x29286E69676562, 0xE700000000000000, partial apply for closure #1 in _EXNSExtensionShim.Implementation.Request.begin(), v9, v12);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = _EXNSExtensionShim.Implementation.Request.begin();
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = _EXNSExtensionShim.Implementation.Request.begin();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[8];
  v5 = v0[1];

  return v5();
}

void closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a3;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v21 = *(v6 + 16);
  v21(&v18 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v19 = *(v6 + 32);
  v19(v11 + v10, v9, v5);
  v28 = partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin();
  v29 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v27 = &block_descriptor_8;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation34EXDefaultImplementationXPCProtocol_pMd, &_s19ExtensionFoundation34EXDefaultImplementationXPCProtocol_pMR);
  swift_dynamicCast();
  v14 = v23;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21(v9, v22, v5);
  v16 = swift_allocObject();
  v19(v16 + v10, v9, v5);
  v28 = partial apply for closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin();
  v29 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@guaranteed [NSExtensionItem]?, @guaranteed NSError?) -> ();
  v27 = &block_descriptor_43;
  v17 = _Block_copy(&aBlock);

  [v14 performRequestWithInputItems:isa response:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t result, void *a2)
{
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [NSExtensionItem]?, @guaranteed NSError?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id _EXNSExtensionShim.Implementation.process.getter@<X0>(char ***a1@<X8>)
{
  v4 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v14 = &v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
  v15 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
  v16 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process + 8];
  if (v15)
  {
    v17 = *&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process];
    v18 = v16;
LABEL_3:
    *a1 = v17;
    a1[1] = v18;
    return outlined copy of AppExtensionProcess?(v15, v16);
  }

  v46 = a1;
  v47 = 0;
  v51 = v2;
  v48 = v16;
  outlined init with copy of AppExtensionIdentity(&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity], v50);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  outlined init with copy of AppExtensionIdentity(v50, v13);
  v21 = v4[6];
  v22 = one-time initialization token for nilInstanceIdentifier;
  v23 = v1;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v25 = __swift_project_value_buffer(v24, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v25, &v13[v21], type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  v13[v4[7]] = 0;
  v26 = v4[8];
  v27 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
  outlined destroy of AppExtensionIdentity(v50);
  *&v13[v26] = v27;
  *(v13 + 5) = partial apply for closure #1 in _EXNSExtensionShim.Implementation.process.getter;
  *(v13 + 6) = v20;
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v13, v11, type metadata accessor for AppExtensionProcess.Configuration);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v11, v8, type metadata accessor for AppExtensionProcess.Configuration);
  v28 = specialized _EXLaunchConfiguration.__allocating_init(_:)(v8);
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v29 = v51;
  v30 = _EXExtensionProcessMannger.process(configuration:)(v28);
  if (!v29)
  {
    v31 = v30;
    v32 = *(v11 + 5);
    v44 = *(v11 + 6);
    v45 = v32;
    v33 = type metadata accessor for _EXExtensionProcessHandle.ProcessObserver();
    v34 = objc_allocWithZone(v33);
    v51 = 0;
    v35 = &v34[OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandler];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = OBJC_IVAR____TtCC19ExtensionFoundation25_EXExtensionProcessHandle15ProcessObserver_invalidationHandlerLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *&v34[v36] = v37;
    v38 = v44;
    *v35 = v45;
    *(v35 + 1) = v38;
    v49.receiver = v34;
    v49.super_class = v33;

    v39 = objc_msgSendSuper2(&v49, sel_init);
    v40 = *(v31 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
    v41 = v39;
    os_unfair_lock_lock(v40 + 4);
    [*(v31 + OBJC_IVAR____EXExtensionProcessHandle_observers) addObject_];
    os_unfair_lock_unlock(v40 + 4);

    outlined destroy of _EXNSExtensionShim.Implementation.Request(v11, type metadata accessor for AppExtensionProcess.Configuration);
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v13, type metadata accessor for AppExtensionProcess.Configuration);
    v42 = *v14;
    v43 = *(v14 + 1);
    *v14 = v31;
    *(v14 + 1) = v41;
    v17 = v31;
    v18 = v41;
    outlined consume of AppExtensionProcess?(v42, v43);
    v15 = v47;
    v16 = v48;
    a1 = v46;
    goto LABEL_3;
  }

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v11, type metadata accessor for AppExtensionProcess.Configuration);
  return outlined destroy of _EXNSExtensionShim.Implementation.Request(v13, type metadata accessor for AppExtensionProcess.Configuration);
}

uint64_t _EXNSExtensionShim.Implementation.asyncProcess.getter(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for AppExtensionProcess.Configuration(0);
  v2[11] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_EXNSExtensionShim.Implementation.asyncProcess.getter, 0, 0);
}

uint64_t _EXNSExtensionShim.Implementation.asyncProcess.getter()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v0[14] = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v3 = &v1[v2];
  v4 = *v3;
  v0[15] = *v3;
  v5 = *(v3 + 1);
  v0[16] = v5;
  if (v4)
  {
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[9];
    *v8 = v4;
    v8[1] = v5;
    outlined copy of AppExtensionProcess?(v4, v5);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[13];
    v12 = v0[11];
    outlined init with copy of AppExtensionIdentity(&v1[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_identity], (v0 + 2));
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    outlined init with copy of AppExtensionIdentity((v0 + 2), v11);
    v14 = *(v12 + 24);
    v15 = one-time initialization token for nilInstanceIdentifier;
    v16 = v1;
    if (v15 != -1)
    {
      swift_once();
    }

    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];
    v20 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
    v21 = __swift_project_value_buffer(v20, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
    outlined init with copy of _EXNSExtensionShim.Implementation.Request(v21, v11 + v14, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
    *(v17 + *(v19 + 28)) = 0;
    v22 = *(v19 + 32);
    v23 = specialized static RBSDomainAttribute.defaultExtensionAttributes.getter();
    outlined destroy of AppExtensionIdentity((v0 + 2));
    *(v17 + v22) = v23;
    *(v17 + 40) = partial apply for closure #1 in _EXNSExtensionShim.Implementation.asyncProcess.getter;
    *(v17 + 48) = v13;
    outlined init with copy of _EXNSExtensionShim.Implementation.Request(v17, v18, type metadata accessor for AppExtensionProcess.Configuration);
    v24 = swift_task_alloc();
    v0[17] = v24;
    *v24 = v0;
    v24[1] = _EXNSExtensionShim.Implementation.asyncProcess.getter;
    v25 = v0[12];

    return AppExtensionProcess.init(configuration:)((v0 + 7), v25);
  }
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = _EXNSExtensionShim.Implementation.asyncProcess.getter;
  }

  else
  {
    v3 = _EXNSExtensionShim.Implementation.asyncProcess.getter;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[10] + v0[14];
  outlined destroy of _EXNSExtensionShim.Implementation.Request(v0[13], type metadata accessor for AppExtensionProcess.Configuration);
  v2 = v0[7];
  v3 = v0[8];
  v5 = *v1;
  v4 = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = v2;
  v7 = v3;
  outlined consume of AppExtensionProcess?(v5, v4);
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[9];
  *v12 = v6;
  v12[1] = v7;
  outlined copy of AppExtensionProcess?(v8, v9);

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[12];
  outlined destroy of _EXNSExtensionShim.Implementation.Request(v0[13], type metadata accessor for AppExtensionProcess.Configuration);

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

id _EXNSExtensionShim.Implementation.begin(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v10 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _EXNSExtensionShim.Implementation.process.getter(v50);
  if (!v3)
  {
    v41 = v13;
    v42 = v9;
    v43 = a2;
    v15 = v50[0];
    v16 = v50[1];
    v49 = 0;
    v51 = swift_allocBox();
    v18 = v17;
    v19 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
    v20 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock + 8];
    v21 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock + 8];
    v46 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
    v47 = v19;
    v22 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
    v23 = *&v2[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock + 8];
    v44 = a1;
    v45 = v22;
    v24 = v15;
    v25 = v16;

    UUID.init()();
    *(v18 + v10[10]) = 0;
    *(v18 + v10[5]) = a1;
    v26 = (v18 + v10[9]);
    v48 = v24;
    *v26 = v24;
    v26[1] = v25;
    v27 = (v18 + v10[6]);
    v28 = v46;
    *v27 = v47;
    v27[1] = v20;
    v29 = (v18 + v10[7]);
    *v29 = v28;
    v29[1] = v21;
    v30 = (v18 + v10[8]);
    *v30 = v45;
    v30[1] = v23;
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    v32 = v44;
    v33 = v2;
    v34 = v49;
    _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:), v31);
    if (v34)
    {
    }

    else
    {

      v35 = v41;
      outlined init with copy of _EXNSExtensionShim.Implementation.Request(v18, v41, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
      _EXNSExtensionShim.Implementation.addRequest(_:)(v35);
      outlined destroy of _EXNSExtensionShim.Implementation.Request(v35, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
      v36 = type metadata accessor for TaskPriority();
      v37 = v42;
      (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v51;
      v38[5] = v33;
      v39 = v33;

      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v37, &async function pointer to partial apply for closure #2 in _EXNSExtensionShim.Implementation.begin(_:), v38);

      swift_beginAccess();
      v40 = type metadata accessor for UUID();
      (*(*(v40 - 8) + 16))(v43, v18, v40);
    }
  }

  return result;
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = type metadata accessor for UUID();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = *(*(type metadata accessor for _EXNSExtensionShim.Implementation.Request() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #2 in _EXNSExtensionShim.Implementation.begin(_:), 0, 0);
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)()
{
  v1 = v0[12];
  v2 = v0[13];
  swift_beginAccess();
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(v2, v1, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);
  v4 = v0[12];

  return _EXNSExtensionShim.Implementation.Request.begin()();
}

{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  swift_beginAccess();
  (*(v5 + 16))(v4, v3, v7);
  _EXNSExtensionShim.Implementation.completeRequest(for:items:)(v4, v1);

  (*(v5 + 8))(v4, v7);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[12];
  if (v1)
  {
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v7, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
    v8 = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);
  }

  else
  {
    v4[16] = a1;
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v7, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
    v8 = closure #2 in _EXNSExtensionShim.Implementation.begin(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v9 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v7[9] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);

  return _EXNSExtensionShim.Implementation.asyncProcess.getter((v7 + 2));
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  else
  {
    v3 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  v39 = v0[5];
  v40 = v0[12];
  v4 = v0[2];
  v5 = v0[3];
  v0[13] = v4;
  v0[14] = v5;
  v6 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock + 8];
  v7 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock + 8];
  v37 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock];
  v38 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock];
  v8 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock + 8];
  v36 = *&v3[OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock];
  v9 = v4;
  v10 = v5;

  UUID.init()();
  *(v2 + v1[10]) = 0;
  *(v2 + v1[5]) = v39;
  v11 = (v2 + v1[9]);
  *v11 = v9;
  v11[1] = v10;
  v12 = (v2 + v1[6]);
  *v12 = v38;
  v12[1] = v6;
  v13 = (v2 + v1[7]);
  *v13 = v37;
  v13[1] = v7;
  v14 = (v2 + v1[8]);
  *v14 = v36;
  v14[1] = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  v16 = v39;
  v17 = v3;
  _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)(partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:), v15);
  v18 = v0[10];
  if (v40)
  {
    outlined destroy of _EXNSExtensionShim.Implementation.Request(v0[10], type metadata accessor for _EXNSExtensionShim.Implementation.Request);

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = v40;
    v21(v19, v40);

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v24 = v0[10];
    v25 = v0[8];

    v26 = v0[1];

    return v26();
  }

  else
  {
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];
    v31 = v0[4];

    _EXNSExtensionShim.Implementation.addRequest(_:)(v18);
    v32 = type metadata accessor for UUID();
    v33 = *(v32 - 8);
    (*(v33 + 16))(v28, v18, v32);
    (*(v33 + 56))(v28, 0, 1, v32);
    v30(v28, 0);
    outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v34 = swift_task_alloc();
    v0[15] = v34;
    *v34 = v0;
    v34[1] = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
    v35 = v0[10];

    return _EXNSExtensionShim.Implementation.Request.begin()();
  }
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];
  v4 = v0[4];
  _EXNSExtensionShim.Implementation.completeRequest(for:items:)(v3, v0[17]);

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v3, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v5 = v0[10];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v1;
  v4(v3, v1);

  outlined destroy of NSObject?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  outlined destroy of _EXNSExtensionShim.Implementation.Request(v2, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v3 = *(v0 + 128);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v3;
  v6(v5, v3);

  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  outlined init with copy of UUID?(a1, &v14 - v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = _convertErrorToNSError(_:)();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

uint64_t _EXNSExtensionShim.Implementation.addRequest(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v14 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v14 + 4);

  (*(v9 + 16))(v12, a1, v8);
  outlined init with copy of _EXNSExtensionShim.Implementation.Request(a1, v7, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  v15 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v7, v12);
  swift_endAccess();
  v16 = *(v2 + v13);

  os_unfair_lock_unlock(v16 + 4);
}

uint64_t _EXNSExtensionShim.Implementation.cancelRequest(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v17 = *(v1 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v17 + 4);

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v15);
  swift_endAccess();
  v18 = *(v2 + v16);

  os_unfair_lock_unlock(v18 + 4);

  outlined init with copy of UUID?(v15, v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v15, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v13, v8);
    v20 = *(v4 + 40);
    v21 = *&v8[v20];
    if (v21)
    {
      [*&v8[v20] setInvalidationHandler_];
      [v21 invalidate];
    }

    *&v8[v20] = 0;
    v22 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock + 8);
    (*(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_cancellationBlock))(a1, 0);
    outlined destroy of NSObject?(v15, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v8, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

uint64_t _EXNSExtensionShim.Implementation.completeRequest(for:items:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v27 = a2;
  v5 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v18 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v18 + 4);

  swift_beginAccess();
  v28 = a1;
  specialized Dictionary.removeValue(forKey:)(a1, v16);
  swift_endAccess();
  v19 = *(v3 + v17);

  os_unfair_lock_unlock(v19 + 4);

  outlined init with copy of UUID?(v16, v14, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v16, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v14, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v14, v9);
    v21 = *(v5 + 40);
    v22 = *&v9[v21];
    if (v22)
    {
      [*&v9[v21] setInvalidationHandler_];
      [v22 invalidate];
    }

    *&v9[v21] = 0;
    v23 = *(v3 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock);
    v24 = *(v3 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_completionBlock + 8);
    v25 = specialized _arrayForceCast<A, B>(_:)(v27);
    v23(v28, v25);

    outlined destroy of NSObject?(v16, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v9, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

uint64_t _EXNSExtensionShim.Implementation.invalidateRequest(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock;
  v17 = *(v1 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_requestsLock);

  os_unfair_lock_lock(v17 + 4);

  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v15);
  swift_endAccess();
  v18 = *(v2 + v16);

  os_unfair_lock_unlock(v18 + 4);

  outlined init with copy of UUID?(v15, v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    outlined destroy of NSObject?(v15, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of NSObject?(v13, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
  }

  else
  {
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v13, v8);
    v20 = *(v4 + 40);
    v21 = *&v8[v20];
    if (v21)
    {
      [*&v8[v20] setInvalidationHandler_];
      [v21 invalidate];
    }

    *&v8[v20] = 0;
    v22 = *(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock + 8);
    (*(v2 + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation_interruptionBlock))(a1);
    outlined destroy of NSObject?(v15, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMd, &_sSo18_EXNSExtensionShimC19ExtensionFoundationE14ImplementationC7RequestVSgMR);
    return outlined destroy of _EXNSExtensionShim.Implementation.Request(v8, type metadata accessor for _EXNSExtensionShim.Implementation.Request);
  }
}

id _EXNSExtensionShim.Implementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXNSExtensionShim.Implementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for _EXNSExtensionShim.Implementation.Request()
{
  result = type metadata singleton initialization cache for _EXNSExtensionShim.Implementation.Request;
  if (!type metadata singleton initialization cache for _EXNSExtensionShim.Implementation.Request)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for _EXNSExtensionShim.Implementation.Request()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for EXExtensionRequest, off_1E6E4D1B0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSXPCConnection?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for NSXPCConnection?()
{
  if (!lazy cache variable for type metadata for NSXPCConnection?)
  {
    type metadata accessor for NSDictionary(255, &lazy cache variable for type metadata for NSXPCConnection, 0x1E696B0B8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NSXPCConnection?);
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 0x1010101);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      CTt1g5 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(CTt1g5 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, CTt1g5);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      CTt1g5 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaSet.count.getter();
  CTt1g5 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(CTt1g5 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, CTt1g5);

LABEL_11:
  *v2 = CTt1g5;
  return v12;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
    v22 = *(v15 - 8);
    outlined init with take of _EXNSExtensionShim.Implementation.Request(v14 + *(v22 + 72) * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC19ExtensionFoundation8_EXQueryC_AG14_EXActiveQueryCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for _EXQuery();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for _EXActiveQuery();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t partial apply for closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #2 in _EXNSExtensionShim.Implementation.begin(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(a1);
}

uint64_t objectdestroy_36Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo15NSExtensionItemCGs5Error_pGMd, &_sScCySaySo15NSExtensionItemCGs5Error_pGMR) - 8) + 80);

  return closure #2 in closure #1 in _EXNSExtensionShim.Implementation.Request.begin()(a1, a2);
}

uint64_t specialized static NSXPCInterface.defaultImplementationXPCInterface.getter()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1848BCEF0;
  v1 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSArrayCmMd, &_sSo7NSArrayCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12NSDictionaryCmMd, &_sSo12NSDictionaryCmMR);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCmMd, &_sSo8NSStringCmMR);
  *(v0 + 96) = v3;
  v4 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSExtensionItem, 0x1E696ABE0);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15NSExtensionItemCmMd, &_sSo15NSExtensionItemCmMR);
  *(v0 + 128) = v4;
  v5 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSErrorCmMd, &_sSo7NSErrorCmMR);
  *(v0 + 160) = v5;
  v6 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6NSUUIDCmMd, &_sSo6NSUUIDCmMR);
  *(v0 + 192) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithArray_];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in _EXNSExtensionShim.Implementation.Request.connect(onInvalidate:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

void partial apply for closure #1 in _EXNSExtensionShim.Implementation.asyncProcess.getter()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation__process;
  v2 = *v1;
  v3 = *(v1 + 8);
  *v1 = 0;
  *(v1 + 8) = 0;
  outlined consume of AppExtensionProcess?(v2, v3);
}

uint64_t outlined init with copy of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void outlined consume of AppExtensionProcess?(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id outlined copy of AppExtensionProcess?(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _ServiceExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_ServiceExtensionProcess.init(configuration:), 0, 0);
}

uint64_t _ServiceExtensionProcess.init(configuration:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  outlined init with copy of _ServiceExtensionProcess.Configuration(v5, v1, type metadata accessor for _ServiceExtensionProcess.Configuration);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  outlined init with take of _ServiceExtensionProcess.Configuration(v1, v8 + v7, type metadata accessor for _ServiceExtensionProcess.Configuration);
  v9 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC19ExtensionFoundation08_ServiceE7ProcessV5Inner33_B444E02B49700CE9F619AE54934FF0D0LLV_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in _ServiceExtensionProcess.init(configuration:), v8);
  v0[10] = v9;
  v10 = *(MEMORY[0x1E69E86A8] + 4);
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v11 = v0;
  v11[1] = _ServiceExtensionProcess.init(configuration:);
  v14 = v0[4];
  v13 = v0[5];
  v15 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v13, v9, v14, v12, v15);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = _ServiceExtensionProcess.init(configuration:);
  }

  else
  {
    v4 = _ServiceExtensionProcess.init(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  outlined destroy of _ServiceExtensionProcess.Configuration(v0[3], type metadata accessor for _ServiceExtensionProcess.Configuration);
  outlined init with take of _ServiceExtensionProcess.Configuration(v3, v4, type metadata accessor for _ServiceExtensionProcess.Inner);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  outlined destroy of _ServiceExtensionProcess.Configuration(v0[3], type metadata accessor for _ServiceExtensionProcess.Configuration);

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t closure #1 in _ServiceExtensionProcess.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in _ServiceExtensionProcess.init(configuration:), 0, 0);
}

uint64_t closure #1 in _ServiceExtensionProcess.init(configuration:)()
{
  static _ServiceExtensionProcess.launch(configuration:)(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in _ServiceExtensionProcess.init(configuration:)(uint64_t a1)
{
  v4 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return closure #1 in _ServiceExtensionProcess.init(configuration:)(a1, v6, v7, v1 + v5);
}

uint64_t outlined init with take of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void static _ServiceExtensionProcess.launch(configuration:)(void **a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v101 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = _ServiceExtensionProcess.Configuration._rbsProcessIdentity.getter();
  if (!v2)
  {
    v11 = v10;
    v90 = v7;
    v91 = v9;
    v89 = v5;
    v92 = 0;
    v12 = [objc_opt_self() contextWithIdentity_];
    v13 = *(a1 + *(v4 + 32));
    v14 = a1;
    v88 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v13)
    {
      if (v13 >> 62)
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);

        _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      }

      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = v8;
    }

    else
    {
      v15.super.isa = 0;
      v16 = v8;
    }

    [v12 setAttributes_];

    if (*(v14 + 40) == 1)
    {
      v17 = [objc_opt_self() predicateMatchingIdentity_];
      v18 = v11;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
      v19 = v17;
      v20 = v92;
      v21 = specialized @nonobjc RBSProcessHandle.__allocating_init(for:)(v19);
      v92 = v20;
      if (v20)
      {

        goto LABEL_27;
      }

      v22 = v21;

      v23 = [objc_opt_self() identifierWithPid_];
      [v12 setRequiredExistingProcess_];
    }

    else
    {
      v18 = v11;
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69C7598]) initWithContext_];
    v25 = [v24 executeRequest];
    if ([v25 error])
    {
      swift_willThrow();

LABEL_14:
      goto LABEL_27;
    }

    v26 = [v25 process];
    if (!v26)
    {
      v73 = objc_opt_self();
      v74 = v24;
      v75 = MEMORY[0x1865F36D0](0xD000000000000019, 0x80000001848C5020);
      [v73 _EX_errorWithCode_description_];

      swift_willThrow();
      goto LABEL_14;
    }

    v86 = v26;
    v87 = v24;
    v27 = [v25 managedEndpointByLaunchIdentifier];
    if (v27)
    {
      v28 = v27;
      v85 = v12;
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSMachEndpoint, 0x1E69C75A8);
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = [v16 identifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      aBlock = v31;
      v95 = v33;
      MEMORY[0x1865F37A0](58, 0xE100000000000000);
      MEMORY[0x1865F37A0](v90, v91);
      if (*(v29 + 16))
      {
        v34 = v29;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock, v95);
        v37 = v36;

        if (v37)
        {
          v84 = *(*(v34 + 56) + 8 * v35);

          v38 = [v25 assertion];
          if (v38)
          {
            v83 = v38;
            v39 = [v16 identifier];
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            aBlock = v40;
            v95 = v42;
            MEMORY[0x1865F37A0](58, 0xE100000000000000);
            v43 = v90;
            MEMORY[0x1865F37A0](v90, v91);
            v44 = aBlock;
            v45 = v95;
            v46 = v25;
            v47 = MEMORY[0x1865F36D0](v44, v45);

            v48 = MEMORY[0x1865F36D0](0x767265536E69614DLL, 0xEB00000000656369);
            v49 = objc_opt_self();
            aBlock = 0;
            v50 = [v49 endpointOfLaunchIdentifier:v47 fromLaunchResponse:v46 withService:v48 instance:0 error:&aBlock];

            v51 = aBlock;
            v82 = v46;

            if (v50)
            {
              v52 = [v16 identifier];
              v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v54 = v14;
              v55 = v43;
              v57 = v56;

              aBlock = v53;
              v95 = v57;
              MEMORY[0x1865F37A0](58, 0xE100000000000000);
              MEMORY[0x1865F37A0](v55, v91);
              v58 = aBlock;
              v59 = v95;
              v60 = type metadata accessor for EXConnectionEndpoint();
              v61 = objc_allocWithZone(v60);
              v62 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
              *&v61[OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint] = 0;
              v63 = &v61[OBJC_IVAR___EXConnectionEndpoint_identifier];
              *v63 = v58;
              *(v63 + 1) = v59;
              *&v61[OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint] = v50;
              *&v61[v62] = 0;
              v100.receiver = v61;
              v100.super_class = v60;
              v64 = v50;
              v65 = objc_msgSendSuper2(&v100, sel_init);
              v66 = v88;
              outlined init with copy of _ServiceExtensionProcess.Configuration(v54, v88, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v67 = (*(v89 + 80) + 16) & ~*(v89 + 80);
              v68 = swift_allocObject();
              outlined init with take of _ServiceExtensionProcess.Configuration(v66, v68 + v67, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v98 = partial apply for closure #1 in static _ServiceExtensionProcess.launch(configuration:);
              v99 = v68;
              aBlock = MEMORY[0x1E69E9820];
              v95 = 1107296256;
              v96 = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
              v97 = &block_descriptor_36;
              v69 = _Block_copy(&aBlock);

              v70 = v86;
              [v86 monitorForDeath_];

              _Block_release(v69);
              v71 = v93;
              outlined init with copy of _ServiceExtensionProcess.Configuration(v54, v93, type metadata accessor for _ServiceExtensionProcess.Configuration);
              v72 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
              *(v71 + v72[5]) = v70;
              *(v71 + v72[6]) = v65;
              *(v71 + v72[7]) = v83;
            }

            else
            {
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }

            goto LABEL_27;
          }

          v80 = objc_opt_self();
          v81 = MEMORY[0x1865F36D0](0xD000000000000028, 0x80000001848C5070);
          [v80 _EX_errorWithCode_description_];

          swift_willThrow();
          v78 = v84;
LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
      }

      v12 = v85;
    }

    v76 = objc_opt_self();
    v77 = MEMORY[0x1865F36D0](0xD00000000000002CLL, 0x80000001848C5040);
    [v76 _EX_errorWithCode_description_];

    swift_willThrow();
    v78 = v86;
    goto LABEL_26;
  }

LABEL_27:
  v79 = *MEMORY[0x1E69E9840];
}

uint64_t _ServiceExtensionProcess.init(configuration:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for _ServiceExtensionProcess.Inner(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _ServiceExtensionProcess.launch(configuration:)(a1, v8);
  result = outlined destroy of _ServiceExtensionProcess.Configuration(a1, type metadata accessor for _ServiceExtensionProcess.Configuration);
  if (!v2)
  {
    return outlined init with take of _ServiceExtensionProcess.Configuration(v8, a2, type metadata accessor for _ServiceExtensionProcess.Inner);
  }

  return result;
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _ServiceExtensionProcess.makeXPCConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for _ServiceExtensionProcess(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.launch);
  outlined init with copy of _ServiceExtensionProcess.Configuration(v0, v5, type metadata accessor for _ServiceExtensionProcess);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v31 = v10;
    *v9 = 136446210;
    v11 = v5[1];
    v12 = v5[2];
    *&aBlock = *v5;
    *(&aBlock + 1) = v11;
    v27 = v12;
    v13 = aBlock;

    v14 = String.init<A>(describing:)();
    v16 = v15;
    outlined destroy of _ServiceExtensionProcess.Configuration(v5, type metadata accessor for _ServiceExtensionProcess);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v31);

    *(v9 + 4) = v17;
    _os_log_impl(&dword_1847D1000, v7, v8, "Creating connection for extension: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865F56C0](v10, -1, -1);
    MEMORY[0x1865F56C0](v9, -1, -1);
  }

  else
  {

    outlined destroy of _ServiceExtensionProcess.Configuration(v5, type metadata accessor for _ServiceExtensionProcess);
  }

  v18 = *(*(v1 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 24)) + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint);
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = objc_opt_self();
  v29 = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
  v30 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v28 = &block_descriptor_9;
  v1 = _Block_copy(&aBlock);
  v20 = v18;

  v21 = [v19 NSXPCConnectionWithEndpoint:v20 configurator:v1];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_9:
    v22 = objc_opt_self();
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v31 = aBlock;
    MEMORY[0x1865F37A0](0xD000000000000035, 0x80000001848C4FE0);
    v23 = v1[2];
    aBlock = *v1;
    v27 = v23;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F37A0](39, 0xE100000000000000);
    v21 = *(&v31 + 1);
    v24 = MEMORY[0x1865F36D0](v31, *(&v31 + 1));

    [v22 _EX_errorWithCode_description_];

    swift_willThrow();
  }

  return v21;
}

uint64_t outlined init with copy of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _ServiceExtensionProcess.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall _ServiceExtensionProcess.invalidate()()
{
  v1 = *(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 28));

  [v1 invalidate];
}

uint64_t _ServiceExtensionProcess.description.getter()
{
  _StringGuts.grow(_:)(17);

  strcpy(v3, "Process (pid: ");
  HIBYTE(v3[1]) = -18;
  [*(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 20)) pid];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v1);

  MEMORY[0x1865F37A0](41, 0xE100000000000000);
  return v3[0];
}

id _ServiceExtensionProcess.pid.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ServiceExtensionProcess.Inner(0) + 20));

  return [v1 pid];
}

uint64_t _ServiceExtensionProcess.Configuration.serviceExtensionIdentity.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v2;
}

__n128 _ServiceExtensionProcess.Configuration.serviceExtensionIdentity.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *v1;
  v4 = *(v1 + 16);

  result = v6;
  *v1 = v6;
  *(v1 + 16) = v2;
  return result;
}

uint64_t key path setter for _ServiceExtensionProcess.Configuration.onInterruption : _ServiceExtensionProcess.Configuration(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 32);

  *(a2 + 24) = _sytIegr_Ieg_TRTA_0;
  *(a2 + 32) = v5;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration.onInterruption.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t _ServiceExtensionProcess.Configuration.onInterruption.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration.init(serviceExtensionIdentity:onInterruption:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = type metadata accessor for _ServiceExtensionProcess.Configuration(0);
  v11 = *(v10 + 28);
  if (one-time initialization token for nilInstanceIdentifier != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AppExtensionProcess._InstanceIdentifier(0);
  v13 = __swift_project_value_buffer(v12, static AppExtensionProcess._InstanceIdentifier.nilInstanceIdentifier);
  result = outlined init with copy of _ServiceExtensionProcess.Configuration(v13, a4 + v11, type metadata accessor for AppExtensionProcess._InstanceIdentifier);
  *(a4 + *(v10 + 32)) = 0;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration._assertionAttributes.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32));
}

uint64_t key path setter for _ServiceExtensionProcess.Configuration._assertionAttributes : _ServiceExtensionProcess.Configuration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);
  v5 = *(a2 + v4);

  *(a2 + v4) = v3;
  return result;
}

uint64_t _ServiceExtensionProcess.Configuration._assertionAttributes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t (*_ServiceExtensionProcess.Configuration._assertionAttributes.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) + 32);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;

  return _ServiceExtensionProcess.Configuration._assertionAttributes.modify;
}

uint64_t _ServiceExtensionProcess.Configuration._assertionAttributes.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(a1 + 6);
  v5 = *a1;
  if (a2)
  {
    v6 = *a1;

    *(v3 + v4) = v5;
  }

  else
  {
    v8 = a1[2];

    *(v3 + v4) = v5;
  }

  return result;
}

id _ServiceExtensionProcess.Configuration._rbsProcessIdentity.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24[-1] - v8;
  v11 = *v0;
  v10 = *(v0 + 8);
  v12 = *(v0 + 16);
  v24[0] = v11;
  v24[1] = v10;
  v24[2] = v12;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  *v5 = 0;
  *(v5 + 1) = 0;
  v14 = v11;

  *(v5 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v5 + 3) = 0;
  v15 = *(v2 + 36);
  v16 = type metadata accessor for NWApplicationID();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = &v5[*(v2 + 40)];
  v18 = type metadata accessor for _EXExtensionProcessIdentity(0);
  *v17 = 0;
  *(v17 + 1) = 0;
  v19 = objc_allocWithZone(v18);
  v20 = _EXExtensionProcessIdentity.init(identity:instanceUUID:configuration:)(v24, v9, v5);
  v21 = [objc_opt_self() identityForExtensionIdentity_];

  return v21;
}

uint64_t type metadata completion function for _ServiceExtensionProcess()
{
  result = type metadata accessor for _ServiceExtensionProcess.Inner(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for _ServiceExtensionProcess.Configuration()
{
  type metadata accessor for ()();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppExtensionProcess._InstanceIdentifier(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [RBSDomainAttribute]?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [RBSDomainAttribute]?()
{
  if (!lazy cache variable for type metadata for [RBSDomainAttribute]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo18RBSDomainAttributeCGMd, &_sSaySo18RBSDomainAttributeCGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [RBSDomainAttribute]?);
    }
  }
}

uint64_t type metadata completion function for _ServiceExtensionProcess.Inner()
{
  result = type metadata accessor for _ServiceExtensionProcess.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for RBSProcessHandle, 0x1E69C75D0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for EXConnectionEndpoint();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for NSDictionary(319, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in static _ServiceExtensionProcess.launch(configuration:)()
{
  v1 = *(type metadata accessor for _ServiceExtensionProcess.Configuration(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  return (*(v2 + 24))();
}

Swift::Void __swiftcall NSXPCConnection.invalidateAllAssertions()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in NSXPCConnection.invalidateAllAssertions();
  *(v10 + 24) = v9;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  dispatch_sync(v8, v11);

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

void closure #1 in NSXPCConnection.invalidateAllAssertions()(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = NSXPCConnection.assertions.getter();
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAssertion, 0x1E69C7548);
    lazy protocol witness table accessor for type AuditToken and conformance AuditToken();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    objc_setAssociatedObject(a1, "_EX_assertions", isa, 0x301);

    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = v10;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      [*(*(v7 + 56) + ((v15 << 9) | (8 * v16))) invalidate];
    }

    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v15 >= v14)
      {

        return;
      }

      v13 = *(v7 + 64 + 8 * v15);
      ++v10;
      if (v13)
      {
        v10 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void one-time initialization function for observerServiceInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

Swift::Void __swiftcall Service.ObserverConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___ObserverConfiguration__extensionPointRecords);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v22 = *(v1 + OBJC_IVAR___ObserverConfiguration__extensionPointRecords);
    }

    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v23 = v1;
    isa = with.super.isa;
    v6 = 0;
    v7 = v26;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1865F3F40](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 persistentIdentifier];

      v26 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v7 = v26;
      }

      ++v6;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
    }

    while (v5 != v6);
    v2 = v23;
    with.super.isa = isa;
LABEL_13:
    v13 = UUID._bridgeToObjectiveC()().super.isa;
    v14 = MEMORY[0x1865F36D0](6580575, 0xE300000000000000);
    [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

    type metadata accessor for LSPersistentIdentifier(0);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    v16 = MEMORY[0x1865F36D0](0xD000000000000016, 0x80000001848C50F0);
    [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

    v17 = *(v2 + OBJC_IVAR___ObserverConfiguration__endpoint);
    v18 = MEMORY[0x1865F36D0](0x6E696F70646E655FLL, 0xE900000000000074);
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    v19 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 1);
    v20 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 2);
    v21 = *(v2 + OBJC_IVAR___ObserverConfiguration__options + 3);
    v25[0] = *(v2 + OBJC_IVAR___ObserverConfiguration__options);
    v25[1] = v19;
    v25[2] = v20;
    v25[3] = v21;
    NSCoder.encode(_:forKey:)(v25, 0x736E6F6974706F5FLL, 0xE800000000000000);
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for Service.ObserverConfiguration()
{
  result = type metadata singleton initialization cache for Service.ObserverConfiguration;
  if (!type metadata singleton initialization cache for Service.ObserverConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Service.ObserverConfiguration()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id Service.ObserverUpdate.init(identities:disabledCount:unelectedCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = a1 + 32;
    do
    {
      outlined init with copy of AppExtensionIdentity(v9, v22);
      outlined init with copy of AppExtensionIdentity(v22, v21);
      outlined init with copy of _InnerAppExtensionIdentity(v21, v20);
      v10 = [objc_allocWithZone(_EXExtensionIdentity) init];
      outlined destroy of AppExtensionIdentity(v21);
      outlined destroy of AppExtensionIdentity(v22);
      outlined init with take of _InnerAppExtensionIdentity(v20, v19);
      v11 = OBJC_IVAR____EXExtensionIdentity__inner;
      swift_beginAccess();
      v12 = v10;
      outlined assign with take of _InnerAppExtensionIdentity?(v19, v10 + v11);
      swift_endAccess();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(v23 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += 40;
      --v8;
    }

    while (v8);

    v14 = v23;
    v6 = a2;
    v5 = a3;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *&v4[OBJC_IVAR___ObserverUpdate__identities] = v14;
  *&v4[OBJC_IVAR___ObserverUpdate__disabledCount] = v6;
  *&v4[OBJC_IVAR___ObserverUpdate__unelectedCount] = v5;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for Service.ObserverUpdate();
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall Service.ObserverUpdate.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ObserverUpdate__identities);
  type metadata accessor for _EXExtensionIdentity();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x1865F36D0](0x7469746E6564695FLL, 0xEB00000000736569);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v1 + OBJC_IVAR___ObserverUpdate__disabledCount);
  v7 = MEMORY[0x1865F36D0](0x656C62617369645FLL, 0xEE00746E756F4364);
  [(objc_class *)with.super.isa encodeInteger:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR___ObserverUpdate__unelectedCount);
  v9 = MEMORY[0x1865F36D0](0x7463656C656E755FLL, 0xEF746E756F436465);
  [(objc_class *)with.super.isa encodeInteger:v8 forKey:v9];
}

id Service.ObserverConfiguration.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized Service.ObserverConfiguration.init(coder:)(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v9 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (!v9)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v10 = v9;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(&v2[OBJC_IVAR___ObserverConfiguration__id], v8, v4);
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v33 = v13;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v31 = a1;
    v32 = v2;
    v16 = 0;
    v2 = (v10 & 0xC000000000000001);
    while (1)
    {
      v13 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v2)
      {
        v17 = MEMORY[0x1865F3F40](v16, v10);
      }

      else
      {
        if (v16 >= *(v33 + 16))
        {
          goto LABEL_19;
        }

        v17 = *(v10 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v19, v21);
      a1 = [objc_allocWithZone(MEMORY[0x1E6963668]) initWithPersistentIdentifier_];

      if (!a1)
      {
        goto LABEL_22;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = *(v35 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v16;
      if (v13 == i)
      {
        v15 = v35;
        v2 = v32;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_16:
  *&v2[OBJC_IVAR___ObserverConfiguration__extensionPointRecords] = v15;
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSXPCListenerEndpoint, 0x1E696B0E0);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24;

  *&v2[OBJC_IVAR___ObserverConfiguration__endpoint] = v25;
  NSCoder.decodeOptions(forKey:)(0x736E6F6974706F5FLL, 0xE800000000000000, &v35);
  v26 = BYTE1(v35);
  v27 = BYTE2(v35);
  v28 = BYTE3(v35);
  v29 = &v2[OBJC_IVAR___ObserverConfiguration__options];
  *v29 = v35;
  v29[1] = v26;
  v29[2] = v27;
  v29[3] = v28;
  v30 = type metadata accessor for Service.ObserverConfiguration();
  v34.receiver = v2;
  v34.super_class = v30;
  objc_msgSendSuper2(&v34, sel_init);
}

id specialized Service.ObserverUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for _EXExtensionIdentity();
  v4 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v5 = v4;
  }

  *&v2[OBJC_IVAR___ObserverUpdate__identities] = v5;
  v6 = MEMORY[0x1865F36D0](0x656C62617369645FLL, 0xEE00746E756F4364);
  v7 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___ObserverUpdate__disabledCount] = v7;
  v8 = MEMORY[0x1865F36D0](0x7463656C656E755FLL, 0xEF746E756F436465);
  v9 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___ObserverUpdate__unelectedCount] = v9;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for Service.ObserverUpdate();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_AppExtension.hostAuditToken.getter()
{
  type metadata accessor for _EXRunningExtension();
  result = static _EXRunningExtension.sharedInstance()();
  v1 = &result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken];
  if (result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken + 32])
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    v5 = *v1;
    v4 = *(v1 + 1);

    return v5;
  }

  return result;
}

{
  type metadata accessor for _EXRunningExtension();
  result = static _EXRunningExtension.sharedInstance()();
  v1 = &result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken];
  if (result[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken + 32])
  {
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    v5 = *v1;
    v4 = *(v1 + 1);

    return v5;
  }

  return result;
}

void static _AppExtension.main()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v6 = *(v30 + 64);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v26 - v8;
  v29 = *(a1 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.debug.getter();
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.general;
  if (os_log_type_enabled(static OS_os_log.general, v13))
  {
    v15 = swift_slowAlloc();
    v27 = AssociatedTypeWitness;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v2;
    v18 = v17;
    *v16 = 138412290;
    type metadata accessor for _EXRunningExtension();
    v19 = static _EXRunningExtension.sharedInstance()();
    *(v16 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_1847D1000, v14, v13, "Launching extension %@", v16, 0xCu);
    outlined destroy of NSObject?(v18);
    MEMORY[0x1865F56C0](v18, -1, -1);
    v20 = v16;
    AssociatedTypeWitness = v27;
    MEMORY[0x1865F56C0](v20, -1, -1);
  }

  (*(a2 + 24))(a1, a2);
  (*(a2 + 32))(a1, a2);
  type metadata accessor for _EXRunningExtension();
  v21 = static _EXRunningExtension.sharedInstance()();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _SceneWrapper();
  v22 = specialized _SceneWrapper.__allocating_init(_:)(v9);
  v23 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
  if (*&v21[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension])
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v24 = v22;
    (*(v30 + 8))(v9, AssociatedTypeWitness);
    (*(v29 + 8))(v12, a1);
    v25 = *&v21[v23];
    *&v21[v23] = v24;
  }
}

uint64_t _SceneWrapper.shouldAccept(_:)(uint64_t a1)
{
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  return v2(a1, v3) & 1;
}

uint64_t @objc _SceneWrapper.shouldAccept(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = _SceneWrapper.shouldAccept(_:)(v4);

  return a1 & 1;
}

uint64_t _SceneWrapper.makeScene(with:)(uint64_t a1)
{
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x58) + 16);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  result = v2(a1, v3);
  if (result)
  {
    v6 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

id @objc _SceneWrapper.makeScene(with:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = _SceneWrapper.makeScene(with:)(v4);

  return v6;
}

void @objc _SceneWrapper.init()(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  specialized _SceneWrapper.init()();
}

id _SceneWrapper.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _SceneWrapper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void static _EXExtension.bootstrap(with:)(void *a1)
{
  type metadata accessor for _EXRunningExtension();
  v2 = static _EXRunningExtension.sharedInstance()();
  if (*(v2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = a1;
    v4 = v2;
    v3 = a1;
  }
}

id specialized _SceneWrapper.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50));
  v4 = *((v3 & v2) + 0x58);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for _SceneWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id specialized _SceneWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = objc_allocWithZone(type metadata accessor for _SceneWrapper());
  return specialized _SceneWrapper.init(_:)(a1);
}

uint64_t type metadata completion function for _SceneWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall _EXQueryResult.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____EXQueryResult_identities);
  if (v3)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v3);
    type metadata accessor for _EXExtensionIdentity();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = MEMORY[0x1865F36D0](0x697469746E656469, 0xEA00000000007365);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v5];
  }

  v6 = *(v1 + OBJC_IVAR____EXQueryResult_availablility);
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1865F36D0](0x6C62616C69617661, 0xED00007974696C69);
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }
}

id _EXQueryResultUpdate.__allocating_init(addedExtensions:removedUUIDs:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = a2;
  *&v5[OBJC_IVAR____EXQueryResult_identities] = a1;
  *&v5[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for _EXQueryResult();
  return objc_msgSendSuper2(&v7, sel_init);
}

id _EXQueryResultUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSUUID();
  v4 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = specialized _arrayForceCast<A, B>(_:)(v5);

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(v6);

  *(v2 + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs) = v7;
  v8 = specialized _EXQueryResult.init(coder:)();

  return v8;
}

unint64_t _EXQueryResultUpdate.description.getter()
{
  _StringGuts.grow(_:)(47);

  if (*(v0 + OBJC_IVAR____EXQueryResult_identities))
  {
    v1 = *(v0 + OBJC_IVAR____EXQueryResult_identities);
  }

  type metadata accessor for _EXExtensionIdentity();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);

  v2 = Set.description.getter();
  v4 = v3;

  MEMORY[0x1865F37A0](v2, v4);

  MEMORY[0x1865F37A0](0xD000000000000010, 0x80000001848C52E0);
  v5 = *(v0 + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs);
  type metadata accessor for UUID();
  _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v6 = Set.description.getter();
  MEMORY[0x1865F37A0](v6);

  return 0xD00000000000001BLL;
}

id _EXQueryResult.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t type metadata accessor for NSUUID()
{
  result = lazy cache variable for type metadata for NSUUID;
  if (!lazy cache variable for type metadata for NSUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUUID);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for _EXExtensionIdentity();
    v5 = _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
    result = MEMORY[0x1865F3AE0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1865F3F40](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1865F3AE0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

id specialized _EXQueryResult.init(coder:)()
{
  type metadata accessor for _EXExtensionIdentity();
  v1 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  if (v1)
  {
    v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(v1);
  }

  else
  {
    v2 = 0;
  }

  *&v0[OBJC_IVAR____EXQueryResult_identities] = v2;
  type metadata accessor for _EXExtensionAvailability();
  *&v0[OBJC_IVAR____EXQueryResult_availablility] = NSCoder.decodeObject<A>(of:forKey:)();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _EXQueryResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

size_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19ExtensionFoundation23LocalLSDatabaseObserverC0F0V_ShyAHGTt0g5(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(a1[2], 0, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0H0VGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0H0VGMR, type metadata accessor for LocalLSDatabaseObserver.Observer);
  v4 = *(type metadata accessor for LocalLSDatabaseObserver.Observer(0) - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
  outlined consume of [String : Any].Iterator._Variant();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

size_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_ShyAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(*(a1 + 16), 0, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v7, (v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v2, a1);
  outlined consume of [String : Any].Iterator._Variant();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t static _EXExtensionProcessHandle.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  static _EXExtensionProcessHandle.supportsSecureCoding = a1;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSAssertion, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

void @objc _EXExtensionProcessHandle.add(observer:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v8 = a1;
  specialized _EXExtensionProcessHandle.add(observer:)(a3, v8, v7, a4);
  swift_unknownObjectRelease();
}

xpc_connection_t _EXExtensionProcessHandle.makeLibXPCConnection()()
{
  v1 = *(v0 + OBJC_IVAR____EXExtensionProcessHandle_libXPCEndpoint);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
    if (v2)
    {
      return xpc_connection_create_from_endpoint(v2);
    }
  }

  v4 = objc_opt_self();
  v5 = MEMORY[0x1865F36D0](0xD000000000000022, 0x80000001848C4E00);
  [v4 _EX_errorWithCode_description_];

  return swift_willThrow();
}

NSXPCConnection_optional __swiftcall _EXExtensionProcessHandle.makeSessionXPCConnection()()
{
  v2 = type metadata accessor for UUID();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.general);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  p_cb = &OBJC_PROTOCOL___OS_os_transaction.cb;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    *v11 = 138543362;
    v12 = *(*&v7[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration] + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
    *(v11 + 4) = v12;
    *v1 = v12;
    v13 = v12;
    _os_log_impl(&dword_1847D1000, v8, v9, "Creating connection for extension: '%{public}@'", v11, 0xCu);
    outlined destroy of NSObject?(v1);
    MEMORY[0x1865F56C0](v1, -1, -1);
    MEMORY[0x1865F56C0](v11, -1, -1);
  }

  v14 = *&v7[OBJC_IVAR____EXExtensionProcessHandle_sessionEndpoint];
  if (v14 && (v15 = *(v14 + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint)) != 0)
  {
    v16 = v15;
  }

  else
  {
    v1 = *&v7[OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration];
    p_cb = OBJC_IVAR____EXLaunchConfiguration__extensionIdentity;
    v17 = [*(v1 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity) serviceName];
    isa = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
    if (isa)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      v19 = one-time initialization token for _defaultInstanceIdentifier;
      v20 = isa;
      if (v19 != -1)
      {
        swift_once();
      }

      if (static NSObject.== infix(_:_:)())
      {

        isa = 0;
      }

      else
      {
        v21 = v35;
        (*(v35 + 16))(v5, v20 + OBJC_IVAR____EXExtensionInstanceIdentifier_identifier, v2);

        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v21 + 8))(v5, v2);
      }
    }

    v22 = MEMORY[0x1865F36D0](0x6C616E7265746E49, 0xEF65636976726553);
    v16 = [objc_opt_self() endpointForServiceName:v17 oneshot:isa service:v22 instance:0];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  v23 = objc_opt_self();
  aBlock[4] = specialized thunk for @callee_guaranteed (@guaranteed BSNSXPCConnectionConfiguring) -> ();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_37;
  v7 = _Block_copy(aBlock);

  v24 = [v23 NSXPCConnectionWithEndpoint:v16 configurator:v7];
  _Block_release(v7);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_17:
  v26 = v7;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = *(p_cb + v1);
    *(v29 + 4) = v31;
    *v30 = v31;
    v32 = v31;
    _os_log_impl(&dword_1847D1000, v27, v28, "Failed to create connection endpoint for extension: '%@'", v29, 0xCu);
    outlined destroy of NSObject?(v30);
    MEMORY[0x1865F56C0](v30, -1, -1);
    MEMORY[0x1865F56C0](v29, -1, -1);
  }

  v24 = 0;
LABEL_20:
  v33 = v24;
  result.value.super.isa = v33;
  result.is_nil = v25;
  return result;
}

id _EXExtensionProcessHandle.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____EXExtensionProcessHandle_assertion] invalidate];
  [*&v0[OBJC_IVAR____EXExtensionProcessHandle_launchAssertion] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessHandle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in _EXExtensionProcessHandle._acquireAsertion()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _EXExtensionProcessHandle.cleanUpAfterInvalidation()();
  }
}

id _EXExtensionProcessHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation03AppH8IdentityV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD8IdentityVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19ExtensionFoundation23LocalLSDatabaseObserverC0L0V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void specialized _EXExtensionProcessHandle.add(observer:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(a2 + OBJC_IVAR____EXExtensionProcessHandle_observersLock);
  os_unfair_lock_lock(v7 + 4);
  [*(a2 + OBJC_IVAR____EXExtensionProcessHandle_observers) *a4];

  os_unfair_lock_unlock(v7 + 4);
}

id EXConnectionEndpoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EXConnectionEndpoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _ServiceExtensionIdentity.extensionPointIdentifier.getter()
{
  v1 = [*v0 identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _ServiceExtensionIdentity.groupIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

__CFString *_ServiceExtensionIdentity.init(identifier:groupIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __CFString *a3@<X2>, __CFString *a4@<X3>, __CFString **a5@<X8>)
{
  result = specialized _AppExtensionPoint.init(identifier:)(a1, a2);
  if (v5)
  {
  }

  *a5 = result;
  a5[1] = a3;
  a5[2] = a4;
  return result;
}

uint64_t static _ServiceExtensionIdentity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _ServiceExtensionIdentity.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int _ServiceExtensionIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _ServiceExtensionIdentity()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _ServiceExtensionIdentity()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _ServiceExtensionIdentity()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _ServiceExtensionIdentity(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
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

unint64_t lazy protocol witness table accessor for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity()
{
  result = lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity;
  if (!lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ServiceExtensionIdentity and conformance _ServiceExtensionIdentity);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v24;
  v4 = -1 << *(a1 + 32);
  v23 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v23 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v13 = *(v24 + 16);
    v12 = *(v24 + 24);
    v22 = *(*(a1 + 48) + 16 * v6);
    result = swift_unknownObjectRetain();
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    *(v24 + 16) = v13 + 1;
    *(v24 + 16 * v13 + 32) = v22;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v14 = *(v23 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v21;
      v18 = (a1 + 64 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v11, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXActiveQuery.ActiveQueryObserver()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  swift_getObjectType();
  v3 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  v10 = v1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _EXActiveQuery.ActiveQueryObserver()
{
  v2 = *v0;
  v1 = v0[1];
  swift_getObjectType();
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v10 - v7;
  v10[1] = v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXActiveQuery.ActiveQueryObserver()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  swift_getObjectType();
  v3 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  v10 = v1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return Hasher._finalize()();
}

unint64_t _EXActiveQuery.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(37);

  v2 = [*(v0 + 16) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1865F37A0](v3, v5);

  MEMORY[0x1865F37A0](0x6576726573626F20, 0xEC000000203A7372);
  swift_beginAccess();
  v6 = *(v1 + 32);

  C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v7);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation22_EXActiveQueryObserver_pMd, &_s19ExtensionFoundation22_EXActiveQueryObserver_pMR);
  v10 = MEMORY[0x1865F38E0](C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n, v9);
  v12 = v11;

  MEMORY[0x1865F37A0](v10, v12);

  return 0xD000000000000015;
}

uint64_t _EXActiveQuery.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _EXActiveQuery(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSObject();
  v4 = *(v2 + 16);
  v5 = *(v3 + 16);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _EXActiveQuery()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXActiveQuery()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 16);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2)
{
  v33 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v32 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 56))(v14, v15);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v16 = *(v5 + 8);
  v16(v11, v4);
  v17 = Hasher._finalize()();
  v35 = v12 + 56;
  v36 = v12;
  v18 = -1 << *(v12 + 32);
  v19 = v17 & ~v18;
  if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v34 = ~v18;
    while (1)
    {
      outlined init with copy of AppExtensionIdentity(*(v36 + 48) + 40 * v19, &v38);
      v20 = v39;
      v21 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      (*(v21 + 56))(v20, v21);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v22);
      (*(v23 + 56))(v22, v23);
      v24 = static UUID.== infix(_:_:)();
      v16(v9, v4);
      v16(v11, v4);
      outlined destroy of AppExtensionIdentity(&v38);
      if (v24)
      {
        break;
      }

      v19 = (v19 + 1) & v34;
      if (((*(v35 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AppExtensionIdentity(a2);
    outlined init with copy of AppExtensionIdentity(*(v36 + 48) + 40 * v19, v33);
    return 0;
  }

  else
  {
LABEL_5:
    v25 = v32;
    v26 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AppExtensionIdentity(a2, &v38);
    v37 = *v25;
    specialized _NativeSet.insertNew(_:at:isUnique:)(&v38, v19, isUniquelyReferenced_nonNull_native);
    *v25 = v37;
    v28 = *(a2 + 16);
    v29 = v33;
    *v33 = *a2;
    v29[1] = v28;
    *(v29 + 4) = *(a2 + 32);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, void *a5)
{
  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v11 + 48) + 32 * v15);
      v18 = *v17 == a2 && v17[1] == a3;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v23 = (*(v11 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    v27 = v26;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v5;

    v21 = a5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v5 = v28;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v5 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v6 + 72);
    while (1)
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v10 + 48) + v16 * v14, v9);
      v17 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v9);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of LocalLSDatabaseObserver.Observer(a2);
    outlined init with copy of LocalLSDatabaseObserver.Observer(*(v10 + 48) + v16 * v14, v22);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of LocalLSDatabaseObserver.Observer(a2, v9);
    v23 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    v20 = v22;
    *v3 = v23;
    outlined init with take of LocalLSDatabaseObserver.Observer(a2, v20);
    return 1;
  }
}

{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v17);
      v11 = MEMORY[0x1865F3E60](v17, a2);
      outlined destroy of AnyHashable(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AnyHashable(a2, v17);
    v16 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v41 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v42 = (v4 + 8);
    v43 = v7;
    v17 = result + 56;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v25 = *(v7 + 48) + 40 * (v22 | (v11 << 6));
      v26 = *(v25 + 32);
      v27 = *(v25 + 16);
      v46 = *v25;
      v47 = v27;
      v48 = v26;
      v28 = *(v10 + 40);
      Hasher.init(_seed:)();
      v29 = *(&v47 + 1);
      v30 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v31 = v44;
      (*(v30 + 56))(v29, v30);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v32 = v45;
      dispatch thunk of Hashable.hash(into:)();
      (*v42)(v31, v32);
      result = Hasher._finalize()();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v7 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v7 = v43;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 40 * v18;
      v20 = v46;
      v21 = v47;
      *(v19 + 32) = v48;
      *v19 = v20;
      *(v19 + 16) = v21;
      ++*(v10 + 16);
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    v40 = 1 << *(v7 + 32);
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    v2 = v41;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *v19;
      v32 = *(v19 + 8);
      v21 = *(v19 + 24);
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v20;
      *(v15 + 8) = v32;
      *(v15 + 24) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v35 + 72);
      outlined init with take of LocalLSDatabaseObserver.Observer(*(v8 + 48) + v23 * (v20 | (v12 << 6)), v7);
      v24 = *(v11 + 40);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of LocalLSDatabaseObserver.Observer(v7, *(v11 + 48) + v19 * v23);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v8 + 32);
    if (v32 >= 64)
    {
      bzero((v8 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v32;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v2;
    v7 = 0;
    v8 = *(v3 + 56);
    v36 = (v3 + 56);
    v37 = v3;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v13 = v5 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v40 = *(*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      swift_getObjectType();
      v20 = *(*(&v40 + 1) + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v39 = &v34;
      v22 = *(AssociatedTypeWitness - 8);
      v23 = *(v22 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v25 = &v34 - v24;
      v41 = v40;
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      (*(v22 + 8))(v25, AssociatedTypeWitness);
      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v3 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v3 = v37;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 16 * v14) = v40;
      ++*(v6 + 16);
      v11 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v36, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v33;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(__int128 *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37 - v14;
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v38 = v3;
  if (v17 > v16 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v16 + 1);
  }

  else
  {
    if (v17 > v16)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR, outlined init with copy of AppExtensionIdentity);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v16 + 1);
  }

  v18 = *v3;
  v19 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 56))(v20, v21);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v22 = *(v8 + 8);
  v41 = v8 + 8;
  v22(v15, v7);
  result = Hasher._finalize()();
  v39 = v18 + 56;
  v40 = v18;
  v23 = -1 << *(v18 + 32);
  a2 = result & ~v23;
  if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v24 = ~v23;
    do
    {
      outlined init with copy of AppExtensionIdentity(*(v40 + 48) + 40 * a2, v42);
      v25 = v43;
      v26 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(v26 + 56))(v25, v26);
      v27 = *(a1 + 3);
      v28 = *(a1 + 4);
      __swift_project_boxed_opaque_existential_1(a1, v27);
      (*(v28 + 56))(v27, v28);
      v29 = static UUID.== infix(_:_:)();
      v22(v12, v7);
      v22(v15, v7);
      result = outlined destroy of AppExtensionIdentity(v42);
      if (v29)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v24;
    }

    while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v30 = *v38;
  *(v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 40 * a2;
  v32 = *a1;
  v33 = a1[1];
  *(v31 + 32) = *(a1 + 4);
  *v31 = v32;
  *(v31 + 16) = v33;
  v34 = *(v30 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(v30 + 16) = v36;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v14 + 48) + 32 * a5);
      if (*v18 == v11 && v18[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v20 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = (*(v20 + 48) + 32 * a5);
  *v21 = v11;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      outlined init with copy of AnyHashable(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1865F3E60](v19, v6);
      result = outlined destroy of AnyHashable(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of LocalLSDatabaseObserver.Observer(*(v7 + 48) + v22, v6);
        result = outlined init with take of LocalLSDatabaseObserver.Observer(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = 40 * (v18 | (v12 << 6));
        result = a3(*(v6 + 48) + v21, v25);
        v22 = *(v8 + 48) + v21;
        v23 = v25[0];
        v24 = v25[1];
        *(v22 + 32) = v26;
        *v22 = v23;
        *(v22 + 16) = v24;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 32 * v11);
      if (*v13 == a1 && v13[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v20 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v17 = v20;
    }

    v18 = *(v17 + 48) + 32 * v11;
    v19 = *(v18 + 24);
    *a3 = *v18;
    *(a3 + 8) = *(v18 + 8);
    *(a3 + 24) = v19;
    result = specialized _NativeSet._delete(at:)(v11);
    *v3 = v20;
  }

  else
  {
LABEL_9:
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(*v1 + 40);
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v22 = v1;
    v23 = v3;
    v24 = a1;
    v13 = ~v11;
    v14 = *(v4 + 72);
    while (1)
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v8 + 48) + v14 * v12, v7);
      v15 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v7);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a1 = v24;
        goto LABEL_10;
      }
    }

    v17 = v22;
    v18 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v17;
    v25 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v20 = v25;
    }

    a1 = v24;
    outlined init with take of LocalLSDatabaseObserver.Observer(*(v20 + 48) + v14 * v12, v24);
    specialized _NativeSet._delete(at:)(v12);
    v16 = 0;
    *v17 = v25;
LABEL_10:
    v3 = v23;
  }

  else
  {
    v16 = 1;
  }

  return (*(v4 + 56))(a1, v16, 1, v3);
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    specialized _NativeSet._delete(at:)(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  swift_getObjectType();
  v8 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v25 - v12;
  v25[1] = a1;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of Hashable.hash(into:)();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v6 + 32);
  v16 = v14 & ~v15;
  if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return 0;
  }

  v17 = ~v15;
  lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
  while (1)
  {
    v26 = *(*(v6 + 48) + 16 * v16);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v6 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v3;
  *&v26 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v21 = v26;
  }

  v22 = (*(v21 + 48) + 16 * v16);
  v23 = *v22;
  v24 = v22[1];
  specialized _NativeSet._delete(at:)(v16);
  result = v23;
  *v3 = v26;
  return result;
}

unint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v17);
      v11 = MEMORY[0x1865F3E60](v17, a1);
      result = outlined destroy of AnyHashable(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    v17[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR, outlined init with copy of AnyHashable);
      v14 = v17[0];
    }

    v15 = *(v14 + 48) + 40 * v9;
    v16 = *(v15 + 16);
    *a2 = *v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = *(v15 + 32);
    result = specialized _NativeSet._delete(at:)(v9);
    *v3 = v17[0];
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(void))
{
  v11 = v6;
  v12 = *v6;

  v13 = __CocoaSet.count.getter();
  v14 = swift_unknownObjectRetain();
  v15 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(v14, v13, a3, a4, a5);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = NSObject._rawHashValue(seed:)(v16);
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    a6(0);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
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

  v23 = *(*(v15 + 48) + 8 * v19);
  specialized _NativeSet._delete(at:)(v19);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(unint64_t a1)
{
  v25 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v25);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      while (1)
      {
        v17 = v16 * v11;
        outlined init with copy of LocalLSDatabaseObserver.Observer(*(v8 + 48) + v16 * v11, v7);
        v18 = *(v8 + 40);
        Hasher.init(_seed:)();
        UUID.hash(into:)();
        v19 = Hasher._finalize()();
        outlined destroy of LocalLSDatabaseObserver.Observer(v7);
        v20 = v19 & v12;
        if (a1 >= v15)
        {
          break;
        }

        if (v20 < v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v21 = v16 * a1;
        if ((v16 * a1) < v17 || *(v8 + 48) + v16 * a1 >= *(v8 + 48) + v17 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v11;
          if (v21 == v17)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v11;
LABEL_6:
        v11 = (v11 + 1) & v12;
        if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v20 < v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v20)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v8 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v24;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n052_s19ExtensionFoundation14_EXActiveQueryC6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}