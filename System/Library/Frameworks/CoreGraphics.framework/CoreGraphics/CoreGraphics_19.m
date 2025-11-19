unint64_t sub_183F73434()
{
  result = qword_1EA853F18;
  if (!qword_1EA853F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F18);
  }

  return result;
}

uint64_t sub_183F73488(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854818);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Direction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Direction(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_183F73668()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t Region.init(from:)@<X0>(void *a1@<X0>, int64x2_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854820);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20.i8[-v8];
  v10 = MEMORY[0x1E69E7CC0];
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  v35 = v34;
  v23 = v34;
  v36.i64[0] = MEMORY[0x1E69E7CC0];
  v36.i64[1] = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v11 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_1843903A8();
  if (v2)
  {
  }

  else
  {
    v22 = a2;
    __swift_project_boxed_opaque_existential_0(v32, v33);
    if (sub_1843901E8())
    {
      v21 = vdupq_n_s64(v10);
      v20 = v23;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(v32);
      v12 = v22;
      v13 = v20;
      *v22 = v23;
      v12[1] = v13;
      v12[2] = v21;
      v12[3].i64[0] = v10;
    }

    else
    {
      v14 = (v6 + 8);
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
        sub_183F73B2C();
        sub_1843901C8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854818);
        v38 = 0;
        sub_183F73488(&qword_1EA853EA0, sub_183F3FEF4);
        sub_184390188();
        v15 = v25;
        v16 = v26;
        if (v25 >= v26)
        {

          LOBYTE(v25) = 0;
          goto LABEL_13;
        }

        v38 = 1;
        sub_184390188();
        v17 = v25;
        v18 = v26;
        if (v25 >= v26)
        {
          break;
        }

        v25 = v15;
        v26 = v16;
        v27 = v17;
        v28 = v18;
        v29 = v10;
        v30 = v10;
        v31 = v10;
        Region.formUnion(_:)(&v25);

        (*v14)(v9, v5);
        __swift_project_boxed_opaque_existential_0(v32, v33);
        if (sub_1843901E8())
        {
          v20 = v35;
          v23 = v34;
          v21 = v36;
          v10 = v37;
          goto LABEL_5;
        }
      }

      LOBYTE(v25) = 1;
LABEL_13:
      sub_1843900C8();
      swift_allocError();
      sub_183FAFFE0();
      sub_1843900B8();
      swift_willThrow();
      (*v14)(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

unint64_t sub_183F73B2C()
{
  result = qword_1EA853ED8;
  if (!qword_1EA853ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853ED8);
  }

  return result;
}

uint64_t _s12CoreGraphics6RegionV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, uint64_t a2)
{
  v4 = *&a1[2].f64[0];
  v6 = *&a1[2].f64[1];
  v5 = *&a1[3].f64[0];
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *a2;
  v11 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], *(a2 + 16)))));
  v12 = a1->f64[0];
  v13 = *&v12 & 0x7FF0000000000000;
  if ((v11 & 1) == 0)
  {
    if (v13 != 0x7FF0000000000000 || (*&v12 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    if ((~*&v10.f64[0] & 0x7FF0000000000000) != 0 || (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
    {
      return 0;
    }

    goto LABEL_21;
  }

  v16 = *&v12 & 0xFFFFFFFFFFFFFLL;
  if (v13 == 0x7FF0000000000000 && v16 != 0)
  {
LABEL_21:
    if ((~*&v10.f64[0] & 0x7FF0000000000000) == 0 && (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_29;
    }

    v19 = 0;
    goto LABEL_27;
  }

  v18 = *(v4 + 16);
  v19 = v18 == 0;
  if ((~*&v10.f64[0] & 0x7FF0000000000000) != 0 || (*&v10.f64[0] & 0xFFFFFFFFFFFFFLL) == 0)
  {
LABEL_27:
    v21 = *(v7 + 16);
    v18 = v19 ^ (v21 == 0) ^ 1u;
    if (v19 || !v21)
    {
      return v18;
    }

    goto LABEL_29;
  }

  if (!v18)
  {
    return v18;
  }

LABEL_29:
  if ((sub_183F93AF4(v4, v7) & 1) == 0 || (sub_183F93B50(v6, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_183F93AF4(v5, v8);
}

_DWORD *sub_183F73CF8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_183F73DF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_183F73E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_183F73FF0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_183F74050()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_183F7412C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_183F742A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_183F742B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_183F74374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 48);
  *a2 = v2;
  return v2;
}

uint64_t sub_183F77380()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_183F7741C()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + *(*v2 + 96));
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_183F77514()
{
  sub_183F7741C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_183F7767C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_183F776C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_183F7774C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_183F777A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_183F77830(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F77850(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_183F778C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F778E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_183F7793C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_183F7795C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGBitmapParameters(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for CGBitmapParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_183F77B10()
{
  sub_1843902E8();
  swift_getWitnessTable();
  sub_18438FBC8();
  return sub_184390348();
}

uint64_t sub_183F77B78()
{
  sub_1843902E8();
  sub_184390318();
  return sub_184390348();
}

uint64_t sub_183F77BC0()
{
  sub_1843902E8();
  sub_184390318();
  return sub_184390348();
}

uint64_t sub_183F77C04()
{
  swift_getWitnessTable();

  return sub_18438FBB8();
}

uint64_t sub_183F77D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_183F77E08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_183F77E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_183F77F0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < a3 || (a3 | result) < 0 || a5 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || result > a5)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_183F77F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_18;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_19;
  }

  v7 = a3 - result;
  if (a2 >= 1)
  {
    if (v7 < 0 || v7 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 <= 0 && v7 > a2)
  {
    return 0;
  }

LABEL_13:
  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_183F78010(uint64_t a1, uint64_t a2, uint64_t a3, CGPDFArrayRef array)
{
  result = CGPDFArrayGetCount(array);
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = CGPDFArrayGetCount(array);
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = CGPDFArrayGetCount(array);
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_183F780D8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_15:
    v7 = a3;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a6 <= 0x100000000)
    {
      v6 = 0x100000000 - a6;
    }

    else
    {
      v6 = 0;
    }

    v7 = a5;
    if (a5)
    {
      v8 = 0;
      while ((a6 & 0x8000000000000000) == 0)
      {
        if (v6 == v8)
        {
          goto LABEL_18;
        }

        *a2 = *(a4 + 8 * v8);
        *(a2 + 8) = a6 + v8;
        if (a3 - 1 == v8)
        {
          goto LABEL_15;
        }

        a2 += 16;
        if (a5 == ++v8)
        {
          v7 = a5;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v7;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

double Region.init<A, B>(filling:rule:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v33 = a4;
  v34 = a6;
  v35 = a7;
  v11 = sub_1843900A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30[-v14];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA854228);
  sub_1843900E8();
  v32 = MEMORY[0x1E69E6CC8];
  swift_getWitnessTable();
  sub_184390128();
  swift_getWitnessTable();
  v16 = sub_1843900E8();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30[-v18];
  v31 = *a2;
  MEMORY[0x1865EC6A0](a3, a5);
  v20 = swift_allocObject();
  v22 = v33;
  v21 = v34;
  v20[2] = a3;
  v20[3] = v22;
  v20[4] = a5;
  v20[5] = v21;
  swift_getWitnessTable();
  sub_184390168();

  (*(v12 + 8))(v15, v11);
  swift_getWitnessTable();
  if (v31)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  sub_183F7B3E4(v19, v24, v16, v36, v23);
  (*(*(a3 - 8) + 8))(a1, a3);
  v25 = v37;
  result = *v36;
  v27 = v36[1];
  v28 = v36[2];
  v29 = v35;
  *v35 = v36[0];
  v29[1] = v27;
  v29[2] = v28;
  *(v29 + 6) = v25;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_183F78484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  MEMORY[0x1EEE9AC00](a1, a4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = (*(v8 + 16))(v7);
  result = sub_183F905AC(v7, a2, v9);
  *a3 = result;
  *(a3 + 8) = v11;
  return result;
}

uint64_t sub_183F78560@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, int64x2_t *a4@<X8>)
{
  v178 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v150[0] = MEMORY[0x1E69E7CC0];
  v9 = swift_allocObject();
  v9[2] = v8;
  v10 = swift_retain_n();
  sub_183F7C470(v10, a2, sub_183F7C464, 0);
  v89[3] = a1;
  sub_183F7C75C(a1);
  v11 = 0;
  sub_183F7EDB0(v150);
  sub_183F7CAB4();
  sub_183F7EC4C(v9 + 2);
  v12 = vdupq_n_s64(0x7FF8000000000000uLL);
  *a4 = v12;
  a4[1] = v12;
  a4[2].i64[0] = v8;
  v97 = &a4[2];
  a4[2].i64[1] = v8;
  v98 = &a4[2].i64[1];
  a4[3].i64[0] = v8;
  v96 = &a4[3];
  v107 = v150[0];
  v108 = (v9 + 2);
  v13 = *(v150[0] + 2);
  v14 = *(v9[2] + 2);
  v151[2] = v150;
  v15 = v9;
  v151[3] = v9;
  v106 = a3;
  v152 = a3;
  v94 = a4;
  v16 = sub_183FA5A00();
  v18 = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    goto LABEL_93;
  }

  if (v13 >> 60)
  {
    goto LABEL_107;
  }

  a4 = &v158;
  v9 = &v142;
  v14 = *v98;
  v95 = *(*v98 + 16);
  if ((8 * v13) >= 1025)
  {
    goto LABEL_94;
  }

  do
  {
    v89[2] = v89;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v16, v17);
    v101 = v89 - v21;
    if (v13 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v83 = v95 == 0;
        v84 = swift_slowAlloc();
        v88.n128_u64[1] = v151;
        v88.n128_u64[0] = sub_183F8158C;
        sub_183FA7660(v84, v13, v18, v101, v13, v94, 0, 0, v151, v88, v18, 1, v83, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v84, -1, -1);
        if (!v11)
        {
          goto LABEL_79;
        }

        v85 = v11;
        goto LABEL_103;
      }
    }

    v89[1] = v89;
    v22 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v20);
    v100 = (v89 - v24);
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_108;
    }

    if (v18 >> 60)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if ((8 * v18) >= 1025)
    {
      v22 = swift_stdlib_isStackAllocationSafe();
      if ((v22 & 1) == 0)
      {
        v86 = v95 == 0;
        v87 = swift_slowAlloc();
        sub_183FA88BC(v87, v18, v101, v13, v100, v13, v94, 0, 0, sub_183F8158C, v151, v18, 1, v86, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v87, -1, -1);
        if (!v11)
        {
          goto LABEL_79;
        }

        v85 = v11;
        swift_willThrow();
LABEL_103:
        swift_willThrow();

        __break(1u);
        goto LABEL_104;
      }
    }

    v89[0] = v89;
    MEMORY[0x1EEE9AC00](v22, v23);
    v102 = v89 - v25;
    v89[4] = v89;
    v26 = *v96;
    v27 = *v97;
    v28 = v107;
    v13 = *(v107 + 2);
    swift_retain_n();
    v92 = v27;

    v91 = v14;

    v93 = v15;

    swift_beginAccess();
    v105 = v13;
    v90 = v26;
    if (!v13)
    {
      v14 = 0;
      goto LABEL_42;
    }

    v13 = 0;
    v14 = 0;
    v11 = 0;
    v15 = (v26 + 32);
    v29 = 0;
    v103 = v18;
    v104 = v28 + 32;
    v99 = v18 - 1;
    while (1)
    {
      v109 = v15;
      v110 = v11;
      v15 = &v102[8 * v14];
      v116 = v18 - v14;
      v119 = (v99 - v14);
      v111 = v14;
      v112 = v13;
      while (1)
      {
        if (v29 >= *(v28 + 2))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        v30 = *&v104[8 * v29];
        v31 = *v108;
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        v33 = swift_allocObject();
        *(v33 + 16) = v106;
        *&v122 = v31;
        *(&v122 + 1) = sub_183F81590;
        *&v123 = v32;
        *(&v123 + 1) = sub_183F7C464;
        *&v124 = 0;
        *(&v124 + 1) = 0x7FF8000000000000;
        v125 = 0u;
        v126 = 0u;
        *&v127 = sub_183F81594;
        *(&v127 + 1) = v33;
        *(v9 + 23) = v124;
        *(v9 + 24) = 0u;
        v34 = v127;
        *(v9 + 25) = v126;
        *(v9 + 26) = v34;
        v35 = v123;
        *(v9 + 21) = v122;
        *(v9 + 22) = v35;
        v128[0] = v31;
        v128[1] = sub_183F81590;
        v128[2] = v32;
        v128[3] = sub_183F7C464;
        v128[4] = 0;
        v128[5] = 0x7FF8000000000000;
        v129 = 0u;
        v130 = 0u;
        v131 = sub_183F81594;
        v132 = v33;

        v11 = &unk_1843984F8;
        sub_183F81520(&v122, v153, &qword_1EA854270);
        sub_183F814B4(v128, &qword_1EA854270);
        v133 = v30;
        v36 = *(v9 + 24);
        v136 = *(v9 + 23);
        v137 = v36;
        v37 = *(v9 + 26);
        v138 = *(v9 + 25);
        v139 = v37;
        v38 = *(v9 + 22);
        v134 = *(v9 + 21);
        v135 = v38;
        v140 = sub_183FB65DC;
        v141 = 0;
        if (v18 < v14)
        {
          goto LABEL_86;
        }

        v115 = v29;
        v117 = *(&v139 + 1);
        v118 = v139;
        v39 = v135;
        *v9 = v134;
        *(v9 + 1) = v39;
        v40 = v137;
        *(v9 + 2) = v136;
        *(v9 + 3) = v40;
        *(v9 + 4) = v138;
        v41 = v142;
        v42 = v143;
        v43 = v144;
        v44 = v146;
        v150[1] = v142;
        v150[2] = v143;
        v150[3] = v144;
        v114 = v145;
        v150[4] = v145;
        v150[5] = v146;
        sub_183F81520(&v133, v153, &qword_1EA854278);
        v45 = *(v41 + 2);

        v113 = v44;

        v47 = 0;
        if (v45)
        {
          v48 = v41 + 48;
          while (1)
          {
            v49 = *v48;
            v153[0] = *(v48 - 1);
            *&v153[1] = v49;
            if ((v42)(v153))
            {
              break;
            }

            ++v47;
            v48 += 3;
            if (v45 == v47)
            {
              v47 = v45;
              break;
            }
          }
        }

        v50 = sub_183F7DDD8(v47, v46);
        v52 = v51;
        v54 = v53;
        v56 = v55;
        sub_183F814B4(&v142, &qword_1EA854280);
        v120 = v52 & 1;
        *&v158 = v41;
        *(&v158 + 1) = v42;
        *&v159 = v43;
        *(&v159 + 1) = v114;
        *&v160 = v113;
        *(&v160 + 1) = v50;
        LOBYTE(v161) = v52 & 1;
        *(&v161 + 1) = v54;
        *&v162 = v56;
        *(&v162 + 1) = v147;
        v9 = &v142;
        v163 = v148;
        v164 = v149;
        v57 = v115;
        v11 = v116;
        v165 = v118;
        v166 = v117;
        v14 = v111;
        v13 = v112;
        v18 = v103;
        a4 = &v174;
        if (v116)
        {
          if (v116 < 1)
          {
            __break(1u);
            goto LABEL_54;
          }

          sub_183F80564(&v174);
          if (v177)
          {
            v11 = 0;
          }

          else
          {
            v11 = 0;
            while (1)
            {
              *&v153[0] = v174;
              *(v153 + 8) = v175;
              *(&v153[1] + 8) = v176;
              sub_183FB65DC(v153, &v121);
              v15[v11] = v121;
              if (v119 == v11)
              {
                break;
              }

              sub_183F80564(&v174);
              ++v11;
              if (v177)
              {
                goto LABEL_28;
              }
            }

            v11 = v116;
          }
        }

LABEL_28:
        v29 = v57 + 1;
        v171 = v162;
        v172 = v163;
        v173 = v164;
        v167 = v158;
        v168 = v159;
        v169 = v160;
        v170 = v161;
        a4 = &v158;
        v153[4] = v162;
        v153[5] = v163;
        v153[6] = v164;
        v153[0] = v158;
        v153[1] = v159;
        v153[2] = v160;
        v153[3] = v161;
        v154 = v118;
        v155 = v117;
        v156 = sub_183FB65DC;
        v157 = 0;
        sub_183F814B4(v153, &qword_1EA854288);
        v28 = v107;
        if (v110 != v11)
        {
          goto LABEL_35;
        }

        if (v110)
        {
          break;
        }

LABEL_11:
        sub_183F814B4(&v133, &qword_1EA854278);
        if (v29 == v105)
        {
          goto LABEL_42;
        }
      }

      v58 = 0;
      while (*&v109[v58] == *&v15[v58])
      {
        if (v110 == ++v58)
        {
          goto LABEL_11;
        }
      }

      v11 = v110;
LABEL_35:
      v59 = __OFADD__(v14, v11);
      v14 += v11;
      if (v59)
      {
        break;
      }

      *&v101[8 * v13] = v133;
      if (v14 < 0)
      {
        goto LABEL_90;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_91;
      }

      v100[v13] = v14;
      sub_183F814B4(&v133, &qword_1EA854278);
      v59 = __OFADD__(v13++, 1);
      if (v59)
      {
        goto LABEL_92;
      }

      if (v29 == v105)
      {
LABEL_42:
        v18 = v90;

        v11 = v92;

        v15 = v93;

        if (v95)
        {
          sub_183F7DCD4(0, 0, v102, v14, sub_183F7FF74, sub_183F800B4);
          if ((v13 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v101, v13, sub_183F7FF74, sub_183F800B4);
            goto LABEL_45;
          }

LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v14 <= *(v18 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v102, v14, sub_183F7FF74, sub_183F800B4);
            if ((v13 & 0x8000000000000000) != 0)
            {
              goto LABEL_104;
            }

            v11 = *v97;
            goto LABEL_56;
          }

LABEL_52:
          v60 = sub_183EA76E4(v14, 0);
          memcpy(v60 + 4, v102, 8 * v14);
LABEL_55:

          *v96 = v60;
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

LABEL_56:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v13 <= *(v11 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v101, v13, sub_183F7FF74, sub_183F800B4);
              goto LABEL_63;
            }

LABEL_60:
            v61 = sub_183EA76E4(v13, 0);
            memcpy(v61 + 4, v101, 8 * v13);
          }

          else
          {
            if (v13)
            {
              goto LABEL_60;
            }

            v61 = MEMORY[0x1E69E7CC0];
          }

          *v97 = v61;
LABEL_63:
          v62 = *v98;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v13 > *(v62 + 24) >> 1)
            {
LABEL_67:
              v63 = sub_183F9BAB8(v13, 0);
              memcpy(v63 + 4, v100, 4 * v13);
              goto LABEL_69;
            }

LABEL_45:
            sub_183F7DCD4(0, 0, v100, v13, sub_183F7FF54, sub_183F7FFB4);
            if (!v14)
            {
LABEL_79:
              v67 = *v97;
              if (*(*v97 + 16))
              {
                v68 = v94;
                v69 = v94[2];
                v70 = v94[3];
                *(v9 + 21) = *v94;
                *&v159 = v69;
                *(&v159 + 1) = v70;
                *&v160 = v67;
                *(a4 + 40) = *(v68 + 40);
                sub_183FA5744();
                v73 = *(v67 + 16);
                if (!v73)
                {
                  goto LABEL_106;
                }

                v74 = v71;
                v75 = v72;
                v77 = *(v67 + 32);
                v76 = v67 + 32;
                v78 = v77;
                if (!v95)
                {
                  v70 = *(v76 + 8 * v73 - 8);
                }
              }

              else
              {
                v74 = 0x7FF8000000000000;
                v75 = 0x7FF8000000000000;
                v78 = 0x7FF8000000000000;
                v70 = 0x7FF8000000000000;
              }

              v79 = v94;
              *v94 = v74;
              v79[1] = v75;
              v79[2] = v78;
              v79[3] = v70;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v13)
            {
              goto LABEL_67;
            }

            v63 = MEMORY[0x1E69E7CC0];
LABEL_69:

            *v98 = v63;
            if (!v14)
            {
              goto LABEL_79;
            }
          }

          v64 = *v98;
          v11 = *(*v98 + 16);
          if (v11 < v13)
          {
            goto LABEL_105;
          }

          if (v13 == v11)
          {
            goto LABEL_79;
          }

          if (v13 < v11)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_183F9C14C(v64);
            }

            do
            {
              if (v13 >= *(v64 + 2))
              {
                goto LABEL_87;
              }

              v65 = &v64[4 * v13];
              v66 = v14 + *(v65 + 8);
              if (HIDWORD(v66))
              {
                goto LABEL_88;
              }

              ++v13;
              *(v65 + 8) = v66;
            }

            while (v11 != v13);
            *v98 = v64;
            goto LABEL_79;
          }

LABEL_110:
          __break(1u);
        }

        if (v14)
        {
          goto LABEL_52;
        }

LABEL_54:
        v60 = MEMORY[0x1E69E7CC0];
        goto LABEL_55;
      }
    }

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
    v16 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v16 & 1) != 0);
  v81 = v95 == 0;
  v82 = swift_slowAlloc();
  sub_183FA60D0(v82, v13, v13, v18, v94, 0, 0, sub_183F8158C, v151, v151, v18, 1u, v81, 0, 0, 0);
  if (!v11)
  {
    MEMORY[0x1865EFCB0](v82, -1, -1);
    goto LABEL_79;
  }

  result = MEMORY[0x1865EFCB0](v82, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F793C8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v108 = a3;
  v189 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69E7CC0];
  v163[0] = MEMORY[0x1E69E7CC0];
  v7 = swift_allocObject();
  v111 = v7;
  *(v7 + 16) = v6;
  v8 = (v7 + 16);
  v9 = *(a1 + 16);
  v106 = a1;
  if (v9)
  {

    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v10 += 16;
      v13 = swift_retain_n();
      sub_183F7C470(v13, v12, sub_183F7C464, 0);
      sub_183F7C75C(v11);
      --v9;
    }

    while (v9);
  }

  v14 = v163;
  v15 = 0;
  sub_183F7EDB0(v163);
  sub_183F7CAB4();
  v16 = sub_183F7EC4C(v8);
  v101[4] = v101;
  v17 = vdupq_n_s64(0x7FF8000000000000uLL);
  v18 = v108;
  *v108 = v17;
  *(v18 + 16) = v17;
  *(v18 + 32) = v6;
  v109 = v18 + 32;
  *(v18 + 40) = v6;
  v110 = (v18 + 40);
  *(v18 + 48) = v6;
  v107 = (v18 + 48);
  v120 = v163[0];
  v19 = *(v163[0] + 2);
  v20 = *(*(v111 + 16) + 16);
  MEMORY[0x1EEE9AC00](v16, v17);
  v21 = v99;
  v99[2] = v163;
  v99[3] = v22;
  v100 = v121;
  v23 = sub_183FA5A00();
  if ((v19 * v20) >> 64 != (v19 * v20) >> 63)
  {
    goto LABEL_97;
  }

  if (v19 >> 60)
  {
    goto LABEL_111;
  }

  v20 *= v19;
  v3 = &v169;
  v4 = &v155;
  v14 = *v110;
  v105 = *(*v110 + 16);
  if ((8 * v19) >= 1025)
  {
    goto LABEL_98;
  }

  do
  {
    v101[3] = v99;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v23, v24);
    v114 = v99 - v27;
    if (v19 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v88 = v20;
        v89 = v105;
        v90 = v105 == 0;
        v91 = swift_slowAlloc();
        v97.n128_u64[1] = v21;
        v21 = v89;
        v97.n128_u64[0] = sub_183F8158C;
        sub_183FA7660(v91, v19, v88, v114, v19, v108, 0, 0, 1, v97, v88, 1, v90, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v91, -1, -1);
        if (!v15)
        {
          goto LABEL_83;
        }

        v92 = v15;
        goto LABEL_107;
      }
    }

    v101[2] = v99;
    v28 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v26);
    v113 = (v99 - v30);
    if (v20 < 0)
    {
      goto LABEL_112;
    }

    if (v20 >> 60)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (8 * v20 >= 1025)
    {
      v28 = swift_stdlib_isStackAllocationSafe();
      if ((v28 & 1) == 0)
      {
        v93 = v20;
        v94 = v105;
        v95 = v105 == 0;
        v96 = swift_slowAlloc();
        v98 = v21;
        v21 = v94;
        sub_183FA88BC(v96, v93, v114, v19, v113, v19, v108, 0, 0, sub_183F8158C, v98, v93, 1, v95, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v96, -1, -1);
        if (!v15)
        {
          goto LABEL_83;
        }

        v92 = v15;
        swift_willThrow();
LABEL_107:
        swift_willThrow();

        __break(1u);
        goto LABEL_108;
      }
    }

    v101[1] = v99;
    MEMORY[0x1EEE9AC00](v28, v29);
    v115 = v99 - v31;
    v101[5] = v99;
    v32 = *v107;
    v33 = *v109;
    v34 = v120;
    v19 = *(v120 + 2);
    swift_retain_n();
    v104 = v33;

    v103 = v14;

    swift_beginAccess();
    v119 = v19;
    v102 = v32;
    if (!v19)
    {
      v14 = 0;
      goto LABEL_46;
    }

    v19 = 0;
    v14 = 0;
    v15 = 0;
    v35 = 0;
    v21 = (v32 + 32);
    v117 = v8;
    v118 = v34 + 32;
    v112 = v20 - 1;
    v116 = v20;
    while (1)
    {
      v122 = v21;
      v123 = v15;
      v21 = &v115[8 * v14];
      v128 = v20 - v14;
      v132 = (v112 - v14);
      v124 = v14;
      v125 = v19;
      while (1)
      {
        if (v35 >= *(v34 + 2))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        v131 = v35;
        v36 = *&v118[8 * v35];
        v37 = *v8;
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        v39 = swift_allocObject();
        *(v39 + 16) = v121;
        *&v135 = v37;
        *(&v135 + 1) = sub_183F81590;
        *&v136 = v38;
        *(&v136 + 1) = sub_183F7C464;
        *&v137 = 0;
        *(&v137 + 1) = 0x7FF8000000000000;
        v138 = 0u;
        v139 = 0u;
        *&v140 = sub_183F81594;
        *(&v140 + 1) = v39;
        *(v4 + 20) = v137;
        *(v4 + 21) = 0u;
        v40 = v140;
        *(v4 + 22) = v139;
        *(v4 + 23) = v40;
        v41 = v136;
        *(v4 + 18) = v135;
        *(v4 + 19) = v41;
        v141[0] = v37;
        v141[1] = sub_183F81590;
        v141[2] = v38;
        v141[3] = sub_183F7C464;
        v141[4] = 0;
        v141[5] = 0x7FF8000000000000;
        v142 = 0u;
        v143 = 0u;
        v144 = sub_183F81594;
        v145 = v39;

        v15 = &unk_1843984F8;
        sub_183F81520(&v135, v164, &qword_1EA854270);
        sub_183F814B4(v141, &qword_1EA854270);
        v146 = v36;
        v42 = *(v4 + 21);
        v149 = *(v4 + 20);
        v150 = v42;
        v43 = *(v4 + 23);
        v151 = *(v4 + 22);
        v152 = v43;
        v44 = *(v4 + 19);
        v147 = *(v4 + 18);
        v148 = v44;
        v153 = sub_183FB65DC;
        v154 = 0;
        if (v20 < v14)
        {
          goto LABEL_90;
        }

        v129 = *(&v152 + 1);
        v130 = v152;
        v45 = v148;
        *v4 = v147;
        *(v4 + 1) = v45;
        v46 = v150;
        *(v4 + 2) = v149;
        *(v4 + 3) = v46;
        *(v4 + 4) = v151;
        v47 = v155;
        v48 = v156;
        v49 = v157;
        v50 = v159;
        v163[1] = v155;
        v163[2] = v156;
        v163[3] = v157;
        v127 = v158;
        v163[4] = v158;
        v163[5] = v159;
        sub_183F81520(&v146, v164, &qword_1EA854278);
        v51 = *(v47 + 2);

        v126 = v50;

        v53 = 0;
        if (v51)
        {
          v54 = v47 + 48;
          while (1)
          {
            v55 = *v54;
            v164[0] = *(v54 - 1);
            *&v164[1] = v55;
            if ((v48)(v164))
            {
              break;
            }

            ++v53;
            v54 += 3;
            if (v51 == v53)
            {
              v53 = v51;
              break;
            }
          }
        }

        v56 = sub_183F7DDD8(v53, v52);
        v58 = v57;
        v60 = v59;
        v62 = v61;
        sub_183F814B4(&v155, &qword_1EA854280);
        v133 = v58 & 1;
        *&v169 = v47;
        *(&v169 + 1) = v48;
        *&v170 = v49;
        *(&v170 + 1) = v127;
        *&v171 = v126;
        *(&v171 + 1) = v56;
        LOBYTE(v172) = v58 & 1;
        *(&v172 + 1) = v60;
        *&v173 = v62;
        *(&v173 + 1) = v160;
        v4 = &v155;
        v174 = v161;
        v175 = v162;
        v15 = v128;
        v176 = v130;
        v177 = v129;
        v14 = v124;
        v19 = v125;
        v20 = v116;
        v8 = v117;
        v3 = &v185;
        if (v128)
        {
          if (v128 < 1)
          {
            __break(1u);
            goto LABEL_58;
          }

          sub_183F80564(&v185);
          if (v188)
          {
            v15 = 0;
          }

          else
          {
            v15 = 0;
            while (1)
            {
              *&v164[0] = v185;
              *(v164 + 8) = v186;
              *(&v164[1] + 8) = v187;
              sub_183FB65DC(v164, &v134);
              *&v21[8 * v15] = v134;
              if (v132 == v15)
              {
                break;
              }

              sub_183F80564(&v185);
              ++v15;
              if (v188)
              {
                goto LABEL_32;
              }
            }

            v15 = v128;
          }
        }

LABEL_32:
        ++v131;
        v182 = v173;
        v183 = v174;
        v184 = v175;
        v178 = v169;
        v179 = v170;
        v180 = v171;
        v181 = v172;
        v3 = &v169;
        v164[4] = v173;
        v164[5] = v174;
        v164[6] = v175;
        v164[0] = v169;
        v164[1] = v170;
        v164[2] = v171;
        v164[3] = v172;
        v165 = v130;
        v166 = v129;
        v167 = sub_183FB65DC;
        v168 = 0;
        sub_183F814B4(v164, &qword_1EA854288);
        v34 = v120;
        if (v123 != v15)
        {
          goto LABEL_39;
        }

        if (v123)
        {
          break;
        }

LABEL_15:
        sub_183F814B4(&v146, &qword_1EA854278);
        v35 = v131;
        if (v131 == v119)
        {
          goto LABEL_46;
        }
      }

      v63 = 0;
      while (*&v122[8 * v63] == *&v21[8 * v63])
      {
        if (v123 == ++v63)
        {
          goto LABEL_15;
        }
      }

      v15 = v123;
LABEL_39:
      v64 = __OFADD__(v14, v15);
      v14 += v15;
      if (v64)
      {
        break;
      }

      *&v114[8 * v19] = v146;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_94;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_95;
      }

      v113[v19] = v14;
      sub_183F814B4(&v146, &qword_1EA854278);
      v64 = __OFADD__(v19++, 1);
      if (v64)
      {
        goto LABEL_96;
      }

      v35 = v131;
      if (v131 == v119)
      {
LABEL_46:
        v20 = v102;

        v15 = v104;

        v21 = v105;
        if (v105)
        {
          sub_183F7DCD4(0, 0, v115, v14, sub_183F7FF74, sub_183F800B4);
          if ((v19 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v114, v19, sub_183F7FF74, sub_183F800B4);
            goto LABEL_49;
          }

LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v14 <= *(v20 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v115, v14, sub_183F7FF74, sub_183F800B4);
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_108;
            }

            v15 = *v109;
            goto LABEL_60;
          }

