void sub_183F92768(uint64_t a1, uint64_t *a2, char **a3)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 <= 1)
  {
    if (!v7)
    {
      v61 = *v8;
      v62 = *(v8 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1843982F0;
      *(inited + 32) = v62;
      *(inited + 40) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
      v64 = swift_allocObject();
      v65 = _swift_stdlib_malloc_size(v64);
      v66 = v65 - 40;
      if (v65 < 40)
      {
        v66 = v65 - 33;
      }

      v64[2] = v66 >> 3;
      v64[3] = 0;
      v64[4] = 0;
      sub_183FBA808(v64 + 2, v64 + 5, 2uLL, inited);
      swift_setDeallocating();
      *a2 = v64;
      *(a2 + 8) = 0;

      return;
    }

    if (v7 != 1)
    {
      return;
    }

    v12 = *a2;
    if (!*a2)
    {
      goto LABEL_88;
    }

    v13 = v12[3];
    v14 = v13 - 2;
    if (__OFSUB__(v13, 2))
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v14 < 0)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v14 >= v13)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v13 - 1 >= v13)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v16 = *v8;
    v15 = *(v8 + 8);
    v17 = v12 + 5;
    v18 = v12[4];
    v19 = v12[2];
    if (v18 + v14 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = *&v17[v18 + v14 - v20];
    v22 = v18 + v14 + 1;
    if (v22 < v19)
    {
      v19 = 0;
    }

    v23 = *&v17[v22 - v19];
    v24 = ((*(a2 + 8) ^ v14) & 1) == 0;
    if ((*(a2 + 8) ^ v14))
    {
      v25 = *&v17[v18 + v14 - v20];
    }

    else
    {
      v25 = *&v17[v22 - v19];
    }

    goto LABEL_83;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        return;
      }

      v9 = *a2;
      if (*a2)
      {
        v8 = v9[3];
        v10 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            if (v10 < 4)
            {
              v11 = 1;
LABEL_89:
              sub_183F92DAC();
              v59 = swift_allocError();
              *v60 = v11;
              swift_willThrow();

LABEL_90:
              *a2 = 0;
              *(a2 + 8) = 0;

              return;
            }

            if (v8 >= 1)
            {
              if (v8 != 1)
              {
                v67 = v9 + 5;
                v68 = v9[4];
                v69 = v9[2];
                if (v68 >= v69)
                {
                  v70 = v69;
                }

                else
                {
                  v70 = 0;
                }

                v71 = *&v67[v68 - v70];
                if (v68 + 1 >= v69)
                {
                  v72 = v69;
                }

                else
                {
                  v72 = 0;
                }

                v73 = v68 + 1 - v72;
                if (a2[1])
                {
                  v74 = v71;
                }

                else
                {
                  v74 = *&v67[v73];
                }

                if (a2[1])
                {
                  v71 = *&v67[v73];
                }

                v75 = v8 + v68;
                if (v75 - 2 >= v69)
                {
                  v76 = v69;
                }

                else
                {
                  v76 = 0;
                }

                v77 = v75 - 2 - v76;
                v78 = *&v67[v77];
                v79 = v75 - 1;
                if (v79 < v69)
                {
                  v69 = 0;
                }

                v80 = v79 - v69;
                v81 = v8 ^ *(a2 + 8);
                if (v81)
                {
                  v82 = *&v67[v77];
                }

                else
                {
                  v82 = *&v67[v80];
                }

                if (v81)
                {
                  v78 = *&v67[v80];
                }

                if (v82 == v74)
                {
                  v83 = a3;
                  if (v78 != v71)
                  {
                    sub_183F911D4(v71);
                  }

LABEL_127:
                  if (*a2)
                  {
                    sub_183F91488();
                    v3 = *a2;
                    if (*a2)
                    {
                      v5 = *(a2 + 8);
                      v84 = v83;
                      v4 = *v83;

                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v8 = v84;
                      *v84 = v4;
                      if (isUniquelyReferenced_nonNull_native)
                      {
LABEL_130:
                        v86 = *(v4 + 2);
                        v87 = *(v4 + 3);
                        v88 = v86 + 1;
                        if (v86 >= v87 >> 1)
                        {
                          v96 = v86 + 1;
                          v91 = v8;
                          v92 = v4;
                          v93 = *(v4 + 2);
                          v94 = sub_183F81D24((v87 > 1), v86 + 1, 1, v92);
                          v86 = v93;
                          v88 = v96;
                          v4 = v94;
                          *v91 = v94;
                        }

                        *(v4 + 2) = v88;
                        v89 = &v4[16 * v86];
                        *(v89 + 4) = v3;
                        v89[40] = v5 & 1;
                        goto LABEL_90;
                      }

LABEL_150:
                      v95 = v8;
                      v90 = sub_183F81D24(0, *(v4 + 2) + 1, 1, v4);
                      v8 = v95;
                      v4 = v90;
                      *v95 = v90;
                      goto LABEL_130;
                    }
                  }

                  else
                  {
                    __break(1u);
                  }

                  __break(1u);
                  return;
                }

                if (v78 == v71)
                {
                  v83 = a3;
                  sub_183F912E8(v74);
                  goto LABEL_127;
                }

LABEL_133:
                v11 = 2;
                goto LABEL_89;
              }

LABEL_149:
              __break(1u);
              goto LABEL_150;
            }

LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          goto LABEL_140;
        }

        goto LABEL_136;
      }

LABEL_88:
      v11 = 3;
      goto LABEL_89;
    }

    v41 = *a2;
    if (!*a2)
    {
      goto LABEL_88;
    }

    v42 = v41[3];
    v43 = v42 - 2;
    if (!__OFSUB__(v42, 2))
    {
      if (v43 < 0)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      if (v43 >= v42)
      {
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      v44 = v41[4];
      v45 = v41[2];
      if (v44 + v43 >= v45)
      {
        v46 = v41[2];
      }

      else
      {
        v46 = 0;
      }

      if (v42 - 1 >= v42)
      {
        goto LABEL_146;
      }

      v47 = v44 + v43 - v46;
      v48 = v41 + 5;
      v21 = *&v48[v47];
      v49 = v44 + v42 - 1;
      if (v49 < v45)
      {
        v45 = 0;
      }

      v50 = v49 - v45;
      v23 = *&v48[v50];
      v36 = v43 ^ *(a2 + 8);
      if (v36)
      {
        v25 = *&v48[v47];
      }

      else
      {
        v25 = *&v48[v50];
      }

      v51 = *(v8 + 16);
      v16 = *(v8 + 32);
      v15 = *(v8 + 40);
      if (v25 != *v8 || *v8 != v51 || v51 != v16)
      {
        v54 = *(v8 + 24);
        v55 = *(v8 + 8);
        v56 = (v36 & 1) != 0 ? *&v48[v50] : *&v48[v47];
        v57 = v56 == v55 && v55 == v54;
        if (!v57 || v54 != v15)
        {
          return;
        }
      }

      goto LABEL_82;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v26 = *a2;
  if (!*a2)
  {
    goto LABEL_88;
  }

  v27 = v26[3];
  v28 = v27 - 2;
  if (__OFSUB__(v27, 2))
  {
    __break(1u);
    goto LABEL_135;
  }

  if (v28 < 0)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v28 >= v27)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v29 = v26[4];
  v30 = v26[2];
  if (v29 + v28 >= v30)
  {
    v31 = v26[2];
  }

  else
  {
    v31 = 0;
  }

  if (v27 - 1 >= v27)
  {
    goto LABEL_145;
  }

  v32 = v29 + v28 - v31;
  v33 = v26 + 5;
  v21 = *&v33[v32];
  v34 = v29 + v27 - 1;
  if (v34 < v30)
  {
    v30 = 0;
  }

  v35 = v34 - v30;
  v23 = *&v33[v35];
  v36 = v28 ^ *(a2 + 8);
  if (v36)
  {
    v25 = *&v33[v32];
  }

  else
  {
    v25 = *&v33[v35];
  }

  v16 = *(v8 + 16);
  v15 = *(v8 + 24);
  v37 = v25 == *v8 && *v8 == v16;
  if (v37 || ((v38 = *(v8 + 8), (v36 & 1) == 0) ? (v39 = *&v33[v32]) : (v39 = *&v33[v35]), v39 == v38 ? (v40 = v38 == v15) : (v40 = 0), v40))
  {
LABEL_82:
    v24 = (v36 & 1) == 0;
LABEL_83:
    if (!v24)
    {
      v21 = v23;
    }

    if (v25 != v16)
    {
      if (v21 == v15)
      {
        sub_183F912E8(v16);
        return;
      }

      goto LABEL_133;
    }

    if (v21 != v15)
    {
      sub_183F911D4(v15);
    }
  }
}

void *sub_183F92D0C(void *result, uint64_t a2, double a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_183F92DAC()
{
  result = qword_1EA8545D8;
  if (!qword_1EA8545D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Orthogon.PathError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Orthogon.PathError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Orthogon.Vertical(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Orthogon.Vertical(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_183F92FCC()
{
  result = qword_1EA8545E0;
  if (!qword_1EA8545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545E0);
  }

  return result;
}

unint64_t sub_183F93024()
{
  result = qword_1EA8545E8;
  if (!qword_1EA8545E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545E8);
  }

  return result;
}

unint64_t sub_183F9308C()
{
  result = qword_1EA8545F0;
  if (!qword_1EA8545F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545F0);
  }

  return result;
}

CGPoint __swiftcall CGPoint.init(x:y:)(Swift::Int x, Swift::Int y)
{
  v2 = x;
  v3 = y;
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint_optional __swiftcall CGPoint.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v7 = *MEMORY[0x1E69E9840];
  point.x = 0.0;
  point.y = 0.0;
  v2 = CGPointMakeWithDictionaryRepresentation(dictionaryRepresentation, &point);

  if (v2)
  {
    x_low = LOBYTE(point.x);
  }

  else
  {
    x_low = 0;
  }

  result.value.y = v4;
  result.value.x = v3;
  result.is_nil = x_low;
  return result;
}

uint64_t CGPoint.customMirror.getter(double a1, double a2)
{
  v4 = sub_184390378();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v19 - v11;
  *v19 = a1;
  *&v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1843982F0;
  *(v13 + 32) = 120;
  *(v13 + 40) = 0xE100000000000000;
  v14 = MEMORY[0x1E69E7DE0];
  *(v13 + 48) = a1;
  *(v13 + 72) = v14;
  *(v13 + 80) = 121;
  *(v13 + 88) = 0xE100000000000000;
  *(v13 + 120) = v14;
  *(v13 + 96) = a2;
  v15 = *MEMORY[0x1E69E75B8];
  v16 = sub_184390368();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v12, v15, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69E75D8], v4);
  type metadata accessor for CGPoint(0);
  return sub_184390398();
}

void CGPoint.customPlaygroundQuickLook.getter(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 32) = 11;
}

__n128 sub_183F93404@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[2].n128_u8[0] = 11;
  return result;
}

uint64_t CGPoint.debugDescription.getter()
{
  v0 = sub_18438FDD8();
  MEMORY[0x1865EC630](v0);

  MEMORY[0x1865EC630](8236, 0xE200000000000000);
  v1 = sub_18438FDD8();
  MEMORY[0x1865EC630](v1);

  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_183F934AC(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1865ECC40](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1865ECC40](*&v3);
}

uint64_t sub_183F934FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_184390358();
  sub_183F934AC(v1, v2);
  return sub_184390338();
}

uint64_t sub_183F93554()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1843902E8();
  sub_183F934AC(v1, v2);
  return sub_184390348();
}

BOOL CGPoint.isNearlyEqual(to:tolerance:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a4 == a1)
  {
    if (a5 == a2)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a4, a1);
    if (a5 == a2)
    {
      if (a4 - a1 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a5, a2);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a4);
  v9 = fabs(a5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a1);
  v11 = fabs(a2);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 > v10)
  {
    v10 = v8;
  }

  if (v10 <= 1.0)
  {
    v10 = 1.0;
  }

  return v6 <= v10 * a3;
}

Swift::Bool __swiftcall CGPointNearlyEqualToPoint(_:_:)(CGPoint a1, CGPoint a2)
{
  if (qword_1EA853EA8 != -1)
  {
    y = a2.y;
    x = a2.x;
    v11 = a1.y;
    v12 = a1.x;
    swift_once();
    a1.x = v12;
    a1.y = v11;
    a2.x = x;
    a2.y = y;
  }

  if (a1.x == a2.x)
  {
    if (a1.y == a2.y)
    {
      return 1;
    }

    v3 = 0.0;
  }

  else
  {
    v3 = vabdd_f64(a1.x, a2.x);
    if (a1.y == a2.y)
    {
      if (a1.x - a2.x == 0.0)
      {
        v3 = 0.0;
      }

      goto LABEL_13;
    }
  }

  v4 = vabdd_f64(a1.y, a2.y);
  if (v3 <= v4)
  {
    v3 = v4;
  }

LABEL_13:
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = fabs(a1.x);
  v6 = fabs(a1.y);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  v7 = fabs(a2.x);
  v8 = fabs(a2.y);
  if (v7 <= v8)
  {
    v7 = v8;
  }

  if (v5 <= v7)
  {
    v5 = v7;
  }

  if (v5 <= 1.0)
  {
    v5 = 1.0;
  }

  return v3 <= v5 * *&qword_1EA853EB0;
}

BOOL CGPointNearlyEqualToPointWithTolerance(_:_:_:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      return 1;
    }

    v6 = 0.0;
  }

  else
  {
    v6 = vabdd_f64(a1, a3);
    if (a2 == a4)
    {
      if (a1 - a3 == 0.0)
      {
        v6 = 0.0;
      }

      goto LABEL_11;
    }
  }

  v7 = vabdd_f64(a2, a4);
  if (v6 <= v7)
  {
    v6 = v7;
  }

LABEL_11:
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = fabs(a1);
  v9 = fabs(a2);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = fabs(a3);
  v11 = fabs(a4);
  if (v10 <= v11)
  {
    v10 = v11;
  }

  if (v8 <= v10)
  {
    v8 = v10;
  }

  if (v8 <= 1.0)
  {
    v8 = 1.0;
  }

  return v6 <= v8 * a5;
}

unint64_t sub_183F9387C()
{
  result = qword_1EA8545F8;
  if (!qword_1EA8545F8)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8545F8);
  }

  return result;
}

unint64_t sub_183F938D4(uint64_t a1)
{
  result = sub_183F9387C();
  *(a1 + 8) = result;
  return result;
}

uint64_t Region.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = (*v0 >> 52) & 0x7FFLL;
  v7 = *v0 & 0xFFFFFFFFFFFFFLL;
  if (v6 | v7)
  {
    v8 = *v0;
  }

  else
  {
    v8 = 0.0;
  }

  MEMORY[0x1865ECC40](*&v8);
  if (v1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v1;
  }

  MEMORY[0x1865ECC40](*&v9);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  MEMORY[0x1865ECC40](*&v10);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x1865ECC40](*&v11);
  v12 = *(v4 + 16);
  if (v6 == 2047 && v7 != 0)
  {
    MEMORY[0x1865ECC10](v12);
LABEL_21:
    v14 = *(v5 + 16);
    return MEMORY[0x1865ECC10](v14);
  }

  v14 = 2;
  if (!v12)
  {
    v12 = 2;
  }

  MEMORY[0x1865ECC10](v12);
  if (*(v4 + 16))
  {
    goto LABEL_21;
  }

  return MEMORY[0x1865ECC10](v14);
}

uint64_t Region.hashValue.getter()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93A3C()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93A9C()
{
  sub_1843902E8();
  Region.hash(into:)();
  return sub_184390348();
}

uint64_t sub_183F93AF4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_183F93B50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_183F93BB0()
{
  result = qword_1EA854600;
  if (!qword_1EA854600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854600);
  }

  return result;
}

uint64_t sub_183F93C10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if ((a3 & 1) == 0)
  {
    v8 = 0;
    v6 = 0;
    goto LABEL_22;
  }

  if (a2 < 2)
  {
    if (a2 != 1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_22;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0;
    for (i = a2; i > 1; i -= i >> 1)
    {
      if (*(result + 8 * (v6 + (i >> 1))) <= a5)
      {
        v6 += i >> 1;
      }
    }

    if (v6 >= a2)
    {
      goto LABEL_14;
    }
  }

  if (*(result + 8 * v6) <= a5)
  {
    ++v6;
  }

LABEL_14:
  v9 = a2 - v6;
  v8 = v6;
  if (a2 - v6 >= 2)
  {
    do
    {
      v10 = v9 >> 1;
      v9 -= v9 >> 1;
      v11 = v8 + v10;
      if (*(result + 8 * v11) < a6)
      {
        v8 = v11;
      }
    }

    while (v9 > 1);
  }

  if (v8 < a2 && *(result + 8 * v8) < a6)
  {
    ++v8;
  }

LABEL_22:
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = v6;
  *(a4 + 40) = v8;
  return result;
}

uint64_t Region.isSuperset(of:)(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 32);
  v5 = *v1 & 0x7FF0000000000000;
  v6 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (v6)
  {
    v7 = v5 == 0x7FF0000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = !v7 && *(v4 + 16) == 0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v15 = *(a1 + 8);
  v14 = *(a1 + 16);
  v16 = *(a1 + 24);
  v18 = *(v1 + 8);
  v17 = *(v1 + 16);
  v19 = *a1;
  v20 = *&v2 & 0x7FF0000000000000;
  v21 = *(v1 + 24);
  if ((*&v2 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v24 = *&v19 & 0xFFFFFFFFFFFFFLL;
    if (v5 == 0x7FF0000000000000 && v6)
    {
      if (!v24)
      {
        return 0;
      }
    }

    else if (!v24)
    {
      v23 = v16 < v17 || v21 < v14;
      goto LABEL_22;
    }

    return 1;
  }

  v22 = v16 < v17 || v7;
  if (v22)
  {
    return 0;
  }

  v23 = v21 < v14;
LABEL_22:
  if (v23 || v18 < v2 || v15 < v3)
  {
    return 0;
  }

  if (v8)
  {
    v28 = v3 <= v2;
    if (v15 > v18)
    {
      v28 = 0;
    }

    if (v17 > v14)
    {
      v28 = 0;
    }

    result = v16 <= v21 && v28;
    if (v20 == 0x7FF0000000000000 && (result & 1) == 0)
    {
      return (*&v19 & 0xFFFFFFFFFFFFFLL) != 0;
    }
  }

  else
  {
    v41 = *v1;
    v42 = v18;
    v43 = v17;
    v44 = v21;
    v45 = v4;
    v46 = v13;
    v47 = v12;
    v29 = sub_183FA42A4(0, v14, v16);
    if (*(v4 + 16))
    {
      v31 = 1;
    }

    else
    {
      v31 = v7;
    }

    if (v31)
    {
      v32 = (*&v19 & 0xFFFFFFFFFFFFFLL) != 0 && v20 == 0x7FF0000000000000;
      v33 = *(v9 + 16);
      if (v32 || v33)
      {
        sub_183F9AD98(v4 + 32, v13 + 32, v12 + 32, v9 + 32, &v41, v33, 0, v10 + 32, *(v10 + 16), v11 + 32, *(v11 + 16), v29, v30);
        return LOBYTE(v41);
      }

      else
      {
        v41 = v2;
        v42 = v15;
        v43 = v14;
        v44 = v16;
        v38[0] = 0x200000002;
        sub_183F9AD98(v4 + 32, v13 + 32, v12 + 32, &v43, v40, 2, 0, v38, 2, &v41, 2, v29, v30);
        return v40[0];
      }
    }

    else
    {
      v34 = (*&v19 & 0xFFFFFFFFFFFFFLL) != 0 && v20 == 0x7FF0000000000000;
      v41 = v3;
      v42 = v18;
      v43 = v17;
      v44 = v21;
      *v40 = 0x200000002;
      v35 = *(v9 + 16);
      if (v34 || v35)
      {
        sub_183F9AD98(&v43, v40, &v41, v9 + 32, v38, v35, 0, v10 + 32, *(v10 + 16), v11 + 32, *(v11 + 16), v29, v30);
        return LOBYTE(v38[0]);
      }

      else
      {
        *v38 = v2;
        *&v38[1] = v15;
        *v39 = v14;
        *&v39[1] = v16;
        v37 = 0x200000002;
        sub_183F9AD98(&v43, v40, &v41, v39, &v36, 2, 0, &v37, 2, v38, 2, v29, v30);
        return v36;
      }
    }
  }

  return result;
}

uint64_t sub_183F94060(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    if (a1)
    {
      if (a2 >= 2)
      {
        v3 = 0;
        for (i = a2; i > 1; i -= i >> 1)
        {
          if (*(a1 + 8 * (v3 + (i >> 1))) < *&a3)
          {
            v3 += i >> 1;
          }
        }

        if (v3 >= a2)
        {
          return v3;
        }

        goto LABEL_27;
      }

      v3 = 0;
      if (a2 == 1)
      {
LABEL_27:
        if (*(a1 + 8 * v3) >= *&a3)
        {
          return v3;
        }

        else
        {
          return v3 + 1;
        }
      }

      return v3;
    }

    return 0;
  }

  if (a3 >= 0.0)
  {
    if (a2 < 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v3 = 0;
    }

    else
    {
      v3 = 0;
      for (j = a2; j > 1; j -= j >> 1)
      {
        if (*(a1 + 8 * (v3 + (j >> 1))) < 0.0)
        {
          v3 += j >> 1;
        }
      }

      if (v3 >= a2)
      {
        return v3;
      }
    }

    if (*(a1 + 8 * v3) < 0.0)
    {
      return v3 + 1;
    }

    return v3;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2 < 2)
  {
    v3 = 0;
    if (a2 != 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    for (k = a2; k > 1; k -= k >> 1)
    {
      if (*(a1 + 8 * (v3 + (k >> 1))) > *&a3)
      {
        v3 += k >> 1;
      }
    }

    if (v3 >= a2)
    {
      return v3;
    }
  }

  if (*(a1 + 8 * v3) <= *&a3)
  {
    return v3;
  }

  else
  {
    return v3 + 1;
  }
}

uint64_t sub_183F94198(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 > 0.0)
  {
    if (a1)
    {
      if (a2 >= 2)
      {
        v3 = 0;
        for (i = a2; i > 1; i -= i >> 1)
        {
          if (*(a1 + 8 * (v3 + (i >> 1))) <= *&a3)
          {
            v3 += i >> 1;
          }
        }

        if (v3 >= a2)
        {
          return v3;
        }

        goto LABEL_27;
      }

      v3 = 0;
      if (a2 == 1)
      {
LABEL_27:
        if (*(a1 + 8 * v3) > *&a3)
        {
          return v3;
        }

        else
        {
          return v3 + 1;
        }
      }

      return v3;
    }

    return 0;
  }

  if (a3 >= 0.0)
  {
    if (a2 < 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      v3 = 0;
    }

    else
    {
      v3 = 0;
      for (j = a2; j > 1; j -= j >> 1)
      {
        if (*(a1 + 8 * (v3 + (j >> 1))) <= 0.0)
        {
          v3 += j >> 1;
        }
      }

      if (v3 >= a2)
      {
        return v3;
      }
    }

    if (*(a1 + 8 * v3) <= 0.0)
    {
      return v3 + 1;
    }

    return v3;
  }

  if (!a1)
  {
    return 0;
  }

  if (a2 < 2)
  {
    v3 = 0;
    if (a2 != 1)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    for (k = a2; k > 1; k -= k >> 1)
    {
      if (*(a1 + 8 * (v3 + (k >> 1))) >= *&a3)
      {
        v3 += k >> 1;
      }
    }

    if (v3 >= a2)
    {
      return v3;
    }
  }

  if (*(a1 + 8 * v3) < *&a3)
  {
    return v3;
  }

  else
  {
    return v3 + 1;
  }
}