LABEL_56:
          v65 = sub_183EA76E4(v14, 0);
          memcpy(v65 + 4, v115, 8 * v14);
LABEL_59:

          *v107 = v65;
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_108;
          }

LABEL_60:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v19 <= *(v15 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v114, v19, sub_183F7FF74, sub_183F800B4);
              goto LABEL_67;
            }

LABEL_64:
            v66 = sub_183EA76E4(v19, 0);
            memcpy(v66 + 4, v114, 8 * v19);
          }

          else
          {
            if (v19)
            {
              goto LABEL_64;
            }

            v66 = MEMORY[0x1E69E7CC0];
          }

          *v109 = v66;
LABEL_67:
          v67 = *v110;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v19 > *(v67 + 24) >> 1)
            {
LABEL_71:
              v68 = sub_183F9BAB8(v19, 0);
              memcpy(v68 + 4, v113, 4 * v19);
              goto LABEL_73;
            }

LABEL_49:
            sub_183F7DCD4(0, 0, v113, v19, sub_183F7FF54, sub_183F7FFB4);
            if (!v14)
            {
LABEL_83:
              v72 = *v109;
              if (*(*v109 + 16))
              {
                v73 = v108;
                v74 = v108[2];
                v75 = v108[3];
                *(v4 + 18) = *v108;
                *&v170 = v74;
                *(&v170 + 1) = v75;
                *&v171 = v72;
                *(v3 + 5) = *(v73 + 40);
                sub_183FA5744();
                v78 = *(v72 + 16);
                if (!v78)
                {
                  goto LABEL_110;
                }

                v79 = v76;
                v80 = v77;
                v82 = *(v72 + 32);
                v81 = v72 + 32;
                v83 = v82;
                if (!v21)
                {
                  v75 = *(v81 + 8 * v78 - 8);
                }
              }

              else
              {
                v79 = 0x7FF8000000000000;
                v80 = 0x7FF8000000000000;
                v83 = 0x7FF8000000000000;
                v75 = 0x7FF8000000000000;
              }

              v84 = v108;
              *v108 = v79;
              v84[1] = v80;
              v84[2] = v83;
              v84[3] = v75;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v19)
            {
              goto LABEL_71;
            }

            v68 = MEMORY[0x1E69E7CC0];