uint64_t sub_183F942D0()
{
  v1 = v0[1];
  if (!v1)
  {
    result = 0;
    goto LABEL_7;
  }

  v2 = v0[2];
  v3 = __OFADD__(v1 - 1, v2);
  v4 = v1 - 1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v4))
  {
    v5 = v0[3];
    v7 = *(*v0 + 8 * (v1 - 1));
    v8 = v4;
    v5(&v9, &v7);
    result = v9;
LABEL_7:
    LOBYTE(v9) = v1 == 0;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_183F94370@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v26 - v13;
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  v35 = v34;
  v28 = v34;
  v15 = MEMORY[0x1E69E7CC0];
  *&v36 = MEMORY[0x1E69E7CC0];
  *(&v36 + 1) = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v16 = *(v7 + 16);
  v27 = a1;
  v16(v9, a1, a2);
  sub_18438FD38();
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  if ((v31 & 1) == 0)
  {
    v20 = v29;
    v21 = v30;
    do
    {
      v22 = v28;
      v23 = v28;
      if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v20, 1), v20)).u32[0])
      {
        v24 = vdup_lane_s32(vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v21, 1), v21)), 0);
        v25.i64[0] = v24.i32[0];
        v25.i64[1] = v24.i32[1];
        v23 = vbslq_s8(v25, v20, v28);
        v22 = vbslq_s8(v25, v21, v28);
      }

      v31 = v15;
      v32 = v15;
      v33 = v15;
      v29 = v23;
      v30 = v22;
      Region.formUnion(_:)(&v29);

      sub_18438FF58();
      v20 = v29;
      v21 = v30;
    }

    while ((v31 & 1) == 0);
  }

  (*(v7 + 8))(v27, a2);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v17 = v37;
  v18 = v35;
  *a3 = v34;
  *(a3 + 16) = v18;
  result = *&v36;
  *(a3 + 32) = v36;
  *(a3 + 48) = v17;
  return result;
}

void Region.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = v1;
  v384 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v377 = *a1;
  v378 = v4;
  v379 = *(a1 + 32);
  v380 = *(a1 + 48);
  v6 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(&v377 + 1);
  v9 = v377;
  v11 = *(v1 + 32);
  v12 = *v1 & 0x7FF0000000000000;
  v13 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (v12 == 0x7FF0000000000000 && v13)
  {
    if ((~v377 & 0x7FF0000000000000) == 0 && (v377 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      return;
    }

LABEL_5:
    sub_183F705CC(&v377, v1);
    sub_183F70628(&v377, &v373);
    return;
  }

  v14 = *(v11 + 16);
  v15 = v377;
  v16 = v377 & 0x7FF0000000000000;
  if ((v377 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v17 = v377 & 0xFFFFFFFFFFFFFLL;
    if (v12 == 0x7FF0000000000000 && v13)
    {
      if (v17)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v17)
    {
      return;
    }
  }

  v370 = (v1 + 32);
  if (*(&v4 + 1) >= v7)
  {
    if (v8 < *&v4)
    {
      if (v14)
      {
        v29 = v14;
      }

      else
      {
        v29 = 2;
      }

      if (((v377 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v379 + 16) == 0)
      {
        v20 = 2;
      }

      else
      {
        v20 = *(v379 + 16);
      }

      v44 = *(a1 + 16);
      v373 = *a1;
      v374 = v44;
      v375 = *(a1 + 32);
      v376 = *(a1 + 48);
      v45 = sub_183FA4388(0, v20);
      v366 = &v356;
      MEMORY[0x1EEE9AC00](v45, v46);
      v25 = &v353;
      v355 = &v377;
      v47 = sub_183FA5A00();
      v23 = v1 + 40;
      v49 = *(v1 + 40);
      v50 = *(v49 + 16);
      if (v29 - 1 >= v50)
      {
        goto LABEL_425;
      }

      v51 = v49 + 32;
      v15 = *(v51 + 4 * (v29 - 1));
      if (v29 == 1)
      {
        v27 = 0;
      }

      else
      {
        if (v29 - 2 >= v50)
        {
LABEL_446:
          __break(1u);
          goto LABEL_447;
        }

        v27 = *(v51 + 4 * (v29 - 2));
      }

      v11 = v20 * v45;
      if ((v20 * v45) >> 64 != (v20 * v45) >> 63)
      {
        goto LABEL_427;
      }

      v51 = v20 >> 60;
      if (!(v20 >> 60))
      {
        v362 = v50;
        if ((8 * v20) >= 1025)
        {
          goto LABEL_430;
        }

        goto LABEL_99;
      }

      goto LABEL_448;
    }

    v367 = (v1 + 24);
    v366 = (v1 + 16);
    if (v5 < *&v377)
    {
      v52 = *(v1 + 40);
      v368 = (v1 + 40);
      v53 = *(v1 + 48);
      v361 = (v1 + 48);
      *v373.i64 = v6;
      *&v373.i64[1] = v5;
      *&v374 = v7;
      *(&v374 + 1) = v8;
      *&v375 = v11;
      *(&v375 + 1) = v52;
      v376 = v53;
      v54 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
      v369 = v55;
      v2 = v52;
      v29 = v53;

      v56 = (v377 & 0xFFFFFFFFFFFFFLL) != 0 && v16 == 0x7FF0000000000000;
      v57 = v369;
      if (!v56 && *(v379 + 16) == 0)
      {
        v25 = 2;
      }

      else
      {
        v25 = *(v379 + 16);
      }

      v51 = &v369[-v54];
      if (__OFSUB__(v369, v54))
      {
        goto LABEL_444;
      }

      v59 = __OFADD__(v51, v25);
      v51 += v25;
      v362 = v51;
      if (v59)
      {
LABEL_445:
        __break(1u);
        goto LABEL_446;
      }

      v20 = *(v1 + 32);
      v29 = *(v1 + 40);
      v376 = *(v1 + 48);
      v2 = v54;
      v365 = sub_183FA4388(v54, v369);
      v15 = v376;

      v373 = v377;
      v374 = v378;
      v375 = v379;
      v376 = v380;
      v60 = sub_183FA4388(0, v25);
      v51 = v365;
      v22 = v365 + v60;
      if (__OFADD__(v365, v60))
      {
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
LABEL_449:
        __break(1u);
        goto LABEL_450;
      }

      v360 = &v356;
      MEMORY[0x1EEE9AC00](v60, v61);
      v29 = &v352;
      v353 = &v377;
      v354 = v2;
      v355 = v57;
      isStackAllocationSafe = sub_183FA5A00();
      v64 = *(v1 + 40);
      v15 = *(v64 + 16);
      v25 = v57 == v15;
      v40 = v2;
      if (v2)
      {
        v65 = v2 - 1;
        v2 = v362;
        if (__OFSUB__(v40, 1))
        {
LABEL_463:
          __break(1u);
          goto LABEL_464;
        }

        if (v65 >= v15)
        {
LABEL_464:
          __break(1u);
          goto LABEL_465;
        }

        v363 = *(v64 + 32 + 4 * v65);
        if (v40 > 1)
        {
          if (v40 - 2 >= v15)
          {
LABEL_513:
            __break(1u);
            goto LABEL_514;
          }

          v25 = 0;
          v51 = *(v64 + 32 + 4 * (v40 - 2));
          if (!v57)
          {
            v66 = 0;
            goto LABEL_158;
          }

LABEL_155:
          v123 = (v57 - 1);
          if (__OFSUB__(v57, 1))
          {
LABEL_465:
            __break(1u);
            goto LABEL_466;
          }

          if (v123 >= v15)
          {
LABEL_466:
            __break(1u);
            goto LABEL_467;
          }

          v66 = *(v64 + 4 * v123 + 32);
LABEL_158:
          v41 = v2 * v22;
          if ((v2 * v22) >> 64 == (v2 * v22) >> 63)
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
LABEL_481:
              __break(1u);
              goto LABEL_482;
            }

            if (v2 >> 60)
            {
LABEL_482:
              __break(1u);
              goto LABEL_483;
            }

            v364 = v66;
            v365 = v40;
            if ((8 * v2) < 1025)
            {
              goto LABEL_162;
            }

            goto LABEL_452;
          }

LABEL_451:
          __break(1u);
LABEL_452:
          v280 = v51;
          v281 = v41;
          v282 = v40;
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          v283 = v282;
          if ((isStackAllocationSafe & 1) == 0)
          {
            v284 = v369;
            v285 = v2;
            v286 = v283;
            v287 = swift_slowAlloc();
            *&v349[16] = v286;
            *&v349[8] = v364;
            sub_183FA6CB0(v287, v285, v285, v281, v3, v280, v363, sub_183FA3240, &v385, v29, v281, 0, v25, *&v349[8], v284, v286);
            MEMORY[0x1865EFCB0](v287, -1, -1);
            v217 = v370;
            goto LABEL_297;
          }

LABEL_162:
          v22 = &v352;
          v124 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v63);
          v20 = &v352 - v129;
          v23 = v363;
          if (v2 >= 0x101)
          {
            v358 = &v352;
            v288 = v127;
            v289 = v126;
            v290 = v125;
            v124 = swift_stdlib_isStackAllocationSafe();
            v291 = v288;
            v22 = v358;
            if ((v124 & 1) == 0)
            {
              v357 = v291;
              v292 = v289;
              v293 = v362;
              v294 = swift_slowAlloc();
              v346.n128_u64[1] = v29;
              v346.n128_u64[0] = sub_183FA3240;
              sub_183FA86D0(v294, v293, v292, v20, v293, v3, v357, v23, v381, v346, v292, 0, v25, v364, v290, v369, v290);
              MEMORY[0x1865EFCB0](v294, -1, -1);
              v217 = v370;
              goto LABEL_297;
            }
          }

          v359 = &v352;
          v130 = MEMORY[0x1EEE9AC00](v124, v128);
          v11 = &v352 - v135;
          if ((v132 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (!(v132 >> 60))
          {
            if ((8 * v132) >= 1025)
            {
              v357 = v133;
              v358 = v22;
              v295 = v132;
              v296 = v131;
              v130 = swift_stdlib_isStackAllocationSafe();
              v297 = v295;
              v22 = v358;
              if ((v130 & 1) == 0)
              {
                v298 = v297;
                v299 = v362;
                v349[1] = v25;
                v300 = swift_slowAlloc();
                sub_183FA8F50(v300, v298, v20, v299, v11, v299, v3, v357, v23, sub_183FA3240, v29, v298, 0, v349[1], v364, v296, v369, v296);
                MEMORY[0x1865EFCB0](v300, -1, -1);
                v217 = v370;
                goto LABEL_297;
              }
            }

            v362 = &v352;
            MEMORY[0x1EEE9AC00](v130, v134);
            v29 = &v352 - v137;
            v372 = 0;
            v371 = 0;
            if (v23 < v136)
            {
              __break(1u);
            }

            else
            {
              v138 = *(v3 + 48);
              v139 = *v3;
              v140 = *(v3 + 16);
              v141 = *(v3 + 32);
              v382 = v138 + 8 * v136 + 32;
              v383 = (v23 - v136);
              v373 = v139;
              v374 = v140;
              v375 = v141;
              v376 = v138;
              sub_183FA1304(&v373, &v377, v40, v369, &v352 - v137, &v371, v41, 0, &v382, v20, &v372, v11, v23);
              v142 = v371;
              v143 = v361;
              if ((v371 & 0x8000000000000000) == 0)
              {
                if (!v25)
                {
                  goto LABEL_171;
                }

                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (v142 <= *(*v143 + 24) >> 1)
                  {
LABEL_171:
                    if (v364 < v23)
                    {
LABEL_467:
                      __break(1u);
                      goto LABEL_468;
                    }

                    sub_183F7DC7C(v23, v364, v29, v142);
                    v29 = v372;
                    if ((v372 & 0x8000000000000000) == 0)
                    {
                      if (!v25)
                      {
                        v144 = v15;
                        v145 = v22;
                        v146 = v365;
                        v25 = v369;
                        sub_183F7DC7C(v365, v369, v20, v372);
LABEL_274:
                        sub_183F7DCA8(v146, v25, v11, v29);
                        v22 = v145;
                        v15 = v144;
                        v23 = v363;
                        goto LABEL_279;
                      }

LABEL_264:
                      v212 = v370;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v29 <= *(*v212 + 24) >> 1)
                        {
                          sub_183F7DC7C(v365, v369, v20, v29);
                          goto LABEL_271;
                        }
                      }

                      else if (!v29)
                      {
                        v213 = MEMORY[0x1E69E7CC0];
                        goto LABEL_270;
                      }

                      v213 = sub_183EA76E4(v29, 0);
                      memcpy(v213 + 4, v20, 8 * v29);
LABEL_270:
                      v214 = v370;

                      *v214 = v213;
LABEL_271:
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v29 <= *(*v368 + 3) >> 1)
                        {
                          v144 = v15;
                          v145 = v22;
                          v25 = v369;
                          v146 = v365;
                          goto LABEL_274;
                        }
                      }

                      else if (!v29)
                      {
                        v215 = MEMORY[0x1E69E7CC0];
                        goto LABEL_278;
                      }

                      v215 = sub_183F9BAB8(v29, 0);
                      memcpy(v215 + 4, v11, 4 * v29);
LABEL_278:
                      v25 = v368;

                      *v25 = v215;
LABEL_279:
                      v216 = v23 + v142;
                      if (!__OFADD__(v23, v142))
                      {
                        v25 = v216 - v364;
                        v217 = v370;
                        if (!__OFSUB__(v216, v364))
                        {
                          if (v25)
                          {
                            v218 = v365 + v29;
                            if (__OFADD__(v365, v29))
                            {
LABEL_471:
                              __break(1u);
                              goto LABEL_472;
                            }

                            v219 = *(*v368 + 2);
                            if (v219 < v218)
                            {
LABEL_472:
                              __break(1u);
LABEL_473:
                              __break(1u);
LABEL_474:
                              __break(1u);
                              goto LABEL_475;
                            }

                            if (v219 != v218)
                            {
                              if (v219 <= v218)
                              {
LABEL_522:
                                __break(1u);
                                goto LABEL_523;
                              }

                              if (v218 < 0)
                              {
LABEL_523:
                                __break(1u);
                                goto LABEL_524;
                              }

                              v20 = &v219[-v218];
                              if (v219 <= v218)
                              {
LABEL_524:
                                __break(1u);
                                goto LABEL_525;
                              }

                              v220 = v368;
                              sub_183F9C0C8();
                              v221 = *v220;
                              v29 += (v365 + 1);
                              do
                              {
                                if (v29 - 8 >= *(v221 + 2))
                                {
                                  goto LABEL_402;
                                }

                                v222 = *&v221[4 * v29];
                                v11 = v222 + v25;
                                if (__OFADD__(v222, v25))
                                {
                                  goto LABEL_403;
                                }

                                if ((v11 & 0x8000000000000000) != 0)
                                {
                                  goto LABEL_404;
                                }

                                if (HIDWORD(v11))
                                {
                                  goto LABEL_405;
                                }

                                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                {
                                  v221 = sub_183F9C14C(v221);
                                }

                                *&v221[4 * v29++] = v11;
                                --v20;
                              }

                              while (v20);
                              *v368 = v221;
                            }
                          }

LABEL_297:
                          v223 = *v217;
                          v224 = *(*v217 + 16);
                          if (v224)
                          {
                            v225 = *v3;
                            v226 = (v223 + 32);
                            if (v365)
                            {
                              v226 = v366;
                            }

                            v227 = *v226;
                            v228 = (v223 + 8 * v224 + 24);
                            if (v369 != v15)
                            {
                              v228 = v367;
                            }

                            v229 = *v228;
                          }

                          else
                          {
                            v225 = 0x7FF8000000000000;
                            v10 = 0x7FF8000000000000;
                            v227 = 0x7FF8000000000000;
                            v229 = 0x7FF8000000000000;
                          }

                          *v3 = v225;
                          *(v3 + 8) = v10;
                          *(v3 + 16) = v227;
                          *(v3 + 24) = v229;
                          sub_183FA5EA0();
                          return;
                        }

                        goto LABEL_462;
                      }

LABEL_461:
                      __break(1u);
LABEL_462:
                      __break(1u);
                      goto LABEL_463;
                    }

LABEL_460:
                    __break(1u);
                    goto LABEL_461;
                  }
                }

                else if (!v142)
                {
                  v25 = MEMORY[0x1E69E7CC0];
LABEL_263:

                  *v143 = v25;
                  v29 = v372;
                  if ((v372 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_264;
                  }

                  goto LABEL_460;
                }

                v25 = sub_183EA76E4(v142, 0);
                memcpy((v25 + 32), v29, 8 * v142);
                goto LABEL_263;
              }
            }

            __break(1u);
            goto LABEL_460;
          }

          __break(1u);
LABEL_493:
          v357 = v22;
          v328 = v132;
          v358 = v23;
          v329 = v131;
          v162 = swift_stdlib_isStackAllocationSafe();
          v330 = v329;
          v23 = v358;
          v331 = v328;
          v22 = v357;
          if ((v162 & 1) == 0)
          {
            v332 = v362;
            v333 = v357;
            v334 = v331;
            v335 = v330;
            *&v349[8] = v25;
            v336 = swift_slowAlloc();
            sub_183FA8F50(v336, v334, v11, v332, v15, v332, v3, v333, v363, sub_183FA3220, v20, v334, 0, v29, *&v349[8], v335, v365, v335);
            MEMORY[0x1865EFCB0](v336, -1, -1);
            v238 = v370;
            goto LABEL_340;
          }

LABEL_227:
          v362 = &v352;
          MEMORY[0x1EEE9AC00](v162, v163);
          v168 = &v352 - v167;
          v372 = 0;
          v371 = 0;
          v20 = v363;
          if (v363 >= v22)
          {
            v169 = *(v3 + 48);
            v170 = *v3;
            v171 = *(v3 + 16);
            v172 = *(v3 + 32);
            v382 = v169 + 8 * v22 + 32;
            v383 = v363 - v22;
            v373 = v170;
            v374 = v171;
            v375 = v172;
            v376 = v169;
            sub_183FA02A0(&v373, &v377, v165, v365, v168, &v371, v166, 0, &v382, v11, &v372, v15, v363);
            v173 = v371;
            if ((v371 & 0x8000000000000000) == 0)
            {
              if (!v29)
              {
                goto LABEL_232;
              }

              v174 = v368;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (v173 <= *(*v174 + 3) >> 1)
                {
LABEL_232:
                  if (v25 < v20)
                  {
LABEL_516:
                    __break(1u);
                    goto LABEL_517;
                  }

                  sub_183F7DC7C(v20, v25, v168, v173);
                  v175 = v372;
                  if ((v372 & 0x8000000000000000) == 0)
                  {
                    if (!v29)
                    {
                      v176 = v23;
                      v177 = v364;
                      v178 = v365;
                      sub_183F7DC7C(v364, v365, v11, v372);
LABEL_317:
                      sub_183F7DCA8(v177, v178, v15, v175);
                      v23 = v176;
                      v20 = v363;
                      goto LABEL_322;
                    }

LABEL_307:
                    v231 = v370;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      if (v175 <= *(*v231 + 24) >> 1)
                      {
                        sub_183F7DC7C(v364, v365, v11, v175);
                        goto LABEL_314;
                      }
                    }

                    else if (!v175)
                    {
                      v232 = MEMORY[0x1E69E7CC0];
                      goto LABEL_313;
                    }

                    v232 = sub_183EA76E4(v175, 0);
                    memcpy(v232 + 4, v11, 8 * v175);
LABEL_313:
                    v233 = v370;

                    *v233 = v232;
LABEL_314:
                    v234 = v369;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      if (v175 <= *(*v234 + 24) >> 1)
                      {
                        v176 = v23;
                        v178 = v365;
                        v177 = v364;
                        goto LABEL_317;
                      }
                    }

                    else if (!v175)
                    {
                      v235 = MEMORY[0x1E69E7CC0];
                      goto LABEL_321;
                    }

                    v235 = sub_183F9BAB8(v175, 0);
                    memcpy(v235 + 4, v15, 4 * v175);
LABEL_321:
                    v236 = v369;

                    *v236 = v235;
LABEL_322:
                    v237 = v20 + v173;
                    if (!__OFADD__(v20, v173))
                    {
                      v15 = v237 - v25;
                      v238 = v370;
                      if (!__OFSUB__(v237, v25))
                      {
                        if (!v15)
                        {
                          goto LABEL_340;
                        }

                        v239 = v364 + v175;
                        if (!__OFADD__(v364, v175))
                        {
                          v240 = *(*v369 + 16);
                          if (v240 >= v239)
                          {
                            if (v240 != v239)
                            {
                              if (v240 > v239)
                              {
                                if ((v239 & 0x8000000000000000) == 0)
                                {
                                  v29 = &v240[-v239];
                                  if (v240 > v239)
                                  {
                                    v241 = v369;
                                    sub_183F9C0C8();
                                    v242 = *v241;
                                    v22 = v364 + v175 + 8;
                                    do
                                    {
                                      if ((v22 - 8) >= *(v242 + 2))
                                      {
                                        goto LABEL_406;
                                      }

                                      v243 = *&v242[4 * v22];
                                      v11 = v243 + v15;
                                      if (__OFADD__(v243, v15))
                                      {
                                        goto LABEL_408;
                                      }

                                      if ((v11 & 0x8000000000000000) != 0)
                                      {
                                        goto LABEL_410;
                                      }

                                      if (HIDWORD(v11))
                                      {
                                        goto LABEL_412;
                                      }

                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v242 = sub_183F9C14C(v242);
                                      }

                                      *&v242[4 * v22++] = v11;
                                      --v29;
                                    }

                                    while (v29);
                                    *v369 = v242;
                                    goto LABEL_340;
                                  }

                                  goto LABEL_539;
                                }

                                goto LABEL_537;
                              }

                              goto LABEL_535;
                            }

LABEL_340:
                            v244 = *v238;
                            v245 = *(*v238 + 16);
                            if (v245)
                            {
                              v246 = *(v3 + 8);
                              v247 = (v244 + 32);
                              if (v364)
                              {
                                v247 = v366;
                              }

                              v248 = *v247;
                              v249 = (v244 + 8 * v245 + 24);
                              if (v365 != v361)
                              {
                                v249 = v367;
                              }

                              v250 = *v249;
                            }

                            else
                            {
                              v9 = 0x7FF8000000000000;
                              v246 = 0x7FF8000000000000;
                              v248 = 0x7FF8000000000000;
                              v250 = 0x7FF8000000000000;
                            }

                            *v3 = v9;
                            *(v3 + 8) = v246;
                            *(v3 + 16) = v248;
                            *(v3 + 24) = v250;
                            goto LABEL_392;
                          }

                          goto LABEL_520;
                        }

                        goto LABEL_518;
                      }

                      goto LABEL_505;
                    }

                    goto LABEL_503;
                  }

                  goto LABEL_501;
                }
              }

              else if (!v173)
              {
                v210 = MEMORY[0x1E69E7CC0];
LABEL_306:
                v230 = v368;

                *v230 = v210;
                v175 = v372;
                if ((v372 & 0x8000000000000000) == 0)
                {
                  goto LABEL_307;
                }

                goto LABEL_501;
              }

              v210 = sub_183EA76E4(v173, 0);
              memcpy(v210 + 32, v168, 8 * v173);
              goto LABEL_306;
            }

            goto LABEL_499;
          }

          __break(1u);