LABEL_73:

            *v110 = v68;
            if (!v14)
            {
              goto LABEL_83;
            }
          }

          v69 = *v110;
          v15 = *(*v110 + 16);
          if (v15 < v19)
          {
            goto LABEL_109;
          }

          if (v19 == v15)
          {
            goto LABEL_83;
          }

          if (v19 < v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_183F9C14C(v69);
            }

            do
            {
              if (v19 >= *(v69 + 2))
              {
                goto LABEL_91;
              }

              v70 = &v69[4 * v19];
              v71 = v14 + *(v70 + 8);
              if (HIDWORD(v71))
              {
                goto LABEL_92;
              }

              ++v19;
              *(v70 + 8) = v71;
            }

            while (v15 != v19);
            *v110 = v69;
            goto LABEL_83;
          }

LABEL_114:
          __break(1u);
        }

        if (v14)
        {
          goto LABEL_56;
        }

LABEL_58:
        v65 = MEMORY[0x1E69E7CC0];
        goto LABEL_59;
      }
    }

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
    v23 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v23 & 1) != 0);
  v86 = v105 == 0;
  v87 = swift_slowAlloc();
  sub_183FA60D0(v87, v19, v19, v20, v108, 0, 0, sub_183F8158C, 1uLL, v21, v20, 1u, v86, 0, 0, 0);
  if (!v15)
  {
    MEMORY[0x1865EFCB0](v87, -1, -1);
    v21 = v105;
    goto LABEL_83;
  }

  result = MEMORY[0x1865EFCB0](v87, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F7A27C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v124 = a2;
  v112 = a3;
  v205 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E7CC0];
  v163 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  v115 = v5;
  *(v5 + 16) = v4;
  v125 = (v5 + 16);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 16);
  v203[0] = *a1;
  v203[1] = v12;
  v203[2] = *(a1 + 32);
  v204 = *(a1 + 48);
  v105 = a1;
  sub_183F81520(a1, v194, &qword_1EA854260);
  sub_183F7D978(v194);
  sub_183F814B4(v203, &qword_1EA854238);
  v135 = v9;
  v136 = v7;
  *&v196 = v7;
  *(&v196 + 1) = v6;
  *&v197 = v9;
  *(&v197 + 1) = v8;
  v133 = v11;
  v134 = v10;
  *&v198 = v10;
  *(&v198 + 1) = v11;
  v13 = BYTE8(v195);
  while (1)
  {
    v14 = *&v194[0];
    v15 = BYTE8(v194[0]);
    if (v13)
    {
      break;
    }

    *&v194[0] = 0;
    BYTE8(v194[0]) = 0;
    if (!v14)
    {
      goto LABEL_70;
    }

LABEL_15:
    *&v187[0] = v14;
    BYTE8(v187[0]) = v15 & 1;
    v136(&v172, v187);

    v23 = v172.n128_u64[0];
    v24 = v172.n128_u8[8];
    v192 = v172.n128_u64[0];
    v193 = v172.n128_u8[8];
    if (v135(&v192))
    {
      *&v187[0] = v23;
      BYTE8(v187[0]) = v24;
      v134(&v172, v187);

      v25 = v172.n128_u64[0];
      v26 = v172.n128_u8[8];

      sub_183F7C470(v27, v26, sub_183F7C464, 0);
      sub_183F7C75C(v25);
    }

    else
    {
    }
  }

  if (v13 == 1)
  {
    v16 = *(&v194[4] + 1);
    *(v187 + 9) = *(v194 + 9);
    *(&v187[1] + 9) = *(&v194[1] + 9);
    *(&v187[2] + 9) = *(&v194[2] + 9);
    *(&v187[3] + 8) = *(&v194[3] + 8);
    *&v187[0] = *&v194[0];
    BYTE8(v187[0]) = BYTE8(v194[0]);
    *(&v187[4] + 1) = *(&v194[4] + 1);
    *&v188 = v195;
    sub_183F7E0C0();
    if (!v17)
    {
LABEL_17:
      v194[2] = v187[2];
      v194[3] = v187[3];
      v194[4] = v187[4];
      *&v195 = v188;
      v194[0] = v187[0];
      v194[1] = v187[1];
      BYTE8(v195) = 1;
      goto LABEL_18;
    }

    v14 = v17;
    v15 = v18;
    while (1)
    {
      v172.n128_u64[0] = v14;
      v172.n128_u8[8] = v15 & 1;
      if (v16(&v172))
      {
        break;
      }

      sub_183F7E0C0();
      v14 = v19;
      v15 = v20;
      if (!v19)
      {
        goto LABEL_17;
      }
    }

    v194[2] = v187[2];
    v194[3] = v187[3];
    v194[4] = v187[4];
    *&v195 = v188;
    v13 = 1;
    v194[0] = v187[0];
    v194[1] = v187[1];
    goto LABEL_15;
  }

  *(v187 + 9) = *(v194 + 9);
  *(&v187[1] + 9) = *(&v194[1] + 9);
  *(&v187[2] + 9) = *(&v194[2] + 9);
  *(&v187[3] + 8) = *(&v194[3] + 8);
  *&v187[0] = *&v194[0];
  BYTE8(v187[0]) = BYTE8(v194[0]);
  sub_183F7E0C0();
  v14 = v21;
  v15 = v22;
  v194[2] = v187[2];
  v194[3] = v187[3];
  *&v194[4] = *&v187[4];
  v194[0] = v187[0];
  v194[1] = v187[1];
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_70:
  BYTE8(v195) = v13;
LABEL_18:
  v189 = v196;
  v190 = v197;
  v191 = v198;
  v187[2] = v194[2];
  v187[3] = v194[3];
  v187[4] = v194[4];
  v188 = v195;
  v187[0] = v194[0];
  v187[1] = v194[1];
  sub_183F814B4(v187, &qword_1EA854268);
  v28 = &v163;
  v29 = 0;
  sub_183F7EDB0(&v163);
  sub_183F7CAB4();
  v30 = sub_183F7EC4C(v125);
  v104[4] = v104;
  v31 = vdupq_n_s64(0x7FF8000000000000uLL);
  v32 = v112;
  *v112 = v31;
  *(v32 + 16) = v31;
  v33 = MEMORY[0x1E69E7CC0];
  *(v32 + 32) = MEMORY[0x1E69E7CC0];
  v113 = v32 + 32;
  *(v32 + 40) = v33;
  v114 = (v32 + 40);
  *(v32 + 48) = v33;
  v111 = (v32 + 48);
  v34 = v163;
  v35 = *(v163 + 2);
  v36 = *(*(v115 + 16) + 16);
  MEMORY[0x1EEE9AC00](v30, v31);
  v37 = v102;
  v102[2] = &v163;
  v102[3] = v38;
  v103 = v124;
  v39 = sub_183FA5A00();
  v41 = v35 * v36;
  if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
  {
    goto LABEL_111;
  }

  if (v35 >> 60)
  {
    goto LABEL_125;
  }

  v28 = *v114;
  v110 = *(*v114 + 16);
  if ((8 * v35) >= 1025)
  {
    goto LABEL_112;
  }

  while (2)
  {
    v104[3] = v102;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v39, v40);
    v118 = v102 - v44;
    if (v35 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v96 = v110 == 0;
        v97 = swift_slowAlloc();
        v101.n128_u64[1] = v37;
        v101.n128_u64[0] = sub_183F81384;
        sub_183FA7660(v97, v35, v41, v118, v35, v112, 0, 0, 1, v101, v41, 1, v96, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v97, -1, -1);
        if (!v29)
        {
          goto LABEL_97;
        }

        v98 = v29;
        goto LABEL_121;
      }
    }

    v104[2] = v102;
    v45 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v43);
    v117 = (v102 - v47);
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }

    if (v41 >> 60)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if ((8 * v41) >= 1025)
    {
      v45 = swift_stdlib_isStackAllocationSafe();
      if ((v45 & 1) == 0)
      {
        v99 = v110 == 0;
        v100 = swift_slowAlloc();
        sub_183FA88BC(v100, v41, v118, v35, v117, v35, v112, 0, 0, sub_183F81384, v37, v41, 1, v99, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v100, -1, -1);
        if (!v29)
        {
          goto LABEL_97;
        }

        v98 = v29;
        swift_willThrow();
LABEL_121:
        swift_willThrow();

        __break(1u);
        goto LABEL_122;
      }
    }

    v104[1] = v102;
    MEMORY[0x1EEE9AC00](v45, v46);
    v119 = v102 - v48;
    v106 = v102;
    v49 = *v111;
    v50 = *v113;
    v51 = *(v34 + 2);
    swift_retain_n();
    v109 = v50;

    v108 = v28;

    swift_beginAccess();
    v123 = v51;
    v107 = v49;
    if (!v51)
    {
      v52 = 0;
      v28 = 0;
      v37 = v159;
      goto LABEL_59;
    }

    v28 = 0;
    v52 = 0;
    v35 = 0;
    v53 = 0;
    v29 = (v49 + 32);
    v121 = v41;
    v122 = v34 + 32;
    v116 = v41 - 1;
    v37 = v159;
    v120 = v34;
    while (1)
    {
      v126 = v29;
      v127 = v35;
      v29 = &v119[8 * v52];
      v133 = v41 - v52;
      v136 = (v116 - v52);
      v128 = v28;
      v129 = v52;
      while (1)
      {
        if (v53 >= *(v34 + 2))
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        v130 = v53;
        v54 = *&v122[8 * v53];
        v55 = *v125;
        v56 = swift_allocObject();
        *(v56 + 16) = v54;
        v57 = swift_allocObject();
        *(v57 + 16) = v124;
        v139.n128_u64[0] = v55;
        v139.n128_u64[1] = sub_183F81390;
        *&v140 = v56;
        *(&v140 + 1) = sub_183F7C464;
        *&v141 = 0;
        *(&v141 + 1) = 0x7FF8000000000000;
        v142 = 0u;
        v143 = 0u;
        *&v144 = sub_183F81398;
        *(&v144 + 1) = v57;
        v174[0] = v141;
        v174[1] = 0u;
        v175 = 0u;
        v176 = v144;
        v172 = v139;
        v173 = v140;
        v145[0] = v55;
        v145[1] = sub_183F81390;
        v145[2] = v56;
        v145[3] = sub_183F7C464;
        v145[4] = 0;
        v145[5] = 0x7FF8000000000000;
        v146 = 0u;
        v147 = 0u;
        v148 = sub_183F81398;
        v149 = v57;

        v35 = &unk_1843984F8;
        sub_183F81520(&v139, v167, &qword_1EA854270);
        sub_183F814B4(v145, &qword_1EA854270);
        v150 = v54;
        v153 = v174[0];
        v154 = v174[1];
        v155 = v175;
        v156 = v176;
        v151 = v172;
        v152 = v173;
        v157 = sub_183FB65DC;
        v158 = 0;
        if (v41 < v52)
        {
          goto LABEL_104;
        }

        v134 = *(&v156 + 1);
        v135 = v156;
        v159[0] = v151;
        v159[1] = v152;
        v160 = v153;
        v161 = v154;
        v162 = v155;
        v58 = v151;
        v59 = v152;
        v60 = v153;
        v164 = v151;
        v165 = v152;
        v132 = *(&v152 + 1);
        v166 = v153;
        sub_183F81520(&v150, v167, &qword_1EA854278);
        v61 = *(v58.n128_u64[0] + 16);

        v131 = v60;

        v63 = 0;
        if (v61)
        {
          v64 = (v58.n128_u64[0] + 48);
          while (1)
          {
            v65 = *v64;
            v167[0] = *(v64 - 1);
            *&v167[1] = v65;
            if ((v58.n128_u64[1])(v167))
            {
              break;
            }

            ++v63;
            v64 += 3;
            if (v61 == v63)
            {
              v63 = v61;
              break;
            }
          }
        }

        v66 = sub_183F7DDD8(v63, v62);
        v68 = v67;
        v70 = v69;
        v72 = v71;
        sub_183F814B4(v159, &qword_1EA854280);
        v137 = v68 & 1;
        v172 = v58;
        *&v173 = v59;
        *(&v173 + 1) = v132;
        *&v174[0] = v131;
        *(&v174[0] + 1) = v66;
        LOBYTE(v174[1]) = v68 & 1;
        *(&v174[1] + 1) = v70;
        *&v175 = v72;
        *(&v175 + 1) = *(&v160 + 1);
        v37 = v159;
        v176 = v161;
        v177 = v162;
        v35 = v133;
        v178 = v135;
        v179 = v134;
        v28 = &v199;
        v52 = v129;
        v34 = v120;
        v41 = v121;
        if (v133)
        {
          if (v133 < 1)
          {
            __break(1u);
            goto LABEL_72;
          }

          sub_183F80564(&v199);
          if (v202)
          {
            v35 = 0;
          }

          else
          {
            v35 = 0;
            while (1)
            {
              *&v167[0] = v199;
              *(v167 + 8) = v200;
              *(&v167[1] + 8) = v201;
              sub_183FB65DC(v167, &v138);
              *&v29[8 * v35] = v138;
              if (v136 == v35)
              {
                break;
              }

              sub_183F80564(&v199);
              ++v35;
              if (v202)
              {
                goto LABEL_45;
              }
            }

            v35 = v133;
          }
        }

LABEL_45:
        v53 = v130 + 1;
        v184 = v175;
        v185 = v176;
        v186 = v177;
        v180 = v172;
        v181 = v173;
        v182 = v174[0];
        v183 = v174[1];
        v167[4] = v175;
        v167[5] = v176;
        v167[6] = v177;
        v167[0] = v172;
        v167[1] = v173;
        v167[2] = v174[0];
        v167[3] = v174[1];
        v168 = v135;
        v169 = v134;
        v170 = sub_183FB65DC;
        v171 = 0;
        sub_183F814B4(v167, &qword_1EA854288);
        v28 = v128;
        if (v127 != v35)
        {
          goto LABEL_52;
        }

        if (v127)
        {
          break;
        }

LABEL_28:
        sub_183F814B4(&v150, &qword_1EA854278);
        if (v53 == v123)
        {
          goto LABEL_59;
        }
      }

      v73 = 0;
      while (*&v126[8 * v73] == *&v29[8 * v73])
      {
        if (v127 == ++v73)
        {
          goto LABEL_28;
        }
      }

      v35 = v127;
LABEL_52:
      v74 = __OFADD__(v52, v35);
      v52 += v35;
      if (v74)
      {
        break;
      }

      *&v118[8 * v128] = v150;
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }

      if (HIDWORD(v52))
      {
        goto LABEL_109;
      }

      v117[v28] = v52;
      sub_183F814B4(&v150, &qword_1EA854278);
      v74 = __OFADD__(v28++, 1);
      if (v74)
      {
        goto LABEL_110;
      }

      if (v53 == v123)
      {
LABEL_59:
        v35 = v107;

        v29 = v109;

        if (v110)
        {
          sub_183F7DCD4(0, 0, v119, v52, sub_183F7FF74, sub_183F800B4);
          if ((v28 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v118, v28, sub_183F7FF74, sub_183F800B4);
            goto LABEL_62;
          }

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
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v52 <= *(v35 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v119, v52, sub_183F7FF74, sub_183F800B4);
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_122;
            }

            v29 = *v113;
            goto LABEL_74;
          }

LABEL_69:
          v75 = sub_183EA76E4(v52, 0);
          memcpy(v75 + 4, v119, 8 * v52);
LABEL_73:

          *v111 = v75;
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_122;
          }

LABEL_74:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 <= *(v29 + 3) >> 1)
            {
              sub_183F7DCD4(0, 0, v118, v28, sub_183F7FF74, sub_183F800B4);
              goto LABEL_81;
            }

LABEL_78:
            v76 = sub_183EA76E4(v28, 0);
            memcpy(v76 + 4, v118, 8 * v28);
          }

          else
          {
            if (v28)
            {
              goto LABEL_78;
            }

            v76 = MEMORY[0x1E69E7CC0];
          }

          *v113 = v76;
LABEL_81:
          v77 = *v114;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 > *(v77 + 24) >> 1)
            {
LABEL_85:
              v35 = sub_183F9BAB8(v28, 0);
              memcpy((v35 + 32), v117, 4 * v28);
              goto LABEL_87;
            }

LABEL_62:
            sub_183F7DCD4(0, 0, v117, v28, sub_183F7FF54, sub_183F7FFB4);
            if (!v52)
            {
LABEL_97:
              v81 = *v113;
              if (*(*v113 + 16))
              {
                v82 = *(v112 + 16);
                v83 = *(v112 + 24);
                v172 = *v112;
                *&v173 = v82;
                *(&v173 + 1) = v83;
                *&v174[0] = v81;
                *(v174 + 8) = *(v112 + 40);
                sub_183FA5744();
                v85 = v84;
                v87 = v86;
                sub_183F814B4(v105, &qword_1EA854260);
                v88 = *(v81 + 2);
                if (!v88)
                {
                  goto LABEL_124;
                }

                v90 = *(v81 + 4);
                v89 = v81 + 32;
                v91 = v90;
                if (!v110)
                {
                  v83 = *&v89[8 * v88 - 8];
                }
              }

              else
              {
                sub_183F814B4(v105, &qword_1EA854260);
                v85 = 0x7FF8000000000000;
                v87 = 0x7FF8000000000000;
                v91 = 0x7FF8000000000000;
                v83 = 0x7FF8000000000000;
              }

              v92 = v112;
              *v112 = v85;
              v92[1] = v87;
              v92[2] = v91;
              v92[3] = v83;
              sub_183FA5EA0();
            }
          }

          else
          {
            if (v28)
            {
              goto LABEL_85;
            }

            v35 = MEMORY[0x1E69E7CC0];
LABEL_87:

            *v114 = v35;
            if (!v52)
            {
              goto LABEL_97;
            }
          }

          v78 = *v114;
          v29 = *(*v114 + 16);
          if (v29 < v28)
          {
            goto LABEL_123;
          }

          if (v28 == v29)
          {
            goto LABEL_97;
          }

          if (v28 < v29)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_183F9C14C(v78);
            }

            do
            {
              if (v28 >= *(v78 + 2))
              {
                goto LABEL_105;
              }

              v79 = &v78[4 * v28];
              v80 = v52 + *(v79 + 8);
              if (HIDWORD(v80))
              {
                goto LABEL_106;
              }

              ++v28;
              *(v79 + 8) = v80;
            }

            while (v29 != v28);
            *v114 = v78;
            goto LABEL_97;
          }

LABEL_128:
          __break(1u);
        }

        if (v52)
        {
          goto LABEL_69;
        }

LABEL_72:
        v75 = MEMORY[0x1E69E7CC0];
        goto LABEL_73;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    v39 = swift_stdlib_isStackAllocationSafe();
    if (v39)
    {
      continue;
    }

    break;
  }

  v94 = v110 == 0;
  v95 = swift_slowAlloc();
  sub_183FA60D0(v95, v35, v35, v41, v112, 0, 0, sub_183F81384, 1uLL, v37, v41, 1u, v94, 0, 0, 0);
  if (!v29)
  {
    MEMORY[0x1865EFCB0](v95, -1, -1);
    goto LABEL_97;
  }

  result = MEMORY[0x1865EFCB0](v95, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_183F7B3E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, char **a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v5 = a3;
  v125 = a2;
  v112 = a4;
  v193 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1, a5);
  v9 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = v102 - v13;
  v15 = MEMORY[0x1E69E7CC0];
  v167[0] = MEMORY[0x1E69E7CC0];
  v16 = swift_allocObject();
  v115 = v16;
  *(v16 + 16) = v15;
  v103 = v7;
  v104 = a1;
  v17 = a1;
  v18 = (v16 + 16);
  (*(v7 + 16))(v9, v17, v5);
  sub_18438FD38();
  v105 = v5;
  swift_getAssociatedConformanceWitness();
  sub_18438FF58();
  v19 = v173;
  if (v173)
  {
    v20 = BYTE8(v173);
    do
    {

      sub_183F7C470(v21, v20 & 1, sub_183F7C464, 0);
      sub_183F7C75C(v19);
      sub_18438FF58();
      v19 = v173;
      v20 = BYTE8(v173);
    }

    while (v173);
  }

  v23 = *(v11 + 8);
  v22 = (v11 + 8);
  v23(v14, AssociatedTypeWitness);
  v24 = 0;
  sub_183F7EDB0(v167);
  sub_183F7CAB4();
  v25 = sub_183F7EC4C(v18);
  v102[4] = v102;
  v26 = vdupq_n_s64(0x7FF8000000000000uLL);
  v27 = v112;
  *v112 = v26;
  *(v27 + 16) = v26;
  *(v27 + 32) = v15;
  v113 = v27 + 32;
  *(v27 + 40) = v15;
  v114 = (v27 + 40);
  *(v27 + 48) = v15;
  v111 = (v27 + 48);
  v123 = v167[0];
  v28 = *(v167[0] + 2);
  v29 = *(*(v115 + 16) + 16);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = v100;
  v100[2] = v167;
  v100[3] = v31;
  v101 = v125;
  v32 = sub_183FA5A00();
  if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
  {
    goto LABEL_96;
  }

  if (v28 >> 60)
  {
    goto LABEL_110;
  }

  v124 = v28 * v29;
  v22 = &v173;
  v5 = &v159;
  v110 = *v114;
  v29 = *(v110 + 2);
  if ((8 * v28) >= 1025)
  {
    goto LABEL_97;
  }

  do
  {
    v102[3] = v102;
    isStackAllocationSafe = MEMORY[0x1EEE9AC00](v32, v33);
    v118 = v102 - v36;
    if (v28 >= 0x101)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v96 = swift_slowAlloc();
        v99.n128_u64[1] = v30;
        v99.n128_u64[0] = sub_183F8158C;
        sub_183FA7660(v96, v28, v124, v118, v28, v112, 0, 0, 1, v99, v124, 1, v29 == 0, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v96, -1, -1);
        if (!v24)
        {
          goto LABEL_82;
        }

        v97 = v24;
        goto LABEL_106;
      }
    }

    v102[2] = v102;
    v37 = MEMORY[0x1EEE9AC00](isStackAllocationSafe, v35);
    v117 = (v102 - v39);
    v40 = v124;
    if ((v124 & 0x8000000000000000) != 0)
    {
      goto LABEL_111;
    }

    if (v124 >> 60)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if ((8 * v124) >= 1025)
    {
      v37 = swift_stdlib_isStackAllocationSafe();
      if ((v37 & 1) == 0)
      {
        v98 = swift_slowAlloc();
        sub_183FA88BC(v98, v40, v118, v28, v117, v28, v112, 0, 0, sub_183F8158C, v30, v40, 1, v29 == 0, 0, 0, 0, 0);
        MEMORY[0x1865EFCB0](v98, -1, -1);
        if (!v24)
        {
          goto LABEL_82;
        }

        v97 = v24;
        swift_willThrow();
LABEL_106:
        swift_willThrow();

        __break(1u);
        goto LABEL_107;
      }
    }

    v109 = v29;
    v102[1] = v102;
    MEMORY[0x1EEE9AC00](v37, v38);
    v119 = v102 - v41;
    v106 = v102;
    v42 = *v111;
    v43 = *v113;
    v44 = v123;
    v28 = *(v123 + 2);
    swift_retain_n();
    v108 = v43;

    swift_beginAccess();
    v122 = v28;
    v107 = v42;
    if (!v28)
    {
      v30 = 0;
      goto LABEL_45;
    }

    v28 = 0;
    v30 = 0;
    v24 = 0;
    v45 = 0;
    v29 = v42 + 32;
    v120 = v18;
    v121 = v44 + 32;
    v116 = v40 - 1;
    while (1)
    {
      v126 = v29;
      v127 = v24;
      v29 = &v119[8 * v30];
      v132 = v40 - v30;
      v136 = (v116 - v30);
      v128 = v30;
      v129 = v28;
      while (1)
      {
        if (v45 >= *(v44 + 2))
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v135 = v45;
        v46 = *&v121[8 * v45];
        v47 = *v18;
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        v49 = swift_allocObject();
        *(v49 + 16) = v125;
        *&v139 = v47;
        *(&v139 + 1) = sub_183F81590;
        *&v140 = v48;
        *(&v140 + 1) = sub_183F7C464;
        *&v141 = 0;
        *(&v141 + 1) = 0x7FF8000000000000;
        v142 = 0u;
        v143 = 0u;
        *&v144 = sub_183F81594;
        *(&v144 + 1) = v49;
        *(v5 + 20) = v141;
        *(v5 + 21) = 0u;
        v50 = v144;
        *(v5 + 22) = v143;
        *(v5 + 23) = v50;
        v51 = v140;
        *(v5 + 18) = v139;
        *(v5 + 19) = v51;
        v145[0] = v47;
        v145[1] = sub_183F81590;
        v145[2] = v48;
        v145[3] = sub_183F7C464;
        v145[4] = 0;
        v145[5] = 0x7FF8000000000000;
        v146 = 0u;
        v147 = 0u;
        v148 = sub_183F81594;
        v149 = v49;

        v24 = &unk_1843984F8;
        sub_183F81520(&v139, v168, &qword_1EA854270);
        sub_183F814B4(v145, &qword_1EA854270);
        v150 = v46;
        v52 = *(v5 + 21);
        v153 = *(v5 + 20);
        v154 = v52;
        v53 = *(v5 + 23);
        v155 = *(v5 + 22);
        v156 = v53;
        v54 = *(v5 + 19);
        v151 = *(v5 + 18);
        v152 = v54;
        v157 = sub_183FB65DC;
        v158 = 0;
        if (v40 < v30)
        {
          goto LABEL_89;
        }

        v133 = *(&v156 + 1);
        v134 = v156;
        v55 = v152;
        *v5 = v151;
        *(v5 + 1) = v55;
        v56 = v154;
        *(v5 + 2) = v153;
        *(v5 + 3) = v56;
        *(v5 + 4) = v155;
        v57 = v159;
        v58 = v160;
        v59 = v161;
        v60 = v163;
        v167[1] = v159;
        v167[2] = v160;
        v167[3] = v161;
        v131 = v162;
        v167[4] = v162;
        v167[5] = v163;
        sub_183F81520(&v150, v168, &qword_1EA854278);
        v61 = *(v57 + 2);

        v130 = v60;

        v63 = 0;
        if (v61)
        {
          v64 = v57 + 48;
          while (1)
          {
            v65 = *v64;
            v168[0] = *(v64 - 1);
            *&v168[1] = v65;
            if ((v58)(v168))
            {
              break;
            }

            ++v63;
            v64 += 3;
            if (v61 == v63)
            {
              v63 = v61;
              break;
            }
          }
        }

        v66 = sub_183F7DDD8(v63, v62);
        v68 = v67;
        v70 = v69;
        v72 = v71;
        sub_183F814B4(&v159, &qword_1EA854280);
        v137 = v68 & 1;
        *&v173 = v57;
        *(&v173 + 1) = v58;
        *&v174 = v59;
        *(&v174 + 1) = v131;
        *&v175 = v130;
        *(&v175 + 1) = v66;
        LOBYTE(v176) = v68 & 1;
        *(&v176 + 1) = v70;
        *&v177 = v72;
        *(&v177 + 1) = v164;
        v5 = &v159;
        v178 = v165;
        v179 = v166;
        v24 = v132;
        v180 = v134;
        v181 = v133;
        v30 = v128;
        v28 = v129;
        v18 = v120;
        v40 = v124;
        v22 = &v189;
        if (v132)
        {
          if (v132 < 1)
          {
            __break(1u);
            goto LABEL_57;
          }

          sub_183F80564(&v189);
          if (v192)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            while (1)
            {
              *&v168[0] = v189;
              *(v168 + 8) = v190;
              *(&v168[1] + 8) = v191;
              sub_183FB65DC(v168, &v138);
              *(v29 + 8 * v24) = v138;
              if (v136 == v24)
              {
                break;
              }

              sub_183F80564(&v189);
              ++v24;
              if (v192)
              {
                goto LABEL_31;
              }
            }

            v24 = v132;
          }
        }

LABEL_31:
        ++v135;
        v186 = v177;
        v187 = v178;
        v188 = v179;
        v182 = v173;
        v183 = v174;
        v184 = v175;
        v185 = v176;
        v22 = &v173;
        v168[4] = v177;
        v168[5] = v178;
        v168[6] = v179;
        v168[0] = v173;
        v168[1] = v174;
        v168[2] = v175;
        v168[3] = v176;
        v169 = v134;
        v170 = v133;
        v171 = sub_183FB65DC;
        v172 = 0;
        sub_183F814B4(v168, &qword_1EA854288);
        v44 = v123;
        if (v127 != v24)
        {
          goto LABEL_38;
        }

        if (v127)
        {
          break;
        }

LABEL_14:
        sub_183F814B4(&v150, &qword_1EA854278);
        v45 = v135;
        if (v135 == v122)
        {
          goto LABEL_45;
        }
      }

      v73 = 0;
      while (*(v126 + 8 * v73) == *(v29 + 8 * v73))
      {
        if (v127 == ++v73)
        {
          goto LABEL_14;
        }
      }

      v24 = v127;