LABEL_498:
          __break(1u);
LABEL_499:
          __break(1u);
          goto LABEL_500;
        }

        v25 = 0;
      }

      else
      {
        v363 = 0;
        v2 = v362;
      }

      v66 = 0;
      v51 = 0;
      if (!v57)
      {
        goto LABEL_158;
      }

      goto LABEL_155;
    }

    v25 = *(v1 + 40);
    v369 = (v1 + 40);
    v67 = *(v1 + 48);
    v368 = (v1 + 48);
    if (*(&v377 + 1) < v6)
    {
      *v373.i64 = v6;
      *&v373.i64[1] = v5;
      *&v374 = v7;
      *(&v374 + 1) = v8;
      *&v375 = v11;
      *(&v375 + 1) = v25;
      v376 = v67;
      v29 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
      v365 = v68;
      v20 = v25;

      if (((v377 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v379 + 16) == 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = *(v379 + 16);
      }

      v71 = v365 - v29;
      if (__OFSUB__(v365, v29))
      {
        goto LABEL_473;
      }

      v362 = &v71[v22];
      if (__OFADD__(v71, v22))
      {
LABEL_475:
        __break(1u);
        goto LABEL_476;
      }

      v72 = *(v1 + 48);
      *(&v375 + 1) = *(v1 + 40);
      v73 = v29;
      v74 = v365;
      v364 = sub_183FA4388(v29, v365);
      v20 = *(&v375 + 1);
      LODWORD(v29) = v72;

      v373 = v377;
      v374 = v378;
      v375 = v379;
      v376 = v380;
      v75 = sub_183FA4388(0, v22);
      v25 = v364 + v75;
      if (__OFADD__(v364, v75))
      {
LABEL_477:
        __break(1u);
        goto LABEL_478;
      }

      MEMORY[0x1EEE9AC00](v75, v76);
      v20 = &v352;
      v353 = &v377;
      v354 = v73;
      v355 = v365;
      v77 = sub_183FA5A00();
      v79 = *(v1 + 40);
      v80 = *(v79 + 16);
      LODWORD(v29) = v74 == v80;
      v40 = v73;
      if (v73)
      {
        v81 = v73 - 1;
        v82 = v362;
        if (__OFSUB__(v73, 1))
        {
LABEL_507:
          __break(1u);
          goto LABEL_508;
        }

        if (v81 >= v80)
        {
LABEL_509:
          __break(1u);
          goto LABEL_510;
        }

        v363 = *(v79 + 32 + 4 * v81);
        if (v73 > 1)
        {
          if (v73 - 2 >= v80)
          {
LABEL_533:
            __break(1u);
            goto LABEL_534;
          }

          LODWORD(v29) = 0;
          v22 = *(v79 + 32 + 4 * (v73 - 2));
          if (!v74)
          {
            v83 = 0;
            goto LABEL_219;
          }

LABEL_216:
          v155 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
LABEL_511:
            __break(1u);
            goto LABEL_512;
          }

          if (v155 >= v80)
          {
LABEL_514:
            __break(1u);
            goto LABEL_515;
          }

          v83 = *(v79 + 4 * v155 + 32);
LABEL_219:
          v41 = v82 * v25;
          if ((v82 * v25) >> 64 == (v82 * v25) >> 63)
          {
            if (v82 < 0)
            {
LABEL_525:
              __break(1u);
              goto LABEL_526;
            }

            v361 = v80;
            if (v82 >> 60)
            {
LABEL_527:
              __break(1u);
              goto LABEL_528;
            }

            v25 = v83;
            v364 = v73;
            v360 = &v356;
            if (8 * v82 < 1025)
            {
LABEL_223:
              v23 = &v352;
              v156 = MEMORY[0x1EEE9AC00](v77, v78);
              v11 = &v352 - v160;
              if (v161 >= 0x101)
              {
                v312 = v158;
                v358 = &v352;
                v313 = v157;
                v156 = swift_stdlib_isStackAllocationSafe();
                v314 = v362;
                v315 = v313;
                v23 = v358;
                if ((v156 & 1) == 0)
                {
                  v316 = v22;
                  v317 = v312;
                  v318 = v315;
                  v319 = swift_slowAlloc();
                  v347.n128_u64[1] = v20;
                  v347.n128_u64[0] = sub_183FA3220;
                  sub_183FA86D0(v319, v314, v317, v11, v314, v3, v316, v363, &v385, v347, v317, 0, v29, v25, v318, v365, v318);
                  MEMORY[0x1865EFCB0](v319, -1, -1);
                  v238 = v370;
                  goto LABEL_340;
                }
              }

              v162 = MEMORY[0x1EEE9AC00](v156, v159);
              v15 = &v352 - v164;
              if ((v132 & 0x8000000000000000) != 0)
              {
                goto LABEL_529;
              }

              if (v132 >> 60)
              {
LABEL_531:
                __break(1u);
                goto LABEL_532;
              }

              v359 = &v352;
              if ((8 * v132) < 1025)
              {
                goto LABEL_227;
              }

              goto LABEL_493;
            }

LABEL_483:
            v301 = v41;
            v302 = v40;
            v77 = swift_stdlib_isStackAllocationSafe();
            if ((v77 & 1) == 0)
            {
              v303 = v362;
              v304 = swift_slowAlloc();
              *&v349[16] = v302;
              *&v349[8] = v25;
              sub_183FA6CB0(v304, v303, v303, v301, v3, v22, v363, sub_183FA3220, &v385, v20, v301, 0, v29, *&v349[8], v365, v302);
              MEMORY[0x1865EFCB0](v304, -1, -1);
              v238 = v370;
              goto LABEL_340;
            }

            goto LABEL_223;
          }

          goto LABEL_479;
        }

        LODWORD(v29) = 0;
      }

      else
      {
        v363 = 0;
        v82 = v362;
      }

      v83 = 0;
      v22 = 0;
      if (!v74)
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }

    *v373.i64 = v6;
    *&v373.i64[1] = v5;
    *&v374 = v7;
    *(&v374 + 1) = v8;
    *&v375 = v11;
    *(&v375 + 1) = v25;
    v376 = v67;
    v108 = sub_183FA42A4(v14 == 0, *&v4, *(&v4 + 1));
    v20 = v25;
    LODWORD(v29) = v67;
    v110 = v109;

    if (((v377 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v379 + 16) == 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = *(v379 + 16);
    }

    v113 = v110 - v108;
    if (__OFSUB__(v110, v108))
    {
      goto LABEL_474;
    }

    v361 = (v113 + v22);
    if (__OFADD__(v113, v22))
    {
LABEL_476:
      __break(1u);
      goto LABEL_477;
    }

    v25 = *(v1 + 32);
    LODWORD(v376) = *(v1 + 48);
    v365 = sub_183FA4388(v108, v110);
    v20 = v108;
    LODWORD(v29) = v376;

    v373 = v377;
    v374 = v378;
    v375 = v379;
    v376 = v380;
    v114 = sub_183FA4388(0, v22);
    v22 = v365 + v114;
    if (__OFADD__(v365, v114))
    {
LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
      goto LABEL_480;
    }

    MEMORY[0x1EEE9AC00](v114, v115);
    v25 = &v352;
    v353 = &v377;
    v354 = v108;
    v355 = v110;
    v116 = sub_183FA5A00();
    v118 = *(v1 + 40);
    v119 = *(v118 + 16);
    v29 = v368;
    if (v108)
    {
      v120 = v108 - 1;
      v121 = v361;
      if (__OFSUB__(v108, 1))
      {
LABEL_508:
        __break(1u);
        goto LABEL_509;
      }

      if (v120 >= v119)
      {
LABEL_510:
        __break(1u);
        goto LABEL_511;
      }

      v20 = *(v118 + 32 + 4 * v120);
      if (v108 > 1)
      {
        if (v108 - 2 >= v119)
        {
LABEL_534:
          __break(1u);
LABEL_535:
          __break(1u);
          goto LABEL_536;
        }

        LODWORD(v360) = 0;
        v122 = *(v118 + 32 + 4 * (v108 - 2));
        if (!v110)
        {
          v362 = 0;
          goto LABEL_241;
        }

LABEL_238:
        v179 = v110 - 1;
        if (__OFSUB__(v110, 1))
        {
LABEL_512:
          __break(1u);
          goto LABEL_513;
        }

        if (v179 >= v119)
        {
LABEL_515:
          __break(1u);
          goto LABEL_516;
        }

        v362 = *(v118 + 4 * v179 + 32);
LABEL_241:
        v180 = v121 * v22;
        if ((v121 * v22) >> 64 != (v121 * v22) >> 63)
        {
LABEL_480:
          __break(1u);
          goto LABEL_481;
        }

        if ((v121 & 0x8000000000000000) != 0)
        {
LABEL_526:
          __break(1u);
          goto LABEL_527;
        }

        if (v121 >> 60)
        {
LABEL_528:
          __break(1u);
LABEL_529:
          __break(1u);
          goto LABEL_530;
        }

        v356 = v119;
        v364 = v110;
        v365 = v108;
        v359 = &v356;
        if ((8 * v121) >= 1025)
        {
          v305 = v20;
          v306 = v122;
          v116 = swift_stdlib_isStackAllocationSafe();
          v307 = v306;
          v20 = v305;
          v121 = v361;
          if ((v116 & 1) == 0)
          {
            v308 = v307;
            v309 = swift_slowAlloc();
            v310 = v20;
            v311 = v309;
            *&v349[16] = v108;
            *&v349[8] = v362;
            sub_183FA6B50(v309, v121, v121, v180, v3, v308, v310, sub_183FA0258, 1uLL, &v352, v180, 1u, v360, *&v349[8], v110, v108);
            MEMORY[0x1865EFCB0](v311, -1, -1);
            v20 = v370;
            v11 = v367;
            v256 = v366;
            v103 = v369;
            v204 = v368;
            goto LABEL_383;
          }
        }

        v358 = &v352;
        v181 = MEMORY[0x1EEE9AC00](v116, v117);
        v15 = &v352 - v184;
        if (v121 >= 0x101)
        {
          v320 = v20;
          v321 = v182;
          v181 = swift_stdlib_isStackAllocationSafe();
          v322 = v321;
          v20 = v320;
          v323 = v361;
          if ((v181 & 1) == 0)
          {
            v324 = v322;
            v325 = swift_slowAlloc();
            v326 = v20;
            v327 = v325;
            v348.n128_u64[1] = &v352;
            v348.n128_u64[0] = sub_183FA0258;
            sub_183FA8588(v325, v323, v180, v15, v323, v3, v324, v326, 1, v348, v180, 1, v360, v362, v108, v364, v108);
            MEMORY[0x1865EFCB0](v327, -1, -1);
            v20 = v370;
            v11 = v367;
            v256 = v366;
            v103 = v369;
            v204 = v368;
            goto LABEL_383;
          }
        }

        v185 = MEMORY[0x1EEE9AC00](v181, v183);
        v363 = (&v352 - v189);
        if ((v180 & 0x8000000000000000) != 0)
        {
LABEL_530:
          __break(1u);
          goto LABEL_531;
        }

        v357 = v187;
        if (v180 >> 60)
        {
LABEL_532:
          __break(1u);
          goto LABEL_533;
        }

        v190 = v29;
        if ((8 * v180) >= 1025)
        {
          v337 = v20;
          v338 = v186;
          v185 = swift_stdlib_isStackAllocationSafe();
          v339 = v338;
          v20 = v337;
          v340 = v361;
          if ((v185 & 1) == 0)
          {
            v341 = v339;
            v342 = swift_slowAlloc();
            v343 = v20;
            v344 = v342;
            sub_183FA8E88(v342, v180, v15, v340, v363, v340, v3, v341, v343, sub_183FA0258, &v352, v180, 1, v360, v362, v108, v364, v108);
            MEMORY[0x1865EFCB0](v344, -1, -1);
            v20 = v370;
            v11 = v367;
            v256 = v366;
            v103 = v369;
            v204 = v368;
            goto LABEL_383;
          }
        }

        v361 = &v352;
        MEMORY[0x1EEE9AC00](v185, v188);
        v193 = &v352 - v192;
        v372 = 0;
        v371 = 0;
        v194 = (v20 - v191);
        if (v20 < v191)
        {
          goto LABEL_498;
        }

        v195 = v20;
        v197 = *(v3 + 40);
        v196 = *(v3 + 48);
        v198 = *v3;
        v199 = *(v3 + 16);
        v200 = *(v3 + 32);
        v382 = v196 + 8 * v191 + 32;
        v383 = v194;
        v373 = v198;
        v374 = v199;
        *&v375 = v200;
        *(&v375 + 1) = v197;
        v376 = v196;
        swift_retain_n();

        v351 = sub_183FBF7F0;
        v201 = v195;
        sub_183FA2360(v373.i8, &v377, v365, v364, v193, &v371, v180, 1, &v382, v15, &v372, v363, v195, &qword_1EA854120, byte_1EA868CEB);

        v202 = v371;
        if ((v371 & 0x8000000000000000) != 0)
        {
LABEL_500:
          __break(1u);
LABEL_501:
          __break(1u);
          goto LABEL_502;
        }

        v203 = v195;
        v204 = v190;
        v205 = v362;
        v206 = v360;
        if (!v360)
        {
LABEL_254:
          if (v205 < v201)
          {
LABEL_517:
            __break(1u);
LABEL_518:
            __break(1u);
            goto LABEL_519;
          }

          sub_183F7DC7C(v201, v205, v193, v202);
          v207 = v372;
          if ((v372 & 0x8000000000000000) != 0)
          {
            goto LABEL_502;
          }

          if (!v206)
          {
            v208 = v365;
            v209 = v364;
            sub_183F7DC7C(v365, v364, v15, v372);
            v103 = v369;
LABEL_360:
            sub_183F7DCA8(v208, v209, v363, v207);
LABEL_365:
            v255 = v203 + v202;
            if (__OFADD__(v203, v202))
            {
LABEL_504:
              __break(1u);
LABEL_505:
              __break(1u);
              goto LABEL_506;
            }

            v59 = __OFSUB__(v255, v205);
            v25 = v255 - v205;
            v20 = v370;
            v11 = v367;
            v256 = v366;
            if (v59)
            {
LABEL_506:
              __break(1u);
              goto LABEL_507;
            }

            if (v25)
            {
              v257 = v365 + v207;
              if (__OFADD__(v365, v207))
              {
LABEL_519:
                __break(1u);
LABEL_520:
                __break(1u);
                goto LABEL_521;
              }

              v258 = *(*v103 + 16);
              if (v258 < v257)
              {
LABEL_521:
                __break(1u);
                goto LABEL_522;
              }

              if (v258 != v257)
              {
                if (v258 <= v257)
                {
LABEL_536:
                  __break(1u);
LABEL_537:
                  __break(1u);
                  goto LABEL_538;
                }

                if (v257 < 0)
                {
LABEL_538:
                  __break(1u);
LABEL_539:
                  __break(1u);
                  goto LABEL_540;
                }

                v23 = &v258[-v257];
                if (v258 <= v257)
                {
LABEL_540:
                  __break(1u);
LABEL_541:
                  __break(1u);
                }

                sub_183F9C0C8();
                v29 = *v103;
                v22 = v365 + v207 + 8;
                do
                {
                  if ((v22 - 8) >= *(v29 + 16))
                  {
                    goto LABEL_407;
                  }

                  v259 = *(v29 + 4 * v22);
                  v15 = v259 + v25;
                  if (__OFADD__(v259, v25))
                  {
                    goto LABEL_409;
                  }

                  if ((v15 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_411;
                  }

                  if (HIDWORD(v15))
                  {
                    goto LABEL_413;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v29 = sub_183F9C14C(v29);
                  }

                  *(v29 + 4 * v22++) = v15;
                  --v23;
                }

                while (v23);
                v103 = v369;
                *v369 = v29;
                v204 = v368;
              }
            }

LABEL_383:
            v25 = *v20;
            if (*(*v20 + 16))
            {
              v260 = *v256;
              v261 = *v11;
              sub_183FA58E8((*v103 + 32), *(*v103 + 16), (*v204 + 32), v373.i64);
              v262 = v373;
              v102 = v359;
              if (!v365)
              {
                if (!*(v25 + 16))
                {
                  goto LABEL_541;
                }

                v260 = *(v25 + 32);
              }

              if (v364 == v356)
              {
                v263 = *(v25 + 16);
                if (!v263)
                {
                  goto LABEL_543;
                }

                v261 = *(v25 + 8 * v263 + 24);
              }
            }

            else
            {
              v262 = vdupq_n_s64(0x7FF8000000000000uLL);
              v260 = 0x7FF8000000000000;
              v261 = 0x7FF8000000000000;
            }

            *v3 = v262;
            *(v3 + 16) = v260;
            *(v3 + 24) = v261;
LABEL_392:
            sub_183FA5EA0();
            return;
          }

LABEL_350:
          v251 = v370;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v207 <= *(*v251 + 24) >> 1)
            {
              sub_183F7DC7C(v365, v364, v15, v207);
              goto LABEL_357;
            }
          }

          else if (!v207)
          {
            v252 = MEMORY[0x1E69E7CC0];
            goto LABEL_356;
          }

          v252 = sub_183EA76E4(v207, 0);
          memcpy(v252 + 4, v15, 8 * v207);
LABEL_356:
          v253 = v370;

          *v253 = v252;
LABEL_357:
          v103 = v369;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v207 <= *(*v103 + 24) >> 1)
            {
              v209 = v364;
              v208 = v365;
              goto LABEL_360;
            }
          }

          else if (!v207)
          {
            v254 = MEMORY[0x1E69E7CC0];
            goto LABEL_364;
          }

          v254 = sub_183F9BAB8(v207, 0);
          memcpy(v254 + 4, v363, 4 * v207);
LABEL_364:

          *v103 = v254;
          goto LABEL_365;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v202 <= *(*v204 + 24) >> 1)
          {
            goto LABEL_254;
          }
        }

        else if (!v202)
        {
          v211 = MEMORY[0x1E69E7CC0];
LABEL_349:

          *v204 = v211;
          v207 = v372;
          if ((v372 & 0x8000000000000000) != 0)
          {
LABEL_502:
            __break(1u);
LABEL_503:
            __break(1u);
            goto LABEL_504;
          }

          goto LABEL_350;
        }

        v211 = sub_183EA76E4(v202, 0);
        memcpy(v211 + 4, v193, 8 * v202);
        goto LABEL_349;
      }

      LODWORD(v360) = 0;
    }

    else
    {
      LODWORD(v360) = v110 == v119;
      v121 = v361;
    }

    v362 = 0;
    v122 = 0;
    if (!v110)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

  if (((v377 & 0xFFFFFFFFFFFFFLL) == 0 || v16 != 0x7FF0000000000000) && *(v379 + 16) == 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = *(v379 + 16);
  }

  v21 = *(a1 + 16);
  v373 = *a1;
  v374 = v21;
  v375 = *(a1 + 32);
  v376 = *(a1 + 48);
  v22 = sub_183FA4388(0, v20);
  v23 = &v356;
  MEMORY[0x1EEE9AC00](v22, v24);
  v25 = &v353;
  v355 = &v377;
  v26 = sub_183FA5A00();
  v29 = v20 * v22;
  if ((v20 * v22) >> 64 != (v20 * v22) >> 63)
  {
    goto LABEL_414;
  }

  if (v20 >> 60)
  {
    goto LABEL_426;
  }

  v22 = v1 + 40;
  v368 = *(*(v1 + 40) + 16);
  v367 = &v356;
  if ((8 * v20) >= 1025)
  {
    goto LABEL_415;
  }

  while (1)
  {
    v11 = &v353;
    v30 = MEMORY[0x1EEE9AC00](v26, v28);
    v15 = &v353 - v32;
    v366 = &v353;
    if (v20 >= 0x101)
    {
      v30 = swift_stdlib_isStackAllocationSafe();
      if ((v30 & 1) == 0)
      {
        v267 = v368 == 0;
        v268 = swift_slowAlloc();
        *&v349[8] = v25;
        *v349 = sub_183FA3320;
        sub_183FA862C(v268, v20, v29, v15, v20, v3, 0, 0, v269, *v349, v29, 0, v267, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v268, -1, -1);
        v2 = v370;
        v23 = v368;
        goto LABEL_204;
      }
    }

    v33 = MEMORY[0x1EEE9AC00](v30, v31);
    v369 = &v353 - v35;
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_428;
    }

    if (v29 >> 60)
    {
      goto LABEL_429;
    }

    v365 = v27;
    if ((8 * v29) >= 1025)
    {
      v33 = swift_stdlib_isStackAllocationSafe();
      if ((v33 & 1) == 0)
      {
        v270 = v368 == 0;
        v271 = swift_slowAlloc();
        sub_183FA8EEC(v271, v29, v15, v20, v369, v20, v3, 0, 0, sub_183FA3320, v25, v29, 0, v270, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v271, -1, -1);
        v2 = v370;
        v23 = v368;
LABEL_204:
        v151 = *v2;
        if (*(*v2 + 16))
        {
          v9 = *(v3 + 24);
          sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), v373.i64);
          v25 = v367;
          v152 = *(v151 + 16);
          if (!v152)
          {
            goto LABEL_424;
          }

          v153 = v373;
          v154 = *(v151 + 32);
          if (!v23)
          {
            v9 = *(v151 + 8 * v152 + 24);
          }
        }

        else
        {
          v153 = vdupq_n_s64(0x7FF8000000000000uLL);
          v154 = 0x7FF8000000000000;
          v9 = 0x7FF8000000000000;
        }

        *v3 = v153;
        *(v3 + 16) = v154;
        *(v3 + 24) = v9;
        sub_183FA5EA0();
        return;
      }
    }

    v364 = &v353;
    MEMORY[0x1EEE9AC00](v33, v34);
    v11 = &v353 - v36;
    v372 = 0;
    v371 = 0;
    v37 = v3 + 48;
    v25 = *(v3 + 48);
    v38 = *(v3 + 32);
    v23 = *(v3 + 40);
    v382 = v25 + 32;
    v383 = 0;
    v39 = *(v3 + 16);
    v373 = *v3;
    v374 = v39;
    *&v375 = v38;
    *(&v375 + 1) = v23;
    v376 = v25;
    swift_retain_n();

    sub_183F99AD4(&v373, &v377, v11, v29, &v371, v29, 0, &v382, v15, v20, &v372, v369, v20, 0);

    v20 = v371;
    if ((v371 & 0x8000000000000000) != 0)
    {
      break;
    }

    v2 = v370;
    v23 = v368;
    if (v368)
    {
      sub_183F7DC7C(0, 0, v11, v371);
      v29 = v372;
      if ((v372 & 0x8000000000000000) != 0)
      {
        goto LABEL_422;
      }

      sub_183F7DC7C(0, 0, v15, v372);
LABEL_33:
      sub_183F7DCA8(0, 0, v369, v29);
      if (!v20)
      {
        goto LABEL_204;
      }

      goto LABEL_192;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v20 <= *(*v37 + 24) >> 1)
      {
        sub_183F7DC7C(0, 0, v11, v20);
        goto LABEL_177;
      }
    }

    else if (!v20)
    {
      v25 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    v25 = sub_183EA76E4(v20, 0);
    memcpy((v25 + 32), v11, 8 * v20);
LABEL_176:

    *v37 = v25;
LABEL_177:
    v29 = v372;
    if ((v372 & 0x8000000000000000) != 0)
    {
      goto LABEL_422;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v29 <= *(*v2 + 24) >> 1)
      {
        sub_183F7DC7C(0, 0, v15, v29);
        goto LABEL_185;
      }
    }

    else if (!v29)
    {
      v147 = MEMORY[0x1E69E7CC0];
      goto LABEL_184;
    }

    v147 = sub_183EA76E4(v29, 0);
    memcpy(v147 + 4, v15, 8 * v29);
LABEL_184:

    *v2 = v147;
LABEL_185:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (v29 <= *(*v22 + 24) >> 1)
      {
        goto LABEL_33;
      }

LABEL_189:
      v148 = sub_183F9BAB8(v29, 0);
      memcpy(v148 + 4, v369, 4 * v29);
      goto LABEL_191;
    }

    if (v29)
    {
      goto LABEL_189;
    }

    v148 = MEMORY[0x1E69E7CC0];
LABEL_191:

    *v22 = v148;
    if (!v20)
    {
      goto LABEL_204;
    }

LABEL_192:
    v51 = *(*v22 + 16);
    if (v51 < v29)
    {
      goto LABEL_423;
    }

    if (v51 == v29)
    {
      goto LABEL_204;
    }

    v25 = v51 - v29;
    if (v51 <= v29)
    {
      goto LABEL_441;
    }

    sub_183F9C0C8();
    v149 = *v22;
    v23 = v29 + 8;
    while (v23 - 8 < *(v149 + 2))
    {
      v150 = *&v149[4 * v23];
      v15 = v150 + v20;
      if (__OFADD__(v150, v20))
      {
        goto LABEL_395;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_396;
      }

      if (HIDWORD(v15))
      {
        goto LABEL_397;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_183F9C14C(v149);
      }

      *&v149[4 * v23++] = v15;
      if (!--v25)
      {
        *v22 = v149;
        v23 = v368;
        goto LABEL_204;
      }
    }

    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
LABEL_401:
    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    __break(1u);
LABEL_404:
    __break(1u);
LABEL_405:
    __break(1u);
LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
LABEL_408:
    __break(1u);
LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    v26 = swift_stdlib_isStackAllocationSafe();
    if ((v26 & 1) == 0)
    {
      v264 = v368 == 0;
      v265 = swift_slowAlloc();
      sub_183FA6C00(v265, v20, v20, v29, v3, 0, 0, sub_183FA3320, v266, v25, v29, 0, v264, 0, 0, 0);
      MEMORY[0x1865EFCB0](v265, -1, -1);
      v2 = v370;
      v23 = v368;
      goto LABEL_204;
    }
  }

  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:
  __break(1u);
LABEL_425:
  __break(1u);
LABEL_426:
  __break(1u);
LABEL_427:
  __break(1u);
LABEL_428:
  __break(1u);
LABEL_429:
  __break(1u);
LABEL_430:
  v272 = v27;
  v47 = swift_stdlib_isStackAllocationSafe();
  if ((v47 & 1) == 0)
  {
    v273 = swift_slowAlloc();
    v350.n128_u64[0] = v15;
    v350.n128_u64[1] = v29;
    v274 = v272;
    v102 = 0;
    sub_183FA6C00(v273, v20, v20, v11, v3, v274, v15, sub_183FA3260, v275, v25, v11, 0, 0, v350, v29, v29);
    v25 = 0;
    MEMORY[0x1865EFCB0](v273, -1, -1);
    v20 = v370;
    goto LABEL_127;
  }

LABEL_99:
  v368 = v23;
  v84 = MEMORY[0x1EEE9AC00](v47, v48);
  v369 = &v353 - v87;
  v365 = &v353;
  if (v20 >= 0x101)
  {
    v276 = v85;
    v84 = swift_stdlib_isStackAllocationSafe();
    if ((v84 & 1) == 0)
    {
      v277 = swift_slowAlloc();
      *&v349[8] = v25;
      *v349 = sub_183FA3260;
      sub_183FA862C(v277, v20, v11, v369, v20, v3, v276, v15, &v387, *v349, v11, 0, 0, v15, v29, v29, v29);
      MEMORY[0x1865EFCB0](v277, -1, -1);
      v102 = 0;
      v20 = v370;
      goto LABEL_127;
    }
  }

  v364 = &v353;
  v88 = MEMORY[0x1EEE9AC00](v84, v86);
  v2 = &v353 - v51;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_449;
  }

  v51 = v11 >> 60;
  if (v11 >> 60)
  {
LABEL_450:
    __break(1u);
    goto LABEL_451;
  }

  if (8 * v11) < 1025 || (v278 = v89, v88 = swift_stdlib_isStackAllocationSafe(), (v88))
  {
    v367 = v29;
    v363 = &v353;
    MEMORY[0x1EEE9AC00](v88, v90);
    v25 = &v353 - v92;
    v372 = 0;
    v371 = 0;
    v51 = v15 - v91;
    if (v15 < v91)
    {
      __break(1u);
    }

    else
    {
      v93 = *(v3 + 48);
      v94 = *v3;
      v95 = *(v3 + 16);
      v96 = *(v3 + 32);
      v29 = *(v3 + 40);
      v382 = v93 + 8 * v91 + 32;
      v383 = (v15 - v91);
      v373 = v94;
      v374 = v95;
      *&v375 = v96;
      *(&v375 + 1) = v29;
      v376 = v93;
      swift_retain_n();

      v352 = v20;
      v350.n128_u64[0] = v20;
      v97 = v369;
      sub_183F99AD4(&v373, &v377, v25, v11, &v371, v11, 0, &v382, v369, v350.n128_i64[0], &v372, v2, v352, v15);

      v51 = &v388;
      v98 = v371;
      if ((v371 & 0x8000000000000000) == 0)
      {
        sub_183F7DC7C(v15, v15, v25, v371);
        v22 = v372;
        v51 = &v386;
        v29 = v367;
        if ((v372 & 0x8000000000000000) == 0)
        {
          sub_183F7DC7C(v367, v367, v97, v372);
          v99 = v368;
          sub_183F7DCA8(v29, v29, v2, v22);
          v51 = v15 + v98;
          if (!__OFADD__(v15, v98))
          {
            v25 = v98;
            if (!__OFSUB__(v51, v15))
            {
              v20 = v370;
              if (!v98)
              {
                goto LABEL_126;
              }

              v51 = v29 + v22;
              if (!__OFADD__(v29, v22))
              {
                v100 = *(*v99 + 16);
                if (v100 >= v51)
                {
                  if (v100 != v51)
                  {
                    if (v100 > v51)
                    {
                      if ((v51 & 0x8000000000000000) == 0)
                      {
                        v23 = v100 - v51;
                        if (v100 > v51)
                        {
                          sub_183F9C0C8();
                          v11 = *v99;
                          v22 += v29 + 8;
                          do
                          {
                            if ((v22 - 8) >= *(v11 + 16))
                            {
                              goto LABEL_398;
                            }

                            v101 = *(v11 + 4 * v22);
                            v15 = v101 + v25;
                            if (__OFADD__(v101, v25))
                            {
                              goto LABEL_399;
                            }

                            if ((v15 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_400;
                            }

                            if (HIDWORD(v15))
                            {
                              goto LABEL_401;
                            }

                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              v11 = sub_183F9C14C(v11);
                            }

                            *(v11 + 4 * v22++) = v15;
                            --v23;
                          }

                          while (v23);
                          *v99 = v11;
                          goto LABEL_126;
                        }

                        goto LABEL_470;
                      }

LABEL_469:
                      __break(1u);
LABEL_470:
                      __break(1u);
                      goto LABEL_471;
                    }

LABEL_468:
                    __break(1u);
                    goto LABEL_469;
                  }

LABEL_126:
                  v102 = 0;
                  goto LABEL_127;
                }

                goto LABEL_443;
              }

LABEL_442:
              __break(1u);
LABEL_443:
              __break(1u);
LABEL_444:
              __break(1u);
              goto LABEL_445;
            }

LABEL_440:
            __break(1u);
LABEL_441:
            __break(1u);
            goto LABEL_442;
          }

LABEL_439:
          __break(1u);
          goto LABEL_440;
        }

LABEL_438:
        __break(1u);
        goto LABEL_439;
      }
    }

    __break(1u);
    goto LABEL_438;
  }

  v279 = swift_slowAlloc();
  sub_183FA8EEC(v279, v11, v369, v20, v2, v20, v3, v278, v15, sub_183FA3260, v25, v11, 0, 0, v15, v29, v29, v29);
  MEMORY[0x1865EFCB0](v279, -1, -1);
  v102 = 0;
  v20 = v370;
LABEL_127:
  v103 = *v20;
  if (*(*v20 + 16))
  {
    v104 = *(v3 + 16);
    v105 = *(v3 + 24);
    sub_183FA58E8((*(v3 + 40) + 32), *(*(v3 + 40) + 16), (*(v3 + 48) + 32), v373.i64);
    v106 = v373;
    if (v29 != v362)
    {
      goto LABEL_132;
    }

    v107 = *(v103 + 2);
    if (v107)
    {
      v105 = *&v103[8 * v107 + 24];
      goto LABEL_132;
    }

    __break(1u);
LABEL_543:
    __break(1u);

    __break(1u);
    for (i = v103; ; i = v20)
    {
      MEMORY[0x1865EFCB0](i, -1, -1);
      __break(1u);
    }
  }

  v106 = vdupq_n_s64(0x7FF8000000000000uLL);
  v104 = 0x7FF8000000000000;
  v105 = 0x7FF8000000000000;
LABEL_132:
  *v3 = v106;
  *(v3 + 16) = v104;
  *(v3 + 24) = v105;
  sub_183FA5EA0();
}