LABEL_38:
      v74 = __OFADD__(v30, v24);
      v30 += v24;
      if (v74)
      {
        break;
      }

      *&v118[8 * v28] = v150;
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_93;
      }

      if (HIDWORD(v30))
      {
        goto LABEL_94;
      }

      v117[v28] = v30;
      sub_183F814B4(&v150, &qword_1EA854278);
      v74 = __OFADD__(v28++, 1);
      if (v74)
      {
        goto LABEL_95;
      }

      v45 = v135;
      if (v135 == v122)
      {
LABEL_45:
        v75 = v107;

        v24 = v108;

        v29 = v109;
        if (v109)
        {
          sub_183F7DCD4(0, 0, v119, v30, sub_183F7FF74, sub_183F800B4);
          if ((v28 & 0x8000000000000000) == 0)
          {
            sub_183F7DCD4(0, 0, v118, v28, sub_183F7FF74, sub_183F800B4);
            goto LABEL_48;
          }

LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (v30 <= *(v75 + 24) >> 1)
          {
            sub_183F7DCD4(0, 0, v119, v30, sub_183F7FF74, sub_183F800B4);
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_107;
            }

            v24 = *v113;
            goto LABEL_59;
          }

LABEL_55:
          v76 = sub_183EA76E4(v30, 0);
          memcpy(v76 + 4, v119, 8 * v30);
LABEL_58:

          *v111 = v76;
          if ((v28 & 0x8000000000000000) != 0)
          {
            goto LABEL_107;
          }

LABEL_59:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 <= *(v24 + 24) >> 1)
            {
              sub_183F7DCD4(0, 0, v118, v28, sub_183F7FF74, sub_183F800B4);
              goto LABEL_66;
            }

LABEL_63:
            v77 = sub_183EA76E4(v28, 0);
            memcpy(v77 + 4, v118, 8 * v28);
          }

          else
          {
            if (v28)
            {
              goto LABEL_63;
            }

            v77 = MEMORY[0x1E69E7CC0];
          }

          *v113 = v77;
LABEL_66:
          v78 = *v114;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v28 > *(v78 + 3) >> 1)
            {
LABEL_70:
              v79 = sub_183F9BAB8(v28, 0);
              memcpy(v79 + 32, v117, 4 * v28);
              goto LABEL_72;
            }

LABEL_48:
            sub_183F7DCD4(0, 0, v117, v28, sub_183F7FF54, sub_183F7FFB4);
            if (!v30)
            {
LABEL_82:
              v83 = *v113;
              if (*(*v113 + 16))
              {
                v84 = v112;
                v85 = v112[2];
                v86 = v112[3];
                *(v5 + 18) = *v112;
                *&v174 = v85;
                *(&v174 + 1) = v86;
                *&v175 = v83;
                *(v22 + 5) = *(v84 + 40);
                sub_183FA5744();
                v89 = *(v83 + 16);
                if (!v89)
                {
                  goto LABEL_109;
                }

                v91 = *(v83 + 32);
                v90 = v83 + 32;
                v92 = v91;
                if (!v29)
                {
                  v86 = *(v90 + 8 * v89 - 8);
                }
              }

              else
              {
                v87 = 0x7FF8000000000000;
                v88 = 0x7FF8000000000000;
                v92 = 0x7FF8000000000000;
                v86 = 0x7FF8000000000000;
              }

              v93 = v112;
              *v112 = v87;
              v93[1] = v88;
              v93[2] = v92;
              v93[3] = v86;
              sub_183FA5EA0();
              (*(v103 + 8))(v104, v105);
            }
          }

          else
          {
            if (v28)
            {
              goto LABEL_70;
            }

            v79 = MEMORY[0x1E69E7CC0];
LABEL_72:

            *v114 = v79;
            if (!v30)
            {
              goto LABEL_82;
            }
          }

          v80 = *v114;
          v24 = *(*v114 + 2);
          if (v24 < v28)
          {
            goto LABEL_108;
          }

          if (v28 == v24)
          {
            goto LABEL_82;
          }

          if (v28 < v24)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = sub_183F9C14C(v80);
            }

            do
            {
              if (v28 >= *(v80 + 2))
              {
                goto LABEL_90;
              }

              v81 = &v80[4 * v28];
              v82 = v30 + *(v81 + 8);
              if (HIDWORD(v82))
              {
                goto LABEL_91;
              }

              ++v28;
              *(v81 + 8) = v82;
            }

            while (v24 != v28);
            *v114 = v80;
            goto LABEL_82;
          }

LABEL_113:
          __break(1u);
        }

        if (v30)
        {
          goto LABEL_55;
        }

LABEL_57:
        v76 = MEMORY[0x1E69E7CC0];
        goto LABEL_58;
      }
    }

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
    v32 = swift_stdlib_isStackAllocationSafe();
  }

  while ((v32 & 1) != 0);
  v95 = swift_slowAlloc();
  sub_183FA60D0(v95, v28, v28, v124, v112, 0, 0, sub_183F8158C, 1uLL, v30, v124, 1u, v29 == 0, 0, 0, 0);
  if (!v24)
  {
    MEMORY[0x1865EFCB0](v95, -1, -1);
    goto LABEL_82;
  }

  result = MEMORY[0x1865EFCB0](v95, -1, -1);
  __break(1u);
  return result;
}

double Region.init(filling:rule:)@<D0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_183F90DB8();
  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  sub_183F793C8(v6, v7, v12);

  v8 = v13;
  result = *v12;
  v10 = v12[1];
  v11 = v12[2];
  *a3 = v12[0];
  *(a3 + 16) = v10;
  *(a3 + 32) = v11;
  *(a3 + 48) = v8;
  return result;
}

double sub_183F7C464@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_183F7C470(void *a1, unsigned __int8 a2, void *(*a3)(uint64_t *__return_ptr, char **), uint64_t a4)
{
  v7 = a1[3];
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v4;
  v5 = *v4;
  v9 = *(*v4 + 2);
  v10 = v9 + v8;
  if (__OFADD__(v9, v8))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v5 + 3) >> 1, v16 < v10))
  {
    if (v9 <= v10)
    {
      v17 = v9 + v8;
    }

    else
    {
      v17 = v9;
    }

    isUniquelyReferenced_nonNull_native = sub_183F81C20(isUniquelyReferenced_nonNull_native, v17, 1, v5);
    v5 = isUniquelyReferenced_nonNull_native;
    v16 = *(isUniquelyReferenced_nonNull_native + 3) >> 1;
  }

  v18 = *(v5 + 2);
  v19 = a2 & 1;
  v43 = a2 & 1;
  v20 = v16 - v18;
  v41 = v8;
  if (v16 == v18)
  {
LABEL_35:
    v44 = a1;
    LOBYTE(v45) = v19;
    v8 = v20;
    goto LABEL_36;
  }

  if (v20 < 1)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v40 = v6;
  v21 = a1[3];
  v22 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    v8 = 0;
    v6 = (a1 + 5);
    v9 = &v5[8 * v18 + 32];
    v23 = ~v18 + v16;
    while (v8 != v22)
    {
      if (v8 >= v21)
      {
        goto LABEL_44;
      }

      v24 = a1[4];
      v25 = a1[2];
      if (v8 + v24 >= v25)
      {
        v26 = a1[2];
      }

      else
      {
        v26 = 0;
      }

      if (v8 + 1 >= v21)
      {
        goto LABEL_45;
      }

      if (v8 >= v22)
      {
        goto LABEL_46;
      }

      v27 = (&v6[v8])[v24 - v26];
      if (v8 + v24 + 1 >= v25)
      {
        v28 = a1[2];
      }

      else
      {
        v28 = 0;
      }

      if ((v8 ^ a2))
      {
        v29 = v6[v8 + v24 - v28 + 1];
      }

      else
      {
        v29 = (&v6[v8])[v24 - v26];
      }

      if (((v8 ^ a2) & 1) == 0)
      {
        v27 = v6[v8 + v24 - v28 + 1];
      }

      v44 = v27;
      v45 = v29;
      isUniquelyReferenced_nonNull_native = a3(&v42, &v44);
      *(v9 + 8 * v8) = v42;
      if (v23 == v8)
      {
        v19 = v43;
        v6 = v40;
        goto LABEL_35;
      }

      v21 = a1[3];
      ++v8;
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_32;
      }
    }
  }

  v44 = a1;
  LOBYTE(v45) = v43;
  v6 = v40;
LABEL_36:
  v46 = v8;
  v47 = a3;
  v48 = a4;
  if (v8 < v41)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v8)
  {
    v30 = *(v5 + 2);
    v31 = __OFADD__(v30, v8);
    v32 = v30 + v8;
    if (v31)
    {
      __break(1u);
LABEL_54:
      *(v5 + 2) = v9;
      v34 = v9;
      goto LABEL_55;
    }

    *(v5 + 2) = v32;
  }

  if (v8 != v20)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_51:
  v34 = *(v5 + 2);
  isUniquelyReferenced_nonNull_native = sub_183F80470();
  if (v35)
  {
    goto LABEL_41;
  }

LABEL_55:
  v36 = *(v5 + 3);
  v37 = v36 >> 1;
  if ((v36 >> 1) < v34 + 1)
  {
    v39 = isUniquelyReferenced_nonNull_native;
    v5 = sub_183F81C20((v36 > 1), v34 + 1, 1, v5);
    isUniquelyReferenced_nonNull_native = v39;
    v37 = *(v5 + 3) >> 1;
  }

  if (v34 <= v37)
  {
    v9 = v37;
  }

  else
  {
    v9 = v34;
  }

  do
  {
    if (v9 == v34)
    {
      goto LABEL_54;
    }

    *&v5[8 * v34++ + 32] = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = sub_183F80470();
  }

  while ((v38 & 1) == 0);

  *(v5 + 2) = v34;
LABEL_42:
  *v6 = v5;
  return result;
}

uint64_t sub_183F7C75C(uint64_t result)
{
  v6 = *(result + 24);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v7 < -1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v1 = *v2;
  v4 = *(*v2 + 16);
  v5 = v4 + v7 / 2;
  if (__OFADD__(v4, v7 / 2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v8 = *(v1 + 24) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v7 / 2;
    }

    else
    {
      v9 = v4;
    }

    result = sub_183F81B04(result, v9, 1, v1);
    v1 = result;
    v8 = *(result + 24) >> 1;
  }

  v5 = *(v1 + 16);
  v4 = v8 - v5;
  if (v8 != v5)
  {
    v10 = v3[3];
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
LABEL_66:

      *(v1 + 16) = -v5;
      goto LABEL_39;
    }

    if (v4 >= 1)
    {
      v11 = (v10 - 1) / 2;
      if (v10 >= 3)
      {
        v12 = 0;
        v13 = v3 + 5;
        v14 = (v1 + 24 * v5 + 32);
        v15 = ~v5 + v8;
        v16 = (v10 - 1) / 2;
        while (1)
        {
          if (v12 >= v10)
          {
            goto LABEL_41;
          }

          v17 = v3[4];
          v18 = v3[2];
          if (v12 + v17 >= v18)
          {
            result = v3[2];
          }

          else
          {
            result = 0;
          }

          if (v12 + 1 >= v10)
          {
            goto LABEL_42;
          }

          if (v12 + v17 + 1 >= v18)
          {
            v19 = v3[2];
          }

          else
          {
            v19 = 0;
          }

          if (v12 + 2 >= v10)
          {
            goto LABEL_43;
          }

          if (2 * (v11 & ~(v11 >> 63)) == v12)
          {
            goto LABEL_44;
          }

          v20 = v13[v12 + v17 - result];
          v21 = v13[v12 + 1 + v17 - v19];
          result = v12 + v17 + 2;
          if (result < v18)
          {
            v18 = 0;
          }

          v22 = v13[v12 + 2 + v17 - v18];
          *v14 = v20;
          v14[1] = v21;
          v14[2] = v22;
          if (!v15)
          {
            break;
          }

          v14 += 3;
          v12 += 2;
          --v15;
          if (!--v16)
          {
            goto LABEL_33;
          }
        }

        v11 = v4;
      }

LABEL_33:
      if (v11 >= v7 / 2)
      {
        if (v11 > 0)
        {
          v23 = __OFADD__(v5, v11);
          v5 += v11;
          if (v23)
          {
            __break(1u);
            goto LABEL_68;
          }

          *(v1 + 16) = v5;
        }

LABEL_37:
        if (v11 != v4)
        {
LABEL_38:

LABEL_39:
          *v2 = v1;
          return result;
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v7 <= 1)
  {
    v11 = 0;
    goto LABEL_37;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v24 = v3[3];
  v23 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v23)
  {
    goto LABEL_70;
  }

  v26 = v25 / 2;
  if (v4 == v25 / 2)
  {
    goto LABEL_38;
  }

  result = sub_183F91F18(v4, v3);
  if (v4 >= v26)
  {
    goto LABEL_71;
  }

  v30 = v4 + 1;
  *(&v27 + 1) = v28;
  while (1)
  {
    v31 = *(v1 + 24);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v5 + 1)
    {
      break;
    }

    v33 = v32 - v5;
    if (v32 > v5)
    {
      goto LABEL_56;
    }

LABEL_53:
    *(v1 + 16) = v5;
  }

  v41 = v29;
  v40 = v27;
  result = sub_183F81B04((v31 > 1), v5 + 1, 1, v1);
  v27 = v40;
  v29 = v41;
  v1 = result;
  v32 = *(result + 24) >> 1;
  v33 = v32 - v5;
  if (v32 <= v5)
  {
    goto LABEL_53;
  }

LABEL_56:
  v34 = (v1 + 24 * v5 + 48);
  v5 = ~v5;
  v35 = v30;
  while (1)
  {
    *(v34 - 1) = v27;
    *v34 = v29;
    v36 = v3[3];
    v23 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v23)
    {
      break;
    }

    v38 = v37 / 2;
    if (v35 == v37 / 2)
    {
      goto LABEL_66;
    }

    result = sub_183F91F18(v35, v3);
    if (v30 < 0 || v35 >= v38)
    {
      goto LABEL_69;
    }

    ++v35;
    *(&v27 + 1) = v39;
    v34 += 3;
    --v5;
    if (!--v33)
    {
      v5 = v32;
      v30 = v35;
      goto LABEL_53;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_183F7CAB4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 < 2)
  {
    return 1;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v1 = sub_183F80868(v1);
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = 5;
  do
  {
    v6 = *(v1 + 2);
    if (v3 >= v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v5 - 4 >= v6)
    {
      goto LABEL_18;
    }

    v7 = *&v1[8 * v5];
    if (*&v4[8 * v3] != v7)
    {
      v8 = v3 + 1;
      v3 = v5 - 4;
      if (v5 - 4 != v8)
      {
        if (v8 >= v6)
        {
          goto LABEL_19;
        }

        *&v4[8 * v8] = v7;
        v3 = v8;
      }
    }

    ++v5;
  }

  while (1 - v2 + v5 != 5);
  *v0 = v1;
  result = v3 + 1;
  if (v3 + 1 < v2)
  {

    return sub_183F808E8(result, v2);
  }

  return result;
}

uint64_t sub_183F7CBC4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  v9 = *a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v12[0] = v9;
  v12[1] = sub_183F81514;
  v12[2] = v10;

  a2(v12);
}

double sub_183F7CC80@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *&v16 = v8;
  *(&v16 + 1) = sub_183F81590;
  *&v17 = v9;
  *(&v17 + 1) = sub_183F7C464;
  *&v18 = 0;
  *(&v18 + 1) = 0x7FF8000000000000;
  v19 = 0u;
  v20 = 0u;
  *&v21 = sub_183F81594;
  *(&v21 + 1) = v10;
  v29 = v18;
  v30 = 0u;
  v31 = 0u;
  v32 = v21;
  v27 = v16;
  v28 = v17;
  v22[0] = v8;
  v22[1] = sub_183F81590;
  v22[2] = v9;
  v22[3] = sub_183F7C464;
  v22[4] = 0;
  v22[5] = 0x7FF8000000000000;
  v23 = 0u;
  v24 = 0u;
  v25 = sub_183F81594;
  v26 = v10;

  sub_183F81520(&v16, v15, &qword_1EA854270);
  sub_183F814B4(v22, &qword_1EA854270);
  v11 = v30;
  *(a4 + 40) = v29;
  *(a4 + 56) = v11;
  v12 = v32;
  *(a4 + 72) = v31;
  *(a4 + 88) = v12;
  result = *&v27;
  v14 = v28;
  *(a4 + 8) = v27;
  *(a4 + 24) = v14;
  *(a4 + 104) = sub_183FB65DC;
  *(a4 + 112) = 0;
  *a4 = v7;
  return result;
}