uint64_t Region.isDisjoint(with:)(uint64_t a1)
{
  v189 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *v1;
  v9 = *(v1 + 8);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v15 = *(v1 + 48);
  v182 = *v1;
  v183 = v9;
  v184 = v12;
  v185 = v11;
  v186 = v14;
  v187 = v13;
  v188 = v15;
  v175 = *&v3;
  v176 = v2;
  v177 = v5;
  v178 = v4;
  v179 = v6;
  v180 = v7;
  v181 = v8;
  v16 = sub_183F72694(&v175);
  if (v16 > 3)
  {
    if (v16 != 4)
    {
      if (v16 != 5)
      {
        v57 = *(v14 + 16);
        v58 = sub_183F94060(v14 + 32, v57, v5);
        v59 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          goto LABEL_431;
        }

        v60 = v58;
        if (v57 < v58)
        {
          goto LABEL_434;
        }

        v61 = sub_183F94198(v14 + 32 + 8 * v58, v57 - v58, v4);
        if (__OFADD__(v61, v60))
        {
          goto LABEL_436;
        }

        if (v61 + v60 < (v59 & ~(v59 >> 63)))
        {
          goto LABEL_438;
        }

        v62 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0;
        if (!v62 && !*(v14 + 16))
        {
          v182 = v10;
          v183 = v9;
          v184 = v12;
          v185 = v11;
          v174[0] = 0x200000002;
          v63 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
          v64 = *(v6 + 16);
          if (v63 || v64)
          {
            sub_183F9AAE4(&v184, v174, &v182, v6 + 32, &v175, v64, 0, v7 + 32, *(v7 + 16), v8 + 32, *(v8 + 16), v59 & ~(v59 >> 63), v61 + v60);
            return v175;
          }

          v175 = *&v3;
          v176 = v2;
          v177 = v5;
          v178 = v4;
          v173 = 0x200000002;
          sub_183F9AAE4(&v184, v174, &v182, &v177, &v172, 2, 0, &v173, 2, &v175, 2, v59 & ~(v59 >> 63), v61 + v60);
          return v172;
        }

        v65 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
        v66 = *(v6 + 16);
        if (v65 || v66)
        {
          sub_183F9AAE4(v14 + 32, v13 + 32, v15 + 32, v6 + 32, &v182, v66, 0, v7 + 32, *(v7 + 16), v8 + 32, *(v8 + 16), v59 & ~(v59 >> 63), v61 + v60);
          return LOBYTE(v182);
        }

        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v175 = 0x200000002;
        sub_183F9AAE4(v14 + 32, v13 + 32, v15 + 32, &v184, v174, 2, 0, &v175, 2, &v182, 2, v59 & ~(v59 >> 63), v61 + v60);
        return LOBYTE(v174[0]);
      }

      if (v11 >= v5)
      {
        v18 = 0;
        if (v11 <= v4)
        {
          v19 = 2;
        }

        else
        {
          v19 = v12 <= v4;
        }
      }

      else if (v11 <= v4)
      {
        v19 = 2;
        v18 = 1;
      }

      else
      {
        if (v12 > v4)
        {
          goto LABEL_432;
        }

        v18 = 1;
        v19 = 1;
      }

      v90 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0;
      if (!v90 && !*(v14 + 16))
      {
        v182 = v10;
        v183 = v9;
        v184 = v12;
        v185 = v11;
        v174[0] = 0x200000002;
        v91 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
        v92 = *(v6 + 16);
        if (!v91 && !v92)
        {
          v175 = *&v3;
          v176 = v2;
          v177 = v5;
          v178 = v4;
          v173 = 0x200000002;
          sub_183F9A840(&v184, &v177, &v172, v10, v9, v5, v4, 2, 0, &v173, 2, &v175, 2, v18, v19);
          return v172;
        }

        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = v6 + 32;
        v126 = v19 - v18;
        v127 = 1;
        while (1)
        {
          if (v124 == v126)
          {
            if (v123 == v92)
            {
              return 1;
            }

            if ((v123 & 0x8000000000000000) != 0)
            {
              goto LABEL_395;
            }

            if (HIDWORD(v123))
            {
              goto LABEL_397;
            }

            v128 = *(v125 + 8 * v123);
            LODWORD(v129) = v123++;
            LOBYTE(v175) = 0;
            v124 = v126;
          }

          else
          {
            v128 = *(&v184 + v18 + v124);
            v130 = v124 + v18;
            v131 = __OFADD__(v124, v18);
            if (v123 == v92)
            {
              if (v131)
              {
                goto LABEL_415;
              }

              if ((v130 & 0x8000000000000000) != 0)
              {
                goto LABEL_419;
              }

              v129 = HIDWORD(v130);
              if (v129)
              {
                goto LABEL_423;
              }

              ++v124;
              LOBYTE(v175) = 1;
              v123 = v92;
            }

            else
            {
              if (v131)
              {
                goto LABEL_417;
              }

              if ((v130 & 0x8000000000000000) != 0)
              {
                goto LABEL_421;
              }

              if (HIDWORD(v130))
              {
                goto LABEL_425;
              }

              if ((v123 & 0x8000000000000000) != 0)
              {
                goto LABEL_427;
              }

              if (HIDWORD(v123))
              {
                goto LABEL_429;
              }

              v132 = *(v125 + 8 * v123);
              if (v128 >= v132)
              {
                if (v132 >= v128)
                {
                  ++v124;
                  LODWORD(v129) = v123++;
                  LOBYTE(v175) = 0;
                }

                else
                {
                  LODWORD(v129) = v123++;
                  LOBYTE(v175) = 0;
                  v128 = v132;
                }
              }

              else
              {
                LODWORD(v129) = 0;
                ++v124;
                LOBYTE(v175) = 1;
              }
            }
          }

          v127 &= v175;
          if (v175)
          {
            LODWORD(v129) = v122;
          }

          if (v127)
          {
            v133 = 0;
            v134 = 0;
            goto LABEL_303;
          }

          v135 = v129 ? *(v7 + 28 + 4 * v129) : 0;
          if (v5 <= v128 && v128 < v4)
          {
            break;
          }

          v133 = 0;
          v134 = 0;
LABEL_302:
          v122 = v129;
LABEL_303:
          v143 = v134 & 1;
          if (v134 < 0)
          {
            v143 = -v143;
          }

          v53 = __OFSUB__(v134, v143);
          v144 = v134 - v143;
          if (v53)
          {
            goto LABEL_389;
          }

          v145 = v133 & 1;
          if (v133 < 0)
          {
            v145 = -v145;
          }

          v53 = __OFADD__(v133, v145);
          v146 = v133 + v145;
          if (v53)
          {
            goto LABEL_391;
          }

          if (v144 != v146)
          {
            return 0;
          }
        }

        v137 = v8 + 32 + 8 * v135;
        v138 = *(v7 + 32 + 4 * v129) - v135;
        if (v138 < 2)
        {
          v134 = 0;
          v133 = 0;
          if (v138 != 1)
          {
LABEL_299:
            if (v133 < v138 && *(v137 + 8 * v133) < v9)
            {
              ++v133;
            }

            goto LABEL_302;
          }
        }

        else
        {
          v134 = 0;
          for (i = v138; i > 1; i -= i >> 1)
          {
            if (*(v137 + 8 * (v134 + (i >> 1))) <= v10)
            {
              v134 += i >> 1;
            }
          }

          if (v134 >= v138)
          {
            goto LABEL_295;
          }
        }

        if (*(v137 + 8 * v134) <= v10)
        {
          ++v134;
        }

LABEL_295:
        v140 = v138 - v134;
        v133 = v134;
        if (v138 - v134 >= 2)
        {
          do
          {
            v141 = v140 >> 1;
            v140 -= v140 >> 1;
            v142 = v133 + v141;
            if (*(v137 + 8 * v142) < v9)
            {
              v133 = v142;
            }
          }

          while (v140 > 1);
        }

        goto LABEL_299;
      }

      v93 = v14 + 32;
      v94 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
      v95 = *(v6 + 16);
      if (!v94 && !v95)
      {
        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v175 = 0x200000002;
        sub_183F9A840(v93, &v184, v174, v10, v9, v5, v4, 2, 0, &v175, 2, &v182, 2, v18, v19);
        return LOBYTE(v174[0]);
      }

      v96 = 0;
      v97 = 0;
      v98 = 0;
      v99 = v6 + 32;
      v100 = v19 - v18;
      v101 = 1;
      v102 = v93 + 8 * v18;
      while (1)
      {
        if (v98 == v100)
        {
          if (v97 == v95)
          {
            return 1;
          }

          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_394;
          }

          if (HIDWORD(v97))
          {
            goto LABEL_396;
          }

          v103 = *(v99 + 8 * v97);
          LODWORD(v104) = v97++;
          LOBYTE(v182) = 0;
          v98 = v100;
        }

        else
        {
          v103 = *(v102 + 8 * v98);
          v105 = v98 + v18;
          v106 = __OFADD__(v98, v18);
          if (v97 == v95)
          {
            if (v106)
            {
              goto LABEL_414;
            }

            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_418;
            }

            v104 = HIDWORD(v105);
            if (v104)
            {
              goto LABEL_422;
            }

            ++v98;
            LOBYTE(v182) = 1;
            v97 = v95;
          }

          else
          {
            if (v106)
            {
              goto LABEL_416;
            }

            if ((v105 & 0x8000000000000000) != 0)
            {
              goto LABEL_420;
            }

            if (HIDWORD(v105))
            {
              goto LABEL_424;
            }

            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_426;
            }

            if (HIDWORD(v97))
            {
              goto LABEL_428;
            }

            v107 = *(v99 + 8 * v97);
            if (v103 >= v107)
            {
              if (v107 >= v103)
              {
                ++v98;
                LODWORD(v104) = v97++;
                LOBYTE(v182) = 0;
              }

              else
              {
                LODWORD(v104) = v97++;
                LOBYTE(v182) = 0;
                v103 = v107;
              }
            }

            else
            {
              LODWORD(v104) = 0;
              ++v98;
              LOBYTE(v182) = 1;
            }
          }
        }

        v101 &= LOBYTE(v182);
        if (LOBYTE(v182))
        {
          LODWORD(v104) = v96;
        }

        if (v101)
        {
          v108 = 0;
          v109 = 0;
          goto LABEL_241;
        }

        v110 = v104 ? *(v7 + 28 + 4 * v104) : 0;
        if (v5 <= v103 && v103 < v4)
        {
          break;
        }

        v108 = 0;
        v109 = 0;
LABEL_240:
        v96 = v104;
LABEL_241:
        v118 = v109 & 1;
        if (v109 < 0)
        {
          v118 = -v118;
        }

        v53 = __OFSUB__(v109, v118);
        v119 = v109 - v118;
        if (v53)
        {
          goto LABEL_388;
        }

        v120 = v108 & 1;
        if (v108 < 0)
        {
          v120 = -v120;
        }

        v121 = v108 + v120;
        if (__OFADD__(v108, v120))
        {
          goto LABEL_390;
        }

        result = 0;
        if (v119 != v121)
        {
          return result;
        }
      }

      v112 = v8 + 32 + 8 * v110;
      v113 = *(v7 + 32 + 4 * v104) - v110;
      if (v113 < 2)
      {
        v109 = 0;
        v108 = 0;
        if (v113 != 1)
        {
LABEL_237:
          if (v108 < v113 && *(v112 + 8 * v108) < v9)
          {
            ++v108;
          }

          goto LABEL_240;
        }
      }

      else
      {
        v109 = 0;
        for (j = v113; j > 1; j -= j >> 1)
        {
          if (*(v112 + 8 * (v109 + (j >> 1))) <= v10)
          {
            v109 += j >> 1;
          }
        }

        if (v109 >= v113)
        {
          goto LABEL_233;
        }
      }

      if (*(v112 + 8 * v109) <= v10)
      {
        ++v109;
      }

LABEL_233:
      v115 = v113 - v109;
      v108 = v109;
      if (v113 - v109 >= 2)
      {
        do
        {
          v116 = v115 >> 1;
          v115 -= v115 >> 1;
          v117 = v108 + v116;
          if (*(v112 + 8 * v117) < v9)
          {
            v108 = v117;
          }
        }

        while (v115 > 1);
      }

      goto LABEL_237;
    }

    v20 = *(v14 + 16);
    v21 = v14 + 32;
    v22 = sub_183F94060(v14 + 32, v20, v5);
    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
      goto LABEL_430;
    }

    v24 = v22;
    if (v20 < v22)
    {
      goto LABEL_433;
    }

    v25 = sub_183F94198(v21 + 8 * v22, v20 - v22, v4);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_435;
    }

    v27 = v23 & ~(v23 >> 63);
    v28 = v26 - v27;
    if (v26 < v27)
    {
      goto LABEL_437;
    }

    if ((~*&v10 & 0x7FF0000000000000) == 0 && (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 || *(v14 + 16))
    {
      v29 = v13 + 32;
      v30 = v15 + 32;
      v31 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
      v32 = *(v6 + 16);
      v33 = v21 + 8 * v27;
      if (!v31 && !v32)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v182 = v3;
        v183 = v2;
        v184 = v5;
        v185 = v4;
        v37 = 1;
        while (1)
        {
          if (v36 == v28)
          {
            if (v35 == 2)
            {
              return 1;
            }

            LODWORD(v38) = 0;
            v39 = *(&v184 + v35++);
            LOBYTE(v175) = 1;
            v36 = v28;
          }

          else
          {
            v39 = *(v33 + 8 * v36);
            v38 = v36 + v27;
            v40 = __OFADD__(v36, v27);
            if (v35 == 2)
            {
              if (v40)
              {
                goto LABEL_398;
              }

              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_401;
              }

              if (HIDWORD(v38))
              {
                goto LABEL_403;
              }

              ++v36;
              LOBYTE(v175) = 0;
              v35 = 2;
            }

            else
            {
              if (v40)
              {
                goto LABEL_399;
              }

              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_400;
              }

              if (HIDWORD(v38))
              {
                goto LABEL_402;
              }

              v41 = *(&v184 + v35);
              if (v39 >= v41)
              {
                if (v41 < v39)
                {
                  LODWORD(v38) = 0;
                  ++v35;
                  LOBYTE(v175) = 1;
                  v39 = v41;
                  goto LABEL_43;
                }

                ++v36;
                ++v35;
              }

              else
              {
                ++v36;
              }

              LOBYTE(v175) = 0;
            }
          }

LABEL_43:
          v37 &= v175;
          if (v175)
          {
            LODWORD(v38) = v34;
          }

          if (v37)
          {
            v42 = 0;
            v43 = 0;
            goto LABEL_73;
          }

          if (v38)
          {
            v44 = *(v13 + 28 + 4 * v38);
          }

          else
          {
            v44 = 0;
          }

          if (v5 <= v39 && v39 < v4)
          {
            v46 = v30 + 8 * v44;
            v47 = *(v29 + 4 * v38) - v44;
            if (v47 < 2)
            {
              v43 = 0;
              v42 = 0;
              if (v47 != 1)
              {
LABEL_69:
                if (v42 < v47 && *(v46 + 8 * v42) < v2)
                {
                  ++v42;
                }

                goto LABEL_72;
              }
            }

            else
            {
              v43 = 0;
              for (k = v47; k > 1; k -= k >> 1)
              {
                if (*(v46 + 8 * (v43 + (k >> 1))) <= v3)
                {
                  v43 += k >> 1;
                }
              }

              if (v43 >= v47)
              {
LABEL_65:
                v49 = v47 - v43;
                v42 = v43;
                if (v47 - v43 >= 2)
                {
                  do
                  {
                    v50 = v49 >> 1;
                    v49 -= v49 >> 1;
                    v51 = v42 + v50;
                    if (*(v46 + 8 * v51) < v2)
                    {
                      v42 = v51;
                    }
                  }

                  while (v49 > 1);
                }

                goto LABEL_69;
              }
            }

            if (*(v46 + 8 * v43) <= v3)
            {
              ++v43;
            }

            goto LABEL_65;
          }

          v42 = 0;
          v43 = 0;
LABEL_72:
          v34 = v38;
LABEL_73:
          v52 = v43 & 1;
          if (v43 < 0)
          {
            v52 = -v52;
          }

          v53 = __OFSUB__(v43, v52);
          v54 = v43 - v52;
          if (v53)
          {
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            __break(1u);
            goto LABEL_387;
          }

          v55 = v42 & 1;
          if (v42 < 0)
          {
            v55 = -v55;
          }

          v53 = __OFADD__(v42, v55);
          v56 = v42 + v55;
          if (v53)
          {
            goto LABEL_385;
          }

          if (v54 != v56)
          {
            return 0;
          }
        }
      }

      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = v6 + 32;
      v71 = 1;
      while (1)
      {
        if (v69 == v28)
        {
          if (v68 == v32)
          {
            return 1;
          }

          if ((v68 & 0x8000000000000000) != 0)
          {
            goto LABEL_392;
          }

          if (HIDWORD(v68))
          {
            goto LABEL_393;
          }

          LODWORD(v72) = 0;
          v73 = *(v70 + 8 * v68++);
          LOBYTE(v182) = 1;
          v69 = v28;
        }

        else
        {
          v73 = *(v33 + 8 * v69);
          v72 = v69 + v27;
          v74 = __OFADD__(v69, v27);
          if (v68 == v32)
          {
            if (v74)
            {
              goto LABEL_404;
            }

            if ((v72 & 0x8000000000000000) != 0)
            {
              goto LABEL_406;
            }

            if (HIDWORD(v72))
            {
              goto LABEL_408;
            }

            ++v69;
            LOBYTE(v182) = 0;
            v68 = v32;
          }

          else
          {
            if (v74)
            {
              goto LABEL_405;
            }

            if ((v72 & 0x8000000000000000) != 0)
            {
              goto LABEL_407;
            }

            if (HIDWORD(v72))
            {
              goto LABEL_409;
            }

            if ((v68 & 0x8000000000000000) != 0)
            {
              goto LABEL_410;
            }

            if (HIDWORD(v68))
            {
              goto LABEL_411;
            }

            v75 = *(v70 + 8 * v68);
            if (v73 >= v75)
            {
              if (v75 < v73)
              {
                LODWORD(v72) = 0;
                ++v68;
                LOBYTE(v182) = 1;
                v73 = v75;
                goto LABEL_129;
              }

              ++v69;
              ++v68;
            }

            else
            {
              ++v69;
            }

            LOBYTE(v182) = 0;
          }
        }

LABEL_129:
        v71 &= LOBYTE(v182);
        if (LOBYTE(v182))
        {
          LODWORD(v72) = v67;
        }

        if (v71)
        {
          v76 = 0;
          v77 = 0;
          goto LABEL_159;
        }

        if (v72)
        {
          v78 = *(v13 + 28 + 4 * v72);
        }

        else
        {
          v78 = 0;
        }

        if (v5 <= v73 && v73 < v4)
        {
          v80 = v30 + 8 * v78;
          v81 = *(v29 + 4 * v72) - v78;
          if (v81 < 2)
          {
            v77 = 0;
            v76 = 0;
            if (v81 != 1)
            {
LABEL_155:
              if (v76 < v81 && *(v80 + 8 * v76) < v2)
              {
                ++v76;
              }

              goto LABEL_158;
            }
          }

          else
          {
            v77 = 0;
            for (m = v81; m > 1; m -= m >> 1)
            {
              if (*(v80 + 8 * (v77 + (m >> 1))) <= v3)
              {
                v77 += m >> 1;
              }
            }

            if (v77 >= v81)
            {
LABEL_151:
              v83 = v81 - v77;
              v76 = v77;
              if (v81 - v77 >= 2)
              {
                do
                {
                  v84 = v83 >> 1;
                  v83 -= v83 >> 1;
                  v85 = v76 + v84;
                  if (*(v80 + 8 * v85) < v2)
                  {
                    v76 = v85;
                  }
                }

                while (v83 > 1);
              }

              goto LABEL_155;
            }
          }

          if (*(v80 + 8 * v77) <= v3)
          {
            ++v77;
          }

          goto LABEL_151;
        }

        v76 = 0;
        v77 = 0;
LABEL_158:
        v67 = v72;
LABEL_159:
        v86 = v77 & 1;
        if (v77 < 0)
        {
          v86 = -v86;
        }

        v53 = __OFSUB__(v77, v86);
        v87 = v77 - v86;
        if (v53)
        {
          goto LABEL_386;
        }

        v88 = v76 & 1;
        if (v76 < 0)
        {
          v88 = -v88;
        }

        v53 = __OFADD__(v76, v88);
        v89 = v76 + v88;
        if (v53)
        {
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
LABEL_396:
          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          __break(1u);
LABEL_399:
          __break(1u);
LABEL_400:
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          __break(1u);
LABEL_403:
          __break(1u);
LABEL_404:
          __break(1u);
LABEL_405:
          __break(1u);
LABEL_406:
          __break(1u);
LABEL_407:
          __break(1u);
LABEL_408:
          __break(1u);
LABEL_409:
          __break(1u);
LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        if (v87 != v89)
        {
          return 0;
        }
      }
    }

    v182 = v10;
    v183 = v9;
    v184 = v12;
    v185 = v11;
    v174[0] = 0x200000002;
    v147 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
    v148 = *(v6 + 16);
    if (!v147 && !v148)
    {
      v175 = *&v3;
      v176 = v2;
      v177 = v5;
      v178 = v4;
      v173 = 0x200000002;
      sub_183F9A5AC(&v184, v174, &v182, &v177, &v172, v3, v2, v5, v4, 2, 0, &v173, 2, &v175, 2, v23 & ~(v23 >> 63), v26);
      return v172;
    }

    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = v6 + 32;
    v153 = 1;
    while (1)
    {
      if (v151 == v28)
      {
        if (v150 == v148)
        {
          return 1;
        }

        if ((v150 & 0x8000000000000000) != 0)
        {
          goto LABEL_439;
        }

        if (HIDWORD(v150))
        {
          goto LABEL_440;
        }

        LODWORD(v154) = 0;
        v155 = *(v152 + 8 * v150++);
        LOBYTE(v175) = 1;
        v151 = v28;
      }

      else
      {
        v155 = *(&v184 + v27 + v151);
        v154 = v151 + v27;
        v156 = __OFADD__(v151, v27);
        if (v150 == v148)
        {
          if (v156)
          {
            goto LABEL_441;
          }

          if ((v154 & 0x8000000000000000) != 0)
          {
            goto LABEL_443;
          }

          if (HIDWORD(v154))
          {
            goto LABEL_445;
          }

          ++v151;
          LOBYTE(v175) = 0;
          v150 = v148;
        }

        else
        {
          if (v156)
          {
            goto LABEL_442;
          }

          if ((v154 & 0x8000000000000000) != 0)
          {
            goto LABEL_444;
          }

          if (HIDWORD(v154))
          {
            goto LABEL_446;
          }

          if ((v150 & 0x8000000000000000) != 0)
          {
            goto LABEL_447;
          }

          if (HIDWORD(v150))
          {
            goto LABEL_448;
          }

          v157 = *(v152 + 8 * v150);
          if (v155 >= v157)
          {
            if (v157 < v155)
            {
              LODWORD(v154) = 0;
              ++v150;
              LOBYTE(v175) = 1;
              v155 = v157;
              goto LABEL_345;
            }

            ++v151;
            ++v150;
          }

          else
          {
            ++v151;
          }

          LOBYTE(v175) = 0;
        }
      }

LABEL_345:
      v153 &= v175;
      if (v175)
      {
        LODWORD(v154) = v149;
      }

      if (v153)
      {
        v158 = 0;
        v159 = 0;
        goto LABEL_375;
      }

      if (v154)
      {
        v160 = *(&v173 + v154 + 1);
      }

      else
      {
        v160 = 0;
      }

      if (v5 <= v155 && v155 < v4)
      {
        v162 = &v182 + v160;
        v163 = *(v174 + v154) - v160;
        if (v163 < 2)
        {
          v159 = 0;
          v158 = 0;
          if (v163 != 1)
          {
LABEL_371:
            if (v158 < v163 && v162[v158] < v2)
            {
              ++v158;
            }

            goto LABEL_374;
          }
        }

        else
        {
          v159 = 0;
          for (n = v163; n > 1; n -= n >> 1)
          {
            if (v162[v159 + (n >> 1)] <= v3)
            {
              v159 += n >> 1;
            }
          }

          if (v159 >= v163)
          {
LABEL_367:
            v165 = v163 - v159;
            v158 = v159;
            if (v163 - v159 >= 2)
            {
              do
              {
                v166 = v165 >> 1;
                v165 -= v165 >> 1;
                v167 = v158 + v166;
                if (v162[v167] < v2)
                {
                  v158 = v167;
                }
              }

              while (v165 > 1);
            }

            goto LABEL_371;
          }
        }

        if (v162[v159] <= v3)
        {
          ++v159;
        }

        goto LABEL_367;
      }

      v158 = 0;
      v159 = 0;
LABEL_374:
      v149 = v154;
LABEL_375:
      v168 = v159 & 1;
      if (v159 < 0)
      {
        v168 = -v168;
      }

      v53 = __OFSUB__(v159, v168);
      v169 = v159 - v168;
      if (v53)
      {
        goto LABEL_412;
      }

      v170 = v158 & 1;
      if (v158 < 0)
      {
        v170 = -v170;
      }

      v53 = __OFADD__(v158, v170);
      v171 = v158 + v170;
      if (v53)
      {
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
LABEL_424:
        __break(1u);
LABEL_425:
        __break(1u);
LABEL_426:
        __break(1u);
LABEL_427:
        __break(1u);
LABEL_428:
        __break(1u);
LABEL_429:
        __break(1u);
LABEL_430:
        __break(1u);
LABEL_431:
        __break(1u);
LABEL_432:
        __break(1u);
LABEL_433:
        __break(1u);
LABEL_434:
        __break(1u);
LABEL_435:
        __break(1u);
LABEL_436:
        __break(1u);
LABEL_437:
        __break(1u);
LABEL_438:
        __break(1u);
LABEL_439:
        __break(1u);
LABEL_440:
        __break(1u);
LABEL_441:
        __break(1u);
LABEL_442:
        __break(1u);
LABEL_443:
        __break(1u);
LABEL_444:
        __break(1u);
LABEL_445:
        __break(1u);
LABEL_446:
        __break(1u);
LABEL_447:
        __break(1u);
LABEL_448:
        __break(1u);
      }

      if (v169 != v171)
      {
        return 0;
      }
    }
  }

  return v16 - 1 >= 3;
}

void Region.subtract(_:)(uint64_t a1)
{
  v3 = v1;
  v123[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v119 = *a1;
  v120 = v4;
  v121 = *(a1 + 32);
  v122 = *(a1 + 48);
  v5 = *v1;
  v6 = *v1 & 0x7FF0000000000000;
  v7 = v6 == 0x7FF0000000000000;
  v8 = *v1 & 0xFFFFFFFFFFFFFLL;
  if (!v8)
  {
    v7 = 0;
  }

  v9 = !v7 && *(*(v1 + 32) + 16) == 0;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  if ((~v119 & 0x7FF0000000000000) != 0)
  {
    v13 = *(&v120 + 1) < v11 || v7;
    if (v13)
    {
      return;
    }
  }

  else if (v6 == 0x7FF0000000000000 && v8 || (v119 & 0xFFFFFFFFFFFFFLL) != 0 || *(&v120 + 1) < v11)
  {
    return;
  }

  if (v12 < *&v120 || v10 < *&v119 || *(&v119 + 1) < v5)
  {
    return;
  }

  v14 = *(v1 + 40);
  v15 = *(v1 + 32);
  v106 = v1 + 40;
  v16 = *(v1 + 48);
  v108 = (v1 + 48);
  *&v115 = v5;
  *(&v115 + 1) = v10;
  *&v116 = v11;
  *(&v116 + 1) = v12;
  *&v117 = v15;
  *(&v117 + 1) = v14;
  v118 = v16;
  v17 = sub_183FA42A4(v9, *&v120, *(&v120 + 1));
  v19 = v18;
  v21 = v14;
  v20 = v15;
  v22 = v16;

  if (*(v121 + 16))
  {
    v24 = *(v121 + 16);
  }

  else
  {
    v24 = 2;
  }

  v25 = v19 - v17;
  if (__OFSUB__(v19, v17))
  {
    goto LABEL_133;
  }

  v26 = __OFADD__(v25, v24);
  v27 = (v25 + v24);
  if (v26)
  {
    goto LABEL_134;
  }

  v107 = v27;
  v15 = *(v3 + 40);
  v21 = *(v3 + 48);
  v112 = sub_183FA4388(v17, v19);
  v22 = v17;
  v17 = v15;
  LODWORD(v2) = v21;

  v115 = v119;
  v116 = v120;
  v117 = v121;
  v118 = v122;
  v20 = &v115;
  v28 = sub_183FA4388(0, v24);
  v30 = v112 + v28;
  if (__OFADD__(v112, v28))
  {
    goto LABEL_135;
  }

  v105[3] = v105;
  MEMORY[0x1EEE9AC00](v28, v29);
  v15 = v104;
  v104[2] = &v119;
  v104[3] = v22;
  v104[4] = v19;
  v31 = sub_183FA5A00();
  v33 = *(v3 + 40);
  v34 = *(v33 + 16);
  LODWORD(v2) = v19 == v34;
  v21 = v19;
  v17 = v22;
  if (v22)
  {
    v35 = v22 - 1;
    v36 = v107;
    if (__OFSUB__(v22, 1))
    {
      goto LABEL_148;
    }

    if (v35 >= v34)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v23 = *(v33 + 32 + 4 * v35);
    if (v22 > 1)
    {
      if (v22 - 2 >= v34)
      {
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
      }

      LODWORD(v2) = 0;
      v20 = *(v33 + 32 + 4 * (v22 - 2));
      if (!v19)
      {
        v109 = 0;
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    LODWORD(v2) = 0;
  }

  else
  {
    v23 = 0;
    v36 = v107;
  }

  v109 = 0;
  v20 = 0;
  if (!v19)
  {
    goto LABEL_38;
  }

LABEL_35:
  v37 = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v37 >= v34)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v109 = *(v33 + 4 * v37 + 32);
LABEL_38:
  v22 = v36 * v30;
  if ((v36 * v30) >> 64 != (v36 * v30) >> 63)
  {
    goto LABEL_136;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  v105[0] = v34;
  if (v36 >> 60)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if ((8 * v36) >= 1025)
  {
    goto LABEL_137;
  }

  while (1)
  {
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v31, v32);
    v41 = v104 - v40;
    v110 = v42;
    if (v43 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v95 = v107;
        v101.n128_u64[1] = v15;
        v101.n128_u64[0] = sub_183FA327C;
        v96 = swift_slowAlloc();
        sub_183FA8588(v96, v95, v22, v41, v95, v3, v20, v110, &v124, v101, v22, 1, v2, v109, v17, v21, v17);
        MEMORY[0x1865EFCB0](v96, -1, -1);
        goto LABEL_91;
      }
    }

    v111 = v17;
    v112 = v21;
    v44 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v39);
    v48 = v104 - v47;
    if (v22 < 0)
    {
      goto LABEL_157;
    }

    if (v22 >> 60)
    {
      goto LABEL_158;
    }

    v105[2] = v45;
    if (8 * v22 >= 1025)
    {
      v44 = swift_stdlib_isStackAllocationSafe();
      if ((v44 & 1) == 0)
      {
        break;
      }
    }

    v107 = v104;
    MEMORY[0x1EEE9AC00](v44, v46);
    v52 = v104 - v51;
    v113 = 0;
    v114 = 0;
    if (v49 < v20)
    {
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v105[1] = v50;
    v53 = *(v3 + 40);
    v54 = *(v3 + 48);
    v55 = *v3;
    v56 = *(v3 + 16);
    v57 = *(v3 + 32);
    v123[0] = v54 + 8 * v20 + 32;
    v123[1] = v49 - v20;
    v115 = v55;
    v116 = v56;
    *&v117 = v57;
    *(&v117 + 1) = v53;
    v118 = v54;
    v58 = v49;
    swift_retain_n();

    sub_183FA2360(&v115, &v119, v111, v112, v52, &v113, v22, 1, v123, v41, &v114, v48, v58, &qword_1EA853EC0, &byte_1EA868CE9);

    v22 = v113;
    if (v113 < 0)
    {
      goto LABEL_144;
    }

    v59 = v108;
    v60 = v109;
    if (v2)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        if (v22)
        {
LABEL_56:
          v64 = sub_183EA76E4(v22, 0);
          memcpy(v64 + 4, v52, 8 * v22);
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        *v59 = v64;
        v61 = v114;
        if ((v114 & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        goto LABEL_59;
      }

      if (v22 > *(*v59 + 24) >> 1)
      {
        goto LABEL_56;
      }
    }

    if (v60 < v110)
    {
      goto LABEL_152;
    }

    sub_183F7DC7C(v110, v60, v52, v22);
    v61 = v114;
    if ((v114 & 0x8000000000000000) != 0)
    {
      goto LABEL_145;
    }

    if (!v2)
    {
      v62 = v111;
      v63 = v112;
      sub_183F7DC7C(v111, v112, v41, v114);
      v20 = v106;
      goto LABEL_69;
    }

LABEL_59:
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v61)
      {
LABEL_63:
        v65 = sub_183EA76E4(v61, 0);
        memcpy(v65 + 4, v41, 8 * v61);
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      *(v3 + 32) = v65;
      goto LABEL_66;
    }

    if (v61 > *(*(v3 + 32) + 24) >> 1)
    {
      goto LABEL_63;
    }

    sub_183F7DC7C(v111, v112, v41, v61);
LABEL_66:
    v20 = v106;
    if (!swift_isUniquelyReferenced_nonNull_native())
    {
      if (v61)
      {
LABEL_71:
        v66 = sub_183F9BAB8(v61, 0);
        memcpy(v66 + 4, v48, 4 * v61);
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      *v20 = v66;
      goto LABEL_74;
    }

    if (v61 > *(*v20 + 24) >> 1)
    {
      goto LABEL_71;
    }

    v63 = v112;
    v62 = v111;
LABEL_69:
    sub_183F7DCA8(v62, v63, v48, v61);
LABEL_74:
    v67 = v110 + v22;
    if (__OFADD__(v110, v22))
    {
      goto LABEL_146;
    }

    v2 = v67 - v60;
    if (__OFSUB__(v67, v60))
    {
      goto LABEL_147;
    }

    v21 = v112;
    v17 = v111;
    if (!v2)
    {
      goto LABEL_91;
    }

    v68 = v111 + v61;
    if (__OFADD__(v111, v61))
    {
      goto LABEL_153;
    }

    v69 = *v20;
    v15 = *(*v20 + 16);
    if (v15 < v68)
    {
      goto LABEL_154;
    }

    if (v68 == v15)
    {
      goto LABEL_91;
    }

    if (v68 >= v15)
    {
      goto LABEL_160;
    }

    if (v68 < 0)
    {
      goto LABEL_161;
    }

    if (!v15)
    {
      goto LABEL_162;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_183F9C14C(v69);
    }

    while (v68 < *(v69 + 2))
    {
      v70 = &v69[4 * v68];
      v71 = *(v70 + 8);
      v26 = __OFADD__(v71, v2);
      v72 = v71 + v2;
      if (v26)
      {
        goto LABEL_130;
      }

      if ((v72 & 0x8000000000000000) != 0)
      {
        goto LABEL_131;
      }

      if (HIDWORD(v72))
      {
        goto LABEL_132;
      }

      ++v68;
      *(v70 + 8) = v72;
      if (v15 == v68)
      {
        *v20 = v69;
        goto LABEL_91;
      }
    }

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
LABEL_137:
    v92 = v23;
    v31 = swift_stdlib_isStackAllocationSafe();
    if ((v31 & 1) == 0)
    {
      v93 = v107;
      v94 = swift_slowAlloc();
      v103.n128_u64[1] = v17;
      v103.n128_u64[0] = v109;
      sub_183FA6B50(v94, v93, v93, v22, v3, v20, v92, sub_183FA327C, 1uLL, v15, v22, 1u, v2, v103, v21, v17);
      MEMORY[0x1865EFCB0](v94, -1, -1);
      goto LABEL_91;
    }
  }

  v97 = v107;
  v98 = swift_slowAlloc();
  v21 = v112;
  v102 = v15;
  v99 = v98;
  v100 = v48;
  v17 = v111;
  sub_183FA8E88(v98, v22, v41, v97, v100, v97, v3, v20, v110, sub_183FA327C, v102, v22, 1, v2, v109, v111, v112, v111);
  MEMORY[0x1865EFCB0](v99, -1, -1);
LABEL_91:
  v73 = *(v3 + 32);
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = *(v3 + 40);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = (*v108 + 32);
      v78 = *v108 + 24;
      v79 = *(v75 + 32);
      if (v79)
      {
        v80 = *v77;
        v81 = *(v78 + 8 * v79);
        v82 = NAN;
        if ((*v77 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          v82 = *v77;
        }

        if ((~*v77 & 0x7FF0000000000000) == 0)
        {
          v80 = v82;
        }

        if ((~*&v81 & 0x7FF0000000000000) == 0 && (*(v78 + 8 * v79) & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v81 = NAN;
        }

        v83 = v76 - 1;
        if (v83)
        {
LABEL_114:
          v86 = (v75 + 36);
          do
          {
            v88 = *v86++;
            v87 = v88;
            if (v79 != v88)
            {
              v89 = v77[v79];
              v90 = *(v78 + 8 * v87);
              if ((*&v89 & 0xFFFFFFFFFFFFFLL) != 0)
              {
                v91 = v80;
              }

              else
              {
                v91 = v89;
              }

              if ((~*&v89 & 0x7FF0000000000000) != 0)
              {
                v91 = v89;
              }

              if (v80 > v89)
              {
                v80 = v91;
              }

              if (v90 >= v81)
              {
                if ((~*&v90 & 0x7FF0000000000000) != 0)
                {
                  v81 = *(v78 + 8 * v87);
                }

                else if ((*(v78 + 8 * v87) & 0xFFFFFFFFFFFFFLL) == 0)
                {
                  v81 = *(v78 + 8 * v87);
                }
              }
            }

            v79 = v87;
            --v83;
          }

          while (v83);
        }
      }

      else
      {
        v81 = NAN;
        v80 = NAN;
        v83 = v76 - 1;
        if (v83)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
      v81 = NAN;
      v80 = NAN;
    }

    if (v17)
    {
      v84 = *(v3 + 16);
    }

    else
    {
      v84 = *(v73 + 32);
    }

    if (v21 == v105[0])
    {
      v85 = *(v73 + 8 * v74 + 24);
    }

    else
    {
      v85 = *(v3 + 24);
    }
  }

  else
  {
    v80 = NAN;
    v81 = NAN;
    v84 = 0x7FF8000000000000;
    v85 = 0x7FF8000000000000;
  }

  *v3 = v80;
  *(v3 + 8) = v81;
  *(v3 + 16) = v84;
  *(v3 + 24) = v85;
  sub_183FA5EA0();
}

uint64_t sub_183F99594(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_183F9986C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_183F995EC(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v13 && !*(v11 + 16))
  {
    v25 = *(a1 + 16);
    *v33 = *a1;
    *&v33[16] = v25;
    v32 = 0x200000002;
    v26 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v27 = *(a8 + 32);
    v28 = *(v27 + 16);
    if (v26 || v28)
    {
      v34 = &v33[8 * a9 + 16];
      v35 = a10 - a9;
      v36 = a9;
      v37 = (v27 + 32);
      v38 = v28;
      v39 = 0x7FF8000000000000;
      v40 = 0;
      v41 = 1;
      v42 = 0;
      v43 = 1;
      v44 = &v32;
      v45 = 2;
      v46 = v33;
      v47 = 2;
      v48 = a3;
      v49 = a4;
      v50 = a5;
      v51 = a6;
      v52 = 1;
    }

    else
    {
      v29 = *(a8 + 24);
      v30 = *(a8 + 8);
      v31 = v29;
      v34 = &v33[8 * a9 + 16];
      v35 = a10 - a9;
      v36 = a9;
      v37 = &v30 + 8;
      v38 = xmmword_184399820;
      v39 = 0x7FF8000000000000;
      v40 = 0;
      v41 = 1;
      v42 = 0;
      v43 = 1;
      v44 = &v32;
      v45 = 2;
      v46 = v33;
      v47 = 2;
      v48 = a3;
      v49 = a4;
      v50 = a5;
      v51 = a6;
      v52 = 1;
    }
  }

  else
  {
    v14 = v11 + 32;
    v15 = (v10 + 32);
    v16 = *(v10 + 16);
    v17 = (v12 + 32);
    v18 = *(v12 + 16);
    v19 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v20 = *(a8 + 32);
    v21 = *(v20 + 16);
    if (!v19 && v21 == 0)
    {
      v23 = *(a8 + 24);
      *v33 = *a8;
      *&v33[8] = *(a8 + 8);
      *&v33[24] = v23;
      v34 = (v14 + 8 * a9);
      v35 = a10 - a9;
      v36 = a9;
      v37 = &v33[16];
      v38 = xmmword_184399820;
    }

    else
    {
      v33[0] = 1;
      v34 = (v14 + 8 * a9);
      v35 = a10 - a9;
      v36 = a9;
      v37 = (v20 + 32);
      v38 = v21;
    }

    v39 = 0x7FF8000000000000;
    v40 = 0;
    v41 = 1;
    v42 = 0;
    v43 = 1;
    v44 = v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = a3;
    v49 = a4;
    v50 = a5;
    v51 = a6;
    v52 = 1;
  }

  return a2(&v34);
}

uint64_t sub_183F9986C(uint64_t a1, uint64_t (*a2)(_BYTE **), double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v11 && !*(v10 + 16))
  {
    v30 = *(a1 + 16);
    *v41 = *a1;
    *&v41[16] = v30;
    v31 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
    v32 = *(a8 + 32);
    v15 = *(v32 + 16);
    if (v31 || v15 != 0)
    {
      v17 = (v32 + 32);
      v34 = *(a8 + 40);
      v35 = *(a8 + 48);
      v20 = (v34 + 32);
      v21 = *(v34 + 16);
      v22 = (v35 + 32);
      v23 = *(v35 + 16);
      v24 = &v41[8 * a9 + 16];
      v25 = a10 - a9;
      LOBYTE(v42) = 1;
      LOBYTE(v38) = 1;
      goto LABEL_15;
    }

    v36 = *(a8 + 24);
    v38 = *a8;
    v27 = &v38;
    v39 = *(a8 + 8);
    v40 = v36;
    v37 = 0x200000002;
    v42 = &v41[8 * a9 + 16];
    v43 = a10 - a9;
    v44 = a9;
    v45 = &v39 + 8;
    v46 = xmmword_184399820;
    v47 = 0x7FF8000000000000;
    v48 = 0;
    v49 = 1;
    v50 = 0;
    v51 = 1;
    v28 = &v37;
LABEL_17:
    v52 = v28;
    v53 = 2;
    v54 = v27;
    v55 = 2;
    goto LABEL_18;
  }

  v12 = v10 + 32;
  v13 = (*a8 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a8 & 0x7FF0000000000000) == 0;
  v14 = *(a8 + 32);
  v15 = *(v14 + 16);
  if (!v13 && v15 == 0)
  {
    v26 = *(a8 + 24);
    *v41 = *a8;
    v27 = v41;
    *&v41[8] = *(a8 + 8);
    *&v41[24] = v26;
    v38 = 0x200000002;
    LOBYTE(v37) = 1;
    v42 = (v12 + 8 * a9);
    v43 = a10 - a9;
    v44 = a9;
    v45 = &v41[16];
    v46 = xmmword_184399820;
    v47 = 0x7FF8000000000000;
    v48 = 0;
    v49 = 1;
    v50 = 0;
    v51 = 1;
    v28 = &v38;
    goto LABEL_17;
  }

  v17 = (v14 + 32);
  v18 = *(a8 + 40);
  v19 = *(a8 + 48);
  v20 = (v18 + 32);
  v21 = *(v18 + 16);
  v22 = (v19 + 32);
  v23 = *(v19 + 16);
  v24 = (v12 + 8 * a9);
  v25 = a10 - a9;
  LOBYTE(v42) = 1;
  v41[0] = 1;
LABEL_15:
  v42 = v24;
  v43 = v25;
  v44 = a9;
  v45 = v17;
  v46 = v15;
  v47 = 0x7FF8000000000000;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  v55 = v23;
LABEL_18:
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  v60 = 0;
  return a2(&v42);
}

void sub_183F99AD4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a5;
  v16 = a3;
  v17 = a14;
  v18 = a12;
  v63 = *MEMORY[0x1E69E9840];
  v21 = a2[4];
  v22 = *(v21 + 16);
  v23 = (~*a2 & 0x7FF0000000000000) != 0 || (*a2 & 0xFFFFFFFFFFFFFLL) == 0;
  v59 = a7;
  v58 = a6;
  if (v23)
  {
    if (v22)
    {
LABEL_16:
      v29 = 0;
      v27 = v21 + 32;
      v30 = a2[5];
      v31 = v30 + 32;
      v56 = a2[6] + 32;
      v32 = v30 + 28;
      v55 = v30 + 28;
      while (1)
      {
        if (v29 == 0x100000000)
        {
          __break(1u);
LABEL_82:
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
          goto LABEL_90;
        }

        if (v29)
        {
          v33 = *(v32 + 4 * v29);
        }

        else
        {
          v33 = 0;
        }

        v34 = *v15;
        v35 = a6 - *v15;
        if (a6 < *v15)
        {
          goto LABEL_82;
        }

        v24 = *(v27 + 8 * v29);
        v36 = *(v31 + 4 * v29);
        if (v16)
        {
          v26 = (v16 + 8 * v34);
        }

        else
        {
          v26 = 0;
        }

        if (v36 == v33 || a6 == v34)
        {
          v37 = 0;
          if ((a7 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = a11;
          v39 = v16;
          v40 = v31;
          v41 = a9;
          v42 = a8;
          if (v36 - v33 >= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v36 - v33;
          }

          memcpy(v26, (v56 + 8 * v33), 8 * v37);
          a7 = v59;
          if ((v59 & 1) == 0)
          {
            v17 = a14;
            v18 = a12;
            a8 = v42;
            a9 = v41;
            v31 = v40;
            v16 = v39;
            a11 = v38;
            v15 = a5;
            a6 = v58;
            v32 = v55;
            goto LABEL_43;
          }

          v17 = a14;
          v18 = a12;
          a8 = v42;
          a9 = v41;
          v31 = v40;
          v16 = v39;
          a11 = v38;
          v15 = a5;
          a6 = v58;
          v32 = v55;
          if (v37 < 0)
          {
            goto LABEL_87;
          }
        }

        if (*(a8 + 8) == v37)
        {
          if (!v37)
          {
            goto LABEL_17;
          }

          v43 = *a8;
          v44 = v37;
          v45 = v26;
          while (*v43 == *v45)
          {
            ++v45;
            ++v43;
            if (!--v44)
            {
              goto LABEL_17;
            }
          }
        }

        *a8 = v26;
        *(a8 + 8) = v37;
LABEL_43:
        if (__OFADD__(*v15, v37))
        {
          goto LABEL_83;
        }

        *v15 += v37;
        *(a9 + 8 * *a11) = v24;
        v46 = v17 + *v15;
        if (__OFADD__(v17, *v15))
        {
          goto LABEL_84;
        }

        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (HIDWORD(v46))
        {
          goto LABEL_86;
        }

        *(v18 + 4 * *a11) = v46;
        if (__OFADD__(*a11, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        ++*a11;
LABEL_17:
        if (++v29 == v22)
        {
          return;
        }
      }
    }

    v14 = a2[2];
    v24 = a2[3];
    __src = *a2;
    v61 = v14;
    v62 = v24;
    v25 = *a5;
    if (a6 < *a5)
    {
      goto LABEL_88;
    }

    if (a3)
    {
      v26 = (a3 + 8 * v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = a6 - v25;
    if (a6 == v25)
    {
      if ((a7 & 1) == 0)
      {
        v28 = 0;
        goto LABEL_63;
      }

      if (!*(a8 + 8))
      {
        goto LABEL_69;
      }

      v28 = 0;
    }

    else
    {
LABEL_50:
      v47 = a8;
      if (v27 >= 2)
      {
        v28 = 2;
      }

      else
      {
        v28 = v27;
      }

      memcpy(v26, &__src, 8 * v28);
      a7 = v59;
      if ((v59 & 1) == 0)
      {
        v17 = a14;
        v18 = a12;
        a8 = v47;
        a6 = v58;
        goto LABEL_63;
      }

      v17 = a14;
      v18 = a12;
      if (v27 < 0)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
      }

      a8 = v47;
      a6 = v58;
      if (*(v47 + 8) == v28)
      {
        v48 = *v47;
        v49 = v28;
        v50 = v26;
        while (*v48 == *v50)
        {
          ++v50;
          ++v48;
          if (!--v49)
          {
            goto LABEL_69;
          }
        }
      }
    }

    *a8 = v26;
    *(a8 + 8) = v28;
LABEL_63:
    if (__OFADD__(*v15, v28))
    {
      goto LABEL_94;
    }

    *v15 += v28;
    *(a9 + 8 * *a11) = v14;
    v51 = v17 + *v15;
    if (__OFADD__(v17, *v15))
    {
      goto LABEL_89;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (HIDWORD(v51))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    *(v18 + 4 * *a11) = v51;
    if (__OFADD__(*a11, 1))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    ++*a11;
LABEL_69:
    v52 = *v15;
    if (*v15 > a6)
    {
      goto LABEL_88;
    }

    v53 = v16 + 8 * v52;
    if (!v16)
    {
      v53 = 0;
    }

    if (a7)
    {
      if (!*(a8 + 8))
      {
        return;
      }

      *a8 = v53;
      *(a8 + 8) = 0;
      v52 = *v15;
    }

    *v15 = v52;
    *(a9 + 8 * *a11) = v24;
    v54 = v17 + *v15;
    if (__OFADD__(v17, *v15))
    {
      goto LABEL_89;
    }

    if ((v54 & 0x8000000000000000) != 0)
    {
LABEL_90:
      __break(1u);
    }

    else if (!HIDWORD(v54))
    {
      *(v18 + 4 * *a11) = v54;
      if (!__OFADD__(*a11, 1))
      {
        ++*a11;
        return;
      }

      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (v22)
  {
    goto LABEL_16;
  }
}

uint64_t sub_183F99EF8(uint64_t a1, uint64_t (*a2)(char **), uint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
  v5 = a4[4];
  v6 = *(v5 + 16);
  if (!v4 && v6 == 0)
  {
    v14 = a4[3];
    v17 = *a4;
    v18 = *(a4 + 1);
    v19 = v14;
    v16 = 0x200000002;
    v20 = &v18 + 8;
    v21 = xmmword_184399820;
    v22 = &v16;
    v23 = 2;
    v24 = &v17;
    v25 = 2;
  }

  else
  {
    v8 = a4[5];
    v9 = a4[6];
    v10 = (v8 + 32);
    v11 = *(v8 + 16);
    v12 = (v9 + 32);
    v13 = *(v9 + 16);
    v20 = (v5 + 32);
    v21 = v6;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
  }

  return a2(&v20);
}

uint64_t sub_183F99FF0(uint64_t a1, uint64_t (*a2)(char **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !*(v7 + 16))
  {
    v27 = *(a1 + 16);
    *v43 = *a1;
    *&v43[16] = v27;
    v42 = 0x200000002;
    v28 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v29 = *(a4 + 32);
    v30 = *(v29 + 16);
    if (v28 || v30)
    {
      v32 = *(a4 + 40);
      v33 = *(a4 + 48);
      v34 = (v32 + 32);
      v35 = *(v32 + 16);
      v36 = (v33 + 32);
      v37 = *(v33 + 16);
      LOBYTE(v39) = 1;
      v44 = (v29 + 32);
      v45 = v30;
      v46 = &v43[8 * a5 + 16];
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v34;
      v55 = v35;
      v56 = v36;
      v57 = v37;
      v58 = &v42;
      v59 = 2;
    }

    else
    {
      v31 = *(a4 + 24);
      v39 = *a4;
      v40 = *(a4 + 8);
      v41 = v31;
      v38 = 0x200000002;
      v44 = &v40 + 8;
      v45 = xmmword_184399820;
      v46 = &v43[8 * a5 + 16];
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v38;
      v55 = 2;
      v56 = &v39;
      v57 = 2;
      v58 = &v42;
      v59 = 2;
    }

    v60 = v43;
    v61 = 2;
  }

  else
  {
    v10 = v7 + 32;
    v11 = (v6 + 32);
    v12 = *(v6 + 16);
    v13 = (v8 + 32);
    v14 = *(v8 + 16);
    v15 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (!v15 && v17 == 0)
    {
      v25 = *(a4 + 24);
      *v43 = *a4;
      *&v43[8] = *(a4 + 8);
      *&v43[24] = v25;
      v39 = 0x200000002;
      LOBYTE(v42) = 1;
      v44 = &v43[16];
      v45 = xmmword_184399820;
      v46 = (v10 + 8 * a5);
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v39;
      v55 = 2;
      v56 = v43;
      v57 = 2;
    }

    else
    {
      v19 = *(a4 + 40);
      v20 = *(a4 + 48);
      v21 = (v19 + 32);
      v22 = *(v19 + 16);
      v23 = (v20 + 32);
      v24 = *(v20 + 16);
      v43[0] = 1;
      v44 = (v16 + 32);
      v45 = v17;
      v46 = (v10 + 8 * a5);
      v47 = a6 - a5;
      v48 = a5;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v21;
      v55 = v22;
      v56 = v23;
      v57 = v24;
    }

    v58 = v11;
    v59 = v12;
    v60 = v13;
    v61 = v14;
  }

  return a2(&v44);
}

uint64_t sub_183F9A2CC(uint64_t a1, uint64_t (*a2)(_BYTE **), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !*(v7 + 16))
  {
    v27 = *(a1 + 16);
    *v43 = *a1;
    *&v43[16] = v27;
    v42 = 0x200000002;
    v28 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v29 = *(a4 + 32);
    v30 = *(v29 + 16);
    if (v28 || v30)
    {
      v32 = *(a4 + 40);
      v33 = *(a4 + 48);
      v34 = (v32 + 32);
      v35 = *(v32 + 16);
      v36 = (v33 + 32);
      v37 = *(v33 + 16);
      LOBYTE(v39) = 1;
      v44 = &v43[8 * a5 + 16];
      v45 = a6 - a5;
      v46 = a5;
      v47 = (v29 + 32);
      v48 = v30;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v42;
      v55 = 2;
      v56 = v43;
      v57 = 2;
      v58 = v34;
      v59 = v35;
      v60 = v36;
      v61 = v37;
    }

    else
    {
      v31 = *(a4 + 24);
      v39 = *a4;
      v40 = *(a4 + 8);
      v41 = v31;
      v38 = 0x200000002;
      v44 = &v43[8 * a5 + 16];
      v45 = a6 - a5;
      v46 = a5;
      v47 = &v40 + 8;
      v48 = xmmword_184399820;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = &v42;
      v55 = 2;
      v56 = v43;
      v57 = 2;
      v58 = &v38;
      v59 = 2;
      v60 = &v39;
      v61 = 2;
    }
  }

  else
  {
    v10 = v7 + 32;
    v11 = (v6 + 32);
    v12 = *(v6 + 16);
    v13 = (v8 + 32);
    v14 = *(v8 + 16);
    v15 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (!v15 && v17 == 0)
    {
      v25 = *(a4 + 24);
      *v43 = *a4;
      *&v43[8] = *(a4 + 8);
      *&v43[24] = v25;
      v39 = 0x200000002;
      LOBYTE(v42) = 1;
      v44 = (v10 + 8 * a5);
      v45 = a6 - a5;
      v46 = a5;
      v47 = &v43[16];
      v48 = xmmword_184399820;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v11;
      v55 = v12;
      v56 = v13;
      v57 = v14;
      v58 = &v39;
      v59 = 2;
      v60 = v43;
      v61 = 2;
    }

    else
    {
      v19 = *(a4 + 40);
      v20 = *(a4 + 48);
      v21 = (v19 + 32);
      v22 = *(v19 + 16);
      v23 = (v20 + 32);
      v24 = *(v20 + 16);
      v43[0] = 1;
      v44 = (v10 + 8 * a5);
      v45 = a6 - a5;
      v46 = a5;
      v47 = (v16 + 32);
      v48 = v17;
      v49 = 0x7FF8000000000000;
      v50 = 0;
      v51 = 1;
      v52 = 0;
      v53 = 1;
      v54 = v11;
      v55 = v12;
      v56 = v13;
      v57 = v14;
      v58 = v21;
      v59 = v22;
      v60 = v23;
      v61 = v24;
    }
  }

  return a2(&v44);
}

unint64_t sub_183F9A5AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = result + 8 * a16;
  if (!result)
  {
    v20 = 0;
  }

  v21 = 1;
  while (1)
  {
    if (v19 == a17 - a16)
    {
      if (v18 == a10)
      {
        v39 = 1;
        goto LABEL_69;
      }

      result = v18 + a11;
      if (__OFADD__(v18, a11))
      {
        goto LABEL_72;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      result >>= 32;
      if (result)
      {
        goto LABEL_74;
      }

      v22 = *(a4 + 8 * v18++);
      v40 = 1;
      v19 = a17 - a16;
    }

    else
    {
      v22 = *(v20 + 8 * v19);
      result = v19 + a16;
      v23 = __OFADD__(v19, a16);
      if (v18 == a10)
      {
        if (v23)
        {
          goto LABEL_76;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        if (HIDWORD(result))
        {
          goto LABEL_80;
        }

        ++v19;
        v40 = 0;
        v18 = a10;
      }

      else
      {
        if (v23)
        {
          goto LABEL_75;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (HIDWORD(result))
        {
          goto LABEL_79;
        }

        v24 = v18 + a11;
        if (__OFADD__(v18, a11))
        {
          goto LABEL_81;
        }

        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        if (HIDWORD(v24))
        {
          goto LABEL_83;
        }

        v25 = *(a4 + 8 * v18);
        if (v22 >= v25)
        {
          if (v25 < v22)
          {
            LODWORD(result) = 0;
            ++v18;
            v40 = 1;
            v22 = v25;
            goto LABEL_30;
          }

          ++v19;
          ++v18;
        }

        else
        {
          ++v19;
        }

        v40 = 0;
      }
    }

LABEL_30:
    v21 &= v40;
    if (v40)
    {
      LODWORD(result) = v17;
    }

    if (v21)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_60;
    }

    if (result)
    {
      v28 = *(a2 - 4 + 4 * result);
    }

    else
    {
      v28 = 0;
    }

    v26 = 0;
    v29 = a3 + 8 * v28;
    if (!a3)
    {
      v29 = 0;
    }

    if (v22 < a8 || v22 >= a9)
    {
      v17 = result;
      v27 = 0;
      goto LABEL_60;
    }

    v30 = *(a2 + 4 * result) - v28;
    if (v30 >= 2)
    {
      v27 = 0;
      for (i = v30; i > 1; i -= i >> 1)
      {
        if (*(v29 + 8 * (v27 + (i >> 1))) <= a6)
        {
          v27 += i >> 1;
        }
      }

      if (v27 < v30)
      {
LABEL_50:
        if (*(v29 + 8 * v27) <= a6)
        {
          ++v27;
        }
      }

      v32 = v30 - v27;
      v26 = v27;
      if (v30 - v27 >= 2)
      {
        do
        {
          v33 = v32 >> 1;
          v32 -= v32 >> 1;
          v34 = v26 + v33;
          if (*(v29 + 8 * v34) < a7)
          {
            v26 = v34;
          }
        }

        while (v32 > 1);
      }

      goto LABEL_56;
    }

    v27 = 0;
    v26 = 0;
    if (v30 == 1)
    {
      goto LABEL_50;
    }

LABEL_56:
    if (v26 < v30 && *(v29 + 8 * v26) < a7)
    {
      ++v26;
    }

    v17 = result;
LABEL_60:
    v35 = v27 & 1;
    if (v27 < 0)
    {
      v35 = -v35;
    }

    v36 = __OFSUB__(v27, v35);
    result = v27 - v35;
    if (v36)
    {
      break;
    }

    v37 = v26 & 1;
    if (v26 < 0)
    {
      v37 = -v37;
    }

    v36 = __OFADD__(v26, v37);
    v38 = v26 + v37;
    if (v36)
    {
      goto LABEL_71;
    }

    if (result != v38)
    {
      v39 = 0;
LABEL_69:
      *a5 = v39;
      return result;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_183F9A840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, char *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a1 + 8 * a14;
  if (!a1)
  {
    v18 = 0;
  }

  result = 1;
  v20 = 1;
  while (1)
  {
    if (v17 == a15 - a14)
    {
      if (v16 == a8)
      {
        v40 = 1;
        goto LABEL_68;
      }

      v21 = v16 + a9;
      if (__OFADD__(v16, a9))
      {
        goto LABEL_71;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_72;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_73;
      }

      v22 = *(a2 + 8 * v16++);
      v41 = 0;
      v17 = a15 - a14;
    }

    else
    {
      v22 = *(v18 + 8 * v17);
      v23 = v17 + a14;
      v24 = __OFADD__(v17, a14);
      if (v16 == a8)
      {
        if (v24)
        {
          goto LABEL_75;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (HIDWORD(v23))
        {
          goto LABEL_79;
        }

        LODWORD(v21) = 0;
        ++v17;
        v41 = 1;
        v16 = a8;
      }

      else
      {
        if (v24)
        {
          goto LABEL_74;
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (HIDWORD(v23))
        {
          goto LABEL_78;
        }

        v21 = v16 + a9;
        if (__OFADD__(v16, a9))
        {
          goto LABEL_80;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_81;
        }

        if (HIDWORD(v21))
        {
          goto LABEL_82;
        }

        v25 = *(a2 + 8 * v16);
        if (v22 >= v25)
        {
          if (v25 >= v22)
          {
            ++v17;
            ++v16;
            v41 = 0;
          }

          else
          {
            ++v16;
            v41 = 0;
            v22 = v25;
          }
        }

        else
        {
          LODWORD(v21) = 0;
          ++v17;
          v41 = 1;
        }
      }
    }

    v20 &= v41;
    if (v41)
    {
      LODWORD(v21) = v15;
    }

    if (v20)
    {
      v26 = 0;
      v27 = 0;
      goto LABEL_59;
    }

    if (v21)
    {
      v28 = *(a10 - 4 + 4 * v21);
    }

    else
    {
      v28 = 0;
    }

    v26 = 0;
    v29 = a12 + 8 * v28;
    if (!a12)
    {
      v29 = 0;
    }

    if (v22 < a6 || v22 >= a7)
    {
      v15 = v21;
      v27 = 0;
      goto LABEL_59;
    }

    v30 = *(a10 + 4 * v21) - v28;
    if (v30 >= 2)
    {
      v27 = 0;
      for (i = v30; i > 1; i -= i >> 1)
      {
        if (*(v29 + 8 * (v27 + (i >> 1))) <= a4)
        {
          v27 += i >> 1;
        }
      }

      if (v27 < v30)
      {
LABEL_49:
        if (*(v29 + 8 * v27) <= a4)
        {
          ++v27;
        }
      }

      v32 = v30 - v27;
      v26 = v27;
      if (v30 - v27 >= 2)
      {
        do
        {
          v33 = v32 >> 1;
          v32 -= v32 >> 1;
          v34 = v26 + v33;
          if (*(v29 + 8 * v34) < a5)
          {
            v26 = v34;
          }
        }

        while (v32 > 1);
      }

      goto LABEL_55;
    }

    v27 = 0;
    v26 = 0;
    if (v30 == 1)
    {
      goto LABEL_49;
    }

LABEL_55:
    if (v26 < v30 && *(v29 + 8 * v26) < a5)
    {
      ++v26;
    }

    v15 = v21;
LABEL_59:
    v35 = v27 & 1;
    if (v27 < 0)
    {
      v35 = -v35;
    }

    v36 = __OFSUB__(v27, v35);
    v37 = v27 - v35;
    if (v36)
    {
      break;
    }

    v38 = v26 & 1;
    if (v26 < 0)
    {
      v38 = -v38;
    }

    v36 = __OFADD__(v26, v38);
    v39 = v26 + v38;
    if (v36)
    {
      goto LABEL_70;
    }

    if (v37 != v39)
    {
      v40 = 0;
LABEL_68:
      *a3 = v40;
      return result;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_183F9AAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a1 + 8 * a12;
  if (!a1)
  {
    v17 = 0;
  }

  result = a2 - 4;
  v19 = 1;
  v20 = 1;
LABEL_4:
  if (v16 == a13 - a12)
  {
    if (v15 == a6)
    {
      v36 = 1;
LABEL_61:
      *a5 = v36;
      return result;
    }

    v21 = v15 + a7;
    if (__OFADD__(v15, a7))
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v21))
      {
        LODWORD(v22) = 0;
        ++v15;
        v38 = 1;
        v37 = 0;
        v16 = a13 - a12;
        goto LABEL_27;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v15 == a6)
  {
    v22 = v16 + a12;
    if (__OFADD__(v16, a12))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (HIDWORD(v22))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    LODWORD(v21) = 0;
    ++v16;
    v38 = 0;
    v37 = 1;
    v15 = a6;
LABEL_27:
    if ((v38 & 1) == 0)
    {
      v14 = v22;
    }

    v20 &= v38;
    if ((v37 & 1) == 0)
    {
      v13 = v21;
    }

    if (v20)
    {
      v25 = 0;
      v26 = 0;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
LABEL_33:
        if (v13)
        {
          v27 = *(a8 - 4 + 4 * v13);
        }

        else
        {
          v27 = 0;
        }

        v29 = a10 + 8 * v27;
        if (!a10)
        {
          v29 = 0;
        }

        v30 = *(a8 + 4 * v13) - v27;
LABEL_46:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        while (1)
        {
          while (v33 != v26)
          {
            while (1)
            {
              if (v32 != v30)
              {
                v34 = *(v25 + 8 * v33);
                v35 = *(v29 + 8 * v32);
                if (v34 >= v35)
                {
                  break;
                }
              }

              if (v31 == 2)
              {
                goto LABEL_60;
              }

              ++v33;
              v31 ^= 1u;
              if (v26 == v33)
              {
                goto LABEL_52;
              }
            }

            if (v35 >= v34)
            {
              if (!v31)
              {
                goto LABEL_60;
              }

              v31 ^= 3u;
              ++v33;
              ++v32;
            }

            else
            {
              if (v31 == 1)
              {
                goto LABEL_60;
              }

              v31 ^= 2u;
              ++v32;
            }
          }

LABEL_52:
          if (v32 == v30)
          {
            goto LABEL_4;
          }

          if (v31 == 1)
          {
            break;
          }

          v31 ^= 2u;
          v33 = v26;
          ++v32;
        }

LABEL_60:
        v36 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      if (v14)
      {
        v28 = *(result + 4 * v14);
      }

      else
      {
        v28 = 0;
      }

      v25 = a3 + 8 * v28;
      if (!a3)
      {
        v25 = 0;
      }

      v26 = *(a2 + 4 * v14) - v28;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v29 = 0;
    v30 = 0;
    goto LABEL_46;
  }

  v22 = v16 + a12;
  if (__OFADD__(v16, a12))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (HIDWORD(v22))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v21 = v15 + a7;
  if (__OFADD__(v15, a7))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!HIDWORD(v21))
  {
    v23 = *(v17 + 8 * v16);
    v24 = *(a4 + 8 * v15);
    if (v23 >= v24)
    {
      if (v24 >= v23)
      {
        ++v16;
        ++v15;
        v38 = 0;
      }

      else
      {
        LODWORD(v22) = 0;
        ++v15;
        v38 = 1;
      }

      v37 = 0;
    }

    else
    {
      LODWORD(v21) = 0;
      ++v16;
      v38 = 0;
      v37 = 1;
    }

    goto LABEL_27;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t sub_183F9AD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, char *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = a1 + 8 * a12;
  if (!a1)
  {
    v17 = 0;
  }

  result = a2 - 4;
  v19 = 1;
  v20 = 1;
  while (1)
  {
LABEL_4:
    if (v16 != a13 - a12)
    {
      if (v15 == a6)
      {
        v22 = v16 + a12;
        if (__OFADD__(v16, a12))
        {
          goto LABEL_70;
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        if (HIDWORD(v22))
        {
          goto LABEL_74;
        }

        LODWORD(v21) = 0;
        ++v16;
        v38 = 0;
        v37 = 1;
        v15 = a6;
      }

      else
      {
        v22 = v16 + a12;
        if (__OFADD__(v16, a12))
        {
          goto LABEL_69;
        }

        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        if (HIDWORD(v22))
        {
          goto LABEL_73;
        }

        v21 = v15 + a7;
        if (__OFADD__(v15, a7))
        {
          goto LABEL_75;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (HIDWORD(v21))
        {
          goto LABEL_77;
        }

        v23 = *(v17 + 8 * v16);
        v24 = *(a4 + 8 * v15);
        if (v23 >= v24)
        {
          if (v24 >= v23)
          {
            ++v16;
            ++v15;
            v38 = 0;
          }

          else
          {
            LODWORD(v22) = 0;
            ++v15;
            v38 = 1;
          }

          v37 = 0;
        }

        else
        {
          LODWORD(v21) = 0;
          ++v16;
          v38 = 0;
          v37 = 1;
        }
      }

      goto LABEL_27;
    }

    if (v15 == a6)
    {
      v36 = 1;
LABEL_64:
      *a5 = v36;
      return result;
    }

    v21 = v15 + a7;
    if (__OFADD__(v15, a7))
    {
      break;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    if (HIDWORD(v21))
    {
      goto LABEL_68;
    }

    LODWORD(v22) = 0;
    ++v15;
    v38 = 1;
    v37 = 0;
    v16 = a13 - a12;
LABEL_27:
    if ((v38 & 1) == 0)
    {
      v14 = v22;
    }

    v20 &= v38;
    if ((v37 & 1) == 0)
    {
      v13 = v21;
    }

    if (v20)
    {
      v25 = 0;
      v26 = 0;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
LABEL_40:
        if (v13)
        {
          v28 = *(a8 - 4 + 4 * v13);
        }

        else
        {
          v28 = 0;
        }

        v29 = (a10 + 8 * v28);
        if (!a10)
        {
          v29 = 0;
        }

        v30 = *(a8 + 4 * v13) - v28;
        if (v30)
        {
          if (v26 && v25[v26 - 1] > *v29 && v29[v30 - 1] > *v25)
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            while (1)
            {
              while (v33 != v26)
              {
                while (1)
                {
                  if (v32 != v30)
                  {
                    v34 = v25[v33];
                    v35 = v29[v32];
                    if (v34 >= v35)
                    {
                      break;
                    }
                  }

                  if (v31 == 3)
                  {
                    goto LABEL_63;
                  }

                  ++v33;
                  v31 ^= 1u;
                  if (v26 == v33)
                  {
                    goto LABEL_55;
                  }
                }

                if (v35 >= v34)
                {
                  if (v31 == 1)
                  {
                    goto LABEL_63;
                  }

                  v31 ^= 3u;
                  ++v33;
                  ++v32;
                }

                else
                {
                  if (!v31)
                  {
                    goto LABEL_63;
                  }

                  v31 ^= 2u;
                  ++v32;
                }
              }

LABEL_55:
              if (v32 == v30)
              {
                goto LABEL_4;
              }

              if (!v31)
              {
                break;
              }

              v31 ^= 2u;
              v33 = v26;
              ++v32;
            }
          }

LABEL_63:
          v36 = 0;
          goto LABEL_64;
        }
      }
    }

    else
    {
      if (v14)
      {
        v27 = *(result + 4 * v14);
      }

      else
      {
        v27 = 0;
      }

      v25 = (a3 + 8 * v27);
      if (!a3)
      {
        v25 = 0;
      }

      v26 = *(a2 + 4 * v14) - v27;
      v19 &= v37;
      if ((v19 & 1) == 0)
      {
        goto LABEL_40;
      }
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
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_183F9B070(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, _BYTE *a8)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = (~*a1 & 0x7FF0000000000000) != 0 || (*a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v11 && !*(v8 + 16))
  {
    v35 = *(a1 + 16);
    *v73 = *a1;
    *&v73[16] = v35;
    v72 = 0x200000002;
    v36 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v37 = *(a4 + 32);
    v38 = *(v37 + 16);
    if (v36 || v38)
    {
      v42 = (v37 + 32);
      v43 = *(a4 + 40);
      v44 = *(a4 + 48);
      v45 = (v43 + 32);
      v46 = *(v43 + 16);
      v47 = (v44 + 32);
      v48 = *(v44 + 16);
      v49 = &v73[8 * a5 + 16];
      v50 = a6 - a5;
      LOBYTE(v74) = 1;
      LOBYTE(v69) = 1;
      if (*a7 != -1)
      {
        v64 = a5;
        v67 = a2;
        v61 = a8;
        swift_once();
        a8 = v61;
        a5 = v64;
        a2 = v67;
      }

      v30 = *a8;
      v74 = v49;
      v75 = v50;
      v76 = a5;
      v77 = v42;
      v78 = v38;
      v79 = 0x7FF8000000000000;
      v80 = 0;
      v81 = 1;
      v82 = 0;
      v83 = 1;
      v84 = &v72;
      v85 = 2;
      v86 = v73;
      v87 = 2;
      v88 = v45;
      v89 = v46;
      v90 = v47;
      v91 = v48;
    }

    else
    {
      v39 = *(a4 + 24);
      v69 = *a4;
      v70 = *(a4 + 8);
      v71 = v39;
      v68 = 0x200000002;
      v40 = &v73[8 * a5 + 16];
      v41 = a6 - a5;
      LOBYTE(v74) = 1;
      if (*a7 != -1)
      {
        v52 = a2;
        v53 = a5;
        v54 = a8;
        swift_once();
        a8 = v54;
        a5 = v53;
        a2 = v52;
      }

      v30 = *a8;
      v74 = v40;
      v75 = v41;
      v76 = a5;
      v77 = &v70 + 8;
      v78 = xmmword_184399820;
      v79 = 0x7FF8000000000000;
      v80 = 0;
      v81 = 1;
      v82 = 0;
      v83 = 1;
      v84 = &v72;
      v85 = 2;
      v86 = v73;
      v87 = 2;
      v88 = &v68;
      v89 = 2;
      v90 = &v69;
      v91 = 2;
    }
  }

  else
  {
    v12 = v8 + 32;
    v13 = (v9 + 32);
    v14 = *(v9 + 16);
    v15 = (v10 + 32);
    v16 = *(v10 + 16);
    v17 = (*a4 & 0xFFFFFFFFFFFFFLL) != 0 && (~*a4 & 0x7FF0000000000000) == 0;
    v18 = *(a4 + 32);
    v19 = *(v18 + 16);
    if (!v17 && v19 == 0)
    {
      v31 = *(a4 + 24);
      *v73 = *a4;
      *&v73[8] = *(a4 + 8);
      *&v73[24] = v31;
      v69 = 0x200000002;
      v32 = (v12 + 8 * a5);
      v33 = a6 - a5;
      LOBYTE(v74) = 1;
      LOBYTE(v72) = 1;
      if (*a7 != -1)
      {
        v63 = a5;
        v66 = a2;
        v60 = a8;
        v51 = (v10 + 32);
        swift_once();
        v15 = v51;
        a8 = v60;
        a5 = v63;
        a2 = v66;
      }

      v30 = *a8;
      v74 = v32;
      v75 = v33;
      v76 = a5;
      v77 = &v73[16];
      v78 = xmmword_184399820;
      v79 = 0x7FF8000000000000;
      v80 = 0;
      v81 = 1;
      v82 = 0;
      v83 = 1;
      v84 = v13;
      v85 = v14;
      v86 = v15;
      v87 = v16;
      v88 = &v69;
      v89 = 2;
      v90 = v73;
      v91 = 2;
    }

    else
    {
      v21 = (v18 + 32);
      v22 = *(a4 + 40);
      v23 = *(a4 + 48);
      v24 = (v22 + 32);
      v25 = *(v22 + 16);
      v26 = (v23 + 32);
      v27 = *(v23 + 16);
      v28 = (v12 + 8 * a5);
      v29 = a6 - a5;
      LOBYTE(v74) = 1;
      v73[0] = 1;
      if (*a7 != -1)
      {
        v62 = a5;
        v65 = a2;
        v59 = a8;
        v57 = v24;
        v58 = v15;
        v55 = v25;
        v56 = (v23 + 32);
        swift_once();
        v25 = v55;
        v26 = v56;
        v24 = v57;
        v15 = v58;
        a8 = v59;
        a5 = v62;
        a2 = v65;
      }

      v30 = *a8;
      v74 = v28;
      v75 = v29;
      v76 = a5;
      v77 = v21;
      v78 = v19;
      v79 = 0x7FF8000000000000;
      v80 = 0;
      v81 = 1;
      v82 = 0;
      v83 = 1;
      v84 = v13;
      v85 = v14;
      v86 = v15;
      v87 = v16;
      v88 = v24;
      v89 = v25;
      v90 = v26;
      v91 = v27;
    }
  }

  v92 = v30;
  return a2(&v74);
}

int64x2_t sub_183F9B464@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *a1 = result;
  a1[1] = result;
  v2 = MEMORY[0x1E69E7CC0];
  a1[2].i64[0] = MEMORY[0x1E69E7CC0];
  a1[2].i64[1] = v2;
  a1[3].i64[0] = v2;
  return result;
}

uint64_t sub_183F9B484(double *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (*a1 >= v4 || v5 >= v6)
  {
    v3 = NAN;
    v4 = NAN;
    v5 = NAN;
    v6 = NAN;
  }

  v10[9] = v1;
  v10[10] = v2;
  *v10 = v3;
  *&v10[1] = v4;
  *&v10[2] = v5;
  *&v10[3] = v6;
  v10[4] = MEMORY[0x1E69E7CC0];
  v10[5] = MEMORY[0x1E69E7CC0];
  v10[6] = MEMORY[0x1E69E7CC0];
  v8 = Region.isSuperset(of:)(v10);

  return v8 & 1;
}

__n128 sub_183F9B54C@<Q0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();

  v4 = *(v2 + 48);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

BOOL sub_183F9B5BC(double *a1, double *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = *a2 < v4 && v5 < v6;
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  if (!v7)
  {
    v8 = 0x7FF8000000000000;
    v9 = 0x7FF8000000000000;
    v10 = 0x7FF8000000000000;
    v11 = 0x7FF8000000000000;
  }

  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = MEMORY[0x1E69E7CC0];
  v14[5] = MEMORY[0x1E69E7CC0];
  v14[6] = MEMORY[0x1E69E7CC0];
  v12 = Region.isSuperset(of:)(v14);
  if ((v12 & 1) == 0)
  {
    Region.formUnion(_:)(v14);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return (v12 & 1) == 0;
}

__n128 sub_183F9B684@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v4.i64 < *(a1 + 24) && *v3.i64 < *(a1 + 8);
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  v13 = *a1;
  v15 = *(a1 + 16);
  v17[0] = vbslq_s8(v8, v3, v6);
  v17[1] = vbslq_s8(v8, v4, v6);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v9 = Region.isDisjoint(with:)(v17);
  v10 = 0uLL;
  v11 = 0uLL;
  if ((v9 & 1) == 0)
  {
    Region.subtract(_:)(v17);
    v10 = v13;
    v11 = v15;
  }

  v14 = v11;
  v16 = v10;

  result = v16;
  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 32) = v9 & 1;
  return result;
}

__n128 sub_183F9B740@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *v4.i64 < *(a1 + 24) && *v3.i64 < *(a1 + 8);
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = vdupq_n_s64(v7);
  v11 = *(a1 + 16);
  v12 = *a1;
  v13[0] = vbslq_s8(v8, v3, v6);
  v13[1] = vbslq_s8(v8, v4, v6);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v9 = Region.isSuperset(of:)(v13);
  if ((v9 & 1) == 0)
  {
    Region.formUnion(_:)(v13);
    v11 = 0u;
    v12 = 0u;
  }

  result = v12;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = (v9 & 1) == 0;
  return result;
}

uint64_t sub_183F9B82C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
}

__n128 sub_183F9B89C@<Q0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();
  v4 = *(v2 + 48);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

Swift::Bool __swiftcall Region.contains(_:)(__C::CGRect a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v12 = *v1;
  v13 = v3;
  v14 = v1[2];
  v15 = v2;
  v4 = sub_183F728C4(a1.origin.x, a1.origin.y, a1.size.width);
  if (v4 >= v5 || v6 >= v7)
  {
    v4 = NAN;
    v5 = NAN;
    v6 = NAN;
    v7 = NAN;
  }

  *v11 = v4;
  *&v11[1] = v5;
  *&v11[2] = v6;
  *&v11[3] = v7;
  v11[4] = MEMORY[0x1E69E7CC0];
  v11[5] = MEMORY[0x1E69E7CC0];
  v11[6] = MEMORY[0x1E69E7CC0];
  v9 = Region.isSuperset(of:)(v11);

  return v9 & 1;
}

uint64_t sub_183F9BA34(void (*a1)(void *), double a2, double a3, double a4)
{
  v5 = sub_183F728C4(a2, a3, a4);
  if (v5 >= v6 || v7 >= v8)
  {
    v5 = NAN;
    v6 = NAN;
    v7 = NAN;
    v8 = NAN;
  }

  *v11 = v5;
  *&v11[1] = v6;
  *&v11[2] = v7;
  *&v11[3] = v8;
  v11[4] = MEMORY[0x1E69E7CC0];
  v11[5] = MEMORY[0x1E69E7CC0];
  v11[6] = MEMORY[0x1E69E7CC0];
  a1(v11);
}

void *sub_183F9BAB8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854638);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_183F9BB3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854620);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_183F9BBE0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854628);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_183F9BC8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_183F9BD08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854618);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

char *sub_183F9BD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854638);
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

char *sub_183F9BE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
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

char *sub_183F9BFA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_183F9C0C8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if ((result & 1) == 0)
  {
    result = sub_183F9C14C(v1);
    *v0 = result;
  }

  return result;
}

char *sub_183F9C174(void *a1, uint64_t a2, char *__src, uint64_t a4)
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

void *sub_183F9C1E4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = 0;
  v15 = 0;
  v16 = a10;
  v17 = result[1];
  v57 = *result;
  v58 = result[2];
  v59 = result[3];
  v69 = result[4];
  v60 = result[5];
  v18 = *(result + 14);
  v19 = *(result + 60);
  v20 = *(result + 16);
  v70 = *(result + 68);
  v55 = result[11];
  v56 = result[9];
  v52 = result[13] - 4;
  v53 = result[15];
  v54 = result[13];
  v62 = a5;
  v61 = v17;
  while (1)
  {
LABEL_2:
    if (v15 == v17)
    {
      if (v14 == v69)
      {
        return result;
      }

      v21 = v14 + v60;
      if (__OFADD__(v14, v60))
      {
        goto LABEL_95;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_96;
      }

      v22 = HIDWORD(v21);
      if (HIDWORD(v21))
      {
        goto LABEL_97;
      }

      v23 = *(v59 + 8 * v14++);
      v72 = 1;
      v15 = v17;
      goto LABEL_8;
    }

    v22 = v15 + v58;
    v24 = __OFADD__(v15, v58);
    if (v14 == v69)
    {
      if (v24)
      {
        goto LABEL_99;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      v21 = HIDWORD(v22);
      if (HIDWORD(v22))
      {
        goto LABEL_103;
      }

      v23 = *(v57 + 8 * v15++);
      v72 = 0;
      v14 = v69;
    }

    else
    {
      if (v24)
      {
        goto LABEL_98;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_100;
      }

      if (HIDWORD(v22))
      {
        goto LABEL_102;
      }

      v21 = v14 + v60;
      if (__OFADD__(v14, v60))
      {
        goto LABEL_104;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      if (HIDWORD(v21))
      {
        goto LABEL_106;
      }

      v25 = *(v57 + 8 * v15);
      v26 = *(v59 + 8 * v14);
      if (v25 >= v26)
      {
        if (v26 >= v25)
        {
          ++v15;
          ++v14;
          v23 = v25;
          v72 = 0;
        }

        else
        {
          LODWORD(v22) = 0;
          ++v14;
          v23 = v26;
          v72 = 1;
        }

LABEL_8:
        v71 = 0;
        goto LABEL_26;
      }

      LODWORD(v21) = 0;
      ++v15;
      v23 = v25;
      v72 = 0;
    }

    v71 = 1;
LABEL_26:
    if ((v72 & 1) == 0)
    {
      v18 = v22;
    }

    v19 &= v72;
    if ((v71 & 1) == 0)
    {
      v20 = v21;
    }

    if (v19)
    {
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v29 = v18 ? *(v56 - 4 + 4 * v18) : 0;
      v27 = v55 ? (v55 + 8 * v29) : 0;
      v28 = *(v56 + 4 * v18) - v29;
    }

    v70 &= v71;
    if (v70)
    {
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v32 = v20 ? *(v52 + 4 * v20) : 0;
      v30 = v53 ? (v53 + 8 * v32) : 0;
      v31 = *(v54 + 4 * v20) - v32;
    }

    v33 = *a4;
    v34 = a5 - *a4;
    if (a5 < *a4)
    {
      break;
    }

    v35 = 0;
    if (a2)
    {
      v36 = (a2 + 8 * v33);
    }

    else
    {
      v36 = 0;
    }

    if (v28 && a5 != v33)
    {
      if (v28 >= v34)
      {
        v35 = a5 - *a4;
      }

      else
      {
        v35 = v28;
      }

      v64 = v15;
      v65 = v23;
      v37 = v14;
      v38 = a4;
      v39 = v20;
      v40 = v18;
      v41 = v19;
      v42 = v30;
      result = memcpy(v36, v27, 8 * v35);
      v30 = v42;
      v19 = v41;
      v18 = v40;
      v20 = v39;
      a4 = v38;
      v14 = v37;
      v15 = v64;
      v23 = v65;
      v17 = v61;
      v16 = a10;
      a5 = v62;
    }

    v43 = v34 - v35;
    if (__OFSUB__(v34, v35))
    {
      goto LABEL_87;
    }

    if (v43 >= v31)
    {
      v44 = 0;
      if (v31 && v43)
      {
        if (v36)
        {
          v45 = &v36[8 * v35];
        }

        else
        {
          v45 = 0;
        }

        v46 = v19;
        result = memcpy(v45, v30, 8 * v31);
        v19 = v46;
        v17 = v61;
        v16 = a10;
        a5 = v62;
        v44 = v31;
      }

      v47 = __OFADD__(v35, v44);
      v35 += v44;
      if (v47)
      {
        goto LABEL_93;
      }
    }

    if (a6)
    {
      if (v35 < 0)
      {
        goto LABEL_94;
      }

      if (*(a7 + 8) != v35)
      {
        goto LABEL_75;
      }

      if (v35)
      {
        v48 = *a7;
        v49 = v35;
        v50 = v36;
        while (*v48 == *v50)
        {
          ++v50;
          ++v48;
          if (!--v49)
          {
            goto LABEL_2;
          }
        }

LABEL_75:
        *a7 = v36;
        *(a7 + 8) = v35;
        goto LABEL_76;
      }
    }

    else
    {
LABEL_76:
      if (__OFADD__(*a4, v35))
      {
        goto LABEL_88;
      }

      *a4 += v35;
      *(a8 + 8 * *v16) = v23;
      v51 = a13 + *a4;
      if (__OFADD__(a13, *a4))
      {
        goto LABEL_89;
      }

      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (HIDWORD(v51))
      {
        goto LABEL_91;
      }

      *(a11 + 4 * *v16) = v51;
      if (__OFADD__(*v16, 1))
      {
        goto LABEL_92;
      }

      ++*v16;
    }
  }

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
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}