BOOL sub_183F7CE88(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_183F7CEB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_183F7CEE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_183F7CFBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_183F7CFF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

double Region.contour(options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 6);
  v6 = v2[1];
  v11 = *v2;
  v12 = v6;
  v13 = v2[2];
  v14 = v5;
  v10 = v4;
  sub_183F7D0CC(&v10, v15);
  v7 = v17;
  v8 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v8;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v7;
  *(a2 + 56) = sub_183F7D3D0;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_183F7D0CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = (~*v2 & 0x7FF0000000000000) != 0 || (*v2 & 0xFFFFFFFFFFFFFLL) == 0;
  if (v9 && !v7[2])
  {
    v14 = v2[1];
    v15 = v2[2];
    v16 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1843982F0;
    *(inited + 32) = v16;
    *(inited + 40) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B0);
    v18 = swift_allocObject();
    v19 = _swift_stdlib_malloc_size(v18);
    v20 = v19 - 40;
    if (v19 < 40)
    {
      v20 = v19 - 33;
    }

    v18[2] = v20 >> 3;
    v18[3] = 0;
    v18[4] = 0;
    sub_183FBA808(v18 + 2, v18 + 5, 2uLL, inited);
    swift_setDeallocating();
    sub_183F911D4(v15);
    sub_183F912E8(v14);
    sub_183F911D4(v16);
    result = sub_183F912E8(v5);
    v7 = v18;
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v10 = (v4 & 1) == 0;

    v12 = sub_183F7DC08 & (v4 << 62 >> 63);
    if ((v4 & 2) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = 0;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_183F7D3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
}

void Region.contourPath(options:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 6);
  v4 = v1[1];
  v36 = *v1;
  v37 = v4;
  v38 = v1[2];
  *&v39 = v3;
  *&v34[0] = v2;
  sub_183F7D0CC(v34, v41);
  Mutable = CGPathCreateMutable();
  sub_183F7D978(&v36);
  v6 = sub_183F7DA88();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    while (1)
    {
      v11 = v8[3];
      if (v11 < 1)
      {
        break;
      }

      if (v11 == 1)
      {
        goto LABEL_41;
      }

      v12 = v8 + 5;
      v13 = v8[4];
      v14 = v8[2];
      if (v13 >= v14)
      {
        v15 = v8[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = v13 - v15;
      v17 = *&v12[v16];
      v18 = v13 + 1;
      if (v18 < v14)
      {
        v14 = 0;
      }

      v19 = v18 - v14;
      if (v9)
      {
        v20 = *&v12[v16];
      }

      else
      {
        v20 = *&v12[v19];
      }

      if (v9)
      {
        v17 = *&v12[v19];
      }

      CGPathMoveToPoint(Mutable, &stru_1EF232540, v20, v17);
      v21 = v8[3];
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_42;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v22 >= 2)
      {
        v23 = 2;
        while (v21 != v23)
        {
          v24 = v8[3];
          if (v23 - 1 >= v24)
          {
            goto LABEL_38;
          }

          if (v23 >= v24)
          {
            goto LABEL_39;
          }

          v25 = v8[4];
          v26 = v23 + v25;
          v27 = v8[2];
          if (v23 + v25 >= v27)
          {
            v28 = v8[2];
          }

          else
          {
            v28 = 0;
          }

          v29 = v26 - v28;
          v30 = *&v12[v29];
          if (v26 - 1 >= v27)
          {
            v31 = v8[2];
          }

          else
          {
            v31 = 0;
          }

          v32 = &v12[v23 + v25 - v31];
          if (((v23 - 1) ^ v9))
          {
            v33 = *&v12[v29];
          }

          else
          {
            v33 = *(v32 - 1);
          }

          if (((v23 - 1) ^ v9))
          {
            v30 = *(v32 - 1);
          }

          CGPathAddLineToPoint(Mutable, &stru_1EF232590, v30, v33);
          if (v21 == ++v23)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_3:

      CGPathCloseSubpath(Mutable);

      v8 = sub_183F7DA88();
      v9 = v10;
      if (!v8)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_36:
    v34[2] = v38;
    v34[3] = v39;
    v35[0] = v40[0];
    *(v35 + 9) = *(v40 + 9);
    v34[0] = v36;
    v34[1] = v37;
    sub_183F814B4(v34, &qword_1EA854230);
    sub_183F814B4(v41, &qword_1EA854238);
  }
}

uint64_t Region.subregions(options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = (~v6 & 0x7FF0000000000000) != 0 || (v6 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v12 || *(v9 + 16))
  {
    if ((v4 & 2) != 0)
    {
      v17 = MEMORY[0x1E69E7CC0];
      v43 = MEMORY[0x1E69E7CC0];
      v38.i64[0] = v6;
      v38.i64[1] = v5;
      *&v39 = v8;
      *(&v39 + 1) = v7;
      *&v40 = v9;
      *(&v40 + 1) = v10;
      *&v41 = v11;
      v33.i64[0] = v4 & 0xFFFFFFFFFFFFFFFDLL;
      sub_183F7D0CC(v33.i64, v44);
      sub_183F7D978(&v38);
      sub_183F814B4(v44, &qword_1EA854238);
      v18 = sub_183F7DA88();
      if (v18)
      {
        v20 = v18;
        v21 = v19;
        while (1)
        {

          sub_183F78560(v29, v21 & 1, 0, &v33);
          v45 = v33;
          v46 = v34;
          v47 = v35;
          v48 = v36;
          if (sub_183F90F40(v20, v21 & 1))
          {
            sub_183F70628(&v45, &v33);
            v30 = sub_183F80ED0(&v43, &v45);
            result = sub_183F81130(&v45);
            v31 = *(v43 + 16);
            if (v31 < v30)
            {
              __break(1u);
              return result;
            }

            sub_183F80BE0(v30, v31, sub_183F7FF94, sub_183F80CCC);

            sub_183F81130(&v45);
          }

          else
          {
            v32 = v43;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_183F7FF94(0, *(v32 + 16) + 1, 1);
              v32 = v43;
            }

            v23 = *(v32 + 16);
            v22 = *(v32 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_183F7FF94((v22 > 1), v23 + 1, 1);

              v32 = v43;
            }

            else
            {
            }

            *(v32 + 16) = v23 + 1;
            v24 = v32 + 56 * v23;
            v25 = v45;
            v26 = v46;
            v27 = v47;
            *(v24 + 80) = v48;
            *(v24 + 48) = v26;
            *(v24 + 64) = v27;
            *(v24 + 32) = v25;
          }

          v20 = sub_183F7DA88();
          v21 = v28;
          if (!v20)
          {
            v17 = v43;
            break;
          }
        }
      }

      v35 = v40;
      v36 = v41;
      v37[0] = v42[0];
      *(v37 + 9) = *(v42 + 9);
      v33 = v38;
      v34 = v39;
      result = sub_183F814B4(&v33, &qword_1EA854230);
      *a2 = v17;
      v16 = 1;
    }

    else
    {
      v38.i64[0] = v6;
      v38.i64[1] = v5;
      *&v39 = v8;
      *(&v39 + 1) = v7;
      *&v40 = v9;
      *(&v40 + 1) = v10;
      *&v41 = v11;
      v45.i64[0] = v4;
      result = sub_183F7D0CC(v45.i64, &v33);
      v14 = v36;
      v15 = v34;
      *a2 = v33;
      *(a2 + 16) = v15;
      *(a2 + 32) = v35;
      *(a2 + 48) = v14;
      v16 = 2;
    }

    *(a2 + 56) = v16;
    return result;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
}

uint64_t sub_183F7D978@<X0>(uint64_t a1@<X8>)
{
  v8 = *v1;
  v7 = v1[1];
  v9 = *(v1 + 48);
  if (*(v1 + 48))
  {
    v2 = v1[2];
    v10 = v1[3];
    if (v9 == 1)
    {
      v4 = v1[4];
      v3 = v1[5];
    }

    sub_18438FBE8();
    v11 = 0;
    v12 = 0;
    v14 = 1;
    v5 = v10 & 1;
  }

  else
  {
    v12 = v1[1] & 1;
    v11 = v8;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v5;
  *(a1 + 64) = result;
  *(a1 + 72) = v4;
  *(a1 + 80) = v3;
  *(a1 + 88) = v9;
  return result;
}

uint64_t sub_183F7DA88()
{
  v1 = *v0;
  if (*(v0 + 88))
  {
    if (*(v0 + 88) == 1)
    {
      v2 = v0[9];
      *&v8[9] = *(v0 + 9);
      *&v8[25] = *(v0 + 25);
      *&v8[41] = *(v0 + 41);
      *&v8[56] = *(v0 + 7);
      *v8 = *v0;
      v8[8] = *(v0 + 8);
      *&v8[72] = v2;
      v9 = v0[10];
      while (1)
      {
        sub_183F7E0C0();
        v1 = v3;
        if (!v3)
        {
          break;
        }

        *&v11[0] = v3;
        BYTE8(v11[0]) = v4 & 1;
        if (v2(v11))
        {
          break;
        }
      }

      *(v0 + 2) = *&v8[32];
      *(v0 + 3) = *&v8[48];
      *(v0 + 4) = *&v8[64];
      v0[10] = v9;
      *v0 = *v8;
      *(v0 + 1) = *&v8[16];
      v6 = 1;
    }

    else
    {
      *&v10[9] = *(v0 + 9);
      *&v10[25] = *(v0 + 25);
      *&v10[41] = *(v0 + 41);
      *&v10[56] = *(v0 + 7);
      *v10 = *v0;
      v10[8] = *(v0 + 8);
      sub_183F7E0C0();
      v1 = v5;
      *&v12 = *&v10[64];
      v11[2] = *&v10[32];
      v11[3] = *&v10[48];
      v11[0] = *v10;
      v11[1] = *&v10[16];
      *(v0 + 2) = *&v10[32];
      *(v0 + 3) = *&v10[48];
      v0[10] = v13;
      *v0 = *v10;
      *(v0 + 1) = *&v10[16];
      *(v0 + 4) = v12;
      v6 = 2;
    }

    *(v0 + 88) = v6;
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 88) = 0;
  }

  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_183F7DCD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = __OFSUB__(a4, v11);
  v14 = a4 - v11;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v9 + v14;
  if (__OFADD__(v9, v14))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v15 > *(v8 + 24) >> 1)
  {
    a5();
  }

  return a6(v10, a2, a4, a3, a4);
}

unint64_t sub_183F7DDD8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*v2 + 16);
  if (v4 == result)
  {
    v5 = 0.0;
    return *&v5;
  }

  if (v4 <= result)
  {
    goto LABEL_18;
  }

  v17 = result;
  v18 = 0.0;
  v6 = v2[1];
  v7 = *v2 + 32;
  v8 = 1;
  v9 = result;
  v10 = v2[3];
  v16 = v10;
LABEL_5:
  v11 = v7 + 24 * v9;
  v12 = *(v11 + 16);
  v19 = *v11;
  v20 = v12;
  result = v10(&v21, &v19, a2, v3);
  if (v8)
  {
    v5 = v21;
    goto LABEL_8;
  }

  v5 = v18;
  if (v21 == v18)
  {
LABEL_8:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 == v4)
      {
        v9 = v4;
        goto LABEL_14;
      }

      if (v13 >= v4)
      {
        goto LABEL_17;
      }

      v14 = v7 + 24 * v13;
      v15 = *(v14 + 16);
      v19 = *v14;
      v20 = v15;
      result = v6(&v19);
      ++v9;
      if (result)
      {
        v18 = v5;
        v8 = 0;
        v9 = v13;
        v10 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  if (v9 >= v17)
  {
    return *&v5;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_183F7DF30(void *result)
{
  v2 = result;
  v3 = v1[1];
  if (v3 == result)
  {
    return 0;
  }

  v4 = v1[2];
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v6 = v1[3];
  v7 = v1[5];
  v8 = *v1;
  v13 = *(*v1 + 8 * result);
  v14 = result + v4;
  v6(&v15, &v13);
  v13 = v15;
  v14 = v16;
  v7(&v17, &v13);
  result = *&v17;
  v9 = v2 + 1;
  if ((v2 + 1) != v3)
  {
    v12 = v17;
    v10 = v17;
    while (1)
    {
      v11 = v9 + v4;
      if (__OFADD__(v9, v4))
      {
        break;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (HIDWORD(v11))
      {
        goto LABEL_20;
      }

      v13 = *(v8 + 8 * v9);
      v14 = v9 + v4;
      v6(&v15, &v13);
      v13 = v15;
      v14 = v16;
      result = (v7)(&v17, &v13);
      if (v17 != v10)
      {
        goto LABEL_15;
      }

      if (v3 == ++v9)
      {
        v9 = v3;
LABEL_15:
        result = *&v12;
        goto LABEL_16;
      }
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v3;
LABEL_16:
  if (v9 < v2)
  {
    goto LABEL_21;
  }

  return result;
}

void sub_183F7E0C0()
{
  while (1)
  {
    while (1)
    {
      v140 = *(v0 + 16);
      v1 = v0;
      if (v140 != 1)
      {
        break;
      }

      v2 = v0[3];
      v3 = v0;
      v4 = *(v2 + 16);
      v5 = v0[6];
      if (v5 == v4)
      {
        return;
      }

      sub_183FAAC50(v3[6], v2, v3[4], v3[5], v160);
      if (v5 >= v4)
      {
        goto LABEL_247;
      }

      v7 = v160[4];
      v6 = v160[5];
      v8 = v160[3];
      v3[6] = v5 + 1;
      v147 = v160[1];
      v149 = v160[0];
      v9 = v6 >> 1;
      sub_183F81520(v160, &v155, &qword_1EA854298);
      v10 = v3;
      if (v7 != v9)
      {
        v73 = -1;
        do
        {
          if (v7 >= v9)
          {
            goto LABEL_222;
          }

          if (v7 + 1 == v9)
          {
            break;
          }

          if (v7 + 1 >= v9)
          {
            goto LABEL_223;
          }

          v74 = *(v8 + 8 * v7);
          v75 = *(v8 + 8 * (v7 + 1));
          *&v166 = v147;
          *(&v166 + 1) = v74;
          *&v167 = v149;
          BYTE8(v167) = 0;
          v168 = v74;
          v76 = v10[8];
          v77 = v76[3];
          if (v73 == -1)
          {
            if (v77 >= 2)
            {
              v79 = 0;
              v86 = v76[3];
              while (1)
              {
                v87 = v79 + (v86 >> 1);
                if (__OFADD__(v79, v86 >> 1))
                {
                  goto LABEL_215;
                }

                if (v87 < 0)
                {
                  goto LABEL_216;
                }

                if (v87 >= v77)
                {
                  goto LABEL_217;
                }

                v88 = v76[4] + v87;
                v89 = v76[2];
                if (v88 < v89)
                {
                  v89 = 0;
                }

                if (*&v76[5 * (v88 - v89) + 9] < v74)
                {
                  v79 += v86 >> 1;
                }

                v86 -= v86 >> 1;
                if (v86 <= 1)
                {
                  if (v79 >= v77)
                  {
                    goto LABEL_117;
                  }

                  if ((v79 & 0x8000000000000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_248;
                }
              }
            }

            v79 = 0;
            if (v77 != 1)
            {
              goto LABEL_136;
            }

LABEL_113:
            v90 = v76[4] + v79;
            v91 = v76[2];
            if (v90 < v91)
            {
              v91 = 0;
            }

            if (*&v76[5 * (v90 - v91) + 9] < v74)
            {
              ++v79;
            }
          }

          else
          {
            v78 = v77 - v73;
            if (v77 < v73)
            {
              goto LABEL_230;
            }

            if (v73 < 0)
            {
              goto LABEL_231;
            }

            v79 = v73;
            if (v78 >= 2)
            {
              v79 = v73;
              while (1)
              {
                v80 = v79 + (v78 >> 1);
                if (__OFADD__(v79, v78 >> 1))
                {
                  break;
                }

                if (v80 < v73 || v80 >= v77)
                {
                  goto LABEL_214;
                }

                v82 = v76[4] + v80;
                v83 = v76[2];
                if (v82 < v83)
                {
                  v83 = 0;
                }

                if (*&v76[5 * (v82 - v83) + 9] < v74)
                {
                  v79 += v78 >> 1;
                }

                v78 -= v78 >> 1;
                if (v78 <= 1)
                {
                  goto LABEL_93;
                }
              }

              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
              goto LABEL_218;
            }

LABEL_93:
            if (v79 < v77)
            {
              if (v79 < v73)
              {
                goto LABEL_244;
              }

              v84 = v76[4] + v79;
              v85 = v76[2];
              if (v84 < v85)
              {
                v85 = 0;
              }

              if (*&v76[5 * (v84 - v85) + 9] < v74)
              {
                ++v79;
              }
            }
          }

LABEL_117:
          if ((v79 & 0x8000000000000001) == 1 && v79 < v77)
          {
            v93 = v76[4];
            v94 = v76[2];
            if (v93 + v79 >= v94)
            {
              v95 = v76[2];
            }

            else
            {
              v95 = 0;
            }

            if (*&v76[5 * (v93 + v79 - v95) + 9] == v74)
            {
              v96 = v79 + v93 - 1;
              if (v96 < v94)
              {
                v94 = 0;
              }

              v97 = &v76[5 * (v96 - v94) + 5];
              if (*(v97 + 24))
              {
                v98 = *v97 ^ *(v10 + 56);
LABEL_134:
                if ((v98 & 1) == 0)
                {
                  goto LABEL_136;
                }

LABEL_135:
                ++v79;
                goto LABEL_136;
              }

              v98 = *(v10 + 56);
              if (*(v97 + 16) >= *v97)
              {
                goto LABEL_134;
              }

              if ((v10[7] & 1) == 0)
              {
                goto LABEL_135;
              }
            }
          }

          else if (v79 < 0)
          {
            goto LABEL_221;
          }

LABEL_136:
          if (v77 < v79)
          {
            goto LABEL_224;
          }

          v99 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            goto LABEL_225;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101 = v10[8];
          if (v101[2] >= v99 && (isUniquelyReferenced_nonNull_native & 1) != 0)
          {
            v102 = (v101 + 5);
            if (!v79)
            {
              goto LABEL_144;
            }
          }

          else
          {
            sub_183FCAAA0(isUniquelyReferenced_nonNull_native, v99);
            v101 = v10[8];
            v102 = (v101 + 5);
            if (!v79)
            {
LABEL_144:
              v103 = v101[4];
              if (v103)
              {
                v43 = __OFSUB__(v103, 1);
                v104 = v103 - 1;
                if (v43)
                {
                  goto LABEL_245;
                }
              }

              else
              {
                v107 = v101[2];
                v43 = __OFSUB__(v107, 1);
                v104 = v107 - 1;
                if (v43)
                {
                  goto LABEL_254;
                }
              }

              v108 = &v102[40 * v104];
              *(v108 + 4) = v168;
              v109 = v167;
              *v108 = v166;
              *(v108 + 1) = v109;
              v101[4] = v104;
              v110 = v101[3];
              v43 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v43)
              {
                goto LABEL_242;
              }

              v101[3] = v111;
              goto LABEL_153;
            }
          }

          if (v79 == v101[3])
          {
            sub_183FCAF70(&v166, v101 + 2, v102);
LABEL_153:

            goto LABEL_154;
          }

          sub_183FCBACC(v102, 1uLL, v79, v101 + 2, &v161);
          v105 = v161;
          if (!v161)
          {
            goto LABEL_259;
          }

          v106 = v167;
          *v161 = v166;
          *(v105 + 1) = v106;
          v105[4] = v168;
LABEL_154:

          *&v163 = v149;
          *(&v163 + 1) = v75;
          *&v164 = v147;
          BYTE8(v164) = 0;
          v165 = v75;
          v112 = v101[3];
          v113 = v112 - v79;
          if (v112 < v79)
          {
            goto LABEL_226;
          }

          v73 = v79;
          if (v113 >= 2)
          {
            v73 = v79;
            while (1)
            {
              v114 = v73 + (v113 >> 1);
              if (__OFADD__(v73, v113 >> 1))
              {
                break;
              }

              if (v114 < v79 || v114 >= v112)
              {
                goto LABEL_211;
              }

              v116 = v101[4] + v114;
              v117 = v101[2];
              if (v116 < v117)
              {
                v117 = 0;
              }

              if (*&v102[40 * (v116 - v117) + 32] < v75)
              {
                v73 += v113 >> 1;
              }

              v113 -= v113 >> 1;
              if (v113 <= 1)
              {
                goto LABEL_168;
              }
            }

            __break(1u);
LABEL_211:
            __break(1u);
            return;
          }

LABEL_168:
          if (v73 < v112)
          {
            if (v73 < v79)
            {
              goto LABEL_241;
            }

            v118 = v101[4] + v73;
            v119 = v101[2];
            if (v118 < v119)
            {
              v119 = 0;
            }

            if (*&v102[40 * (v118 - v119) + 32] < v75)
            {
              ++v73;
            }
          }

          if (v73 < v112 && (v73 & 0x8000000000000001) == 1)
          {
            v121 = v101[4];
            v122 = v101[2];
            if (v121 + v73 >= v122)
            {
              v123 = v101[2];
            }

            else
            {
              v123 = 0;
            }

            if (*&v102[40 * (v121 + v73 - v123) + 32] == v75)
            {
              v124 = v73 + v121 - 1;
              if (v124 < v122)
              {
                v122 = 0;
              }

              v125 = &v102[40 * (v124 - v122)];
              if (v125[24])
              {
                v126 = *v125 ^ *(v10 + 56);
LABEL_191:
                if ((v126 & 1) == 0)
                {
                  goto LABEL_193;
                }

LABEL_192:
                ++v73;
                goto LABEL_193;
              }

              v126 = *(v10 + 56);
              if (*(v125 + 2) >= *v125)
              {
                goto LABEL_191;
              }

              if ((v10[7] & 1) == 0)
              {
                goto LABEL_192;
              }
            }
          }

          else if (v73 < 0)
          {
            goto LABEL_227;
          }

LABEL_193:
          if (v112 < v73)
          {
            goto LABEL_228;
          }

          v127 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            goto LABEL_229;
          }

          v128 = swift_isUniquelyReferenced_nonNull_native();
          v129 = v10[8];
          if (v129[2] >= v127 && (v128 & 1) != 0)
          {
            v130 = (v129 + 5);
            if (!v73)
            {
              goto LABEL_202;
            }
          }

          else
          {
            sub_183FCAAA0(v128, v127);
            v129 = v10[8];
            v130 = (v129 + 5);
            if (!v73)
            {
LABEL_202:
              v133 = v129[4];
              if (v133)
              {
                v43 = __OFSUB__(v133, 1);
                v134 = v133 - 1;
                if (v43)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v135 = v129[2];
                v43 = __OFSUB__(v135, 1);
                v134 = v135 - 1;
                if (v43)
                {
                  goto LABEL_255;
                }
              }

              v136 = &v130[40 * v134];
              *(v136 + 4) = v165;
              v137 = v164;
              *v136 = v163;
              *(v136 + 1) = v137;
              v129[4] = v134;
              v138 = v129[3];
              v43 = __OFADD__(v138, 1);
              v139 = v138 + 1;
              if (v43)
              {
                goto LABEL_243;
              }

              v129[3] = v139;
              goto LABEL_72;
            }
          }

          if (v73 == v129[3])
          {
            sub_183FCAF70(&v163, v129 + 2, v130);
LABEL_72:

            goto LABEL_73;
          }

          sub_183FCBACC(v130, 1uLL, v73, v129 + 2, &v162);
          v131 = v162;
          if (!v162)
          {
            goto LABEL_260;
          }

          v132 = v164;
          *v162 = v163;
          *(v131 + 1) = v132;
          v131[4] = v165;
LABEL_73:
          v7 += 2;
        }

        while (v7 != v9);
      }

      v0 = v10;
      v11 = *(v10[8] + 24);
      sub_183F814B4(v160, &qword_1EA854298);
      if (v11 >= 1)
      {
        *v0 = 0;
        v0[1] = v11;
        v1 = v0;
        goto LABEL_3;
      }
    }

    v12 = *v0;
    v13 = v0[1];
    v14 = *v0;
    v141 = v13;
    v142 = *v0;
    if (*v0 < v13)
    {
      do
      {
        if (v12 < 0)
        {
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v15 = v1[8];
        v16 = v15[3];
        if (v14 >= v16)
        {
          goto LABEL_219;
        }

        v17 = v15[4];
        v18 = v14 + v17;
        v19 = v15[2];
        if (v14 + v17 >= v19)
        {
          v20 = v15[2];
        }

        else
        {
          v20 = 0;
        }

        v21 = &v15[5 * v14 + 5 + 5 * (v17 - v20)];
        v22 = *(v21 + 32);
        v23 = *(v21 + 16);
        v169[0] = *v21;
        v169[1] = v23;
        v170 = v22;
        v24 = v14 + 1;
        if (v14 + 1 >= v16)
        {
          goto LABEL_220;
        }

        if (v18 + 1 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = 0;
        }

        v26 = &v15[5 * (v18 - v25) + 5];
        v27 = *(v26 + 40);
        v28 = *(v26 + 56);
        v172 = *(v26 + 72);
        v171[0] = v27;
        v171[1] = v28;
        sub_183F813A0(v169, v153);
        sub_183F813A0(v171, v153);
        sub_183FB9B44(v169, v171, v153);
        v157 = v153[2];
        v158 = v153[3];
        *v159 = v154[0];
        *&v159[9] = *(v154 + 9);
        v155 = v153[0];
        v156 = v153[1];
        sub_183F813FC(v169);
        sub_183F813FC(v171);
        v29 = *&v159[16];
        v30 = v155;
        v31 = v156;
        v32 = BYTE8(v156);
        v33 = v159[7] >> 6;
        if (v33)
        {
          if (v33 != 1)
          {
            goto LABEL_64;
          }

          v34 = v15[3];
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_232;
          }

          v148 = *&v159[16];
          v150 = v157;
          v145 = v158;
          v146 = *(&v157 + 1);
          v144 = *(&v158 + 1);
          v143 = v159[0];
          v36 = *&v159[8];
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v152[8];
          if (v38[2] < v35 || (v37 & 1) == 0)
          {
            sub_183FCAAA0(v37, v35);
            v38 = v152[8];
            v12 = v142;
          }

          v39 = v38[3];
          v40 = v38[4];
          v43 = __OFADD__(v40, v39);
          v41 = v40 + v39;
          if (v43)
          {
            goto LABEL_235;
          }

          if (v39 < 0)
          {
            if (v41 < 0)
            {
              v55 = v38[2];
              v43 = __OFADD__(v41, v55);
              v41 += v55;
              if (v43)
              {
                goto LABEL_256;
              }
            }
          }

          else
          {
            v42 = v38[2];
            v43 = __OFSUB__(v41, v42);
            v44 = v41 - v42;
            if (v44 < 0 == v43)
            {
              v41 = v44;
              if (v43)
              {
                goto LABEL_249;
              }
            }
          }

          v56 = &v38[5 * v41];
          *(v56 + 5) = v30;
          v56[7] = v31;
          *(v56 + 64) = v32 & 1;
          v56[9] = v150;
          v43 = __OFADD__(v39, 1);
          v57 = v39 + 1;
          if (v43)
          {
            goto LABEL_237;
          }

          v38[3] = v57;
          v58 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_238;
          }

          sub_183F81450(v30, *(&v30 + 1), v31, v32 & 1);
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = v152[8];
          if (v60[2] < v58 || (v59 & 1) == 0)
          {
            sub_183FCAAA0(v59, v58);
            v60 = v152[8];
          }

          v61 = v60[3];
          v62 = v60[4];
          v43 = __OFADD__(v62, v61);
          v63 = v62 + v61;
          if (v43)
          {
            goto LABEL_239;
          }

          if (v61 < 0)
          {
            v13 = v141;
            if (v63 < 0)
            {
              v70 = v60[2];
              v43 = __OFADD__(v63, v70);
              v63 += v70;
              if (v43)
              {
                goto LABEL_258;
              }
            }
          }

          else
          {
            v64 = v60[2];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v13 = v141;
            if (v66 < 0 == v65)
            {
              v63 = v66;
              if (v65)
              {
                goto LABEL_251;
              }
            }
          }

          v71 = &v60[5 * v63];
          v71[5] = v146;
          v71[6] = v145;
          v71[7] = v144;
          *(v71 + 64) = v143 & 1;
          v71[9] = v36;
          v43 = __OFADD__(v61, 1);
          v72 = v61 + 1;
          if (v43)
          {
            goto LABEL_240;
          }

          v60[3] = v72;
          sub_183F81450(v146, v145, v144, v143 & 1);
        }

        else
        {
          v45 = v15[3];
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_233;
          }

          v148 = *&v159[16];
          v151 = v157;
          sub_183F81450(v155, *(&v155 + 1), v156, BYTE8(v156) & 1);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v48 = v152[8];
          if (v48[2] < v46 || (v47 & 1) == 0)
          {
            sub_183FCAAA0(v47, v46);
            v48 = v152[8];
            v13 = v141;
          }

          v49 = v48[3];
          v50 = v48[4];
          v43 = __OFADD__(v50, v49);
          v51 = v50 + v49;
          if (v43)
          {
            goto LABEL_234;
          }

          if (v49 < 0)
          {
            v12 = v142;
            if (v51 < 0)
            {
              v67 = v48[2];
              v43 = __OFADD__(v51, v67);
              v51 += v67;
              if (v43)
              {
                goto LABEL_257;
              }
            }
          }

          else
          {
            v52 = v48[2];
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v12 = v142;
            if (v54 < 0 == v53)
            {
              v51 = v54;
              if (v53)
              {
                goto LABEL_250;
              }
            }
          }

          v68 = &v48[5 * v51];
          *(v68 + 5) = v30;
          v68[7] = v31;
          *(v68 + 64) = v32 & 1;
          v68[9] = v151;
          v43 = __OFADD__(v49, 1);
          v69 = v49 + 1;
          if (v43)
          {
            goto LABEL_236;
          }

          v48[3] = v69;
        }

        sub_183F81460(&v155);
        v29 = v148;
LABEL_64:
        if (v29)
        {
          *v152 = v14 + 2;
          v152[1] = v13;
          *(v152 + 16) = 0;
          return;
        }

        v14 += 2;
        v1 = v152;
      }

      while (v24 + 1 < v13);
    }

    if (v13 < 0)
    {
      goto LABEL_252;
    }

    if (*(v1[8] + 24) < v13)
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_183FCAD08();
    }

    sub_183FCB45C(0, v13, (v1[8] + 16), (v1[8] + 40));
    *v1 = 0;
    v1[1] = 0;
LABEL_3:
    *(v1 + 16) = v140 ^ 1;
    v0 = v1;
  }

LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
}

uint64_t sub_183F7EC4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_183F80854(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = sub_1843901A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 1) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18438FDC8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v7 + 32;
    v17[1] = v6;
    sub_183F7EEE8(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_183F7EDB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_183F80868(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1843901A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18438FDC8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_183F7F4B0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_183F7EEE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_183F7FE3C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_183F7FA0C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 8);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 2);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183F7FE50(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_183F7FE50((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_183F7FA0C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 2))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = *(v32 + 2);
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v30;
    *(v32 - 1) = v34;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_183F7F4B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_183F7FE3C(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_183F7FC48((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_183F7FE50(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_183F7FE50((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
LABEL_107:
          __break(1u);
LABEL_108:
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_183F7FC48((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_183F7FA0C(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) < *(v6 - 2))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_183F7FC48(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_183F7FE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA854290);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_183F7FF54(char *a1, int64_t a2, char a3)
{
  result = sub_183F9BD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_183F7FF74(char *a1, int64_t a2, char a3)
{
  result = sub_183F9BE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_183F7FF94(char *a1, int64_t a2, char a3)
{
  result = sub_183F9BFA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_183F7FFB4(unint64_t result, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 4 * result);
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = v9 + 4 * a3;
  v13 = (v8 + 32 + 4 * a2);
  if (result != v13 || result >= v13 + 4 * v12)
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, 4 * v12);
    a5 = v17;
    a3 = v15;
    __src = v16;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (a5 != a3)
  {
    goto LABEL_24;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v20 = 4 * a3;

  return memcpy(v9, __src, v20);
}

unint64_t sub_183F800B4(unint64_t result, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_13;
  }

  v10 = *(v8 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
    goto LABEL_22;
  }

  result = v9 + 8 * a3;
  v13 = (v8 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    v15 = a3;
    v16 = __src;
    v17 = a5;
    result = memmove(result, v13, 8 * v12);
    a5 = v17;
    a3 = v15;
    __src = v16;
  }

  v18 = *(v8 + 16);
  v11 = __OFADD__(v18, v7);
  v19 = v18 + v7;
  if (v11)
  {
    goto LABEL_23;
  }

  *(v8 + 16) = v19;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (a5 != a3)
  {
    goto LABEL_24;
  }

  if (!__src)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v20 = 8 * a3;

  return memcpy(v9, __src, v20);
}

void *sub_183F801B4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = *result;
  v27 = *(*result + 16);
  if (!v27)
  {
    return result;
  }

  v16 = 0;
  v26 = result[1];
  while (v16 < *(v30 + 16))
  {
    *&v31[0] = *(v30 + 32 + 8 * v16);
    result = v26(&v32, v31);
    *&v41[64] = v36;
    *&v41[80] = v37;
    *&v41[96] = v38;
    *&v41[112] = v39;
    *v41 = v32;
    *&v41[16] = v33;
    *&v41[32] = v34;
    *&v41[48] = v35;
    v17 = a5 - *a4;
    if (a5 < *a4)
    {
      goto LABEL_27;
    }

    if (a2)
    {
      v18 = a2 + 8 * *a4;
    }

    else
    {
      v18 = 0;
    }

    v46 = *&v41[72];
    v47 = *&v41[88];
    v48 = *&v41[104];
    v42 = *&v41[8];
    v43 = *&v41[24];
    v44 = *&v41[40];
    v45 = *&v41[56];
    sub_183F81520(&v41[8], v31, &qword_1EA8542A0);
    v19 = sub_183FAA154(v31, v18, v17);
    v38 = v31[6];
    v39 = v31[7];
    v40 = v31[8];
    v34 = v31[2];
    v35 = v31[3];
    v36 = v31[4];
    v37 = v31[5];
    v32 = v31[0];
    v33 = v31[1];
    result = sub_183F814B4(&v32, &qword_1EA854288);
    if (a6)
    {
      if (v19 < 0)
      {
        goto LABEL_33;
      }

      if (*(a7 + 8) == v19)
      {
        if (!v19)
        {
LABEL_3:
          result = sub_183F814B4(v41, &qword_1EA854278);
          goto LABEL_4;
        }

        v20 = *a7;
        v21 = v19;
        v22 = v18;
        while (*v20 == *v22)
        {
          ++v22;
          ++v20;
          if (!--v21)
          {
            goto LABEL_3;
          }
        }
      }

      *a7 = v18;
      *(a7 + 8) = v19;
    }

    if (__OFADD__(*a4, v19))
    {
      goto LABEL_28;
    }

    v23 = *v41;
    *a4 += v19;
    *(a8 + 8 * *a10) = v23;
    v24 = a13 + *a4;
    if (__OFADD__(a13, *a4))
    {
      goto LABEL_29;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (HIDWORD(v24))
    {
      goto LABEL_31;
    }

    *(a11 + 4 * *a10) = v24;
    result = sub_183F814B4(v41, &qword_1EA854278);
    if (__OFADD__(*a10, 1))
    {
      goto LABEL_32;
    }

    ++*a10;
LABEL_4:
    if (++v16 == v27)
    {
      return result;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_183F80470()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = *(v0 + 2);
  if (v4 == v3)
  {
    return 0;
  }

  if (v4 < 0)
  {
    goto LABEL_20;
  }

  if (v4 >= v2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 16);
  if (v6 + v4 >= v7)
  {
    v8 = *(v1 + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 + 1;
  if (v4 + 1 >= v2)
  {
    goto LABEL_22;
  }

  if (v4 >= v3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v10 = v0[8];
  v11 = v1 + 40;
  v12 = *(v11 + 8 * (v6 + v4 - v8));
  v13 = v6 + v9;
  if (v13 < v7)
  {
    v7 = 0;
  }

  v14 = *(v11 + 8 * (v13 - v7));
  if ((v4 ^ v10))
  {
    v15 = *(v11 + 8 * (v13 - v7));
  }

  else
  {
    v15 = v12;
  }

  *(v0 + 2) = v9;
  v16 = *(v0 + 3);
  if (((v4 ^ v10) & 1) == 0)
  {
    v12 = v14;
  }

  *v18 = v12;
  *&v18[1] = v15;
  v16(&v17, v18);
  return v17;
}

void sub_183F80564(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  v4 = v1[7];
  v3 = v1[8];
  v29 = v2;
  if (v4 == v2 && v3 == v2)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v27 = 1;
LABEL_34:
    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    *(a1 + 40) = v27 & 1;
  }

  else
  {
    v28 = a1;
    while ((v1[6] & 1) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      v6 = *v1;
      v7 = *(*v1 + 16);
      if (v7 < v4 || v7 < v3)
      {
        goto LABEL_37;
      }

      if (v3 < 0)
      {
        goto LABEL_38;
      }

      v32 = v1[5];
      v10 = v1[1];
      v9 = v1[2];
      v39[5] = *v1;
      v39[6] = v10;
      v39[7] = v9;
      v40 = *(v1 + 3);

      v1[5] = sub_183F7DDD8(v3, v11);
      *(v1 + 48) = v12 & 1;
      v1[7] = v13;
      v1[8] = v14;
      v30 = v1[13];
      v33 = v30;
      v34 = v6 + 48;
      v15 = v4;
      v31 = v1[12];
      v35 = v31;
      while (v15 != v3)
      {
        v16 = (v34 + 24 * v15);
        v17 = v15;
        while (1)
        {
          if (v15 < v4 || v17 >= v3)
          {
            __break(1u);
            goto LABEL_36;
          }

          v18 = *v16;
          v19 = v17 + 1;
          v36 = *(v16 - 1);
          v37 = v36;
          v38 = v18;
          if (v10(&v37))
          {
            break;
          }

          v16 += 3;
          ++v17;
          if (v3 == v19)
          {
            goto LABEL_28;
          }
        }

        if (v18 < *&v36)
        {
          v15 = v17 + 1;
          v20 = __OFADD__(v33++, 1);
          if (v20)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v15 = v17 + 1;
          v20 = __OFADD__(v35++, 1);
          if (v20)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_28:

      v22 = v31;
      v21 = v32;
      v1[9] = v32;
      v1[10] = v31;
      v23 = v30;
      v24 = v35;
      v1[11] = v30;
      v1[12] = v35;
      v25 = v33;
      v1[13] = v33;
      v39[0] = v32;
      v39[1] = v31;
      v39[2] = v30;
      v39[3] = v35;
      v39[4] = v33;
      v26 = (v1[14])(v39);
      if (v26)
      {
        goto LABEL_32;
      }

      v4 = v1[7];
      v3 = v1[8];
      if (v4 == v29 && v3 == v29)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
LABEL_32:
        v27 = v26 ^ 1;
        a1 = v28;
        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

uint64_t sub_183F807CC(uint64_t a1, uint64_t (*a2)(__int128 *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *i;
      v8 = *(i - 1);
      v9 = v6;
      if (a2(&v8))
      {
        break;
      }

      if (v2 == ++v4)
      {
        return v2;
      }
    }

    return v4;
  }

  return v2;
}

unint64_t sub_183F8087C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_183F808E8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_183F81C20(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_183F809A8(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_183F809A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_183F80A50(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v5 + v7;
  if (!__OFADD__(v5, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v8 <= *(v4 + 24) >> 1)
      {
        return sub_183F809A8(v6, a2, 0);
      }

      if (v5 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }
    }

    else if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    sub_183F7FF74(isUniquelyReferenced_nonNull_native, v10, 1);
    return sub_183F809A8(v6, a2, 0);
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_183F80B0C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F80BE0(uint64_t result, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    a3();
  }

  return a4(v8, a2, 0);
}

unint64_t sub_183F80CCC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 56 * a3;
  v13 = (v7 + 32 + 56 * a2);
  if (result != v13 || result >= v13 + 56 * v12)
  {
    result = memmove(result, v13, 56 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_183F80DD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_183F80E08(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 80); ; i += 7)
  {
    v6 = *i;
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    v14 = a2[2];
    v15 = *(a2 + 6);
    v8 = *(i - 2);
    v10[0] = *(i - 3);
    v10[1] = v8;
    v10[2] = *(i - 1);
    v11 = v6;
    if (Region.isSuperset(of:)(v10))
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_183F80ED0(uint64_t *a1, uint64_t a2)
{
  v37 = a1;
  v4 = *a1;
  result = sub_183F80E08(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = (v4 + 16);
    v9 = *(v4 + 16);
    if (v8 == v9)
    {
      return v7;
    }

    v11 = 56 * result + 88;
    while (v8 < v9)
    {
      v13 = v4 + v11;
      v14 = *(v4 + v11 + 48);
      v15 = *(v4 + v11);
      v16 = *(v4 + v11 + 16);
      v17 = *(v4 + v11 + 32);
      v18 = *(a2 + 16);
      v33 = *a2;
      v34 = v18;
      v35 = *(a2 + 32);
      v36 = *(a2 + 48);
      v31[0] = v15;
      v31[1] = v16;
      v31[2] = v17;
      v32 = v14;
      result = Region.isSuperset(of:)(v31);
      if ((result & 1) == 0)
      {
        if (v8 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v7 >= *v10)
          {
            goto LABEL_24;
          }

          if (v8 >= *v10)
          {
            goto LABEL_25;
          }

          v19 = v4 + 32 + 56 * v7;
          v26 = *(v19 + 16);
          v27 = *v19;
          v20 = *(v19 + 40);
          v21 = *(v19 + 48);
          v29 = *(v13 + 16);
          v30 = *v13;
          v23 = *(v13 + 32);
          v22 = *(v13 + 40);
          v24 = *(v13 + 48);
          v28 = *(v19 + 32);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_183F9C160(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_26;
          }

          v25 = v4 + 56 * v7;
          *(v25 + 32) = v30;
          *(v25 + 48) = v29;
          *(v25 + 64) = v23;
          *(v25 + 72) = v22;
          *(v25 + 80) = v24;

          if (v8 >= *(v4 + 16))
          {
            __break(1u);
            break;
          }

          v12 = v4 + v11;
          *v12 = v27;
          *(v12 + 16) = v26;
          *(v12 + 32) = v28;
          *(v12 + 40) = v20;
          *(v12 + 48) = v21;

          *v37 = v4;
        }

        ++v7;
      }

      ++v8;
      v10 = (v4 + 16);
      v9 = *(v4 + 16);
      v11 += 56;
      if (v8 == v9)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_183F81188()
{
  result = qword_1EA854240;
  if (!qword_1EA854240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854240);
  }

  return result;
}

unint64_t sub_183F811E0()
{
  result = qword_1EA854248;
  if (!qword_1EA854248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA854248);
  }

  return result;
}

unint64_t sub_183F81238()
{
  result = qword_1EA853F48;
  if (!qword_1EA853F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F48);
  }

  return result;
}

unint64_t sub_183F81290()
{
  result = qword_1EA853F40;
  if (!qword_1EA853F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA853F40);
  }

  return result;
}

uint64_t _s14ContourOptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14ContourOptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_183F8133C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_183F81450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_183F814B4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_183F81520(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_183F815B8()
{
  sub_184390098();
  MEMORY[0x1865EC630](0xD000000000000015, 0x8000000184566440);
  type metadata accessor for CGImageAlphaInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0x6E6F706D6F63202CLL, 0xEE002E203A746E65);
  type metadata accessor for CGImageComponentInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0x724F65747962202CLL, 0xEE002E203A726564);
  type metadata accessor for CGImageByteOrderInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](0xD000000000000010, 0x8000000184566460);
  type metadata accessor for CGImagePixelFormatInfo(0);
  sub_1843900F8();
  MEMORY[0x1865EC630](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_183F81760(int a1)
{
  v2 = sub_184390378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_184398540;
  *(v11 + 32) = 0x6168706C61;
  *(v11 + 40) = 0xE500000000000000;
  type metadata accessor for CGImageAlphaInfo(0);
  *(v11 + 48) = a1 & 0x1F;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x6E656E6F706D6F63;
  *(v11 + 88) = 0xE900000000000074;
  type metadata accessor for CGImageComponentInfo(0);
  *(v11 + 96) = a1 & 0xF00;
  *(v11 + 120) = v13;
  *(v11 + 128) = 0x6564724F65747962;
  *(v11 + 136) = 0xE900000000000072;
  type metadata accessor for CGImageByteOrderInfo(0);
  *(v11 + 144) = a1 & 0x7000;
  *(v11 + 168) = v14;
  *(v11 + 176) = 0x726F466C65786970;
  *(v11 + 184) = 0xEB0000000074616DLL;
  type metadata accessor for CGImagePixelFormatInfo(0);
  *(v11 + 216) = v15;
  *(v11 + 192) = a1 & 0xF0000;
  v20[3] = a1;
  v16 = *MEMORY[0x1E69E75B8];
  v17 = sub_184390368();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v10, v16, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for CGBitmapInfo(0);
  return sub_184390398();
}

int64_t CGColorSpaceRef.colorTable.getter()
{
  if (CGColorSpaceGetModel(v0) != kCGColorSpaceModelIndexed)
  {
    return 0;
  }

  v1 = CGColorSpaceGetBaseColorSpace(v0);
  if (v1)
  {
    v2 = v1;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v1);
  }

  else
  {
    NumberOfComponents = 1;
  }

  result = CGColorSpaceGetColorTableCount(v0);
  v6 = result * NumberOfComponents;
  if ((result * NumberOfComponents) >> 64 == (result * NumberOfComponents) >> 63)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        v4 = sub_18438FDC8();
        *(v4 + 16) = v6;
        bzero((v4 + 32), v6);
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      CGColorSpaceGetColorTable(v0, (v4 + 32));
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}